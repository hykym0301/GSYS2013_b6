Attribute VB_Name = "Definition_DeviceNet"
Public DN_CardName As String
Public DN_Scanner_MacID As Integer
Public DN_Scanner_BaudRate As Integer
Public DN_Scanner_Flags As Integer
Public DN_Scanner_Input1Size As Integer
Public DN_Scanner_Input1OffsetSize As Integer
Public DN_Scanner_Output1Size As Integer
Public DN_Scanner_Output1OffsetSize As Integer
Public DN_Scanner_ScanInterval As Integer

Public DN_Devece_MacID(3) As Integer
Public DN_Devece_BaudRate(3) As Integer
Public DN_Devece_Flags(3) As Integer
Public DN_Devece_Input1Size(3) As Integer
Public DN_Devece_Input1OffsetSize(3) As Integer
Public DN_Devece_Output1Size(3) As Integer
Public DN_Devece_Output1OffsetSize(3) As Integer

'Bit연산 하여 DN_ModuleParaWrite함수에 적용한다.------------------
Public DN_ModulePara1SaveVal(7) As Long
Public DN_ModulePara2SaveVal(7) As Long
Public DN_ModulePara3SaveVal(7) As Long

Public DN_HomePara_SearchMethod(7) As Integer
Public DN_HomePara_StartSpeed(7) As Long 'Pulse 값으로 관리 한다.
Public DN_HomePara_ApproachSpeed(7) As Long
Public DN_HomePara_BackRushSpeed(7) As Long
Public DN_HomePara_AccDec(7) As Long
Public DN_HomePara_Offset(7) As Long
Public DN_HomePara_OffsetSpeed(7) As Long

Public DN_AxisFactor_mm_per_PLS(7) As Double

Public DN_JogSpeedHigh(7) As Double
Public DN_JogSpeedMiddle(7) As Double
Public DN_JogSpeedLow(7) As Double

Public DN_ConfigFolder As String
Public DN_ConfigFile As String

Public DN_InScannerCFG As DNS_SCANNER_CFG
Public DN_InDeviceCFG As DNS_DEVICE_CFG

Public DN_Device_Status As DNS_STATUS
Public DN_Device_Events As Byte
Public DN_Flag_ScanStart As Boolean
Public DN_Flag_INIT As Boolean

Public DNS_CONNECTION_STAT As Integer '0 Disconnect , 1 Connecting , 2 Connected
Public DNS_LogDisplayTxtBox As Object
Public DN_CardHandleNo As Long


Public Const DN_Axis_ORG_OVT As Double = 180

Public Const DN_AxisNo_H1Z_0 As Integer = 0
Public Const DN_AxisNo_H1T_1 As Integer = 1
Public Const DN_AxisNo_H2Z_2 As Integer = 2
Public Const DN_AxisNo_H2T_3 As Integer = 3
Public Const DN_AxisNo_H3Z_4 As Integer = 4
Public Const DN_AxisNo_H3T_5 As Integer = 5
Public Const DN_AxisNo_H1X_6 As Integer = 6
Public Const DN_AxisNo_H3X_7 As Integer = 7

Public Const DN_CONST_CommStateOVT As Double = 2
Public Const DN_CONST_JogMoveMode_RMove_01        As Long = &H0
Public Const DN_CONST_JogMoveMode_AMove_02        As Long = &H1
Public Const DN_CONST_JogMoveMode_SRMove_03       As Long = &H2
Public Const DN_CONST_JogMoveMode_SAMove_04       As Long = &H3
Public Const DN_CONST_JogMoveMode_CMoveCW_04      As Long = &H4
Public Const DN_CONST_JogMoveMode_CMoveCCW_05     As Long = &H5

'Axis Status Check Bit No Constants----------------------------
Public Const DN_AxisState_Driving_BIT_0 As Integer = 0
Public Const DN_AxisState_Jogging_BIT_1 As Integer = 1
Public Const DN_AxisState_HomeEnd_BIT_2 As Integer = 2
Public Const DN_AxisState_ServoON_BIT_3 As Integer = 3
Public Const DN_AxisState_ServoRs_BIT_4 As Integer = 4
Public Const DN_AxisState_ReadySt_BIT_5 As Integer = 5
Public Const DN_AxisState_AlarmSt_BIT_6 As Integer = 6
Public Const DN_AxisState_EMGStat_BIT_7 As Integer = 7

Public Const DN_AxisSens_LmtSwCW_BIT_0  As Integer = 0
Public Const DN_AxisSens_LmtSwCCW_BIT_1 As Integer = 1
Public Const DN_AxisSens_LmtCW_BIT_2    As Integer = 2
Public Const DN_AxisSens_LmtCCW_BIT_3   As Integer = 3
Public Const DN_AxisSens_InPos_BIT_4    As Integer = 4
Public Const DN_AxisSens_OrgSens_BIT_5  As Integer = 5
Public Const DN_AxisSens_Reserved_BIT_6 As Integer = 6
Public Const DN_AxisSens_Reserved_BIT_7 As Integer = 7

Public DN_AxisString(7) As String
Public DN_State_Axis(7, 7) As Boolean 'Axis No , Bit No
Public DN_Sens_Axis(7, 7) As Boolean 'Axis No , Bit No

'Home Para Setting Command Code------------------------
Public Const DN_HomePara_CmdCode_MODE                   As Long = &H1
Public Const DN_HomePara_CmdCode_STARTVELOCITY          As Long = &H2
Public Const DN_HomePara_CmdCode_APPROACHSPEED          As Long = &H3
Public Const DN_HomePara_CmdCode_BACKRUSH               As Long = &H4
Public Const DN_HomePara_CmdCode_ACCDEC                 As Long = &H5
Public Const DN_HomePara_CmdCode_OFFSET                 As Long = &H6
Public Const DN_HomePara_CmdCode_OFFSETSPEED            As Long = &H7

'저장 데이터 확인용 - 저장데이터는 Long값 그대로 저장...
'Para 1-------------------------------------------------------------------------------------------------------------
Public Const DN_MPara1Bit_00_ORGSensActiveLevel             As Integer = &H0 '  0 : Active Low,        1 : Active High
Public Const DN_MPara1Bit_04_ZPhaseActiveLevel              As Integer = &H4 '  0 : Active Low,        1 : Active High

'Para 2-------------------------------------------------------------------------------------------------------------
Public Const DN_MPara2Bit_00_SwCWLimitUse                   As Integer = &H0 '  0 : Disable,           1 : Enable
Public Const DN_MPara2Bit_01_SwCCWLimitUse                  As Integer = &H1 '  0 : Disable,           1 : Enable
Public Const DN_MPara2Bit_02_HwLimitStopMethod              As Integer = &H2 '  0 : 즉시정지,          1 : Active High
Public Const DN_MPara2Bit_03_HwCWLimitActiveLevel           As Integer = &H4 '  0 : Active Low,        1 : Active High

Public Const DN_MPara2Bit_04_HwCCWLimitActiveLevel          As Integer = &H4 '  0 : Active Low,        1 : Active High
Public Const DN_MPara2Bit_05_SwLimitComparePulse            As Integer = &H5 '  0 : 출력펄스카운트,    1 : 엔코더펄스카운트
Public Const DN_MPara2Bit_06_DrivePulse                     As Integer = &H6 '  0 : 독립2펄스,         1 : 1펄스방식
Public Const DN_MPara2Bit_07_DrvPlsActiveLevel              As Integer = &H7 '  0 : Active Low,        1 : Active High

Public Const DN_MPara2Bit_08_DirPlsLogicLevel               As Integer = &H8 '  0 : CW-Low,CCW-High,   1 : CW-High,CCW-Low
Public Const DN_MPara2Bit_09_EncoderInputPulse              As Integer = &H9 '  0 : 2상펄스입력,       1 : Up/Down 펄스입력
Public Const DN_MPara2Bit_10_DivPeriodRatio_LowByte         As Integer = &HA '00: 1/1분주비, 10: 1/2분주비, 01: 1/4분주비, 11: 사용않함
Public Const DN_MPara2Bit_11_DrvPlsActiveLevel              As Integer = &HB '0 : Active Low,        1 : Active High

