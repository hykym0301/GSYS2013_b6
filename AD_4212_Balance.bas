Attribute VB_Name = "AD_4212_Balance"
Public Type BAL_Comm_Para
    CommPortNum As Integer
    CommSet As String
    CommOverTime As Double
End Type

Public AD4212_SettingData As BAL_Comm_Para
Public AD4212_Flag_INIT As Boolean

Public AD4212_READED_VAL As Double
Public AD4212_READED_Buffer As Double

Function AD4212_INIT(ipMSComm As MSComm) As Boolean

    AD4212_INIT = False
    AD4212_Flag_INIT = False
    
    If ipMSComm.PortOpen = True Then
        ipMSComm.PortOpen = False
    End If
    
    AD4212_SettingData.CommPortNum = CInt(GetSetting(App.Title, "SYSTEM", "CommPortNum", "5"))
    AD4212_SettingData.CommSet = GetSetting(App.Title, "SYSTEM", "CommSet", "19200,n,8,1")
    AD4212_SettingData.CommOverTime = CDbl(GetSetting(App.Title, "SYSTEM", "CommOverTime", "5"))
    ipMSComm.CommPort = AD4212_SettingData.CommPortNum
    ipMSComm.Settings = AD4212_SettingData.CommSet
    ipMSComm.PortOpen = True
    
    AD4212_INIT = True
    AD4212_Flag_INIT = True
    
    'AD4212_Commander ipMSComm, "ON", 1, False, rtn_str$ 'Display ON
    DelayWait 2, True
    AD4212_Commander ipMSComm, "SIR", 1, False, rtn_str$ 'Continous Mod
    
    Exit Function
    
errHere:
    MsgBox Err.Description, vbCritical
    AD4212_Flag_INIT = False
    AD4212_INIT = False
    
End Function
Function AD4212_Commander(ipMSComm As MSComm, ipCommand As String, ipAckCount As Integer, ipFlag_NoRes As Boolean, rtnRecieveData As String) As Boolean

    'Set MSComm = New MDI_Main.MSComm_Balancer
    
    'ipAckCount = 1 -> 일반적 리스폰스일대:Data를 리턴 받는경우임.
    'ipAckCount > 1 -> 순차 시퀜스적으로 Ack를 받아야 하는 경우임.
    
    
    Dim rtnArray As Variant
    
    If AD4212_Flag_INIT = False Then Exit Function
    
    tmp_dbl# = AD4212_CommanderTimeCheck(True)
    
    ipMSComm.InBufferCount = 0
    ipMSComm.Output = ipCommand & vbCrLf

    If ipFlag_NoRes = True Then Exit Function

    Do
        DoEvents
        If AD4212_CommanderTimeCheck(False) > 3 Then
            AD4212_Commander = False
            Exit Function
        End If
    Loop Until ipMSComm.InBufferCount > 0
    
    If ipAckCount = 1 Then
        Do
            DoEvents
            buf$ = buf$ & ipMSComm.Input
            If AD4212_CommanderTimeCheck(False) > 3 Then
                tmp_dbl# = AD4212_CommanderTimeCheck(True)
                AD4212_Commander = False
                Exit Function
            End If
        Loop Until Right(buf$, 1) = vbLf
        tmp_dbl# = AD4212_CommanderTimeCheck(True)
        If Len(buf$) > 3 Then
            triming_data$ = Right(buf$, InStr(1, buf$, vbCr, vbTextCompare) - 1)
            AD4212_Commander = True
        Else
            AD4212_Commander = False
        End If
    Else 'ZeroSet만 쓰임.
        Do
            DoEvents
            buf$ = buf$ & ipMSComm.Input
            If AD4212_CommanderTimeCheck(False) > 10 Then
                tmp_dbl# = AD4212_CommanderTimeCheck(True)
                AD4212_Commander = False
                Exit Function
            End If
            
            If InStr(1, buf$, "ST,+000.0000") <> 0 Then
                AD4212_Commander = False
                Exit Function
            End If

        Loop
    End If
    
End Function
Function AD4212_CommanderTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            AD4212_CommanderTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        AD4212_CommanderTimeCheck = 0
    End If

End Function
Function AD4212_BufferingCancel(ipMSComm As MSComm) As Boolean

    AD4212_BufferingCancel = AD4212_Commander(ipMSComm, "C", 1, False, rtn_res$)

End Function
Function AD4212_ReadWeight(ipMSComm As MSComm, rtnWeightVal As Double) As Boolean

    AD4212_ReadWeight = AD4212_Commander(ipMSComm, "Q", 1, False, rtn_res$) 'Request the weighing dada immediately
    rtnWeightVal = CDbl(rtn_res$)
    
End Function
Function AD4212_ZeroSet(ipMSComm As MSComm) As Boolean

    AD4212_ZeroSet = AD4212_Commander(ipMSComm, "R", 2, False, rtn_res$)

End Function
Function AD4212_LimitSet(ipMSComm As MSComm, ipPrimaryLow As Double, ipPrimaryUpp As Double, ipSecondaryLow As Double, ipSecondaryUpp As Double) As Boolean

    AD4212_LimitSet = AD4212_Commander(ipMSComm, "R", 2, False, rtn_res$)

End Function
