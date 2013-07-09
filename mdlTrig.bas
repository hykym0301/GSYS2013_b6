Attribute VB_Name = "mdlTrig"

Const OVERTIME_SEC As Integer = 5 '0.5
Const ERROR_INPUT_CHANNEL As String = "Wrong input channel number."
Const DEFAULT_COUNTPER_UM As Double = 0.3125 '0.0003125mm
Const MINIMIZE_FIRE_PITCH_MM As Double = 0.002
Const RESOLUTION_TRIGGER_BORAD_TIME_NS As Double = (10 ^ 8)

Public Const Trig_Mode_OnePulse_Select_Bit As Integer = 0
Public Const Trig_Mode_Encoder_Select_Bit As Integer = 1
Public Const Trig_Mode_Frequnecy_Select_Bit As Integer = 2


Public Enum eARM_ADDRESS
    '// Common
    ENC_DIR_REG = 0
    FILTER_VALUE_REG
    STROBE_MODE_EN_REG
    STROBE_VALUE_REG
    
    
    '// Channel 1
    TRIG_START1
    TRIG_STOP1
    INT_MODE_EN1
    TIME_VALUE_REG1 'Freq INT Trigger
    PULSE_WIDTH_REG1 'Freq INT Trigger
    STROBE_ONTIME_REG1
    STROBE_DELAY_REG1
    STROBE_BRIGHT_VALUE_REG1
    STROBO_DOT_COUNTS1

    ENC_POS_REG1
    ENC_START_POS_REG1
    ENC_INC_END_POS_REG1
    ENC_INT_ADD_REG1
    ENC_PITCH_REG1
    ENC_STOP_POS_REG1
    
    '// Channel 2
    TRIG_START2
    TRIG_STOP2
    INT_MODE_EN2
    TIME_VALUE_REG2
    PULSE_WIDTH_REG2
    STROBE_ONTIME_REG2
    STROBE_DELAY_REG2
    STROBE_BRIGHT_VALUE_REG2
    STROBO_DOT_COUNTS2
    
    ENC_POS_REG2
    ENC_START_POS_REG2
    ENC_INC_END_POS_REG2
    ENC_INT_ADD_REG2
    ENC_PITCH_REG2
    ENC_STOP_POS_REG2
    
    '// Channel 3
    TRIG_START3
    TRIG_STOP3
    INT_MODE_EN3
    TIME_VALUE_REG3
    PULSE_WIDTH_REG3
    STROBE_ONTIME_REG3
    STROBE_DELAY_REG3
    STROBE_BRIGHT_VALUE_REG3
    STROBO_DOT_COUNTS3
    
    ENC_POS_REG3
    ENC_START_POS_REG3
    ENC_INC_END_POS_REG3
    ENC_INT_ADD_REG3
    ENC_PITCH_REG3
    ENC_STOP_POS_REG3
    
    FPGA_STATE
    
    TRIG_Mode1 'Ch0 Trigger Mode
    TRIG_Mode2 'Ch1 Trigger Mode
    TRIG_Mode3 'Ch2 Trigger Mode
    
    ENC_RevStartPOS_REG1
    ENC_RevStopPOS_REG1
    ENC_RevStartPOS_REG2
    ENC_RevStopPOS_REG2
    ENC_RevStartPOS_REG3
    ENC_RevStopPOS_REG3
End Enum

Public Enum eFPGA_STATUS_BIT
    TRIG_START1 = 0
    TRIG_STOP1
    INT_MODE_EN1
    NC3
    NC4
    NC5
    NC6
    NC7
        
    TRIG_START2
    TRIG_STOP2
    INT_MODE_EN2
    NC11
    NC12
    NC13
    NC14
    NC15
    
    TRIG_START3
    TRIG_STOP3
    INT_MODE_EN3
End Enum

Public Enum eENC_DIR
    Forward = 1
    Backward = 0
End Enum

Public Enum eCHANNEL
    ch1 = 0
    CH2
    CH3
End Enum

Public Enum eNOISE_FILTER
    OPTION_0 = 0
    OPTION_1 = 1
    OPTION_2 = 2
    OPTION_3 = 3
End Enum

Public Enum eBitNo
    '// 1Byte: 8Bit
    Bit0 = 0
    Bit1
    Bit2
    Bit3
    Bit4
    Bit5
    Bit6
    Bit7
    
    '// 2Byte: 16Bit
    Bit8 = 8
    Bit9
    Bit10
    Bit11
    Bit12
    Bit13
    Bit14
    Bit15
    
    '// 3Byte: 24Bit
    Bit16 = 16
    Bit17
    Bit18
    Bit19
    Bit20
    Bit21
    Bit22
    Bit23
    
    '// 4Byte: 32Bit
    Bit24 = 24
    Bit25
    Bit26
    Bit27
    Bit28
    Bit29
    Bit30
    Bit31
End Enum

Public Type ST_FPGA
    bTRIG_START(eCHANNEL.CH3) As Boolean
    bTRIG_STOP(eCHANNEL.CH3) As Boolean
    bINT_MODE_EN(eCHANNEL.CH3) As Boolean
End Type

Dim fwsk As Winsock
Dim fbConnected As Boolean

Private fbyteSendBuf() As Byte
Private fbyteReadBuf() As Byte
Private fstrARM_Adr() As String

Private fbDataArrival As Boolean
Private fdCountPerUm(2) As Double

Public gFPGASts As ST_FPGA
Public glngValue As Long
Public gdEncPos_Mm(3) As Double
Public Trig_Connected As Boolean