Public Const DN_MPara2Bit_12_AlarmActiveLevel               As Integer = &HC '0 : Active Low,        1 : Active High
Public Const DN_MPara2Bit_13_AlarmUse                       As Integer = &HD '0 : Disable,           1 : Enable
Public Const DN_MPara2Bit_14_InPosActiveLevel               As Integer = &HE '0 : Active Low,        1 : Active High
Public Const DN_MPara2Bit_15_InPosUse                       As Integer = &HF '0 : Disable,           1 : Enable
'Para 3-------------------------------------------------------------------------------------------------------------

Public Const DN_MPara3Bit_00_AutuManualDecc                 As Integer = &H0 '  0 : Auto Deceleration  1 : Manual Deceleration
Public Const DN_MPara3Bit_01_AsymmetryAccDecUse             As Integer = &H1 '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_02_Reserved                       As Integer = &H2
Public Const DN_MPara3Bit_03_Reserved                       As Integer = &H3

Public Const DN_MPara3Bit_04_Reserved                       As Integer = &H4
Public Const DN_MPara3Bit_05_AntiTriAngleUse                As Integer = &H5 '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_06_RingCounterUse                 As Integer = &H6 '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_07_Reserved                       As Integer = &H7

Public Const DN_MPara3Bit_08_EmgOrgLowPassFilterUse         As Integer = &H8 '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_09_ZPhaseLowPassFilterUse         As Integer = &H9 '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_10_InPosAlarmLowPassFilterUse     As Integer = &HA '  0 : Disable,           1 : Enable
Public Const DN_MPara3Bit_11_Reserved                       As Integer = &HB

Public Const DN_MPara3Bit_12_Reserved                       As Integer = &HC
Public Const DN_MPara3Bit_13_PassBandWidth_0                As Integer = &HD
Public Const DN_MPara3Bit_14_PassBandWidth_1                As Integer = &HE
Public Const DN_MPara3Bit_15_PassBandWidth_2                As Integer = &HF

'Bit연산 하여 DN_ModuleParaWrite함수에 적용한다.------------------저장후 사용하도록 한다.

Public DN_FALG_PORT_USE As Boolean

Public DN_Dummy As Integer

Public Const DN_AxisNo As Integer = 1
Public Const DN_AxisSTR As String = "H1Z"
Sub DeviceNet_LoadCFG()

    Dim rtnSTR As String * 128
    Dim rtnLong As Long
    
    DN_ConfigFolder = App.Path & "\Config\"
    DN_ConfigFile = "DN_Env.ini"

    file_name$ = DN_ConfigFolder & DN_ConfigFile
    If Dir(DN_ConfigFolder, vbDirectory) = "" Then
        MkDir DN_ConfigFolder
    End If
    
'    DN_AxisString(0) = "H1Z" 'DN_AxisStatusCheck(DN_AxisString)
'    DN_AxisString(1) = "H1T"
'    DN_AxisString(2) = "H2Z"
'    DN_AxisString(3) = "H2T"
'    DN_AxisString(4) = "H3Z"
'    DN_AxisString(5) = "H3T"
'    DN_AxisString(6) = "H1X"
'    DN_AxisString(7) = "H3X"
    
'Card Setting----------------------------------------------
    DN_CardName = "DN3-PCI-0000" '"DN3-PCU-001"
    DN_Scanner_MacID = 0
    DN_Scanner_BaudRate = DNS_125K
    DN_Scanner_Flags = DNS_POLLED
    DN_Scanner_Input1Size = 0
    DN_Scanner_Input1OffsetSize = 0
    DN_Scanner_Output1Size = 0
    DN_Scanner_Output1OffsetSize = 0
    DN_Scanner_ScanInterval = 1
'Card Setting----------------------------------------------

'Nod1 Setting----------------------------------------------
    DN_Devece_MacID(0) = 3 '5 '1
    DN_Devece_BaudRate(0) = DNS_125K
    DN_Devece_Flags(0) = DNS_POLLED
    DN_Devece_Input1Size(0) = 8
    DN_Devece_Input1OffsetSize(0) = 4096
    DN_Devece_Output1Size(0) = 8
    DN_Devece_Output1OffsetSize(0) = 4128
'Nod1 Setting----------------------------------------------

'Nod2 Setting----------------------------------------------
    DN_Devece_MacID(1) = 5
    DN_Devece_BaudRate(1) = DNS_125K
    DN_Devece_Flags(1) = DNS_POLLED
    DN_Devece_Input1Size(1) = 8
    DN_Devece_Input1OffsetSize(1) = 4104
    DN_Devece_Output1Size(1) = 8
    DN_Devece_Output1OffsetSize(1) = 4136
'Nod2 Setting----------------------------------------------
''
'Nod3 Setting----------------------------------------------
    DN_Devece_MacID(2) = 7
    DN_Devece_BaudRate(2) = DNS_125K
    DN_Devece_Flags(2) = DNS_POLLED
    DN_Devece_Input1Size(2) = 8
    DN_Devece_Input1OffsetSize(2) = 4112
    DN_Devece_Output1Size(2) = 8
    DN_Devece_Output1OffsetSize(2) = 4144
'Nod3 Setting----------------------------------------------
''
'Nod4 Setting----------------------------------------------
    DN_Devece_MacID(3) = 9
    DN_Devece_BaudRate(3) = DNS_125K
    DN_Devece_Flags(3) = DNS_POLLED
    DN_Devece_Input1Size(3) = 8
    DN_Devece_Input1OffsetSize(3) = 4120
    DN_Devece_Output1Size(3) = 8
    DN_Devece_Output1OffsetSize(3) = 4152
'Nod4 Setting----------------------------------------------
    i% = 0
