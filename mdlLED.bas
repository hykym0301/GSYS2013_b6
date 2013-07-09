Attribute VB_Name = "mdlLED"

Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)


Public fl_LEDInit As Boolean
Public fl_LED_CommUse As Boolean

'// 화이버 코리아: 100WR 제품 RS232C 통신 모듈
Function LEDCtrl_Init(ipMSComm As MSComm, ByVal ComNo As Integer, ByVal ComSet As String) As Boolean

    On Error GoTo ErrorHandler
    
    If ipMSComm.PortOpen = False Then
        ipMSComm.InputMode = comInputModeBinary
        ipMSComm.CommPort = ComNo
        ipMSComm.Settings = ComSet
        ipMSComm.PortOpen = True
    End If
           
    LEDCtrl_Init = True
    fl_LEDInit = True

Exit Function

ErrorHandler:
    
    'ipmscomm.PortOpen = False
    LEDCtrl_BWTC_Init = False
End Function


Function LEDCtrl_Commander_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            LEDCtrl_Commander_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        LEDCtrl_Commander_TimeCheck = 0
    End If

End Function

Public Function LEDCtrl_VolumeControl(ipMSComm As MSComm, ipVolumeVal As Integer) As Boolean

      '// 리턴값 없음.
    On Error Resume Next
    
    If fl_LEDInit = False Then
        LEDCtrl_VolumeControl = False
        Exit Function
    End If
        
    Dim rtn_dbl As Double
    Dim rtn_Buf As String
    Dim SendBuf() As Byte
    
    If fl_LED_CommUse = True Then Exit Function
    
    If ipMSComm.PortOpen = False Then
        ipMSComm.PortOpen = True
    End If
    
    ReDim SendBuf(0)
    
    fl_LED_CommUse = True
'    rtn_dbl = LEDCtrl_Commander_TimeCheck(True)
        
    SendBuf(0) = CByte(ipVolumeVal)
    
    ipMSComm.Output = SendBuf
    
'    Do
'        DoEvents
'        If LEDCtrl_Commander_TimeCheck(False) > 1 Then
'            rtn_dbl = LEDCtrl_Commander_TimeCheck(True)
'            LEDCtrl_VolumeControl = False
'            fl_LED_CommUse = False
'            Exit Function
'        End If
'    Loop Until ipMSComm.InBufferCount > 0
'
'    rtn_dbl = LEDCtrl_Commander_TimeCheck(True)
'
'    Do
'        DoEvents
'        If LEDCtrl_Commander_TimeCheck(False) > 300 Then
'            rtn_dbl = LEDCtrl_Commander_TimeCheck(True)
'            LEDCtrl_VolumeControl = False
'            fl_LED_CommUse = False
'            Exit Function
'        End If
'        rtn_Buf = rtn_Buf & ipMSComm.Input
'    Loop Until ((Left(rtn_Buf, 1) = Chr(2)) And (Right(rtn_Buf, 1) = Chr(3)))
    
'    rtn_dbl = LEDCtrl_Commander_TimeCheck(True)
    rtnRcvStr = rtn_Buf
    LEDCtrl_VolumeControl = True
    fl_LED_CommUse = False
        
End Function