Sub InitVar()
On Error GoTo syserr
    
    fbDataArrival = False
    fbConnected = False
    
    ReDim fstrARM_Adr(eARM_ADDRESS.ENC_DIR_REG To eARM_ADDRESS.ENC_RevStopPOS_REG3) 'eARM_ADDRESS.FPGA_STATE
    
    
    
    fstrARM_Adr(eARM_ADDRESS.ENC_DIR_REG) = "26000000"                  '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG1) = "26000010"     '---------> use
    fstrARM_Adr(eARM_ADDRESS.TRIG_Mode1) = "26000020"                   '---------> use
    
    fstrARM_Adr(eARM_ADDRESS.TRIG_START1) = "26000104"                  '---------> use
    fstrARM_Adr(eARM_ADDRESS.TRIG_STOP1) = "26000108"                   '---------> use
    fstrARM_Adr(eARM_ADDRESS.INT_MODE_EN1) = "2600010C"                 '---------> use
    fstrARM_Adr(eARM_ADDRESS.TIME_VALUE_REG1) = "26000110"              '---------> use
    fstrARM_Adr(eARM_ADDRESS.PULSE_WIDTH_REG1) = "26000114"             '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_ONTIME_REG1) = "2600011C"           '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_DELAY_REG1) = "26000118"            '---------> use
    
    fstrARM_Adr(eARM_ADDRESS.ENC_POS_REG1) = "26000120"                 '---------> use
    fstrARM_Adr(eARM_ADDRESS.ENC_PITCH_REG1) = "26000130"               '---------> use
    fstrARM_Adr(eARM_ADDRESS.ENC_STOP_POS_REG1) = "26000134"            '---------> use
    fstrARM_Adr(eARM_ADDRESS.ENC_START_POS_REG1) = "26000124"           '---------> use
    
    
    
    
    

    fstrARM_Adr(eARM_ADDRESS.ENC_DIR_REG) = "26000000"                  '---------> use
    fstrARM_Adr(eARM_ADDRESS.FILTER_VALUE_REG) = "26000004"
    fstrARM_Adr(eARM_ADDRESS.STROBE_MODE_EN_REG) = "26000008"
    fstrARM_Adr(eARM_ADDRESS.STROBE_VALUE_REG) = "2600000C"
        
    fstrARM_Adr(eARM_ADDRESS.TRIG_START1) = "26000104"                  '---------> use
    fstrARM_Adr(eARM_ADDRESS.TRIG_STOP1) = "26000108"                   '---------> use
    fstrARM_Adr(eARM_ADDRESS.INT_MODE_EN1) = "2600010C"                 '---------> use
    fstrARM_Adr(eARM_ADDRESS.TIME_VALUE_REG1) = "26000110"              '---------> use
    fstrARM_Adr(eARM_ADDRESS.PULSE_WIDTH_REG1) = "26000114"             '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_ONTIME_REG1) = "2600011C"           '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_DELAY_REG1) = "26000118"            '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG1) = "26000010"     '---------> use
    fstrARM_Adr(eARM_ADDRESS.STROBO_DOT_COUNTS1) = "26000150"

    fstrARM_Adr(eARM_ADDRESS.ENC_POS_REG1) = "26000120"                 '---------> use
    fstrARM_Adr(eARM_ADDRESS.ENC_START_POS_REG1) = "26000124"           '---------> use
    fstrARM_Adr(eARM_ADDRESS.ENC_INC_END_POS_REG1) = "26000128"
    fstrARM_Adr(eARM_ADDRESS.ENC_INT_ADD_REG1) = "2600012C"
    fstrARM_Adr(eARM_ADDRESS.ENC_PITCH_REG1) = "26000130" 'Trig_Mode_Encoder_Select_Bit 일때는 엔코더 피치로    '---------> use
                                                          'Trig_Mode_Frequnecy_Select_Bit 일때는 프리퀜시
    fstrARM_Adr(eARM_ADDRESS.ENC_STOP_POS_REG1) = "26000134"            '---------> use
    
    fstrARM_Adr(eARM_ADDRESS.TRIG_START2) = "26000204"
    fstrARM_Adr(eARM_ADDRESS.TRIG_STOP2) = "26000208"
    fstrARM_Adr(eARM_ADDRESS.INT_MODE_EN2) = "2600020C"
    fstrARM_Adr(eARM_ADDRESS.TIME_VALUE_REG2) = "26000210"
    fstrARM_Adr(eARM_ADDRESS.PULSE_WIDTH_REG2) = "26000214"
    fstrARM_Adr(eARM_ADDRESS.STROBE_ONTIME_REG2) = "2600021C"
    fstrARM_Adr(eARM_ADDRESS.STROBE_DELAY_REG2) = "26000218"
    fstrARM_Adr(eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG2) = "26000014"
    fstrARM_Adr(eARM_ADDRESS.STROBO_DOT_COUNTS2) = "26000250"
    
    fstrARM_Adr(eARM_ADDRESS.ENC_POS_REG2) = "26000220"
    fstrARM_Adr(eARM_ADDRESS.ENC_START_POS_REG2) = "26000224"
    fstrARM_Adr(eARM_ADDRESS.ENC_INC_END_POS_REG2) = "26000228"
    fstrARM_Adr(eARM_ADDRESS.ENC_INT_ADD_REG2) = "2600022C"
    fstrARM_Adr(eARM_ADDRESS.ENC_PITCH_REG2) = "26000230"
    fstrARM_Adr(eARM_ADDRESS.ENC_STOP_POS_REG2) = "26000234"
    
    fstrARM_Adr(eARM_ADDRESS.TRIG_START3) = "26000304"
    fstrARM_Adr(eARM_ADDRESS.TRIG_STOP3) = "26000308"
    fstrARM_Adr(eARM_ADDRESS.INT_MODE_EN3) = "2600030C"
    fstrARM_Adr(eARM_ADDRESS.TIME_VALUE_REG3) = "26000310"
    fstrARM_Adr(eARM_ADDRESS.PULSE_WIDTH_REG3) = "26000314"
    fstrARM_Adr(eARM_ADDRESS.STROBE_ONTIME_REG3) = "2600031C"
    fstrARM_Adr(eARM_ADDRESS.STROBE_DELAY_REG3) = "26000318"
    fstrARM_Adr(eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG3) = "26000018"
    fstrARM_Adr(eARM_ADDRESS.STROBO_DOT_COUNTS3) = "26000350"
    
    fstrARM_Adr(eARM_ADDRESS.ENC_POS_REG3) = "26000320"
    fstrARM_Adr(eARM_ADDRESS.ENC_START_POS_REG3) = "26000324"
    fstrARM_Adr(eARM_ADDRESS.ENC_INC_END_POS_REG3) = "26000328"
    fstrARM_Adr(eARM_ADDRESS.ENC_INT_ADD_REG3) = "2600032C"
    fstrARM_Adr(eARM_ADDRESS.ENC_PITCH_REG3) = "26000330"
    fstrARM_Adr(eARM_ADDRESS.ENC_STOP_POS_REG3) = "26000334"
    fstrARM_Adr(eARM_ADDRESS.FPGA_STATE) = "26000F00"
    
    fstrARM_Adr(eARM_ADDRESS.TRIG_Mode1) = "26000020"                           '---------> use
    fstrARM_Adr(eARM_ADDRESS.TRIG_Mode2) = "26000024"
    fstrARM_Adr(eARM_ADDRESS.TRIG_Mode3) = "26000028"
    
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStartPOS_REG1) = "26000164"
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStopPOS_REG1) = "26000174"
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStartPOS_REG2) = "26000264"
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStopPOS_REG2) = "26000274"
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStartPOS_REG3) = "26000364"
    fstrARM_Adr(eARM_ADDRESS.ENC_RevStopPOS_REG3) = "26000374"
    
    fdCountPerUm(0) = DEFAULT_COUNTPER_UM
    fdCountPerUm(1) = DEFAULT_COUNTPER_UM
    fdCountPerUm(2) = DEFAULT_COUNTPER_UM
Exit Sub

syserr:
Call MsgBox(Err.Description, vbExclamation)
End Sub

Public Sub SetUmPerCount(ipChNo As Integer, ByVal i_dUmPerCount As Double)

    On Error GoTo syserr
    fdCountPerUm(ipChNo) = i_dUmPerCount
    
Exit Sub
syserr:

End Sub

Public Function GetWinsockStatus() As Boolean
On Error GoTo syserr
    
    If fwsk.State = sckConnected Then
        GetWinsockStatus = True
    Else
        GetWinsockStatus = False
    End If
    
Exit Function
syserr:
    GetWinsockStatus = False
End Function


Public Function Connect(i_objWSock As Winsock, i_strIP As String, i_lngPortNo As Long) As Boolean
On Error GoTo syserr

    Set fwsk = i_objWSock

    Trig_Connected = False

    If GetWinsockStatus() = True Then
        fwsk.Close
        Call CheckTimer(True)
        Do
            DoEvents
            If CheckTimer(False) > OVERTIME_SEC Then
                Call CheckTimer(True)
                If fwsk.State <> sckClosed Then
                    fwsk.Close
                End If
                Connect = False
                Exit Function
            End If
        Loop Until fwsk.State = sckClosed
    End If
            
    Call InitVar
    
    fwsk.RemoteHost = i_strIP
    fwsk.RemotePort = i_lngPortNo
    fwsk.Connect
    
    Call CheckTimer(True)
    Do
        DoEvents
        If CheckTimer(False) > OVERTIME_SEC Then
            Call CheckTimer(True)
            If fwsk.State <> sckClosed Then
                fwsk.Close
            End If
            Connect = False
            Exit Function
        End If
    Loop Until fwsk.State = sckConnected
    
    Call CheckTimer(True)
    Connect = True
    Trig_Connected = True
    
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    Connect = False
End Function

Public Sub Disconnect()
On Error GoTo syserr
    fwsk.Close
Exit Sub
syserr:
Call MsgBox(Err.Description, vbExclamation)
End Sub

Private Function SendData(i_pOutBuf() As Byte) As Boolean
On Error GoTo syserr
    
    If GetWinsockStatus() = False Then
        Exit Function
    End If
    
    fbDataArrival = False
    Call fwsk.SendData(i_pOutBuf)
    SendData = True
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    SendData = False
End Function

Function ReceiveData(i_lngBufSize As Long) As Boolean
On Error GoTo syserr

    ReDim fbyteReadBuf(i_lngBufSize - 1)

    Call fwsk.GetData(fbyteReadBuf, vbArray + vbByte)
    fbDataArrival = True
    ReceiveData = True
Exit Function
syserr:
Call MsgBox(Err.Description, vbExclamation)
   ReceiveData = False