''
''    For i% = 0 To 7
        rtnLong = GetPrivateProfileString("MODULE_PARA_SET", "DN_ModulePara1SaveVal(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_ModulePara1SaveVal(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("MODULE_PARA_SET", "DN_ModulePara2SaveVal(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_ModulePara2SaveVal(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("MODULE_PARA_SET", "DN_ModulePara3SaveVal(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_ModulePara3SaveVal(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_SearchMethod(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_SearchMethod(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_StartSpeed(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_StartSpeed(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_ApproachSpeed(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_ApproachSpeed(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_BackRushSpeed(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_BackRushSpeed(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_AccDec(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_AccDec(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_Offset(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_Offset(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_OffsetSpeed(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_OffsetSpeed(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("HOME_PARA_SET", "DN_HomePara_SearchMethod(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_HomePara_SearchMethod(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        
        'rtnLong = GetPrivateProfileString("AXIS_PARA_SET", "DN_AxisFactor_mm_per_PLS(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        'DN_AxisFactor_mm_per_PLS(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        
        DN_AxisFactor_mm_per_PLS(0) = 0.0006 'Review Z Axis 고정
        
        rtnLong = GetPrivateProfileString("JOG_PARA_SET", "DN_JogSpeedHigh(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_JogSpeedHigh(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("JOG_PARA_SET", "DN_JogSpeedMiddle(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_JogSpeedMiddle(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
        rtnLong = GetPrivateProfileString("JOG_PARA_SET", "DN_JogSpeedLow(" & CStr(i%) & ")", "0", rtnSTR, 128, file_name$)
        DN_JogSpeedLow(i%) = CDbl(Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1))): rtnSTR = ""
''    Next i%

End Sub
Function DeviceNet_INIT(ipCardName As String, ipScannerCFG As DNS_SCANNER_CFG) As Boolean

    Dim rtnErr As String * 100
    Dim rtnBool As Boolean
    Dim rtnCardHanddle As Long
    Dim tmp_Bool As Boolean
    
    'Set DNS_LogDisplayTxtBox = ipLogDisplayTxtBox
    'ipLogDisplayTxtBox.Text = vbCrLf
    
    ipCardName = ipCardName
    DNS_CONNECTION_STAT = 1
    If DN_CardHandleNo = 0 Then
        DNS_FreeDriver
        If DNS_LoadDriver("ssdn32.dll") = False Then
            rtnBool = DNE_CommandError(DRIVER_NOT_LOADED, rtnErr, 100)
            DeviceNet_INIT = False
            DNS_CONNECTION_STAT = 0
            Exit Function
        End If
    End If
    
    'If DN_CardHandleNo = 961280 Then
        tmp_Bool = DNS_CloseCard(961280)
        'If DNS_CloseCard(961280) = False Then
        rtnBool = DNE_CommandError(DNS_GENERAL_ERROR, rtnErr, 100)
        DeviceNet_INIT = False
        DNS_CONNECTION_STAT = 0
        DN_CardHandleNo = 0
            'Exit Function
        'End If
    'End If
    
    If DNS_OpenCard(DN_CardHandleNo, ipCardName, 0, 0) = False Then
        rtnBool = DNE_CommandError(DNS_GENERAL_ERROR, rtnErr, 100)
        DNS_FreeDriver
        DNS_CloseCard DN_CardHandleNo
        DN_CardHandleNo = 0
        DeviceNet_INIT = False
        DNS_CONNECTION_STAT = 0
        Exit Function
    End If
    If DN_CardHandleNo = 0 Then
        DeviceNet_INIT = False
        DNS_CONNECTION_STAT = 0
        DNS_FreeDriver
        DNS_CloseCard DN_CardHandleNo
        DN_CardHandleNo = 0
        Exit Function
    End If

    'Debug.Print ipScannerCFG.BaudRate
    'Debug.Print ipScannerCFG.Input1Size
    'Debug.Print ipScannerCFG.Input1Offset
    'Debug.Print ipScannerCFG.Output1Size
    'Debug.Print ipScannerCFG.Output1Offset
    
    If DNS_Online(DN_CardHandleNo, ipScannerCFG) = False Then
        DNS_FreeDriver
        DNS_CloseCard DN_CardHandleNo
        DN_CardHandleNo = 0
        DeviceNet_INIT = False
        DNS_CONNECTION_STAT = 0
        Exit Function
    End If

    DeviceNet_INIT = True

End Function
Public Function DeviceNet_AddNode(ipCardHandleNo As Long, ipDeviceCfg As DNS_DEVICE_CFG) As Boolean
    
    If DNS_AddDevice(ipCardHandleNo, ipDeviceCfg) = False Then
        DNS_FreeDriver
        DNS_CloseCard DN_CardHandleNo
        DeviceNet_AddNode = False
        DNS_CONNECTION_STAT = 0
        Exit Function
    End If
    
    DeviceNet_AddNode = True
    
End Function
Public Function DN_JogMoveParaWrite(ipAxisString As String, ipModeOperation As Integer, ipSetValue As Long) As Boolean

    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim clear_Byte(7) As Byte
    Dim rtn_Events As Byte
    'Jog Parameter는  Controller에 유지 되지 않으므로 운영시 매번 설정 하도록 한다.

    'ipModeOperation = 1 일때는 ipSetValue >> 0~ 5

    'ipModeOperation = 2 일때는 ipSetValue >> 0~ 8000

    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자

    DN_FALG_PORT_USE = True

    ovt_check# = DN_CONST_CommStateOVT
    'head_no% = Mid(ipAxisString, 2, 1)
    'axis_string$ = Mid(ipAxisString, 3, 1)

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

''    If ((axis_string$ = "Z") Or (axis_string$ = "T")) Then 'Nod 1,2,3 Y : 1 , T : 2
''        nod_no% = head_no%
''        If axis_string$ = "Z" Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    Else '---------------------------------------------------------------Nod 4 Head1 X : 1 , Head3 X : 2
''        nod_no% = 4
''        If head_no% = 1 Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    End If
    tmp_hex$ = ""
    setByte(0) = &H0: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "4"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
    setByte(4) = ipModeOperation
    If ipModeOperation = 1 Then 'Moving Profile Setting
        tmp_hex$ = "000" & Hex(ipSetValue)
    Else '2                                    Jog Speed Setting
        cal_hex$ = Hex(ipSetValue)
        For i% = 4 - Len(cal_hex$) To 1 Step -1
            zero_hex$ = "0" & zero_hex$
        Next i%
        'Debug.Print zero_hex$ & cal_hex$
        tmp_hex$ = zero_hex$ & cal_hex$
    End If
    high_byte% = Val("&H" & Left(tmp_hex$, 2)): low_byte% = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = low_byte%: setByte(6) = high_byte%
    setByte(7) = 0 'Not Use

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)

    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then

            rtn_dbl# = DN_JogMovParaWriteTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_JogMoveParaWrite = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_JogMovParaWriteTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_JogMovParaWriteTimeCheck(True)
                    DN_JogMoveParaWrite = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_JogMovParaWriteTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, clear_Byte(0), 8) '이전 명령 클리어
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)

            DN_Wait 0.005, False
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)

            If rtn_Int <> 1 Then
                DN_JogMoveParaWrite = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_JogMoveParaWrite = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_JogMoveParaWrite = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If

    DN_JogMoveParaWrite = True
    DN_FALG_PORT_USE = False


End Function
Function DN_JogMovParaWriteTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_JogMovParaWriteTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_JogMovParaWriteTimeCheck = 0
    End If

End Function
Function DN_ModulePara2_DivPeriodRatio_BitCal(ipSelection As Integer, ipSumVal As Long) As Long 'Para2 분주비 설정 비트 셋

    'ipSelection = 0 : 1/1
    'ipSelection = 1 : 1/2
    'ipSelection = 2 : 1/4
    'ipSelection = 3 : Not Selection
    
    Select Case ipSelection
        Case 0
            If (ipSumVal And (2 ^ 10)) <> 0 Then '0 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
            If (ipSumVal And (2 ^ 11)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
        Case 1
            If (ipSumVal And (2 ^ 10)) = 0 Then '1 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
            If (ipSumVal And (2 ^ 11)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
        Case 2
            If (ipSumVal And (2 ^ 10)) <> 0 Then '0 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
            If (ipSumVal And (2 ^ 11)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
        Case 3
            If (ipSumVal And (2 ^ 10)) = 0 Then '1 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
            If (ipSumVal And (2 ^ 11)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 10))
            End If
    End Select
    
    DN_ModulePara2_DivPeriodRatio_BitCal = tmp_lng&
    'DN_Set_ModulePara2_BitCal = tmp_lng&

End Function
Function DN_ModulePara3_PassBandWidth_BitCal(ipSelection As Integer, ipSumVal As Long) As Long 'Para2 분주비 설정 비트 셋

    'ipSelection = 0 : 2us
    'ipSelection = 1 : 256us
    'ipSelection = 2 : 512us
    'ipSelection = 3 : 1.024ms
    'ipSelection = 4 : 2.024ms
    'ipSelection = 5 : 4.096ms
    'ipSelection = 6 : 8.192ms
    'ipSelection = 7 : 16.384ms
    
    Select Case ipSelection
        Case 0
            If (ipSumVal And (2 ^ 13)) <> 0 Then '0 , 0 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 1
            If (ipSumVal And (2 ^ 13)) <> 0 Then '1 , 0 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 2
            If (ipSumVal And (2 ^ 13)) <> 0 Then '0 , 1 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 3
            If (ipSumVal And (2 ^ 13)) = 0 Then '1 , 1 , 0
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 4
            If (ipSumVal And (2 ^ 13)) <> 0 Then '0 , 0 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 5
            If (ipSumVal And (2 ^ 13)) = 0 Then '1 , 0 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 6
            If (ipSumVal And (2 ^ 13)) <> 0 Then '0 , 1 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
        Case 7
            If (ipSumVal And (2 ^ 13)) = 0 Then '1 , 1 , 1
                tmp_lng& = (ipSumVal Xor (2 ^ 13))
            End If
            If (ipSumVal And (2 ^ 14)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 14))
            End If
            If (ipSumVal And (2 ^ 15)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ 15))
            End If
    End Select
    
    DN_ModulePara3_PassBandWidth_BitCal = tmp_lng&
    'DN_Set_ModulePara3_BitCal = tmp_lng&

End Function
''Public Function DN_ModuleParaWrite(ipAxisString As String, ipModeOperation As Integer, ipSetValue As Long) As Boolean
''    ', Optional ByVal ipFlagSetParam As Boolean
''    Dim rtn_Int As Integer
''    Dim setByte(7) As Byte
''    Dim rtnByte(7) As Byte
''    Dim rtn_Events As Byte
''
''    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자
''
''    DN_FALG_PORT_USE = True
''
''    ovt_check# = DN_CONST_CommStateOVT
''    head_no% = Mid(ipAxisString, 2, 1)
''    axis_string$ = Mid(ipAxisString, 3, 1)
''
''    If ((axis_string$ = "Z") Or (axis_string$ = "T")) Then 'Nod 1,2,3 Y : 1 , T : 2
''        nod_no% = head_no%
''        If axis_string$ = "Z" Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    Else '---------------------------------------------------------------Nod 4 Head1 X : 1 , Head3 X : 2
''        nod_no% = 4
''        If head_no% = 1 Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    End If
''
''    setByte(0) = &H0: setByte(1) = &H0
''    tmp_hex$ = Hex(axis_no%) & "5"
''    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
''
''    ''If ipFlagSetParam = False Then
''        setByte(4) = ipModeOperation
''        cal_hex$ = Hex(ipSetValue)
''        For i% = 4 - Len(cal_hex$) To 1 Step -1
''            zero_hex$ = "0" & zero_hex$
''        Next i%
''        tmp_hex$ = zero_hex$ & cal_hex$
''        high_byte% = Val("&H" & Left(tmp_hex$, 2)): low_byte% = Val("&H" & Right(tmp_hex$, 2))
''        setByte(5) = low_byte%: setByte(6) = high_byte%
''    ''Else
''    ''    setByte(4) = &HF: setByte(5) = 0: setByte(6) = 0
''    ''End If
''    setByte(7) = 0 'Not Use
''
''    #If 1 Then
''        'Debug.Print "Nod : " & nod_no%
''        For i% = 0 To 7
''            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
''        Next i%
''    #End If
''
''    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
''
''    If rtn_Int = 1 Then
''        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
''
''            rtn_dbl# = DN_ModuleParaWriteTimeCheck(True)
''            Do
''                DoEvents
''                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
''                If rtn_Int <> 1 Then
''                    DN_ModuleParaWrite = False
''                    DN_FALG_PORT_USE = False
''                    Exit Function
''                End If
''                If DN_ModuleParaWriteTimeCheck(False) > ovt_check# Then
''                    rtn_dbl# = DN_ModuleParaWriteTimeCheck(True)
''                    DN_ModuleParaWrite = False
''                    DN_FALG_PORT_USE = False
''                    Exit Function
''                End If
''            Loop Until rtn_Events = IO1_EVENT
''            rtn_dbl# = DN_ModuleParaWriteTimeCheck(True)
''
''            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
''            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
''
''            #If 1 Then
''                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
''                For i% = 0 To 7
''                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
''                Next i%
''            #End If
''
''            If rtn_Int <> 1 Then
''                DN_ModuleParaWrite = False
''                DN_FALG_PORT_USE = False
''                Exit Function
''            End If
''        Else
''            DN_ModuleParaWrite = False
''            DN_FALG_PORT_USE = False
''            Exit Function
''        End If
''    Else
''        DN_ModuleParaWrite = False
''        DN_FALG_PORT_USE = False
''        Exit Function
''    End If
''    DN_ModuleParaWrite = True
''    DN_FALG_PORT_USE = False
''
''End Function
''Function DN_ModuleParaWriteTimeCheck(ClearAll As Boolean) As Double
''
''    Static fl_Start As Boolean
''    Static DuStart As Double
''    Static DurationTime As Double
''
''    If ClearAll = False Then
''        If fl_Start = False Then
''            DuStart = GetTickCount / (10 ^ 3)
''            fl_Start = True
''        Else
''            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
''            DN_ModuleParaWriteTimeCheck = DurationTime
''        End If
''    Else
''        fl_Start = False
''        DuStart = 0
''        DurationTime = 0
''        DN_ModuleParaWriteTimeCheck = 0
''    End If
''
''End Function
Function DN_Set_ModulePara1_BitCal(ipSumVal As Long, ipBitNo As Integer, ipBitOnOff As Integer) As Long

    'Bit0 , Bit4 Only!!!
    
    If ((ipBitNo = 0) Or (ipBitNo = 4)) Then
    
        If ipBitOnOff = 1 Then
            If (ipSumVal And (2 ^ ipBitNo)) = 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
                DN_Set_ModulePara1_BitCal = tmp_lng&
            Else
                DN_Set_ModulePara1_BitCal = ipSumVal
            End If
        Else
            If (ipSumVal And (2 ^ ipBitNo)) <> 0 Then
                tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
                DN_Set_ModulePara1_BitCal = tmp_lng&
            Else
                DN_Set_ModulePara1_BitCal = ipSumVal
            End If
        End If
    Else
        DN_Set_ModulePara1_BitCal = ipSumVal
    End If
    
End Function
Function DN_Set_ModulePara2_BitCal(ipSumVal As Long, ipBitNo As Integer, ipBitOnOff As Integer) As Long

    
    If ipBitOnOff = 1 Then
        If (ipSumVal And (2 ^ ipBitNo)) = 0 Then
            tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
            DN_Set_ModulePara2_BitCal = tmp_lng&
        Else
            DN_Set_ModulePara2_BitCal = ipSumVal
        End If
    Else
        If (ipSumVal And (2 ^ ipBitNo)) <> 0 Then
            tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
            DN_Set_ModulePara2_BitCal = tmp_lng&
        Else
            DN_Set_ModulePara2_BitCal = ipSumVal
        End If
    End If
    
        
End Function
Function DN_Set_ModulePara3_BitCal(ipSumVal As Long, ipBitNo As Integer, ipBitOnOff As Integer) As Long

    If ((ipBitNo = 2) Or (ipBitNo = 3) Or (ipBitNo = 4) Or (ipBitNo = 7) Or (ipBitNo = 11) Or (ipBitNo = 12)) Then
        DN_Set_ModulePara3_BitCal = ipSumVal
        Exit Function
    End If
    
    If ipBitOnOff = 1 Then
        If (ipSumVal And (2 ^ ipBitNo)) = 0 Then
            tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
            DN_Set_ModulePara3_BitCal = tmp_lng&
        Else
            DN_Set_ModulePara3_BitCal = ipSumVal
        End If
    Else
        If (ipSumVal And (2 ^ ipBitNo)) <> 0 Then
            tmp_lng& = (ipSumVal Xor (2 ^ ipBitNo))
            DN_Set_ModulePara3_BitCal = tmp_lng&
        Else
            DN_Set_ModulePara3_BitCal = ipSumVal
        End If
    End If
    'DN_Set_ModulePara3_BitCal = tmp_lng&
        
End Function
''Public Function DN_HomeParaWrite(ipAxisString As String, ipModeOperation As Integer, ipSetValue As Long) As Boolean
''    ', Optional ByVal ipFlagSetParam As Boolean
''    Dim rtn_Int As Integer
''    Dim setByte(7) As Byte
''    Dim rtnByte(7) As Byte
''    Dim rtn_Events As Byte
''
''    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자
''
''    DN_FALG_PORT_USE = True
''
''    ovt_check# = DN_CONST_CommStateOVT
''    head_no% = Mid(ipAxisString, 2, 1)
''    axis_string$ = Mid(ipAxisString, 3, 1)
''
''    If ((axis_string$ = "Z") Or (axis_string$ = "T")) Then 'Nod 1,2,3 Y : 1 , T : 2
''        nod_no% = head_no%
''        If axis_string$ = "Z" Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    Else '---------------------------------------------------------------Nod 4 Head1 X : 1 , Head3 X : 2
''        nod_no% = 4
''        If head_no% = 1 Then
''            axis_no% = 1
''        Else
''            axis_no% = 2
''        End If
''    End If
''
''    setByte(0) = &H0: setByte(1) = &H0
''    tmp_hex$ = Hex(axis_no%) & "6"
''    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
''
''    ''If ipFlagSetParam = False Then
''        setByte(4) = ipModeOperation
''        cal_hex$ = Hex(ipSetValue)
''        For i% = 4 - Len(cal_hex$) To 1 Step -1
''            zero_hex$ = "0" & zero_hex$
''        Next i%
''        tmp_hex$ = zero_hex$ & cal_hex$
''        high_byte% = Val("&H" & Left(tmp_hex$, 2)): low_byte% = Val("&H" & Right(tmp_hex$, 2))
''        setByte(5) = low_byte%: setByte(6) = high_byte%
''    ''Else
''    ''    setByte(4) = &HF: setByte(5) = 0: setByte(6) = 0
''    ''End If
''    setByte(7) = 0 'Not Use
''
''    #If 1 Then
''        'Debug.Print "Nod : " & nod_no%
''        For i% = 0 To 7
''            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
''        Next i%
''    #End If
''
''    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
''
''    If rtn_Int = 1 Then
''        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
''
''            rtn_dbl# = DN_HomeParaWriteTimeCheck(True)
''            Do
''                DoEvents
''                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
''                If rtn_Int <> 1 Then
''                    DN_HomeParaWrite = False
''                    DN_FALG_PORT_USE = False
''                    Exit Function
''                End If
''                If DN_HomeParaWriteTimeCheck(False) > ovt_check# Then
''                    rtn_dbl# = DN_HomeParaWriteTimeCheck(True)
''                    DN_HomeParaWrite = False
''                    DN_FALG_PORT_USE = False
''                    Exit Function
''                End If
''            Loop Until rtn_Events = IO1_EVENT
''            rtn_dbl# = DN_HomeParaWriteTimeCheck(True)
''
''            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
''            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
''
''            #If 1 Then
''                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
''                For i% = 0 To 7
''                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
''                Next i%
''            #End If
''
''            If rtn_Int <> 1 Then
''                DN_HomeParaWrite = False
''                DN_FALG_PORT_USE = False
''                Exit Function
''            End If
''        Else
''            DN_HomeParaWrite = False
''            DN_FALG_PORT_USE = False
''            Exit Function
''        End If
''    Else
''        DN_HomeParaWrite = False
''        DN_FALG_PORT_USE = False
''        Exit Function
''    End If
''    DN_HomeParaWrite = True
''    DN_FALG_PORT_USE = False
''
''End Function
''Function DN_HomeParaWriteTimeCheck(ClearAll As Boolean) As Double
''
''    Static fl_Start As Boolean
''    Static DuStart As Double
''    Static DurationTime As Double
''
''    If ClearAll = False Then
''        If fl_Start = False Then
''            DuStart = GetTickCount / (10 ^ 3)
''            fl_Start = True
''        Else
''            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
''            DN_HomeParaWriteTimeCheck = DurationTime
''        End If
''    Else
''        fl_Start = False
''        DuStart = 0
''        DurationTime = 0
''        DN_HomeParaWriteTimeCheck = 0
''    End If
''
''End Function
Public Function DeviceNet_INIT_All(ipNodQuantity As Integer) As Boolean

    DeviceNet_LoadCFG

    ipcard_name$ = DN_CardName
    DN_InScannerCFG.MacId = DN_Scanner_MacID
    DN_InScannerCFG.BaudRate = DN_Scanner_BaudRate
    DN_InScannerCFG.Flags = DN_Scanner_Flags
    DN_InScannerCFG.Input1Size = DN_Scanner_Input1Size
    DN_InScannerCFG.Input1Offset = DN_Scanner_Input1OffsetSize
    DN_InScannerCFG.Output1Size = DN_Scanner_Output1Size
    DN_InScannerCFG.Output1Offset = DN_Scanner_Output1OffsetSize
    DN_InScannerCFG.ScanInterval = DN_Scanner_ScanInterval

    If DeviceNet_INIT(ipcard_name$, DN_InScannerCFG) = False Then
        DeviceNet_INIT_All = False
        DN_Flag_ScanStart = False
        Exit Function
    End If

    If DN_CardHandleNo = 0 Then
        DeviceNet_Terminate
        DeviceNet_INIT_All = False
        DN_Flag_ScanStart = False
        Exit Function
    End If

    i% = 0
    For i% = 0 To 3 'ipNodQuantity - 1
        DN_InDeviceCFG.DeviceType = 0
        DN_InDeviceCFG.ProductCode = 4
        DN_InDeviceCFG.VendorId = 615 '한미 오토넷 HMC-201D제품 시 ...
        DN_InDeviceCFG.MacId = DN_Devece_MacID(i%)
        DN_InDeviceCFG.Flags = DN_Devece_Flags(i%)
        DN_InDeviceCFG.Input1Size = DN_Devece_Input1Size(i%)
        DN_InDeviceCFG.Input1Offset = DN_Devece_Input1OffsetSize(i%)
        DN_InDeviceCFG.Output1Size = DN_Devece_Output1Size(i%)
        DN_InDeviceCFG.Output1Offset = DN_Devece_Output1OffsetSize(i%)
        If DeviceNet_AddNode(DN_CardHandleNo, DN_InDeviceCFG) = False Then
            DeviceNet_INIT_All = False
            Exit Function
        End If
    Next i%

    If DNS_StartScan(DN_CardHandleNo) = True Then
        DeviceNet_INIT_All = False
        DN_Flag_ScanStart = False
        Exit Function
    End If
    
    Dim Axis_STR(7) As String
'    Axis_STR(0) = "H1Z"
'    Axis_STR(1) = "H1T"
'    Axis_STR(2) = "H2Z"
'    Axis_STR(3) = "H2T"
'    Axis_STR(4) = "H3Z"
'    Axis_STR(5) = "H4T"
'    Axis_STR(6) = "H1X"
'    Axis_STR(7) = "H3X"
    
    DN_AxisFactor_mm_per_PLS(1) = 0.000006
    
    DN_Flag_ScanStart = True
    DeviceNet_INIT_All = True
    
End Function
Public Function DeviceNet_Terminate() As Boolean

    DNS_StopScan DN_CardHandleNo
    DNS_Offline DN_CardHandleNo
    DNS_FreeDriver
    DNS_CloseCard DN_CardHandleNo
    DN_CardHandleNo = 0
    DN_Flag_ScanStart = False
    DeviceNet_Terminate = True

End Function
Public Function DN_JogMove(ipAxisString As String, ipMoveMode As Integer, ipJogSpeed As Double, ipPosition As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim clear_Byte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT
    head_no% = Mid(ipAxisString, 2, 1)
    axis_string$ = Mid(ipAxisString, 3, 1)

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

'    rtn_dbl# = DN_HomeCommandTimeCheck(True)
'    Do
'        'DoEvents
'        rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
'        If (rtnByte(0) And (2 ^ 0)) = 1 Then 'Driving Bit On 이면...Command Bit를 Off한다.
'            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, clear_Byte(0), 8)
'
'            If DN_JogEmgStopCommand(ipAxisString) = False Then
'                DN_JogMove = False
'                Exit Function
'            End If
'        Else
'            rtn_dbl# = DN_HomeCommandTimeCheck(True)
'            Exit Do
'        End If
'        If DN_JogMoveTimeCheck(False) > ovt_check# Then
'            rtn_dbl# = DN_JogMoveTimeCheck(True)
'            DN_JogMove = False
'            Exit Function
'        End If
'    Loop

    'Jog Para Setting-----------------------------------------------------------------------------------------------------------
    If DN_JogMoveParaWrite(ipAxisString, 1, CLng(ipMoveMode)) = False Then   'Jog Move Mode Select
        DN_JogMove = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If

    If head_index% = 6 Or head_index% = 7 Then
        set_jog_speed& = (ipJogSpeed / DN_AxisFactor_mm_per_PLS(head_index%)) / 100
    Else
        set_jog_speed& = (ipJogSpeed / DN_AxisFactor_mm_per_PLS(head_index%)) / 100
    End If

    If DN_JogMoveParaWrite(ipAxisString, 2, set_jog_speed&) = False Then 'Jog Speed Setting
        DN_JogMove = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    'Jog Para Setting-----------------------------------------------------------------------------------------------------------
    
    setByte(0) = &H2: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$):
    setByte(3) = Val("&H" & tmp_hex$): '&H0
    tmp_hex$ = ""
    cal_pos_pls& = ipPosition ' * DN_AxisFactor_mm_per_PLS(head_index%)
    cal_hex$ = Hex(cal_pos_pls&)
    For i% = 8 - Len(cal_hex$) To 1 Step -1
        zero_hex$ = "0" & zero_hex$
    Next i%
    tmp_hex$ = zero_hex$ & cal_hex$

    setByte(4) = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = Val("&H" & Mid(tmp_hex$, 5, 2))
    setByte(6) = Val("&H" & Mid(tmp_hex$, 3, 2))
    setByte(7) = Val("&H" & Left(tmp_hex$, 2))

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)

    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then

            rtn_dbl# = DN_JogMoveTimeCheck(True)
            Do
                'DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_JogMove = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_JogMoveTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_JogMoveTimeCheck(True)
                    DN_JogMove = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            'rtn_dbl# = DN_JogMoveTimeCheck(True)
            
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, clear_Byte(0), 8) '이전 명령 클리어
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, clear_Byte(0), 8) '이전 명령 클리어
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, clear_Byte(0), 8) '이전 명령 클리어
            'DN_Wait 0.005, False
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            'DN_Wait 0.005, False
            rtn_dbl# = DN_JogMoveTimeCheck(True)
            Do
                'DoEvents
                rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
                If (rtnByte(0) And (2 ^ 0)) <> 0 Then 'Driving Bit On 이면...Command Bit를 Off한다.
                    setByte(0) = 0
                    'rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
                    rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    Exit Do
                End If
                If DN_JogMoveTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_JogMoveTimeCheck(True)
                    DN_JogMove = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop

            If rtn_Int <> 1 Then
                DN_JogMove = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_JogMove = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_JogMove = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_JogMove = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_JogMoveTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_JogMoveTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_JogMoveTimeCheck = 0
    End If

