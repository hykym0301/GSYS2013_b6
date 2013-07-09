Attribute VB_Name = "SURUGA_SEKI_D212_MOTOR"
Public fl_D212_INIT As Boolean
Public fl_D212_Move1 As Boolean
Public fl_D212_Move2 As Boolean

Public Const D212_COMM_BUF_CNT_CHECK_OVT As Double = 1
Public Const D212_COMM_BUF_STR_CHECK_OVT As Double = 2
Public Const D212_ORG_OVT As Double = 1

Public Const D212_DEVICE1 As Integer = 0
Public Const D212_DEVICE2 As Integer = 1

Public Const D212_Axis_X As Integer = 1
Public Const D212_Axis_Y As Integer = 2

Public D212_PLSperMM(1) As Double
Public D212_OgrOffsetPLS(1) As Double
Public D212_EmgStop As Boolean
Public Const D212_InPosGain As Double = 0.1
Sub D212_Config(ipMSComm As Control, ipComport As Integer, ipSetting As String, ipHandshaking As Integer)
    
    If ipMSComm.PortOpen = False Then
        ipMSComm.CommPort = ipComport
    End If
    ipMSComm.Settings = ipSetting '9600,N,8,1
    ipMSComm.Handshaking = ipHandshaking 'comNone

    D212_PLSperMM(0) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(0)", "0.004")
    D212_PLSperMM(1) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(1)", "0.004")
    
    D212_OgrOffsetPLS(0) = GetSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(0)", "0")
    D212_OgrOffsetPLS(1) = GetSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(1)", "0")
    D212_EmgStop = False
    
End Sub