End Function

Function CheckTimer(i_bClearAll As Boolean) As Double
On Error GoTo syserr

    Static bStart As Boolean
    Static dDuStart As Double
    Static dDurationTime As Double

    If i_bClearAll = False Then
        If bStart = False Then
            dDuStart = GetTickCount / (10 ^ 3)
            bStart = True
        Else
            dDurationTime = Abs((GetTickCount / (10 ^ 3)) - dDuStart)
            CheckTimer = dDurationTime
        End If
    Else
        bStart = False
        dDuStart = 0
        dDurationTime = 0
        CheckTimer = 0
    End If
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
End Function

Function ParshHextoString(i_strHex As String, i_nQuantity As Integer) As String
On Error GoTo syserr
Dim strHex As String
Dim i As Integer

    strHex = i_strHex
    For i = 1 To (i_nQuantity - Len(i_strHex)) 'Step -1
        strHex = "0" & strHex
    Next i
    ParshHextoString = strHex

Exit Function
syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Function ParshHexToDec(ByVal strHex As String) As String
On Error GoTo syserr

    Dim i As Long
    Dim strDigit As String
    Dim lngDigitVal As Long
    Dim lngCalcVal As Long
    Dim bMinusF As Boolean

    For i = 1 To Len(strHex)
        strDigit = Mid(strHex, i, 1)
        Select Case strDigit
        Case "A"
            lngDigitVal = 10
        Case "B"
            lngDigitVal = 11
        Case "C"
            lngDigitVal = 12
        Case "D"
            lngDigitVal = 13
        Case "E"
            lngDigitVal = 14
        Case "F"
            lngDigitVal = 15
        Case Else
            lngDigitVal = Val(strDigit)
        End Select

        If i = 1 And lngDigitVal > 7 Then
            bMinusF = True
        End If

        lngCalcVal = lngCalcVal + (lngDigitVal * (16 ^ (Len(strHex) - i)))
    Next i
    If bMinusF = True Then
        lngCalcVal = -(65536 - lngCalcVal)
    End If
    
    ParshHexToDec = CStr(lngCalcVal)
Exit Function
syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Function CheckSum(i_pBuf() As Byte) As Byte
On Error GoTo syserr
    Dim i As Integer
    Dim lngCal_data As Long
    Dim nHeaderByte As Integer
    Dim nTerminateByte As Integer

    nHeaderByte = 5         'Header(3Byte) + Command+Data Len(2Byte)
    nTerminateByte = 2      'Terminate(1Byte) + Checksum(1Byte)
    
    For i = nHeaderByte To (UBound(i_pBuf) - nTerminateByte)
        lngCal_data = (lngCal_data) Xor (i_pBuf(i))
    Next i
    
    CheckSum = lngCal_data
Exit Function
syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Function GetStartStatus(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    
    Call GetFPGAStatus
    GetStartStatus = gFPGASts.bTRIG_START(i_nChannel)
    
Exit Function
syserr:
End Function

Function GetStopStatus(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    
    Call GetFPGAStatus
    GetStopStatus = gFPGASts.bTRIG_STOP(i_nChannel)
    
Exit Function
syserr:
End Function

Function GetIntModeEN(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    
    Call GetFPGAStatus
    GetIntModeEN = gFPGASts.bINT_MODE_EN(i_nChannel)
    
Exit Function
syserr:
End Function

Function GetFPGAStatus() As Boolean
On Error GoTo syserr
    
    Dim nARMAddress As eARM_ADDRESS
    
    nARMAddress = eARM_ADDRESS.FPGA_STATE
    
    ReDim fbyteSendBuf(11)
    
    'Header---------------------
    fbyteSendBuf(0) = Val("&H" & "AA")
    fbyteSendBuf(1) = Val("&H" & "AA")
    fbyteSendBuf(2) = Val("&H" & "98")
    'Header---------------------
    
    'Command+Data Len-----------
    fbyteSendBuf(3) = Val("&H" & "05")
    fbyteSendBuf(4) = Val("&H" & "00")
    'Command+Data Len-----------
    
    'Command--------------------
    fbyteSendBuf(5) = Val("&H" & "43")
    'Command--------------------
    
    'Data Address
    fbyteSendBuf(6) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 7, 2))
    fbyteSendBuf(7) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 5, 2))
    fbyteSendBuf(8) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 3, 2))
    fbyteSendBuf(9) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 1, 2))
        
    'Checksum-------------------
    fbyteSendBuf(10) = CheckSum(fbyteSendBuf)
    'Checksum-------------------
    
    'Terminate------------------
    fbyteSendBuf(11) = Val("&H" & "0A")
    'Terminate------------------
        
    Call SendData(fbyteSendBuf)
    fbDataArrival = False

    Call CheckTimer(True)
    Do
        DoEvents
        If CheckTimer(False) > OVERTIME_SEC Then
            Call CheckTimer(True)
            Exit Function
        End If
    Loop Until fbDataArrival = True
    Call CheckTimer(True)

    If fbyteReadBuf(6) = 255 Then '정상처리 Ack Return
        gFPGASts = ParshFPGAStatus(fbyteReadBuf)
        GetFPGAStatus = True
    Else
        Call Get_ErrNo(fbyteReadBuf)
        GetFPGAStatus = False
    End If
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    GetFPGAStatus = False
End Function

'// 현재 엔코더 포지션을 설정 또는 획득 (D31 = 부호 셋팅은 '1' 만 가능)
Function GetEncPosition_Mm(ByVal i_nChannel As eCHANNEL) As Double
On Error GoTo syserr
   
    Dim nARMAddress As eARM_ADDRESS
   
    ReDim fbyteSendBuf(11)
    
    If i_nChannel = eCHANNEL.ch1 Then
        nARMAddress = eARM_ADDRESS.ENC_POS_REG1
    ElseIf i_nChannel = eCHANNEL.CH2 Then
        nARMAddress = eARM_ADDRESS.ENC_POS_REG2
    ElseIf i_nChannel = eCHANNEL.CH3 Then
        nARMAddress = eARM_ADDRESS.ENC_POS_REG3
    Else
        GetEncPosition_Mm = -1
        Exit Function
    End If
    
    'Header---------------------
    fbyteSendBuf(0) = Val("&H" & "AA")
    fbyteSendBuf(1) = Val("&H" & "AA")
    fbyteSendBuf(2) = Val("&H" & "98")
    'Header---------------------
    
    'Command+Data Len-----------
    fbyteSendBuf(3) = Val("&H" & "05")
    fbyteSendBuf(4) = Val("&H" & "00")
    'Command+Data Len-----------
    
    'Command--------------------
    fbyteSendBuf(5) = Val("&H" & "43")
    'Command--------------------
    
    'Data Address
    fbyteSendBuf(6) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 7, 2))
    fbyteSendBuf(7) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 5, 2))
    fbyteSendBuf(8) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 3, 2))
    fbyteSendBuf(9) = Val("&H" & Mid(fstrARM_Adr(nARMAddress), 1, 2))
        
    'Checksum-------------------
    fbyteSendBuf(10) = CheckSum(fbyteSendBuf)
    'Checksum-------------------
    
    'Terminate------------------
    fbyteSendBuf(11) = Val("&H" & "0A")
    'Terminate------------------
        
    Call SendData(fbyteSendBuf)
    fbDataArrival = False

    Call CheckTimer(True)
    Do
        DoEvents
        If CheckTimer(False) > OVERTIME_SEC Then '
            Call CheckTimer(True)
            Exit Function
        End If
    Loop Until fbDataArrival = True
    Call CheckTimer(True)

    If fbyteReadBuf(6) = 255 Then '정상처리 Ack Return
        gdEncPos_Mm(i_nChannel) = ParshTrigBdPos_Mm(i_nChannel, fbyteReadBuf)
        GetEncPosition_Mm = gdEncPos_Mm(i_nChannel)
    Else
        GetEncPosition_Mm = -1
        Call Get_ErrNo(fbyteReadBuf)
    End If
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    GetEncPosition_Mm = -1
End Function