End Function
Public Function DN_HomeCommand(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H4: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$)
    setByte(3) = Val("&H" & tmp_hex$)
    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_HomeCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_HomeCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_HomeCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    DN_HomeCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_HomeCommandTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            DN_Wait 0.1, False
            Do
                DoEvents
                rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
                If (rtnByte(0) And (2 ^ 0)) <> 0 Then 'Driving Bit On 이면...Command Bit를 Off한다.
                    setByte(0) = 0
                    rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    Exit Do
                End If
                If DN_HomeCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    DN_HomeCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop
            
            #If 1 Then
                Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_HomeCommand = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_HomeCommand = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_HomeCommand = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_HomeCommand = True
    DN_FALG_PORT_USE = False
    
End Function
Public Function DN_HomeCommand2(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H4: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$)
    setByte(3) = Val("&H" & tmp_hex$)

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_HomeCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_HomeCommand2 = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_HomeCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    DN_HomeCommand2 = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_HomeCommandTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            DN_Wait 0.1, False
            Do
                DoEvents
                rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
                If (rtnByte(0) And (2 ^ 0)) <> 0 Then 'Driving Bit On 이면...Command Bit를 Off한다.
                    setByte(0) = 0
                    rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    Exit Do
                End If
                If DN_HomeCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_HomeCommandTimeCheck(True)
                    DN_HomeCommand2 = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop
            
            #If 1 Then
                Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_HomeCommand2 = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_HomeCommand2 = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_HomeCommand2 = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_HomeCommand2 = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_HomeCommandTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_HomeCommandTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_HomeCommandTimeCheck = 0
    End If