Public Function D212_Commander_Timer(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            D212_Commander_Timer = Abs((GetTickCount / (10 ^ 3)) - DuStart)
        End If
    Else
        fl_Start = False
        DuStart = 0
        D212_Commander_Timer = 0
    End If

End Function
Public Function D212_ORG_Timer(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            D212_ORG_Timer = Abs((GetTickCount / (10 ^ 3)) - DuStart)
        End If
    Else
        fl_Start = False
        DuStart = 0
        D212_ORG_Timer = 0
    End If

End Function
Public Function D212_ORIGIN_Timer(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount) - DuStart)
            D212_ORIGIN_Timer = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        D212_ORIGIN_Timer = 0
    End If

End Function

Function D212_INIT(ipMSComm As Control, pComPort As Integer, ipSetting As String, ipHandshaking As Long) As Boolean

    On Error GoTo errHere

    'fl_D212_INIT = True
    '"38400,N,8,1"
    
    If ipMSComm.PortOpen = True Then
        ipMSComm.PortOpen = False
    End If

    ipMSComm.CommPort = pComPort
    ipMSComm.Settings = ipSetting
    ipMSComm.Handshaking = comNone

    ipMSComm.PortOpen = True

    D212_PLSperMM(0) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(0)", "0.004") '0.0001
    D212_PLSperMM(1) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(1)", "0.004")
    
    D212_OgrOffsetPLS(0) = GetSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(0)", "0")
    D212_OgrOffsetPLS(1) = GetSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(1)", "0")
    D212_EmgStop = False

    If D212_Commander(ipMSComm, "*IDN?", rtn_str$, True) <> 0 Then
        D212_INIT = False
    Else
        'If Left(rtn_str$, 9) = "SURUGA,D2" Then
        If InStr(1, rtn_str$, "DS102") <> 0 Then
            D212_INIT = True
            fl_D212_INIT = True
        Else
            D212_INIT = False
            ipMSComm.PortOpen = False
        End If
    End If
    fl_D212_INIT = True
    D212_EmgStop = False
    Exit Function
errHere:
    D212_INIT = False
    ipMSComm.PortOpen = False
    
End Function

Function D212_Commander(ipMSComm As Control, ipSendSTR As String, rtnRcvData As String, fl_rtnData As Boolean) As Long
    
    '0 NORMAL , 1 BUF_CNT OVT , 2 RVC STR ERROR
    On Error Resume Next
    rtn_t# = D212_Commander_Timer(True)
    ipMSComm.InBufferCount = 0
    
    lb_MotorMoving = True
    ipMSComm.Output = ipSendSTR & vbCr
    lb_MotorMoving = False
    
    If fl_rtnData = False Then Exit Function
    
    Do
        DoEvents
        If D212_Commander_Timer(False) >= 3 Then 'D212_COMM_BUF_CNT_CHECK_OVT
            rtn_t# = D212_Commander_Timer(True)
            ipMSComm.InBufferCount = 0
            D212_Commander = 1
            Exit Function
        End If
    Loop Until ipMSComm.InBufferCount > 0
    'ovt# = D212_COMM_BUF_CNT_CHECK_OVT + D212_COMM_BUF_STR_CHECK_OVT
    rtn_t# = D212_Commander_Timer(True)
    Do
        DoEvents
        buf$ = buf$ & ipMSComm.Input
        If D212_Commander_Timer(False) > 3 Then 'D212_COMM_BUF_CNT_CHECK_OVT
            rtn_t# = D212_Commander_Timer(True)
            ipMSComm.InBufferCount = 0
            D212_Commander = 2
            Exit Function
        End If
    Loop Until InStr(1, buf$, vbCr) <> 0
    rtn_t# = D212_Commander_Timer(True)

    rtnRcvData = buf$
    
End Function
Function D212_LimitCheck(ipMSComm As Control, ipAxisNo As Integer, rtnCW_Limit As Integer, rtnCCW_Limit As Integer) As Boolean

    On Error Resume Next

    If ipMSComm.PortOpen = False Then Exit Function

    out_command$ = "Axis" & CStr(ipAxisNo) & ":SB2?"
    If D212_Commander(ipMSComm, out_command$, rtndata$, True) <> 0 Then
        D212_LimitCheck = False
        Exit Function
    End If
    rtn_asc_val& = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    
    If (rtn_asc_val& And (2 ^ 0)) = 0 Then  'CW Limit ON
        rtnCW_Limit = 0
    Else                                    'CW Limit OFF
        rtnCW_Limit = 1
    End If
    
    If (rtn_asc_val& And (2 ^ 1)) = 0 Then  'CCW Limit ON
        rtnCCW_Limit = 0
    Else                                    'CCW Limit OFF
        rtnCCW_Limit = 1
    End If

    D212_LimitCheck = True

End Function
Function D212_PositionReadAllaxis(ipMSComm As Control, rtnX_POSmm As Double, rtnY_POSmm As Double) As Boolean

    On Error Resume Next

    If ipMSComm.PortOpen = False Then Exit Function

    out_command$ = "Axis1:Position?"
    If D212_Commander(ipMSComm, out_command$, rtndata$, True) <> 0 Then
        D212_PositionReadAllaxis = False
        Exit Function
    End If
    rtn_pls# = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    rtnX_POSmm = (rtn_pls# - D212_OgrOffsetPLS(0)) * D212_PLSperMM(0)

    out_command$ = "Axis2:Position?"
    If D212_Commander(ipMSComm, out_command$, rtndata$, True) <> 0 Then
        D212_PositionReadAllaxis = False
        Exit Function
    End If
    rtn_pls# = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    rtnY_POSmm = (rtn_pls# - D212_OgrOffsetPLS(1)) * D212_PLSperMM(1)
    
    D212_PositionReadAllaxis = True
    
End Function
Function D212_PositionReadOneAxis(ipMSComm As Control, ipAxisNo As Integer, rtn_POSmm As Double) As Boolean

    On Error Resume Next

    If ipMSComm.PortOpen = False Then Exit Function

    out_command$ = "Axis" & CStr(ipAxisNo) & ":Position?"
    If D212_Commander(ipMSComm, out_command$, rtndata$, True) <> 0 Then
        D212_PositionReadOneAxis = False
        Exit Function
    End If
    rtn_pls# = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    rtn_POSmm = (rtn_pls# - D212_OgrOffsetPLS(ipAxisNo - 1)) * D212_PLSperMM(ipAxisNo - 1)

    D212_PositionReadOneAxis = True
    
End Function

Function D212_Origin_ALL(ipMSCom As Control, ipInitSpeed_PLS As Long, ipACC_ms As Long, ipMovSpeed_PLS As Long, ipTimeOut_sec As Double) As Boolean
    
    tmp_dbl# = D212_ORG_Timer(True)
    
    '고속 CCW운전으로 센서 감지 온을 찾는다. 대에충
    D212_AxisMove ipMSCom, D212_Axis_X, CDbl(ipInitSpeed_PLS), CDbl(ipACC_ms), CDbl(ipMovSpeed_PLS), "CCW", 1
    D212_AxisMove ipMSCom, D212_Axis_Y, CDbl(ipInitSpeed_PLS), CDbl(ipACC_ms), CDbl(ipMovSpeed_PLS), "CCW", 1
    
    Do
        DoEvents
        If D212_EmgStop = True Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            D212_EmgStop = False
            tmp_dbl# = D212_ORG_Timer(True)
            D212_Origin_ALL = False
            Exit Function
        End If
        D212_LimitCheck ipMSCom, D212_Axis_X, rtn_dmy%, x_lim%
        D212_LimitCheck ipMSCom, D212_Axis_Y, rtn_dmy%, y_lim%
        If D212_ORG_Timer(False) >= ipTimeOut_sec Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            tmp_dbl# = D212_ORG_Timer(True)
        End If
    Loop Until ((x_lim% = 1) And (y_lim% = 1))
    tmp_dbl# = D212_ORG_Timer(True)
    temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
    
    D212_AxisMove ipMSCom, D212_Axis_X, 20, CDbl(ipACC_ms), 30, "CW", 1  '저속 CW운전 으로 센서 감지 오프를 찾는다.
    Do
        DoEvents
        If D212_EmgStop = True Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            D212_EmgStop = False
            tmp_dbl# = D212_ORG_Timer(True)
            D212_Origin_ALL = False
            Exit Function
        End If
        D212_LimitCheck ipMSCom, D212_Axis_X, rtn_dmy%, x_lim%
        If D212_ORG_Timer(False) >= ipTimeOut_sec Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            tmp_dbl# = D212_ORG_Timer(True)
        End If
    Loop Until x_lim% = 0
    temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
    tmp_dbl# = D212_ORG_Timer(True)
    
    D212_AxisMove ipMSCom, D212_Axis_Y, 20, CDbl(ipACC_ms), 30, "CW", 1 '저속 CW운전 으로 센서 감지 오프를 찾는다.
    Do
        DoEvents
        If D212_EmgStop = True Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            D212_EmgStop = False
            tmp_dbl# = D212_ORG_Timer(True)
            D212_Origin_ALL = False
            Exit Function
        End If
        D212_LimitCheck ipMSCom, D212_Axis_Y, rtn_dmy%, y_lim%
        If D212_ORG_Timer(False) >= ipTimeOut_sec Then
            temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
            tmp_dbl# = D212_ORG_Timer(True)
        End If
    Loop Until y_lim% = 0
    temp% = D212_Commander(ipMSCom, "Stop 0", rtndata$, False)
    tmp_dbl# = D212_ORG_Timer(True)
    Sleep 3000
    out_command$ = "Axis1:Position 0"
    If D212_Commander(ipMSCom, out_command$, rtndata$, False) <> 0 Then
        D212_Origin_ALL = False
        Exit Function
    End If
    Sleep 2000
    out_command$ = "Axis2:Position 0"
    If D212_Commander(ipMSCom, out_command$, rtndata$, False) <> 0 Then
        D212_Origin_ALL = False
        Exit Function
    End If
    Sleep 1000
    out_command$ = "Axis1:Position?"
    If D212_Commander(ipMSCom, out_command$, rtndata$, True) <> 0 Then
        D212_Origin_ALL = False
        Exit Function
    End If
    rtn_pls# = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    D212_OgrOffsetPLS(0) = rtn_pls#
    
    out_command$ = "Axis2:Position?"
    If D212_Commander(ipMSCom, out_command$, rtndata$, True) <> 0 Then
        D212_Origin_ALL = False
        Exit Function
    End If
    rtn_pls# = CLng(Left(rtndata$, InStr(1, rtndata$, vbCr) - 1))
    D212_OgrOffsetPLS(1) = rtn_pls#
    
    Call SaveSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(0)", CStr(D212_OgrOffsetPLS(0)))
    Call SaveSetting("SRUKAWA,D212", "UNIT", "D212_OgrOffsetPLS(1)", CStr(D212_OgrOffsetPLS(1)))

    '추후 0,Set Command로 수정 하도록 한다.

    D212_Origin_ALL = True

End Function

Function D212_ABSMoveXY(ipMSComm As Control, ipX_mm As Double, ipY_mm As Double, _
                        ipStartSpd_mm As Double, ipAcc As Double, ipMovSpd_mm As Double, ipFlagInposCheck As Boolean) As Boolean
    
    start_spd_x_tmp# = ipStartSpd_mm ' * (D212_PLSperMM(0) ^ -1)
    start_spd_x# = Format(start_spd_x_tmp#, "0")
    
    start_spd_y_tmp# = ipStartSpd_mm ' * (D212_PLSperMM(1) ^ -1)
    start_spd_y# = Format(start_spd_y_tmp#, "0")
    
    mov_spd_x_tmp# = ipMovSpd_mm ' * (D212_PLSperMM(0) ^ -1)
    mov_spd_x# = Format(mov_spd_x_tmp#, "0") + D212_OgrOffsetPLS(0)
    
    mov_spd_y_tmp# = ipMovSpd_mm ' * (D212_PLSperMM(1) ^ -1)
    mov_spd_y# = Format(mov_spd_y_tmp#, "0")
    
    mov_x_pls_tmp# = ipX_mm * (D212_PLSperMM(0) ^ -1)
    mov_x_pls# = Format(mov_x_pls_tmp#, "0")
    
    mov_y_pls_tmp# = ipY_mm * (D212_PLSperMM(1) ^ -1)
    mov_y_pls# = Format(mov_y_pls_tmp#, "0") + D212_OgrOffsetPLS(1)
    
    D212_AxisMove ipMSComm, D212_Axis_X, start_spd_x#, ipAcc, mov_spd_x#, "", 3, mov_x_pls#
    D212_AxisMove ipMSComm, D212_Axis_Y, start_spd_y#, ipAcc, mov_spd_y#, "", 3, mov_y_pls#
                        
    If ipFlagInposCheck = True Then
        tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
        Do
            DoEvents
            D212_PositionReadAllaxis ipMSComm, rtn_xxx#, rtn_yyy#
            'D212_InPosGain
            If ((rtn_xxx# - D212_InPosGain) < ipX_mm) And ((rtn_xxx# + D212_InPosGain) >= ipX_mm) And _
                    ((rtn_xxx# - D212_InPosGain) > ipY_mm) And ((rtn_xxx# + D212_InPosGain) <= ipY_mm) Then
                tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
                Exit Do
            Else
                If D212_ABSMoveXYTimeCheck(False) > 30 Then
                    tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
                    D212_ABSMoveXY = False
                    Exit Function
                End If
            End If
        Loop
    End If
                        
    D212_ABSMoveXY = True
                        
End Function
Function D212_ABSMoveXYTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            D212_ABSMoveXYTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        D212_ABSMoveXYTimeCheck = 0
    End If

End Function
Function D212_ABSMoveX(ipMSComm As Control, ipX_mm As Double, ipStartSpd_mm As Double, ipAcc As Double, ipMovSpd_mm As Double, ipFlagInposCheck As Boolean) As Boolean
    
    On Error Resume Next
    
    start_spd_x_tmp# = ipStartSpd_mm ' * (D212_PLSperMM(0) ^ -1)
    start_spd_x# = Format(start_spd_x_tmp#, "0")

    mov_spd_x_tmp# = ipMovSpd_mm ' * (D212_PLSperMM(0) ^ -1)
    mov_spd_x# = Format(mov_spd_x_tmp#, "0") + D212_OgrOffsetPLS(0)

    mov_x_pls_tmp# = ipX_mm * (D212_PLSperMM(0) ^ -1)
    mov_x_pls# = Format(mov_x_pls_tmp#, "0")

    D212_AxisMove ipMSComm, D212_Axis_X, start_spd_x#, ipAcc, mov_spd_x#, "", 3, mov_x_pls#
          
    If ipFlagInposCheck = True Then
        tmp_dbl# = D212_ABSMoveXTimeCheck(True)
        Do
            DoEvents
            
            'Call Monitor------------
            MDI_Main.TimerStatus_Timer
            'Call Monitor------------
            
            D212_PositionReadAllaxis ipMSComm, rtn_xxx#, rtn_yyy#
            'D212_InPosGain
            If ((rtn_xxx# - D212_InPosGain) < ipX_mm) And ((rtn_xxx# + D212_InPosGain) >= ipX_mm) Then
                tmp_dbl# = D212_ABSMoveXTimeCheck(True)
                Exit Do
            Else
                If D212_ABSMoveXTimeCheck(False) > 50 Then
                    tmp_dbl# = D212_ABSMoveXTimeCheck(True)
                    D212_ABSMoveX = False
                    Exit Function
                End If
            End If
        Loop
    End If
                        
    D212_ABSMoveX = True
                        
End Function
Function D212_ABSMoveXTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            D212_ABSMoveXTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        D212_ABSMoveXTimeCheck = 0
    End If

End Function
Function D212_ABSMoveY(ipMSComm As Control, ipY_mm As Double, ipStartSpd_mm As Double, ipAcc As Double, ipMovSpd_mm As Double, ipFlagInposCheck As Boolean) As Boolean
    
    On Error Resume Next
    
    start_spd_y_tmp# = ipStartSpd_mm ' * (D212_PLSperMM(1) ^ -1)
    start_spd_y# = Format(start_spd_y_tmp#, "0")

    mov_spd_y_tmp# = ipMovSpd_mm ' * (D212_PLSperMM(1) ^ -1)
    mov_spd_y# = Format(mov_spd_y_tmp#, "0")

    mov_y_pls_tmp# = ipY_mm * (D212_PLSperMM(1) ^ -1)
    mov_y_pls# = Format(mov_y_pls_tmp#, "0") + D212_OgrOffsetPLS(1)

    D212_AxisMove ipMSComm, D212_Axis_Y, start_spd_y#, ipAcc, mov_spd_y#, "", 3, mov_y_pls#
                        
    If ipFlagInposCheck = True Then
        tmp_dbl# = D212_ABSMoveYTimeCheck(True)
        Do
            DoEvents
            
            'Call Monitor------------
            MDI_Main.TimerStatus_Timer
            'Call Monitor------------
            
            D212_PositionReadAllaxis ipMSComm, rtn_xxx#, rtn_yyy#
            'D212_InPosGain
            If ((rtn_yyy# - D212_InPosGain) < ipY_mm) And ((rtn_yyy# + D212_InPosGain) >= ipY_mm) Then
                tmp_dbl# = D212_ABSMoveYTimeCheck(True)
                Exit Do
            Else
                If D212_ABSMoveYTimeCheck(False) > 50 Then
                    tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
                    D212_ABSMoveY = False
                    Exit Function
                End If
            End If
        Loop
    End If
                        
    D212_ABSMoveY = True
                        
End Function
Function D212_ABSMoveYTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            D212_ABSMoveYTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        D212_ABSMoveYTimeCheck = 0
    End If

End Function
Function D212_STPMove(ipMSComm As Control, ipAxisNo As Integer, ipDistance_mm As Double, ipDirection As Integer, _
                        ipStartSpd_mm As Double, ipAcc As Double, ipMovSpd_mm As Double, ipFlagInposCheck As Boolean) As Boolean
         
    Dim tmp_Bool As Boolean
    tmp_Bool = D212_PositionReadOneAxis(ipMSComm, ipAxisNo, rtn_pos_mm#)
    
    delta_mov# = rtn_pos_mm# + (ipDistance_mm * ipDirection)
    
    mov_pulse_tmp# = ((rtn_pos_mm# + (ipDistance_mm * ipDirection)) * (D212_PLSperMM(ipAxisNo - 1) ^ -1))
    mov_pulse# = Format(mov_pulse_tmp#, "0")
    
    D212_AxisMove ipMSComm, ipAxisNo, ipStartSpd_mm, ipAcc, ipMovSpd_mm, "", 3, mov_pulse#
                        
    If ipFlagInposCheck = True Then
        tmp_dbl# = D212_STPMoveXYTimeCheck(True)
        Do
            DoEvents
            D212_PositionReadAllaxis ipMSComm, rtn_xxx#, rtn_yyy#
            
            If ipAxisNo = 1 Then
                rtn_coord# = rtn_xxx#
            Else
                rtn_coord# = rtn_yyy#
            End If
            
            'D212_InPosGain
            If ((rtn_coord# - D212_InPosGain) < delta_mov#) And ((rtn_coord# + D212_InPosGain) >= delta_mov#) Then
                tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
                Exit Do
            Else
                If D212_STPMoveXYTimeCheck(False) > 30 Then
                    tmp_dbl# = D212_ABSMoveXYTimeCheck(True)
                    D212_STPMove = False
                    Exit Function
                End If
            End If
        Loop
    End If
    D212_STPMove = True
    
End Function
Function D212_STPMoveXYTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            D212_STPMoveXYTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        D212_STPMoveXYTimeCheck = 0
    End If

End Function
Function NumberCheck(ByVal ipText As TextBox, Optional ByVal ipLow As Long = 0, Optional ByVal ipHigh As Long = 999999) As Boolean

    '입력 텍스트 박스의 숫자 범위체크

    If ((IsNumeric(ipText.Text) = True) And (InStr(ipText.Text, ".") = 0) And (Val(ipText.Text) >= ipLow) And (Val(ipText.Text) <= ipHigh)) Then
        NumberCheck = True
    Else
        NumberCheck = False
    End If
    
End Function

Function D212_SpeedData_Read(ipMSComm As Control, Axis_Index As Integer, rtnLSpeed As String, rtnRate As String, rtnFSpeed As String) As Boolean

    If D212_Commander(ipMSComm, "Axis" & CStr(Axis1) & ":L0?", rtndata$, True) <> 0 Then
        D212_SpeedData_Read = False
        Exit Function
    Else
        rtnLSpeed = rtndata$
    End If
    
    If D212_Commander(ipMSComm, "Axis" & CStr(Axis1) & ":R0?", rtndata$, True) <> 0 Then
        D212_SpeedData_Read = False
        Exit Function
    Else
        rtnRate = rtndata$
    End If
    
    If D212_Commander(ipMSComm, "Axis" & CStr(Axis1) & ":F0?", rtndata$, True) <> 0 Then
        D212_SpeedData_Read = False
        Exit Function
    Else
        rtnFSpeed = rtndata$
    End If
    D212_SpeedData_Read = True
    
End Function

Function D212_AxisMove(ipMSComm As Control, ipSelAXIS As Integer, ipLSpeed As Double, ipRate As Double, ipFSpeed As Double, _
                        ipDirection As String, ipMovType As Integer, Optional ByVal ipDistance As Double = 0) As Boolean
    'ipMovType 1= Jog, 2= Step, 3= ABS

    If ipMSComm.PortOpen = False Then
        D212_AxisMove = False
        Exit Function
    End If
    
    DoEvents
    
    Select Case ipMovType
        Case 1
            temp% = D212_Commander(ipMSComm, "Axis" & CStr(ipSelAXIS) _
                                                & ":Unit 0:Selsp 0" _
                                                & ":LSpeed0 " & CStr(ipLSpeed) _
                                                & ":Rate0 " & CStr(ipRate) _
                                                & ":FSpeed0 " & CStr(ipFSpeed) _
                                                & ":Pulse 99999999:GO " & ipDirection, rtndata$, False)
        Case 2
            If ipDistance = 0 Then Exit Function
            temp% = D212_Commander(ipMSComm, "Axis" & CStr(ipSelAXIS) _
                                                & ":Unit 0:Selsp 0" _
                                                & ":LSpeed0 " & CStr(ipLSpeed) _
                                                & ":Rate0 " & CStr(ipRate) _
                                                & ":FSpeed0 " & CStr(ipFSpeed) _
                                                & ":Pulse " & CStr(ipDistance) _
                                                & ":GO " & ipDirection, rtndata$, False)
        Case 3
            temp% = D212_Commander(ipMSComm, "Axis" & CStr(ipSelAXIS) _
                                                & ":Unit 0:Selsp 0" _
                                                & ":LSpeed0 " & CStr(ipLSpeed) _
                                                & ":Rate0 " & CStr(ipRate) _
                                                & ":FSpeed0 " & CStr(ipFSpeed) _
                                                & ":GOABSolute " & CStr(ipDistance), rtndata$, False)
    End Select
    
    D212_AxisMove = True
    
End Function

Function D212_CheckMoveStop(ipMSComm As Control, ipDisPos As Object, ipDevice As Integer)
    
    If ipDevice = 0 Then
        fl_D212_Move1 = True
    Else
        fl_D212_Move2 = True
    End If

    Do
        DoEvents
        If bStopFlag = True Then Exit Do
        If D212_Commander(ipMSComm, "MotionAll?", rtnSTR$, True) <> 0 Then Exit Do

        If Val(rtnSTR$) = 0 Then Exit Do
    Loop
    
    If ipDevice = 0 Then
        fl_D212_Move1 = False
    Else
        fl_D212_Move2 = False
    End If

End Function