Function GetRegistry(ByVal i_nARMAddress As eARM_ADDRESS) As Double
On Error GoTo syserr
   
    If GetWinsockStatus() = False Then
        GetRegistry = -1
        Exit Function
    End If
    
    ReDim fbyteSendBuf(11)
    
    'Header---------------------
    fbyteSendBuf(0) = Val("&H" & "AA")
    fbyteSendBuf(1) = Val("&H" & "AA")
    fbyteSendBuf(2) = Val("&H" & "98")
    'Header---------------------
    
    'Command+Data Len-----------
    fbyteSendBuf(3) = Val("&H" & "05")
    fbyteSendBuf(4) = Val("&H" & "00")
    'Command+Data Len-----------
    
    'Command--------------------
    fbyteSendBuf(5) = Val("&H" & "43")
    'Command--------------------
    
    'Data Address
    fbyteSendBuf(6) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 7, 2))
    fbyteSendBuf(7) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 5, 2))
    fbyteSendBuf(8) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 3, 2))
    fbyteSendBuf(9) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 1, 2))
        
    'Checksum-------------------
    fbyteSendBuf(10) = CheckSum(fbyteSendBuf)
    'Checksum-------------------
    
    'Terminate------------------
    fbyteSendBuf(11) = Val("&H" & "0A")
    'Terminate------------------
        
    Call SendData(fbyteSendBuf)
    fbDataArrival = False

    Call CheckTimer(True)
    Do
        DoEvents
        If CheckTimer(False) > OVERTIME_SEC Then
            Call CheckTimer(True)
            Exit Function
        End If
    Loop Until fbDataArrival = True
    Call CheckTimer(True)

    If fbyteReadBuf(6) = 255 Then '정상처리 Ack Return
        If (i_nARMAddress = ENC_POS_REG1) Or (i_nARMAddress = ENC_START_POS_REG1) Or (i_nARMAddress = ENC_INC_END_POS_REG1) Or (i_nARMAddress = ENC_STOP_POS_REG1) Then
            GetRegistry = ParshTrigBdPos_Mm(ch1, fbyteReadBuf)
        ElseIf (i_nARMAddress = ENC_POS_REG2) Or (i_nARMAddress = ENC_START_POS_REG2) Or (i_nARMAddress = ENC_INC_END_POS_REG2) Or (i_nARMAddress = ENC_STOP_POS_REG2) Then
            GetRegistry = ParshTrigBdPos_Mm(CH2, fbyteReadBuf)
        ElseIf (i_nARMAddress = ENC_POS_REG3) Or (i_nARMAddress = ENC_START_POS_REG3) Or (i_nARMAddress = ENC_INC_END_POS_REG3) Or (i_nARMAddress = ENC_STOP_POS_REG3) Then
            GetRegistry = ParshTrigBdPos_Mm(CH3, fbyteReadBuf)
        Else
            GetRegistry = ParshResponse(fbyteReadBuf)
        End If
    Else
        Call Get_ErrNo(fbyteReadBuf)
    End If
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    GetRegistry = -1
End Function

Private Sub DelayWaitTrg(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = DelayWait_TimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until DelayWait_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = DelayWait_TimeCheck(True)
    
End Sub

Private Function DelayWaitTrg_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            DelayWaitTrg_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        DelayWaitTrg_TimeCheck = 0
    End If

End Function


Function SendRegistry(ByVal i_nARMAddress As eARM_ADDRESS, ByVal i_dValue As Double) As Boolean

On Error GoTo syserr

    Dim strValue As String
    
    If GetWinsockStatus() = False Then
        SendRegistry = False
        Exit Function
    End If
    
    ReDim fbyteSendBuf(15)
        
    strValue = ParshHextoString(Hex(i_dValue), 8)
    
    'Header---------------------
    fbyteSendBuf(0) = Val("&H" & "AA")
    fbyteSendBuf(1) = Val("&H" & "AA")
    fbyteSendBuf(2) = Val("&H" & "98")
    'Header---------------------
    
    'Command+Data Len-----------
    fbyteSendBuf(3) = Val("&H" & "09")
    fbyteSendBuf(4) = Val("&H" & "00")
    'Command+Data Len-----------
    
    'Command--------------------
    fbyteSendBuf(5) = Val("&H" & "42")
    'Command--------------------
    
    'Data Address
    fbyteSendBuf(6) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 7, 2))
    fbyteSendBuf(7) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 5, 2))
    fbyteSendBuf(8) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 3, 2))
    fbyteSendBuf(9) = Val("&H" & Mid(fstrARM_Adr(i_nARMAddress), 1, 2))

    'Data Value
    fbyteSendBuf(10) = Val("&H" & Mid(strValue, 7, 2))
    fbyteSendBuf(11) = Val("&H" & Mid(strValue, 5, 2))
    fbyteSendBuf(12) = Val("&H" & Mid(strValue, 3, 2))
    fbyteSendBuf(13) = Val("&H" & Mid(strValue, 1, 2))

    'Checksum-------------------
    fbyteSendBuf(14) = CheckSum(fbyteSendBuf)
    'Checksum-------------------
    
    'Terminate------------------
    fbyteSendBuf(15) = Val("&H" & "0A")
    'Terminate------------------
    
    Call SendData(fbyteSendBuf)
    
    fbDataArrival = False
    
    Call CheckTimer(True)
    
    Do
        DoEvents
        If CheckTimer(False) > OVERTIME_SEC Then
            Call CheckTimer(True)
            Exit Function
        End If
        
    Loop Until fbDataArrival = True
    
    Call CheckTimer(True)

    If fbyteReadBuf(6) = 255 Then '정상처리 Ack Return
        SendRegistry = True
    Else
        SendRegistry = False
        Call Get_ErrNo(fbyteReadBuf)
    End If

Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    SendRegistry = False
  
End Function

Public Function Get_ErrNo(i_pInBuf() As Byte) As Double
On Error GoTo syserr
Dim strErrHex As String
Dim dErrNo As Double

    strErrHex = ParshHextoString(Hex(i_pInBuf(10)), 2)
    strErrHex = strErrHex & ParshHextoString(Hex(i_pInBuf(9)), 2)
    strErrHex = strErrHex & ParshHextoString(Hex(i_pInBuf(8)), 2)
    strErrHex = strErrHex & ParshHextoString(Hex(i_pInBuf(7)), 2)
        
    dErrNo = ParshHexToDec(strErrHex)
    
    Call MsgBox(Format(dErrNo, "0"), vbExclamation)
    
    Get_ErrNo = dErrNo
    
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    Get_ErrNo = -1
    
End Function