End Function
Public Function DN_JogSoomthStopCommand(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H8: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_JogSmoothStopCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_JogSoomthStopCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_JogSmoothStopCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_JogSmoothStopCommandTimeCheck(True)
                    DN_JogSoomthStopCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_JogSmoothStopCommandTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_JogSoomthStopCommand = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_JogSoomthStopCommand = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_JogSoomthStopCommand = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_JogSoomthStopCommand = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_JogSmoothStopCommandTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_JogSmoothStopCommandTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_JogSmoothStopCommandTimeCheck = 0
    End If

End Function
Public Function DN_JogEmgStopCommand(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT
    
    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)
    
    setByte(0) = &H10: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_JogEmgStopCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_JogEmgStopCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_JogEmgStopCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_JogEmgStopCommandTimeCheck(True)
                    DN_JogEmgStopCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_JogEmgStopCommandTimeCheck(True)
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8) 'Bit Clear
            DN_Wait 0.1, True: setByte(0) = 0 'Bit Clear
            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_JogEmgStopCommand = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_JogEmgStopCommand = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_JogEmgStopCommand = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_JogEmgStopCommand = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_JogEmgStopCommandTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_JogEmgStopCommandTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_JogEmgStopCommandTimeCheck = 0
    End If

End Function
Public Function DN_ServoOnCommand(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT
    
    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H10: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_ServoOnCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_ServoOnCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_ServoOnCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_ServoOnCommandTimeCheck(True)
                    DN_ServoOnCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_ServoOnCommandTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_ServoOnCommand = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_ServoOnCommand = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_ServoOnCommand = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_ServoOnCommand = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_ServoOnCommandTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_ServoOnCommandTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_ServoOnCommandTimeCheck = 0
    End If

End Function
Public Function DN_ServoAmpResetCommand(ipAxisString As String) As Boolean
    
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H10: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_ServoAmpResetCommandTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_ServoAmpResetCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_ServoAmpResetCommandTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_ServoAmpResetCommandTimeCheck(True)
                    DN_ServoAmpResetCommand = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_ServoAmpResetCommandTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_ServoAmpResetCommand = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_ServoAmpResetCommand = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_ServoAmpResetCommand = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_ServoAmpResetCommand = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_ServoAmpResetCommandTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_ServoAmpResetCommandTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_ServoAmpResetCommandTimeCheck = 0
    End If

End Function
Public Function DN_SetOutPulseCounter(ipAxisString As String, ipSetCount_PLS As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H0: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "7"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
    tmp_hex$ = ""
    'cal_pos_pls& = ipPosition / DN_AxisFactor_mm_per_PLS(head_index%)
    cal_hex$ = Hex(ipSetCount_PLS)
    For i% = 8 - Len(cal_hex$) To 1 Step -1
        zero_hex$ = "0" & zero_hex$
    Next i%
    tmp_hex$ = zero_hex$ & cal_hex$
    #If 1 Then
        'Debug.Print "Set Out Pulse Counts(Hex) : " & tmp_hex$
    #End If
    setByte(4) = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = Val("&H" & Mid(tmp_hex$, 5, 2))
    setByte(6) = Val("&H" & Mid(tmp_hex$, 3, 2))
    setByte(7) = Val("&H" & Left(tmp_hex$, 2))

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_SetOutPulseCounterTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_SetOutPulseCounter = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_SetOutPulseCounterTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_SetOutPulseCounterTimeCheck(True)
                    DN_SetOutPulseCounter = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_SetOutPulseCounterTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_SetOutPulseCounter = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_SetOutPulseCounter = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_SetOutPulseCounter = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_SetOutPulseCounter = True
    DN_FALG_PORT_USE = False

End Function
Function DN_SetOutPulseCounterTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_SetOutPulseCounterTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_SetOutPulseCounterTimeCheck = 0
    End If

End Function
Public Function DN_SetEncoderPulseCounter(ipAxisString As String, ipSetCount_PLS As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT
    
    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H0: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "8"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
    tmp_hex$ = ""
    'cal_pos_pls& = ipPosition / DN_AxisFactor_mm_per_PLS(head_index%)
    cal_hex$ = Hex(ipSetCount_PLS)
    For i% = 8 - Len(cal_hex$) To 1 Step -1
        zero_hex$ = "0" & zero_hex$
    Next i%
    tmp_hex$ = zero_hex$ & cal_hex$
    #If 1 Then
        'Debug.Print "Set Out Pulse Counts(Hex) : " & tmp_hex$
    #End If
    setByte(4) = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = Val("&H" & Mid(tmp_hex$, 5, 2))
    setByte(6) = Val("&H" & Mid(tmp_hex$, 3, 2))
    setByte(7) = Val("&H" & Left(tmp_hex$, 2))

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_SetEncoderPulseCounterTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_SetEncoderPulseCounter = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_SetEncoderPulseCounterTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_SetEncoderPulseCounterTimeCheck(True)
                    DN_SetEncoderPulseCounter = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_SetEncoderPulseCounterTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_SetEncoderPulseCounter = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_SetEncoderPulseCounter = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_SetEncoderPulseCounter = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_SetEncoderPulseCounter = True
    DN_FALG_PORT_USE = False

End Function
Function DN_SetEncoderPulseCounterTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_SetEncoderPulseCounterTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_SetEncoderPulseCounterTimeCheck = 0
    End If

End Function
Public Function DN_SetCwSoftLimit(ipAxisString As String, ipLimitVal_mm As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT
    
    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H0: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "9"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
    tmp_hex$ = ""
    cal_pls& = ipLimitVal_mm / DN_AxisFactor_mm_per_PLS(head_index%)
    cal_hex$ = Hex(cal_pls&)
    For i% = 8 - Len(cal_hex$) To 1 Step -1
        zero_hex$ = "0" & zero_hex$
    Next i%
    tmp_hex$ = zero_hex$ & cal_hex$
    #If 1 Then
        'Debug.Print "Set Out Pulse Counts(Hex) : " & tmp_hex$
    #End If
    setByte(4) = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = Val("&H" & Mid(tmp_hex$, 5, 2))
    setByte(6) = Val("&H" & Mid(tmp_hex$, 3, 2))
    setByte(7) = Val("&H" & Left(tmp_hex$, 2))

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_SetCwSoftLimitTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_SetCwSoftLimit = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_SetCwSoftLimitTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_SetCwSoftLimitTimeCheck(True)
                    DN_SetCwSoftLimit = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_SetCwSoftLimitTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_SetCwSoftLimit = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_SetCwSoftLimit = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_SetCwSoftLimit = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_SetCwSoftLimit = True
    DN_FALG_PORT_USE = False

End Function
Function DN_SetCwSoftLimitTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_SetCwSoftLimitTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_SetCwSoftLimitTimeCheck = 0
    End If

End Function
Public Function DN_SetCCwSoftLimit(ipAxisString As String, ipLimitVal_mm As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    setByte(0) = &H0: setByte(1) = &H0
    tmp_hex$ = Hex(axis_no%) & "A"
    setByte(2) = Val("&H" & tmp_hex$): setByte(3) = &H0
    tmp_hex$ = ""
    cal_pls& = ipLimitVal_mm / DN_AxisFactor_mm_per_PLS(head_index%)
    cal_hex$ = Hex(cal_pls&)
    For i% = 8 - Len(cal_hex$) To 1 Step -1
        zero_hex$ = "0" & zero_hex$
    Next i%
    tmp_hex$ = zero_hex$ & cal_hex$
    #If 1 Then
        'Debug.Print "Set Out Pulse Counts(Hex) : " & tmp_hex$
    #End If
    setByte(4) = Val("&H" & Right(tmp_hex$, 2))
    setByte(5) = Val("&H" & Mid(tmp_hex$, 5, 2))
    setByte(6) = Val("&H" & Mid(tmp_hex$, 3, 2))
    setByte(7) = Val("&H" & Left(tmp_hex$, 2))

    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_SetCCwSoftLimitTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_SetCCwSoftLimit = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_SetCCwSoftLimitTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_SetCCwSoftLimitTimeCheck(True)
                    DN_SetCCwSoftLimit = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_SetCCwSoftLimitTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, rtnByte(0), 8)
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_SetCCwSoftLimit = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_SetCCwSoftLimit = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_SetCCwSoftLimit = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_SetCCwSoftLimit = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_SetCCwSoftLimitTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_SetCCwSoftLimitTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_SetCCwSoftLimitTimeCheck = 0
    End If

End Function
Public Function DN_AxisStatusCheck(ipAxisString As String) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 ' 0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(3) = Val("&H" & tmp_hex$)
    
    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_AxisStatusCheck = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_AxisStatusCheckTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)
                    DN_AxisStatusCheck = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            DN_Wait 0.2, True
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
            For i% = 0 To 7
                If (rtnByte(0) And (2 ^ i%)) <> 0 Then
                    DN_State_Axis(head_index%, i%) = True
                Else
                    DN_State_Axis(head_index%, i%) = False
                End If
                If (rtnByte(2) And (2 ^ i%)) <> 0 Then
                    DN_Sens_Axis(head_index%, i%) = True
                Else
                    DN_Sens_Axis(head_index%, i%) = False
                End If
            Next i%
            
            #If 1 Then
                Debug.Print "Nod : " & nod_no% & " : " & ipAxisString
                For i% = 0 To 7
                    Debug.Print "OutByte" & CStr(i%) & ":" & Hex_FormatString(Hex(setByte(i%)), 2) & "  ,  " & "In  Byte" & CStr(i%) & ":" & Hex_FormatString(Hex(rtnByte(i%)), 2)
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex_FormatString(Hex(rtnByte(i%)), 2)
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_AxisStatusCheck = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_AxisStatusCheck = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_AxisStatusCheck = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_AxisStatusCheck = True
    DN_FALG_PORT_USE = False

End Function
Public Function DN_AxisStatusCheck2(ipAxisString As String) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'ipAxisString---> HnXZT : n = Head No , X(ZT) = 축지정 문자
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 0
    axis_no% = 1
    nod_no% = 5

    tmp_hex$ = Hex(axis_no%) & "0"
    setByte(3) = Val("&H" & tmp_hex$)
    
    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    DN_AxisStatusCheck2 = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_AxisStatusCheckTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)
                    DN_AxisStatusCheck2 = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_AxisStatusCheckTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            DN_Wait 0.2, True
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
            For i% = 0 To 7
                If (rtnByte(0) And (2 ^ i%)) <> 0 Then
                    DN_State_Axis(head_index%, i%) = True
                Else
                    DN_State_Axis(head_index%, i%) = False
                End If
                If (rtnByte(2) And (2 ^ i%)) <> 0 Then
                    DN_Sens_Axis(head_index%, i%) = True
                Else
                    DN_Sens_Axis(head_index%, i%) = False
                End If
            Next i%
            
            #If 1 Then
                Debug.Print "Nod : " & nod_no% & " : " & ipAxisString
                For i% = 0 To 7
                    Debug.Print "OutByte" & CStr(i%) & ":" & Hex_FormatString(Hex(setByte(i%)), 2) & "  ,  " & "In  Byte" & CStr(i%) & ":" & Hex_FormatString(Hex(rtnByte(i%)), 2)
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex_FormatString(Hex(rtnByte(i%)), 2)
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                DN_AxisStatusCheck2 = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            DN_AxisStatusCheck2 = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        DN_AxisStatusCheck2 = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    DN_AxisStatusCheck2 = True
    DN_FALG_PORT_USE = False

End Function
Function DN_AxisStatusCheckTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_AxisStatusCheckTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_AxisStatusCheckTimeCheck = 0
    End If

End Function
Public Function DN_PositionReadAxis(ipAxisString As String, rtnPosition As Double) As Boolean
    
    ', Optional ByVal ipFlagSetParam As Boolean
    Dim rtn_Int As Integer
    Dim setByte(7) As Byte
    Dim rtnByte(7) As Byte
    Dim rtn_Events As Byte

    'One Axis용
    
    DN_FALG_PORT_USE = True
    
    ovt_check# = DN_CONST_CommStateOVT

    head_index% = 1 '0
    axis_no% = DN_AxisNo
    nod_no% = DN_Devece_MacID(head_index%)

    tmp_hex$ = Hex(axis_no%) & "8"
    setByte(3) = Val("&H" & tmp_hex$)
    
    #If 1 Then
        'Debug.Print "Nod : " & nod_no%
        For i% = 0 To 7
            'Debug.Print "Out Byte" & CStr(i%) & ":" & Hex(setByte(i%))
        Next i%
    #End If

    rtn_Int = DNS_GetDeviceStatus(DN_CardHandleNo, nod_no%, DN_Device_Status)
    
    If rtn_Int = 1 Then
        If DN_Device_Status.StatusCode = DNS_ACTIVE Then
        
            rtn_dbl# = DN_PositionReadAxisTimeCheck(True)
            Do
                DoEvents
                rtn_Int = DNS_GetDeviceEvent(DN_CardHandleNo, nod_no%, IO1_EVENT, rtn_Events)
                If rtn_Int <> 1 Then
                    PositionReadAxis = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
                If DN_PositionReadAxisTimeCheck(False) > ovt_check# Then
                    rtn_dbl# = DN_PositionReadAxisTimeCheck(True)
                    PositionReadAxis = False
                    DN_FALG_PORT_USE = False
                    Exit Function
                End If
            Loop Until rtn_Events = IO1_EVENT
            rtn_dbl# = DN_PositionReadAxisTimeCheck(True)

            rtn_Int = DNS_WriteDeviceIo(DN_CardHandleNo, nod_no%, DNS_OUTPUT1, setByte(0), 8)
            DN_Wait 0.1, True
            rtn_Int = DNS_ReadDeviceIo(DN_CardHandleNo, nod_no%, DNS_INPUT1, rtnByte(0), 8)
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            hex_ful$ = Hex_FormatString(Hex(rtnByte(7)), 2) & Hex_FormatString(Hex(rtnByte(6)), 2) & Hex_FormatString(Hex(rtnByte(5)), 2) & Hex_FormatString(Hex(rtnByte(4)), 2)
            pls_counts# = Convert32BitHex_To_Decimal(hex_ful$)
            rtnPosition = (pls_counts# * DN_AxisFactor_mm_per_PLS(head_index%)) ' / 1000
            'Convert32BitHex_To_Decimal
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            #If 1 Then
                'Debug.Print "Nod : " & nod_no% & " : Reading DNS_OUTPUT1"
                For i% = 0 To 7
                    'Debug.Print "In  Byte" & CStr(i%) & ":" & Hex(rtnByte(i%))
                Next i%
            #End If
            
            If rtn_Int <> 1 Then
                PositionReadAxis = False
                DN_FALG_PORT_USE = False
                Exit Function
            End If
        Else
            PositionReadAxis = False
            DN_FALG_PORT_USE = False
            Exit Function
        End If
    Else
        PositionReadAxis = False
        DN_FALG_PORT_USE = False
        Exit Function
    End If
    PositionReadAxis = True
    DN_FALG_PORT_USE = False
    
End Function
Function DN_PositionReadAxisTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_PositionReadAxisTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_PositionReadAxisTimeCheck = 0
    End If

End Function
Public Function DN_NodStatus(ipNodIndex As Integer) As String

    Dim localDN_Device_Status(3) As DNS_STATUS

    ''If DN_Flag_ScanStart = False Then Exit Function

    'For i% = 0 To 3
        rtn_Int% = DNS_GetDeviceStatus(DN_CardHandleNo, ipNodIndex, localDN_Device_Status(ipNodIndex - 1))
        If rtn_Int% = 1 Then
            Select Case localDN_Device_Status(ipNodIndex - 1).StatusCode
                Case DNS_NON_EXIST
                    DN_NodStatus = "DNS_NON_EXIST"
                Case DNS_IDLE
                    DN_NodStatus = "DNS_IDLE"
                Case DNS_ACTIVE
                    DN_NodStatus = "DNS_ACTIVE"
                Case DNS_TIMEOUT
                    DN_NodStatus = "DNS_TIMEOUT"
                Case DNS_FAULT_UCMM
                    DN_NodStatus = "DNS_FAULT_UCMM"
                Case DNS_MS_BUSY
                    DN_NodStatus = "DNS_MS_BUSY"
                Case DNS_FAULT_MS
                    DN_NodStatus = "DNS_FAULT_MS"
                Case DNS_BAD_VENDOR
                    DN_NodStatus = "DNS_BAD_VENDOR"
                Case DNS_FAULT_VENDOR
                    DN_NodStatus = "DNS_FAULT_VENDOR"
                Case DNS_BAD_TYPE
                    DN_NodStatus = "DNS_BAD_TYPE"
                Case DNS_FAULT_TYPE
                    DN_NodStatus = "DNS_FAULT_TYPE"
                Case DNS_BAD_CODE
                    DN_NodStatus = "DNS_BAD_CODE"
                Case DNS_FAULT_CODE
                    DN_NodStatus = "DNS_FAULT_CODE"
                Case DNS_BAD_IO1_INPUT
                    DN_NodStatus = "DNS_BAD_IO1_INPUT"
                Case DNS_FAULT_IO1_INPUT
                    DN_NodStatus = "DNS_FAULT_IO1_INPUT"
                Case DNS_BAD_IO1_OUTPUT
                    DN_NodStatus = "DNS_BAD_IO1_OUTPUT"
                Case DNS_FAULT_IO1_OUTPUT
                    DN_NodStatus = "DNS_FAULT_IO1_OUTPUT"
                Case DNS_BAD_IO2_INPUT
                    DN_NodStatus = "DNS_BAD_IO2_INPUT"
                Case DNS_FAULT_IO2_INPUT
                    DN_NodStatus = "DNS_FAULT_IO2_INPUT"
                Case DNS_BAD_IO2_OUTPUT
                    DN_NodStatus = "DNS_BAD_IO2_OUTPUT"
                Case DNS_FAULT_IO2_OUTPUT
                    DN_NodStatus = "DNS_FAULT_IO2_OUTPUT"
                Case DNS_FAULT_IO1_EPR
                    DN_NodStatus = "DNS_FAULT_IO1_EPR"
                Case DNS_FAULT_IO2_EPR
                    DN_NodStatus = "DNS_FAULT_IO2_EPR"
                Case DNS_MS_SYNC
                    DN_NodStatus = "DNS_MS_SYNC"
            End Select
        Else
            DN_NodStatus = "DnNod" & CStr(ipNodIndex) & "-OFFLINE"
        End If
    'Next i%
    
End Function
Function DN_WaitTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DN_WaitTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DN_WaitTimeCheck = 0
    End If

End Function
Sub DN_Wait(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = DN_WaitTimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until DN_WaitTimeCheck(False) >= ipWaitTime
    rtn_dbl# = DN_WaitTimeCheck(True)
    
End Sub