Public Function ParshFPGAStatus(i_pInBuf() As Byte) As ST_FPGA
    
    On Error GoTo syserr
    Dim i As eFPGA_STATUS_BIT
    Dim lngValue As Long
    Dim bValue As Boolean
    Dim strGetValue(7) As String
    Dim strHex As String
    Dim ST_FPGASts As ST_FPGA
    Dim nBufSize As Integer
        
    nBufSize = UBound(i_pInBuf)
    If UBound(i_pInBuf) <> 16 Then
        ParshFPGAStatus = gFPGASts
        Exit Function
    End If
    
    strGetValue(0) = ParshHextoString(Hex(i_pInBuf(7)), 2)
    strGetValue(1) = ParshHextoString(Hex(i_pInBuf(8)), 2)
    strGetValue(2) = ParshHextoString(Hex(i_pInBuf(9)), 2)
    strGetValue(3) = ParshHextoString(Hex(i_pInBuf(10)), 2)
    
    strGetValue(4) = ParshHextoString(Hex(i_pInBuf(11)), 2)
    strGetValue(5) = ParshHextoString(Hex(i_pInBuf(12)), 2)
    strGetValue(6) = ParshHextoString(Hex(i_pInBuf(13)), 2)
    strGetValue(7) = ParshHextoString(Hex(i_pInBuf(14)), 2)
    
    strHex = (strGetValue(7) & strGetValue(6) & strGetValue(5) & strGetValue(4))
    lngValue = Val("&H" & strHex)
    
    For i = eFPGA_STATUS_BIT.TRIG_START1 To eFPGA_STATUS_BIT.INT_MODE_EN3 Step 1
        If ((lngValue And (2 ^ i)) <> 0) Then
            bValue = True
        Else
            bValue = False
        End If
        Select Case i
            Case eFPGA_STATUS_BIT.TRIG_START1
                ST_FPGASts.bTRIG_START(eCHANNEL.ch1) = bValue
            Case eFPGA_STATUS_BIT.TRIG_STOP1
                ST_FPGASts.bTRIG_STOP(eCHANNEL.ch1) = bValue
            Case eFPGA_STATUS_BIT.INT_MODE_EN1
                ST_FPGASts.bINT_MODE_EN(eCHANNEL.ch1) = bValue
            Case eFPGA_STATUS_BIT.TRIG_START2
                ST_FPGASts.bTRIG_START(eCHANNEL.CH2) = bValue
            Case eFPGA_STATUS_BIT.TRIG_STOP2
                ST_FPGASts.bTRIG_STOP(eCHANNEL.CH2) = bValue
            Case eFPGA_STATUS_BIT.INT_MODE_EN2
                ST_FPGASts.bINT_MODE_EN(eCHANNEL.CH2) = bValue
            Case eFPGA_STATUS_BIT.TRIG_START3
                ST_FPGASts.bTRIG_START(eCHANNEL.CH3) = bValue
            Case eFPGA_STATUS_BIT.TRIG_STOP3
                ST_FPGASts.bTRIG_STOP(eCHANNEL.CH3) = bValue
            Case eFPGA_STATUS_BIT.INT_MODE_EN3
                ST_FPGASts.bINT_MODE_EN(eCHANNEL.CH3) = bValue
        End Select
    Next i
    
    ParshFPGAStatus = ST_FPGASts
Exit Function

syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Public Function ParshResponse(i_pInBuf() As Byte) As Double
On Error GoTo syserr
    Dim i As eFPGA_STATUS_BIT
    Dim dValue As Double
    Dim strGetValue(7) As String
    Dim strHex As String
    
    Dim nBufSize As Integer
        
    nBufSize = UBound(i_pInBuf)
    If UBound(i_pInBuf) <> 16 Then
        ParshResponse = -1
        Exit Function
    End If
    
    strGetValue(0) = ParshHextoString(Hex(i_pInBuf(7)), 2)
    strGetValue(1) = ParshHextoString(Hex(i_pInBuf(8)), 2)
    strGetValue(2) = ParshHextoString(Hex(i_pInBuf(9)), 2)
    strGetValue(3) = ParshHextoString(Hex(i_pInBuf(10)), 2)
    
    strGetValue(4) = ParshHextoString(Hex(i_pInBuf(11)), 2)
    strGetValue(5) = ParshHextoString(Hex(i_pInBuf(12)), 2)
    strGetValue(6) = ParshHextoString(Hex(i_pInBuf(13)), 2)
    strGetValue(7) = ParshHextoString(Hex(i_pInBuf(14)), 2)
    
    strHex = strGetValue(7) & strGetValue(6) & strGetValue(5) & strGetValue(4)
    
    dValue = CDbl("&H" & strHex)
    ParshResponse = dValue
Exit Function

syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Public Function ParshTrigBdPos_Mm(ByVal i_nChannelNo As eCHANNEL, i_pInBuf() As Byte) As Double
On Error GoTo syserr
    Dim dValue As Double
    Dim strGetValue(7) As String
    Dim strHex As String
    Dim nSign As Integer
    
    Dim nBufSize As Integer
        
    nBufSize = UBound(i_pInBuf)
    If UBound(i_pInBuf) <> 16 Then
        ParshTrigBdPos_Mm = gdEncPos_Mm(i_nChannelNo)
        Exit Function
    End If
    
    strGetValue(0) = ParshHextoString(Hex(i_pInBuf(7)), 2)
    strGetValue(1) = ParshHextoString(Hex(i_pInBuf(8)), 2)
    strGetValue(2) = ParshHextoString(Hex(i_pInBuf(9)), 2)
    strGetValue(3) = ParshHextoString(Hex(i_pInBuf(10)), 2)
    
    strGetValue(4) = ParshHextoString(Hex(i_pInBuf(11)), 2)
    strGetValue(5) = ParshHextoString(Hex(i_pInBuf(12)), 2)
    strGetValue(6) = ParshHextoString(Hex(i_pInBuf(13)), 2)
    strGetValue(7) = ParshHextoString(Hex(i_pInBuf(14)), 2)
   
    nSign = GetSignValue(strGetValue(7))
    
    If nSign = -2 Then
        Exit Function
    ElseIf nSign = -1 Then
        strHex = GetRemoveSignHexValue(strGetValue(7))
        If strHex = "" Then
            Exit Function
        Else
            strHex = strHex & strGetValue(6) & strGetValue(5) & strGetValue(4)
        End If
    Else
        strHex = strGetValue(7) & strGetValue(6) & strGetValue(5) & strGetValue(4)
    End If
    
    'frmTriggerBd.listResponse.AddItem strGetValue(7) & strGetValue(6) & strGetValue(5) & strGetValue(4)
    dValue = nSign * CDbl("&H" & strHex)
    'dValue = (nSign * (dValue * 4)) / (10 ^ 4)
        
    ParshTrigBdPos_Mm = dValue
Exit Function
syserr:
Call MsgBox(Err.Description, vbExclamation)
End Function

Public Function GetSignValue(ByVal i_strHex_1Byte As String) As Integer
On Error GoTo syserr
    Dim nSign As Integer
    nSign = CInt("&H" & i_strHex_1Byte)
    If (nSign And (2 ^ eBitNo.Bit7)) Then
        nSign = -1
    Else
        nSign = 1
    End If
    GetSignValue = nSign
Exit Function
syserr:
    GetSignValue = -2
End Function

Public Function GetRemoveSignHexValue(ByVal i_strHex_1Byte As String) As String
On Error GoTo syserr
    Dim strHex As String
    Dim nCompareValue As Integer
    nCompareValue = Val("&H" & i_strHex_1Byte) And &H7F
    GetRemoveSignHexValue = Hex(nCompareValue)
Exit Function
syserr:
    GetRemoveSignHexValue = ""
End Function

'// CHANNEL의 ENCODER 신호의 정역 설정
Public Function SetEncDir(ByVal i_nChannel As eCHANNEL, ByVal i_nDirection As eENC_DIR) As Boolean
On Error GoTo syserr
    Dim nValue As Integer
    Dim bBitOn As Boolean
    Dim nBitNo As Integer
    
    If GetWinsockStatus() = False Then
        SetEncDir = False
        Exit Function
    End If
    
    If i_nDirection = Forward Then
        bBitOn = True
    Else
        bBitOn = False
    End If
    
    If i_nChannel = ch1 Then
        nBitNo = 0
    ElseIf i_nChannel = CH2 Then
        nBitNo = 1
    ElseIf i_nChannel = CH3 Then
        nBitNo = 2
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetEncDir = False
        Exit Function
    End If
        
'    If bBitOn = True Then
'        nValue = 1 * (2 ^ nBitNo)
'    Else
'        nValue = 0 * (2 ^ nBitNo)
'    End If

    rtn_dbl# = GetRegistry(ENC_DIR_REG)
    If bBitOn = True Then
        If (rtn_dbl# And (2 ^ nBitNo)) = 0 Then
            rtn_dbl# = rtn_dbl# Xor (2 ^ nBitNo)
        End If
    Else
        If (rtn_dbl# And (2 ^ nBitNo)) <> 0 Then
            rtn_dbl# = rtn_dbl# Xor (2 ^ nBitNo)
        End If
    End If

    'SetEncDir = SendRegistry(ENC_DIR_REG, nValue)
    SetEncDir = SendRegistry(ENC_DIR_REG, rtn_dbl#)
    
Exit Function
syserr:
    SetEncDir = False
End Function
Public Function SetBothDir(ByVal i_nChannel As eCHANNEL, ipfl_On As Integer) As Boolean
    
    On Error GoTo syserr
    Dim nValue As Integer
    Dim bBitOn As Boolean
    Dim nBitNo As Integer
    
    If GetWinsockStatus() = False Then
        SetBothDir = False
        Exit Function
    End If

    
    If i_nChannel = ch1 Then
        nBitNo = 8
    ElseIf i_nChannel = CH2 Then
        nBitNo = 9
    ElseIf i_nChannel = CH3 Then
        nBitNo = 10
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetBothDir = False
        Exit Function
    End If

    rtn_dbl# = GetRegistry(ENC_DIR_REG)

    If ipfl_On = 1 Then
        If (rtn_dbl# And (2 ^ nBitNo)) = 0 Then
            rtn_dbl# = rtn_dbl# Xor (2 ^ nBitNo)
        End If
    Else
        If (rtn_dbl# And (2 ^ nBitNo)) <> 0 Then
            rtn_dbl# = rtn_dbl# Xor (2 ^ nBitNo)
        End If
    End If

    SetBothDir = SendRegistry(ENC_DIR_REG, rtn_dbl#)
    
Exit Function
syserr:
    SetBothDir = False
End Function
'// NOISE FILTER :0, 1 ,2 ,3, 선택 가능 (기본 1)
Public Function SetFilterValue(ByVal i_nFilterOption As eNOISE_FILTER) As Boolean
On Error GoTo syserr
    If GetWinsockStatus() = False Then
        SetFilterValue = False
        Exit Function
    End If
    SetFilterValue = SendRegistry(FILTER_VALUE_REG, i_nFilterOption)
Exit Function
syserr:
    SetFilterValue = False
End Function

'// NOISE FILTER :0, 1 ,2 ,3, 선택 가능 (기본 1)
Public Function SetStrobeMode(ByVal i_nChannelNo As eCHANNEL, ipOnOff As Integer) As Boolean
On Error GoTo syserr
    Dim nSetChannelCnt As Integer
    Dim nBitNo As Integer

    If GetWinsockStatus() = False Then
        SetStrobeMode = False
        Exit Function
    End If
            
    If ipOnOff = 1 Then
        
        rtn_val# = GetRegistry(STROBE_MODE_EN_REG)
        If i_nChannelNo = ch1 Then
            If (rtn_val# And (2 ^ eBitNo.Bit0)) = 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit0)
            Else
                nSetChannelCnt = rtn_val#
            End If
        ElseIf i_nChannelNo = CH2 Then
            If (rtn_val# And (2 ^ eBitNo.Bit1)) = 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit1)
            Else
                nSetChannelCnt = rtn_val#
            End If
        ElseIf i_nChannelNo = CH3 Then
            If (rtn_val# And (2 ^ eBitNo.Bit2)) = 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit2)
            Else
                nSetChannelCnt = rtn_val#
            End If
        Else
            Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
            SetStrobeMode = False
            Exit Function
        End If
    
    Else
        rtn_val# = GetRegistry(STROBE_MODE_EN_REG)
        If i_nChannelNo = ch1 Then
            If (rtn_val# And (2 ^ eBitNo.Bit0)) <> 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit0)
            Else
                nSetChannelCnt = rtn_val#
            End If
        ElseIf i_nChannelNo = CH2 Then
            If (rtn_val# And (2 ^ eBitNo.Bit1)) <> 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit1)
            Else
                nSetChannelCnt = rtn_val#
            End If
        ElseIf i_nChannelNo = CH3 Then
            If (rtn_val# And (2 ^ eBitNo.Bit2)) <> 0 Then
                nSetChannelCnt = rtn_val# Xor (2 ^ eBitNo.Bit2)
            Else
                nSetChannelCnt = rtn_val#
            End If
        Else
            Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
            SetStrobeMode = False
            Exit Function
        End If
    End If
    
    SetStrobeMode = SendRegistry(STROBE_MODE_EN_REG, nSetChannelCnt)
Exit Function
syserr:
    SetStrobeMode = False
End Function

'// NOISE FILTER :0, 1 ,2 ,3, 선택 가능 (기본 1)
Public Function SetStrobeValue(ByVal i_nChannelNo As eCHANNEL, _
                               ByVal i_nDACValue As Integer) As Boolean
On Error GoTo syserr
    Dim lngSetChannelCnt As Long
    Dim lngSetValue As Long
    Dim nBitNo As Integer
    Dim nSetChannelCnt As Integer

    If GetWinsockStatus() = False Then
        SetStrobeValue = False
        Exit Function
    End If
    
    If i_nChannelNo = ch1 Then
        lngSetChannelCnt = 1 * (2 ^ eBitNo.Bit8)
    ElseIf i_nChannelNo = CH2 Then
        lngSetChannelCnt = 1 * (2 ^ eBitNo.Bit9)
    ElseIf i_nChannelNo = CH3 Then
        lngSetChannelCnt = (1 * (2 ^ eBitNo.Bit9)) + (1 * (2 ^ eBitNo.Bit8))
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeValue = False
        Exit Function
    End If
    
    lngSetValue = lngSetChannelCnt Or i_nDACValue
    SetStrobeValue = SendRegistry(STROBE_VALUE_REG, CDbl(lngSetValue))
Exit Function
syserr:
    SetStrobeValue = False
End Function


'// 현재 위치를 모션의 0 점으로 설정 ( 0x26000020, 1000 => 현재 위치를 모션의 1000 위치로 설정)
Function SetZero(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    
    If GetWinsockStatus() = False Then
        SetZero = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_POS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_POS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_POS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetZero = False
        Exit Function
    End If
    
    SetZero = SendRegistry(nCmdAdr, 0)
Exit Function
syserr:
    Call MsgBox(Err.Description, vbExclamation)
    SetZero = False
End Function

'// 외부 트리거 모드에서 트리거 출력을 시작
Public Function StartExtTrigger(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    
    If GetWinsockStatus() = False Then
        StartExtTrigger = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.TRIG_START1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.TRIG_START2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.TRIG_START3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        StartExtTrigger = False
        Exit Function
    End If
    
    StartExtTrigger = SendRegistry(nCmdAdr, 1)
Exit Function
syserr:
    StartExtTrigger = False
End Function

'// 외부 트리거 모드에서 트리거 출력을 정지
Public Function StopExtTrigger(ByVal i_nChannel As eCHANNEL) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    
    If GetWinsockStatus() = False Then
        StopExtTrigger = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.TRIG_STOP1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.TRIG_STOP2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.TRIG_STOP3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        StopExtTrigger = False
        Exit Function
    End If
    
    StopExtTrigger = SendRegistry(nCmdAdr, 1)
Exit Function
syserr:
    StopExtTrigger = False
End Function

'// 인터널 트리거 모드 시작
Public Function StartIntTrigger(ByVal i_nChannel As eCHANNEL, ipDotCounts As Integer) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    
    If GetWinsockStatus() = False Then
        StartIntTrigger = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.INT_MODE_EN1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.INT_MODE_EN2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.INT_MODE_EN3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        StartIntTrigger = False
        Exit Function
    End If
    
    StartIntTrigger = SendRegistry(nCmdAdr, ipDotCounts)
Exit Function
syserr:
    StartIntTrigger = False
End Function

'// 외부 트리거 모드 주파수 설정 ( 1 = 10ns ) VALUE -1
Public Function SetFrequency(ByVal i_nChannel As eCHANNEL, ByVal i_dFrequency_kHz As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim lngCount As Long
    
    If GetWinsockStatus() = False Then
        SetFrequency = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.TIME_VALUE_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.TIME_VALUE_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.TIME_VALUE_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFrequency = False
        Exit Function
    End If
    
    lngCount = CountToKHz(i_dFrequency_kHz)
    SetFrequency = SendRegistry(nCmdAdr, lngCount)
Exit Function
syserr:
    SetFrequency = False
End Function

'// 외부 트리거 모드 ON WIDTH 설정 ( 1 = 10ns ) VALUE -1
Public Function SetStrobeOnTime(ByVal i_nChannel As eCHANNEL, ByVal i_dPulseWidthTime_uSec As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim nCount As Double
    
    If GetWinsockStatus() = False Then
        SetStrobeOnTime = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.STROBE_ONTIME_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.STROBE_ONTIME_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.STROBE_ONTIME_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeOnTime = False
        Exit Function
    End If
    
    nCount = CountToNs(i_dPulseWidthTime_uSec)
    SetStrobeOnTime = SendRegistry(nCmdAdr, nCount)
Exit Function
syserr:
    SetStrobeOnTime = False
End Function
Public Function SetStrobeDotCounts(ByVal i_nChannel As eCHANNEL, ByVal i_nDot As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim nCount As Double
    
    If GetWinsockStatus() = False Then
        SetStrobeDotCounts = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.STROBO_DOT_COUNTS1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.STROBO_DOT_COUNTS2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.STROBO_DOT_COUNTS3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeDotCounts = False
        Exit Function
    End If

    SetStrobeDotCounts = SendRegistry(nCmdAdr, i_nDot)
Exit Function
syserr:
    SetStrobeDotCounts = False
End Function
'// 외부 트리거 On Off : 3us 이하면 외부 트리거 인식 못함
Public Function SetExtPulseWidth(ByVal i_nChannel As eCHANNEL, ByVal ipOnTime_sec As Double) As Boolean
    On Error GoTo syserr
    
    If GetWinsockStatus() = False Then
        SetIntPulseWidth = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetExtPulseWidth = False
        Exit Function
    End If

    If ipOnTime_sec <> 0 Then
        w_data# = ((ipOnTime_sec * 10 ^ 9) / 10) - 1
        SetIntPulseWidth = SendRegistry(nCmdAdr, 300)
    Else
        SetIntPulseWidth = SendRegistry(nCmdAdr, 0)
    End If
    
    Exit Function
syserr:
End Function
Public Function SetStrobeExtPulseOnOff(ByVal i_nChannel As eCHANNEL, ByVal i_bOnOff As Boolean) As Boolean
    On Error GoTo syserr
    
    If GetWinsockStatus() = False Then
        SetStrobeExtPulseOnOff = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.PULSE_WIDTH_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeExtPulseOnOff = False
        Exit Function
    End If
    
    If i_bOnOff = True Then
        SetStrobeExtPulseOnOff = SendRegistry(nCmdAdr, 300)
    Else
        SetStrobeExtPulseOnOff = SendRegistry(nCmdAdr, 0)
    End If
    
    Exit Function
syserr:
End Function
'// 외부 트리거 모드 STRPNE DE;AU 설정 ( 1 = 10ns ) VALUE -1
Public Function SetStrobeDelayTime(ByVal i_nChannel As eCHANNEL, ByVal i_dStrobeDelayTime_mSec As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim nCount As Double
    
    If GetWinsockStatus() = False Then
        SetStrobeDelayTime = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.STROBE_DELAY_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.STROBE_DELAY_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.STROBE_DELAY_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeDelayTime = False
        Exit Function
    End If
    
    nCount = CountToNs(i_dStrobeDelayTime_mSec * 1000)
    SetStrobeDelayTime = SendRegistry(nCmdAdr, nCount)
Exit Function
syserr:
    SetStrobeDelayTime = False
End Function

Public Function SetStrobeBrightValue(ByVal i_nChannel As eCHANNEL, ByVal i_dStrobeBrightValue As Integer) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim lngCount As Long
    
    If GetWinsockStatus() = False Then
        SetStrobeBrightValue = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.STROBE_BRIGHT_VALUE_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetStrobeBrightValue = False
        Exit Function
    End If
    
    lngCount = CountToBrightVal(i_dStrobeBrightValue)
    
    If lngCount <= 1024 Then
        SetStrobeBrightValue = SendRegistry(nCmdAdr, 0)
    Else
        SetStrobeBrightValue = SendRegistry(nCmdAdr, lngCount)
    End If
    
Exit Function
syserr:
    SetStrobeBrightValue = False
End Function


'// 트리거 시작 위치 지정 (D31 = 부호 셋팅은 '1' 만 가능)
Public Function SetFireStartPosition(ByVal i_nChannel As eCHANNEL, ByVal i_dStartPos_Absmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireStartPosition = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dStartPos_Absmm < 0 Then
        SetFireStartPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_START_POS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_START_POS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_START_POS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireStartPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    
    dCount = CountToUm(cch%, i_dStartPos_Absmm)
    SetFireStartPosition = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFireStartPosition = False
End Function
Public Function SetFireRevStartPosition(ByVal i_nChannel As eCHANNEL, ByVal i_dStartPos_Absmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireRevStartPosition = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dStartPos_Absmm < 0 Then
        SetFireRevStartPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStartPOS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStartPOS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStartPOS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireRevStartPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    
    dCount = CountToUm(cch%, i_dStartPos_Absmm)
    SetFireRevStartPosition = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFireRevStartPosition = False
End Function
'// 가속 구간의 끝 지점을 지정 (이 지점까지 지정된 수만큼 증가) (D31 = 부호 셋팅은 '1' 만 가능)
Public Function SetFireAccelPosition(ByVal i_nChannel As eCHANNEL, ByVal i_dAccelPos_ABSmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireAccelPosition = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dAccelPos_ABSmm < 0 Then
        SetFireAccelPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_INC_END_POS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_INC_END_POS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_INC_END_POS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireAccelPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    
    dCount = CountToUm(cch%, i_dAccelPos_ABSmm)
    
    SetFireAccelPosition = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFireAccelPosition = False
End Function

'// 가속 구간에서 증가하는 엔코더 수를 지정
Public Function SetFireAccelAreaIncreaseDistance(ByVal i_nChannel As eCHANNEL, ByVal i_dIncrease_Relmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireAccelAreaIncreaseDistance = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dIncrease_Relmm < 0 Then
        SetFireAccelAreaIncreaseDistance = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_INT_ADD_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_INT_ADD_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_INT_ADD_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireAccelAreaIncreaseDistance = False
        Exit Function
    End If
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    
    dCount = CountToUm(cch%, i_dIncrease_Relmm)
    SetFireAccelAreaIncreaseDistance = SendRegistry(nCmdAdr, dCount)
    
Exit Function
syserr:
    SetFireAccelAreaIncreaseDistance = False
    
End Function

'// 등속 구간에서의 엔코더 개수
Public Function SetFirePitch(ByVal i_nChannel As eCHANNEL, ByVal i_dFiringPitch_mm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFirePitch = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dFiringPitch_mm < 0 Then 'MINIMIZE_FIRE_PITCH_MM
        SetFirePitch = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_PITCH_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_PITCH_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_PITCH_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFirePitch = False
        Exit Function
    End If
        
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
       
    dCount = CountToUm(cch%, i_dFiringPitch_mm)
    SetFirePitch = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFirePitch = False
End Function

'// 프린팅 끝나는 위치 지정 (D31 = 부호 셋팅은 '1' 만 가능)
Public Function SetFireEndPosition(ByVal i_nChannel As eCHANNEL, ByVal i_dEndPos_Absmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireEndPosition = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dEndPos_Absmm < 0 Then
        SetFireEndPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_STOP_POS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_STOP_POS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_STOP_POS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireEndPosition = False
        Exit Function
    End If
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    dCount = CountToUm(cch%, i_dEndPos_Absmm)
    SetFireEndPosition = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFireEndPosition = False
    
End Function
Public Function SetFireRevEndPosition(ByVal i_nChannel As eCHANNEL, ByVal i_dEndPos_Absmm As Double) As Boolean
On Error GoTo syserr
    Dim nCmdAdr As eARM_ADDRESS
    Dim dCount As Double
    
    If GetWinsockStatus() = False Then
        SetFireRevEndPosition = False
        Exit Function
    End If
    
    '// Minus NG
    If i_dEndPos_Absmm < 0 Then
        SetFireRevEndPosition = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStopPOS_REG1
    ElseIf i_nChannel = CH2 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStopPOS_REG2
    ElseIf i_nChannel = CH3 Then
        nCmdAdr = eARM_ADDRESS.ENC_RevStopPOS_REG3
    Else
        Call MsgBox(ERROR_INPUT_CHANNEL, vbExclamation)
        SetFireRevEndPosition = False
        Exit Function
    End If
    If i_nChannel = ch1 Then
        cch% = 0
    ElseIf i_nChannel = CH2 Then
        cch% = 1
    ElseIf i_nChannel = CH3 Then
        cch% = 2
    End If
    dCount = CountToUm(cch%, i_dEndPos_Absmm)
    SetFireRevEndPosition = SendRegistry(nCmdAdr, dCount)
Exit Function
syserr:
    SetFireRevEndPosition = False
    
End Function
Public Function CountToUm(ipChNo As Integer, ByVal i_dPosMm As Double) As Double
    
    On Error GoTo syserr
    Dim dUm As Double
    Dim dCount As Double
    
    ' 1 count = 0.4 um
    ' 0.001 mm -> 1um
    ' 1um -> 2.5 count
    
    dUm = i_dPosMm * (10 ^ 3)
    dCount = dUm / fdCountPerUm(ipChNo)
    CountToUm = dCount
    
Exit Function
syserr:
    CountToUm = -1
    
End Function

Public Function CountToBrightVal(ByVal i_nValue As Integer) As Long
    On Error GoTo syserr
    
    Dim lngMaxValue As Long
    Dim lngMinValue As Long
    Dim lngRange As Long
    
    'lngMinValue = &H400
    'lngMaxValue = &HFFF
    
    'lngRange = lngMaxValue - lngMinValue
    
    'CountToBrightVal = ((lngRange / 100) * i_nValue) + lngMinValue
    
    CountToBrightVal = i_nValue
    
    Exit Function
syserr:
End Function

Public Function CountToNs(ByVal i_duSec As Double) As Double
On Error GoTo syserr
    Dim dCount As Double
    
    ' 1 : 10ns
    ' 1khz - 1/1000s( = 0.001s)
    ' 1khz - 10^5
    ' wanted value = 10^5 - 1
    
    dCount = RESOLUTION_TRIGGER_BORAD_TIME_NS * (i_duSec / (10 ^ 6))
    
    CountToNs = dCount '- 1 '// 0 bit is -1.
Exit Function
syserr:

End Function

Public Function CountToKHz(ByVal i_dkHz As Double) As Double
On Error GoTo syserr
    Dim dCount As Double
        
    ' 1 : 10ns
    ' 1khz - 1/1000s( = 0.001s)
    ' 1khz - 10^5
    ' wanted value = 10^5 - 1
    Dim dCvtHz As Double
    
    dCvtHz = i_dkHz * 10 ^ 3
    
    'dCount = RESOLUTION_TRIGGER_BORAD_TIME_NS * (1 / (i_dkHz))
    dCount = RESOLUTION_TRIGGER_BORAD_TIME_NS * (1 / (dCvtHz))
    dCount = dCount - 1 '// 0 bit is -1.
    CountToKHz = dCount
Exit Function
syserr:

End Function

Public Function ConfigFiringPara(ByVal i_nChannelNo As eCHANNEL, _
                                 ByVal i_nEncDir As eENC_DIR, _
                                 ByVal i_dStartPos_Absmm As Double, _
                                 ByVal i_dAccPos_Absmm As Double, _
                                 ByVal i_dAccIncrease_Relmm As Double, _
                                 ByVal i_dEndPos_Absmm As Double, _
                                 ByVal i_dFiringPitch_mm As Double) As Boolean
    On Error GoTo syserr
    Dim dSetAbsPos_mm As Double
    
    If SetEncDir(i_nChannelNo, i_nEncDir) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
    
    If SetFireStartPosition(i_nChannelNo, i_dStartPos_Absmm) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
        
    If SetFireAccelPosition(i_nChannelNo, i_dAccPos_Absmm) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
    
    If SetFireAccelAreaIncreaseDistance(i_nChannelNo, i_dAccIncrease_Relmm) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
               
    If SetFireEndPosition(i_nChannelNo, i_dEndPos_Absmm) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
    
    If SetFirePitch(i_nChannelNo, i_dFiringPitch_mm) = False Then
        ConfigFiringPara = False
        Exit Function
    End If
           
    ConfigFiringPara = True
Exit Function
syserr:
    ConfigFiringPara = False
End Function

Public Function ConfigStrobePara(ByVal i_nChannelNo As eCHANNEL, _
                                 ByVal i_dFrequency_kHz As Double, _
                                 ByVal i_dStrobeOnTime_uSec As Double, _
                                 ByVal i_dStrobeDelayTime_uSec As Double, _
                                 ByVal i_nStrobeBrightValue As Integer) As Boolean
On Error GoTo syserr
    
    Dim duSec_kHz As Double
    
    'duSec_kHz = (1 / (i_dFrequency_kHz * (10 ^ 3))) * (10 ^ 6)
       
    If SetFrequency(i_nChannelNo, i_dFrequency_kHz) = False Then
        ConfigStrobePara = False
        Exit Function
    End If
    
    If SetStrobeOnTime(i_nChannelNo, i_dStrobeOnTime_uSec) = False Then
        ConfigStrobePara = False
        Exit Function
    End If
    
    If SetStrobeDelayTime(i_nChannelNo, i_dStrobeDelayTime_uSec) = False Then
        ConfigStrobePara = False
        Exit Function
    End If
    
    If SetStrobeBrightValue(i_nChannelNo, i_nStrobeBrightValue) = False Then
        ConfigStrobePara = False
        Exit Function
    End If
    
    ConfigStrobePara = True
Exit Function
syserr:
    ConfigStrobePara = False
End Function

Public Function ConfigStrobePara2(ByVal i_nChannelNo As eCHANNEL, _
                                 ByVal i_dFrequency_kHz As Double, _
                                 ByVal i_dStrobeOnTime_uSec As Double, _
                                 ByVal i_dStrobeDelayTime_uSec As Double, _
                                 ByVal i_nStrobeBrightValue As Integer, _
                                 ByVal i_nDotCounts As Double) As Boolean
    On Error GoTo syserr
    
    Dim duSec_kHz As Double
    
    'duSec_kHz = (1 / (i_dFrequency_kHz * (10 ^ 3))) * (10 ^ 6)
       
    If SetFrequency(i_nChannelNo, i_dFrequency_kHz) = False Then
        ConfigStrobePara2 = False
        Exit Function
    End If
    
    If SetStrobeOnTime(i_nChannelNo, i_dStrobeOnTime_uSec) = False Then
        ConfigStrobePara2 = False
        Exit Function
    End If
    
    If SetStrobeDelayTime(i_nChannelNo, i_dStrobeDelayTime_uSec) = False Then
        ConfigStrobePara2 = False
        Exit Function
    End If
    
    If SetStrobeBrightValue(i_nChannelNo, i_nStrobeBrightValue) = False Then
        ConfigStrobePara2 = False
        Exit Function
    End If
    
    If SetStrobeDotCounts(i_nChannelNo, i_nDotCounts) = False Then
        ConfigStrobePara2 = False
        Exit Function
    End If
    
    ConfigStrobePara2 = True
Exit Function
syserr:
    ConfigStrobePara2 = False
    
End Function
Public Function SetTrigMode(ByVal i_nChannel As eCHANNEL, ipModeBit As Integer) As Boolean

    On Error GoTo syserr
    Dim nValue As Integer
    Dim bBitOn As Boolean
    Dim nBitNo As Integer
    Dim sel_Addr As eARM_ADDRESS
    'ipModeBit=1 : OnePulse
    'ipModeBit=2 : Encoder
    'ipModeBit=4 : Internal Trigger
    If GetWinsockStatus() = False Then
        SetTrigMode = False
        Exit Function
    End If
    
    If i_nChannel = ch1 Then
        sel_Addr = TRIG_Mode1
    ElseIf i_nChannel = CH2 Then
        sel_Addr = TRIG_Mode2
    ElseIf i_nChannel = CH3 Then
        sel_Addr = TRIG_Mode3
    End If

    Select Case ipModeBit
        Case 0
            rtn_dbl# = 1
        Case 1
            rtn_dbl# = 2
        Case 2
            rtn_dbl# = 4
    End Select
    

    SetTrigMode = SendRegistry(sel_Addr, rtn_dbl#)
    
Exit Function
syserr:
    SetTrigMode = False
    
End Function






