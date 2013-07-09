Attribute VB_Name = "PI_Head_IF"
Public Const NONE_CMD                   As Integer = 0
Public Const EXE_BOOT                   As Integer = 1
Public Const EXE_CLOSE                  As Integer = 2
Public Const SET_VOLT                   As Integer = 3
Public Const SET_WAVEFORM               As Integer = 4
Public Const SET_ACTIVE                 As Integer = 5
Public Const SET_SLANTOFFSET            As Integer = 6
Public Const SET_All                    As Integer = 7
Public Const EXE_TIMERJET               As Integer = 8
Public Const EXE_ENCJET                 As Integer = 9
Public Const EXE_STOPJET                As Integer = 10
Public Const UPLOAD_IMG                 As Integer = 11
Public Const SET_JETDIR                 As Integer = 12
Public Const SET_JET_IMGLINE            As Integer = 13
Public Const SET_SLANTANGLE             As Integer = 14
Public Const SET_ORGPITCH               As Integer = 15
Public Const SET_TIMER_KHZ              As Integer = 16
Public Const HIDE_TRAYICON              As Integer = 17
Public Const EXE_TRIGJET                As Integer = 18
Public Const SET_ACTIVE2                As Integer = 19
Public Const SET_VOLT2                  As Integer = 20
Public Const RESET_TRIGGERPOS           As Integer = 21
Public Const EXE_ImgTimerJetStart       As Integer = 22
Public Const GET_ENC_COUNT_POS          As Integer = 23
Public Const ZERO_SET_TRIGPOS           As Integer = 24
Public Const EXE_TRIGJET_MULTI_SET      As Integer = 25
Public Const EXE_TRIGJET_MULTI          As Integer = 26
Public Const SET_HEAD_DELAY             As Integer = 27
Public Const SET_HD12_OFFSET            As Integer = 28

Public Const UPLOAD_HEAD_ZERO_TEACHING_IMG            As Integer = 29
Public Const SET_SYSTEM_PITCH                         As Integer = 30

'RxD--------------------------------------------
Public Const JUDGE_OK As Integer = 1
Public Const JUDGE_NG As Integer = -1
Public Const JUDGE_BUSY As Integer = 0

Public PI_HEAD_BootOK As Boolean
Public PI_HEAD_fl_Jetting As Boolean

Declare Function CloseBd Lib "C:\Work\Dev\InkJet_Dll.dll" (ByRef i_strMsg As String) As Boolean
Declare Function Bs_Get_JetState Lib "C:\Work\Dev\InkJet_Dll.dll" () As Boolean


Sub PI_HEAD_DelayWait(ipWaitTime As Double, Optional ByVal ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = PI_HEAD_DelayWait_TimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until PI_HEAD_DelayWait_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = PI_HEAD_DelayWait_TimeCheck(True)
    
End Sub
Function PI_HEAD_DelayWait_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            PI_HEAD_DelayWait_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        PI_HEAD_DelayWait_TimeCheck = 0
    End If

End Function
Function PI_HEAD_IF_Init(Optional ByVal i_bExeHeadIF As Boolean = True) As Boolean

    'Hea IF관련 데이터 로딩---------------------------------------------------------------
    SAVED_HEADIF_NLIFileName = "ptm2-1head.nli" '"ptm2-5head.nli" '"apollo_Nova_10head_back.nli" '"apollo_Nova_4head.nli"
    SAVED_HEADIF_SystemFolder = "D:\LHJ_Work\PI_Alpha_Sys\MainUI\PRI_HeadIF\Debug\"         'App.Path & "\PRI_HeadIF\Debug\"
    SAVED_HEADIF_SystemFolder_Reg = "D:\\LHJ_Work\\PI_Alpha_Sys\\MainUI\\PRI_HeadIF\\Debug\\"
    
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_QTY", "5")
    
    'SAVED_HEADIF_BOOT_HEAD_QTY = CInt(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_QTY", "1")) '10
    SAVED_HEADIF_BOOT_HEAD_QTY = 1
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_QTY", CStr(SAVED_HEADIF_BOOT_HEAD_QTY))
    
    SAVED_HEADIF_BOOT_ENC_RES = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ENC_RES", "0.1")) '10
    SAVED_HEADIF_BOOT_ENC_Phase = CInt(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ENC_Phase", "4")) '10
    SAVED_HEADIF_BOOT_System_Image_Pitch = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "System_Image_Pitch", "90")) '10
    
    SAVED_HEADIF_BOOT_JET_DELAY = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "JET_DELAY", "0")) '10
    SAVED_HEADIF_BOOT_HEAD_TYPE = CInt(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_TYPE", "10")) '10
    SAVED_HEADIF_BOOT_SUPPLY_VOLT = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SUPPLY_VOLT", "125")) '10
    SAVED_HEADIF_HEAD_DELAY = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_DELAY", "0")) '10
    
    SAVED_HEADIF_BOOT_SLANT_ANGLE = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SLANT_ANGLE", "0")) '10
    SAVED_HEADIF_BOOT_VOLT_OFFSET = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "VOLT_OFFSET", "0")) '10
    SAVED_HEADIF_BOOT_BOOT_PATH = SAVED_HEADIF_SystemFolder_Reg & SAVED_HEADIF_NLIFileName '(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "BOOT_PATH", SAVED_HEADIF_SystemFolder_Reg & SAVED_HEADIF_NLIFileName))  '10
    SAVED_HEADIF_BOOT_ERR_MAP = CInt(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP", "1")) '10
    
    SAVED_HEADIF_BOOT_USE_NzlQTY = CInt(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "USE_NZLCNT", "256"))
    
    For i% = 0 To (SAVED_HEADIF_BOOT_HEAD_QTY - 1)
        SAVED_HEADIF_BetweenHeadOffset(i%) = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SAVED_HEADIF_BetweenHeadOffset_" & CStr(i%), "-8000"))
    Next i%

    'MsgBox SAVED_HEADIF_BOOT_BOOT_PATH

    
'''''    '지울것.
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_QTY", "10")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ENC_RES", "0.1")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ENC_Phase", "4")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "System_Image_Pitch", "20")
''''
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "JET_DELAY", "0")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_TYPE", "2")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SUPPLY_VOLT", "125")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "HEAD_DELAY", "0")
''''
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SLANT_ANGLE", "0")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "VOLT_OFFSET", "0")
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "BOOT_PATH", SAVED_HEADIF_SystemFolder & SAVED_HEADIF_NLIFileName)
''''    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP", "1")
    
    For i% = 0 To (SAVED_HEADIF_BOOT_USE_NzlQTY - 1)
        tmp_str$ = (GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP_" & CStr(i%), ""))
        If tmp_str$ = "" Then
            Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP_" & CStr(i%), "0")
        End If
        
        'Debug.Print "Err Map[" & CStr(i%) & "]: " & tmp_str$
        
    Next i%
    
    If (fl_HeadCtrlDebug = False) And (i_bExeHeadIF = True) Then
    
        Shell SAVED_HEADIF_SystemFolder & "PRI_HeadIF.exe"
        
        cur_time# = PubTimeCheck(True)
    
        Do
            DoEvents
            HEADIF_APP_ProcID = GetPidByImage("PRI_HeadIF.exe")
            If PubTimeCheck(False) > 5 Then
                cur_time# = PubTimeCheck(True)
                PI_HEAD_IF_Init = False
                Exit Function
            End If
        Loop Until HEADIF_APP_ProcID > 0
        cur_time# = PubTimeCheck(True)
    End If
    
    'I/F용 레지스트리 클리어
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_MESSAGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_LIB", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMGLINE", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMG_BLOCKCNT", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMG_VERCNT", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMG_TITLE", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMG_XSIZE", "0")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_IMG_YSIZE", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_MAX_IMGCOUNT", "1")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_CUR_IMGCOUNT", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_CMDNO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_MESSAGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", "1")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "DB_PATH", "")'사용않함.
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "START_LINE", "0")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "END_LINE", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ENC_DIR", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_DELAY", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ORG_PITCH", "2")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SLANT_ANGLE", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "IMG_PATH", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TIMER_KHZ", "1")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "JET_ACCDIST", "0")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "DROP_ENCRES", "0.2")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "STG_ENCRES", "0.1")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "START_NZLNO", "1")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "END_NZLNO", "256")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "USE_NZLCNT", "256")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SETNZL_ENABLE", "0")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SETNZL_VOLT", "0")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SETNZL_WAVE", "0")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_ON_UM", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_OFF_UM", "0")
    
    'SAVED_HEADIF_BOOT_HEAD_QTY = 1
    
    For v_point% = 0 To 31
        rtn_volt$ = GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(head_no%) & "_SETNZL_VOLT_" & CStr(v_point%), "80.05")
        SAVED_HEADIF_LastVoltage(v_point%) = CDbl(rtn_volt$)
        
        'Debug.Print "HeadNo." & CStr(head_no% + 1) & " - Nzl_Volt[" & CStr(v_point%) & "]: " & rtn_volt$
    Next v_point%
    For nzl_no% = 0 To SAVED_HEADIF_BOOT_USE_NzlQTY - 1
        'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(head_no%) & "_SETNZL_ENABLE_" & CStr(v_point%), "1")
        rtn_act$ = GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(head_no%) & "_SETNZL_ENABLE_" & CStr(v_point%), "1")
        SAVED_HEADIF_LastLiveNozzle(nzl_no%) = CInt(rtn_act$)
        
        'Debug.Print "HeadNo." & CStr(head_no% + 1) & " - Nzl_Live[" & CStr(nzl_no%) & "]: " & rtn_act$
        
    Next nzl_no%


    PI_HEAD_IF_Init = True

End Function

Function BootTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            BootTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        BootTimeCheck = 0
    End If

End Function
Function PI_HEAD_IF_Boot(fl_Res As Boolean) As Boolean

    Dim tmp_Bool As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "BOOT_PATH", SAVED_HEADIF_BOOT_BOOT_PATH)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(EXE_BOOT))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SUPPLY_VOLT", CStr(SAVED_HEADIF_BOOT_SUPPLY_VOLT))
    DelayWait 5, True
    
    PI_HEAD_BootOK = False
    If fl_Res = True Then
        cur_time# = BootTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_IF_Boot = True
                    PI_HEAD_BootOK = True
                Else
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    PI_HEAD_IF_Boot = False
                    PI_HEAD_BootOK = False
                    cur_time# = BootTimeCheck(True)
                    Exit Function
                End If
                Exit Do
            End If
            If BootTimeCheck(False) > 30 Then
                cur_time# = BootTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_IF_Boot = False
                PI_HEAD_BootOK = False
                Exit Function
            End If
        Loop
    End If
    cur_time# = BootTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    DelayWait 2, True
    For head_no% = 0 To SAVED_HEADIF_BOOT_HEAD_QTY - 1
        If PI_HEAD_VoltageSet(head_no%, True, SAVED_HEADIF_LastVoltage) = False Then
            PI_HEAD_BootOK = False
            PI_HEAD_IF_Boot = False
            Exit Function
        End If
        PI_HEAD_DelayWait 0.2, True
        
        If PI_HEAD_LiveNozzle(head_no%, True, SAVED_HEADIF_LastLiveNozzle) = False Then
            PI_HEAD_BootOK = False
            PI_HEAD_IF_Boot = False
            Exit Function
        End If
        PI_HEAD_DelayWait 0.2, True
    Next head_no%
    
'    For i% = 0 To SAVED_HEADIF_BOOT_HEAD_QTY - 1
'        tmp_Bool = PI_HEAD_12_Offset(i%, SAVED_HEADIF_BetweenHeadOffset(i%), True)
'    Next i%
    
    PI_HEAD_IF_Boot = True
    PI_HEAD_BootOK = True
    
End Function
Function PI_HEAD_IF_ResOK_Check() As Long
    rtn_str$ = GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Select Case rtn_str$
        Case "0"
            PI_HEAD_IF_ResOK_Check = 1 'ing
        Case "1"
            PI_HEAD_IF_ResOK_Check = 2 'OK
        Case "-1"
            PI_HEAD_IF_ResOK_Check = 999 'Error
    End Select
End Function
Function VoltageSetTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            VoltageSetTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        VoltageSetTimeCheck = 0
    End If

End Function
Function PI_HEAD_VoltageSet(ipHedaNo As Integer, fl_Res As Boolean, ipVoltage() As Double) As Boolean

On Error GoTo syserr:

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    
    Dim dTmp(127) As Double
    
    nBufCnt% = 0
    For i% = 0 To (MAX_WAVEFORM_DIVIDE_CNT / WAVEFORM_SPLIT_CNT) - 1
        
        X1# = ipVoltage(i%)
        X2# = ipVoltage(i% + 1)
        
        Debug.Print X1#
        Debug.Print X2#
        
        a# = (ipVoltage(i% + 1) - ipVoltage(i%)) / WAVEFORM_SPLIT_CNT
        b# = (((i% + 1) * ipVoltage(i%)) - (i% * ipVoltage(i% + 1))) / (i% + 1 - i%)
        
        dSetValue# = ipVoltage(i%)
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
        
        nBufCnt% = nBufCnt% + 1
        dSetValue# = (a# * nBufCnt%) + b#
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_VOLT_" & CStr(nBufCnt%), CStr(dSetValue#))
        dTmp(nBufCnt%) = dSetValue#
                
        nBufCnt% = nBufCnt% + 1
        
    Next i%
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_VOLT))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = VoltageSetTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_VoltageSet = True
                Else
                    PI_HEAD_VoltageSet = False
                    cur_time# = VoltageSetTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If VoltageSetTimeCheck(False) > 40 Then
                cur_time# = VoltageSetTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_VoltageSet = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_VoltageSet = True
    cur_time# = VoltageSetTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Exit Function
syserr:
    PI_HEAD_VoltageSet = False
    MsgBox Err.Description
End Function
Function LiveNozzleTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            LiveNozzleTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        LiveNozzleTimeCheck = 0
    End If

End Function
Function PI_HEAD_LiveNozzle(ipHedaNo As Integer, fl_Res As Boolean, ipActivate() As Integer) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    
    For n_point% = 0 To SAVED_HEADIF_BOOT_USE_NzlQTY - 1 '511 'SAVED_HEADIF_BOOT_USE_NzlQTY - 1
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_ENABLE_" & CStr(n_point%), CStr(ipActivate(n_point%)))
    Next n_point%
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_ACTIVE))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = LiveNozzleTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_LiveNozzle = True
                Else
                    PI_HEAD_LiveNozzle = False
                    cur_time# = LiveNozzleTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If LiveNozzleTimeCheck(False) > 40 Then
                cur_time# = LiveNozzleTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_LiveNozzle = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_LiveNozzle = True
    cur_time# = LiveNozzleTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
End Function
Function TimerJetStartTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            TimerJetStartTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        TimerJetStartTimeCheck = 0
    End If

End Function
Function PI_HEAD_TimerJetStart(ipHedaNo As Integer, ipFrequency As Double, fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TIMER_KHZ", CStr(ipFrequency))
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_LIST", CStr(ipHedaNo)) 'HEAD_LIST

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(EXE_TIMERJET))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        cur_time# = TimerJetStartTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_TimerJetStart = True
                Else
                    PI_HEAD_TimerJetStart = False
                    cur_time# = TimerJetStartTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    PI_HEAD_fl_Jetting = False
                    Exit Function
                End If
                Exit Do
            End If
            If TimerJetStartTimeCheck(False) > 5 Then
                cur_time# = TimerJetStartTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_TimerJetStart = False
                PI_HEAD_fl_Jetting = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_TimerJetStart = True
    cur_time# = TimerJetStartTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    PI_HEAD_fl_Jetting = True
    
End Function
Function JetStopTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            JetStopTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        JetStopTimeCheck = 0
    End If

End Function
Function PI_HEAD_JetStop(ipHedaNo As Integer, fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") 'RETURN_ENCPOS
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(EXE_STOPJET))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        cur_time# = JetStopTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_JetStop = True
                Else
                    PI_HEAD_JetStop = False
                    cur_time# = JetStopTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    PI_HEAD_fl_Jetting = False
                    Exit Function
                End If
                Exit Do
            End If
            If JetStopTimeCheck(False) > 5 Then
                cur_time# = JetStopTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_JetStop = False
                PI_HEAD_fl_Jetting = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_JetStop = True
    cur_time# = JetStopTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    PI_HEAD_fl_Jetting = False
    
End Function
Function EncJetStartTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            EncJetStartTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        EncJetStartTimeCheck = 0
    End If

End Function

Function PI_HEAD_EncJetStart(ipHedaNo As Integer, _
                             ipDir As Integer, _
                             ipAccDelayDis_um As Double, _
                             ipStartPos_um As Double, _
                             ipEndPos_um As Double, _
                             fl_Res As Boolean) As Boolean

    'ipHeadDelayDistance_um As Double,  ---쓰지 않음.
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo)) '20090819이전버젼
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_LIST", CStr(ipHedaNo)) 'HEAD_LIST

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ENC_DIR", CStr(ipDir))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "JET_ACCDIST", CStr(ipAccDelayDis_um))
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_DELAY", CStr(ipHeadDelayDistance_um))'20090819이전버젼
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_ON_UM", CStr(ipStartPos_um))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_OFF_UM", CStr(ipEndPos_um)) '

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(EXE_TRIGJET))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        cur_time# = EncJetStartTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_EncJetStart = True
                Else
                    PI_HEAD_EncJetStart = False
                    cur_time# = EncJetStartTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    PI_HEAD_fl_Jetting = False
                    Exit Function
                End If
                Exit Do
            End If
            If EncJetStartTimeCheck(False) > 5 Then
                cur_time# = EncJetStartTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_EncJetStart = False
                PI_HEAD_fl_Jetting = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_EncJetStart = True
    cur_time# = EncJetStartTimeCheck(True)
    PI_HEAD_fl_Jetting = True
    
End Function
Function PI_HEAD_ImgTimerJetStart(ipHedaNo As Integer, ipDir As Integer, ipAccDelayDis_um As Double, ipHeadDelayDistance_um As Double, _
                                                                ipStartPos_um As Double, ipEndPos_um As Double, ipFreq As Double, fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_LIST", CStr(ipHedaNo)) 'HEAD_LIST
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ENC_DIR", CStr(ipDir))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "JET_ACCDIST", CStr(ipAccDelayDis_um))
    'Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_DELAY", CStr(ipHeadDelayDistance_um))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TIMER_KHZ", CStr(ipFreq))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_ON_UM", CStr(ipStartPos_um))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_OFF_UM", CStr(ipEndPos_um)) '
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "TRIGGER_OFF_UM", CStr(ipEndPos_um))
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(EXE_ImgTimerJetStart))
    PI_HEAD_DelayWait 0.2, True
    
    If fl_Res = True Then
        cur_time# = EncJetStartTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_ImgTimerJetStart = True
                Else
                    PI_HEAD_ImgTimerJetStart = False
                    cur_time# = EncJetStartTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    PI_HEAD_fl_Jetting = False
                    Exit Function
                End If
                Exit Do
            End If
            If EncJetStartTimeCheck(False) > 5 Then
                cur_time# = EncJetStartTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_ImgTimerJetStart = False
                PI_HEAD_fl_Jetting = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_ImgTimerJetStart = True
    cur_time# = EncJetStartTimeCheck(True)
    PI_HEAD_fl_Jetting = True
    
End Function
Function UploadImageTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            UploadImageTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        UploadImageTimeCheck = 0
    End If

End Function

Function PI_HEAD_UploadImage(ipHedaNo As Integer, _
                             ipDir As Integer, _
                             ipOrgImgPitch_um As Double, _
                             ipStartNzlNo As Integer, _
                             ipEndNzlNo As Integer, _
                             ipUsNzlQty As Integer, _
                             ipImagePathName As String, _
                             rtn_LineCount As Long, _
                             fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ENC_DIR", CStr(ipDir))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ORG_PITCH", CStr(ipOrgImgPitch_um))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "START_NZLNO", CStr(ipStartNzlNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "USE_NZLCNT", CStr(ipUsNzlQty))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "END_NZLNO", CStr(ipEndNzlNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "IMG_PATH", CStr(ipImagePathName))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(UPLOAD_IMG))
    PI_HEAD_DelayWait 0.5, True
    
    If fl_Res = True Then
        cur_time# = UploadImageTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_UploadImage = True
                Else
                    PI_HEAD_UploadImage = False
                    cur_time# = UploadImageTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If UploadImageTimeCheck(False) > 40 Then
                cur_time# = EncJetStartTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_UploadImage = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_UploadImage = True
    
    rtn_LineCount = CLng(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_CUR_IMGCOUNT", "0"))
    cur_time# = UploadImageTimeCheck(True)
    
End Function
Function PI_HEAD_GetEncCounter(rtn_ReadedVal As Double) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_ENCPOS", "0") '

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(GET_ENC_COUNT_POS))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = GetEncCounterTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_GetEncCounter = True
                Else
                    PI_HEAD_GetEncCounter = False
                    cur_time# = GetEncCounterTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If GetEncCounterTimeCheck(False) > 5 Then
                cur_time# = GetEncCounterTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_GetEncCounter = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_GetEncCounter = True
    cur_time# = GetEncCounterTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    rtn_ReadedVal = CDbl(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_ENCPOS", "0"))
    
End Function
Function GetEncCounterTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            GetEncCounterTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        GetEncCounterTimeCheck = 0
    End If

End Function
Function PI_HEAD_ZeroSetEncCounter() As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(ZERO_SET_TRIGPOS))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = ZeroSetEncCounterTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_ZeroSetEncCounter = True
                Else
                    PI_HEAD_ZeroSetEncCounter = False
                    cur_time# = ZeroSetEncCounterTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If ZeroSetEncCounterTimeCheck(False) > 5 Then
                cur_time# = ZeroSetEncCounterTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_ZeroSetEncCounter = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_ZeroSetEncCounter = True
    cur_time# = ZeroSetEncCounterTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
End Function
Function ZeroSetEncCounterTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            ZeroSetEncCounterTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        ZeroSetEncCounterTimeCheck = 0
    End If

End Function
Function PI_HEAD_SetHeadDelay(ipHedaNo As Integer, ipDelayDistance_um As Double, fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_" & "HEAD_DELAY", CStr(ipDelayDistance_um))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_HEAD_DELAY))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        cur_time# = SetHeadDelayTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_SetHeadDelay = True
                Else
                    PI_HEAD_SetHeadDelay = False
                    cur_time# = SetHeadDelayTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If SetHeadDelayTimeCheck(False) > 5 Then
                cur_time# = SetHeadDelayTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_SetHeadDelay = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_SetHeadDelay = True
    cur_time# = SetHeadDelayTimeCheck(True)
    
End Function
Function SetHeadDelayTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            SetHeadDelayTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        SetHeadDelayTimeCheck = 0
    End If

End Function
Function PI_HEAD_12_Offset(ipHedaNo As Integer, ipOffsetDistance_um As Double, fl_Res As Boolean) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HD12_DIS", CStr(ipOffsetDistance_um))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_HD12_OFFSET))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        cur_time# = HEAD_12_OffsetTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_12_Offset = True
                Else
                    PI_HEAD_12_Offset = False
                    cur_time# = HEAD_12_OffsetTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If HEAD_12_OffsetTimeCheck(False) > 5 Then
                cur_time# = SetHeadDelayTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_12_Offset = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_12_Offset = True
    cur_time# = HEAD_12_OffsetTimeCheck(True)
    
End Function
Function HEAD_12_OffsetTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            HEAD_12_OffsetTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        HEAD_12_OffsetTimeCheck = 0
    End If

End Function

Function PI_HEAD_SlantAngle(ipHedaNo As Integer, ipSlantAngle As Double, fl_Res As Boolean) As Boolean
    
    Dim objTimer As New clsTimer
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SLANT_ANGLE", CStr(ipSlantAngle))

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_SLANTANGLE))
    PI_HEAD_DelayWait 0.05, True
    
    If fl_Res = True Then
        Call objTimer.DelayWait_TimeCheck(True)
        
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_SlantAngle = True
                Else
                    PI_HEAD_SlantAngle = False
                    cur_time# = HEAD_12_OffsetTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If objTimer.DelayWait_TimeCheck(False) > 5 Then
                cur_time# = objTimer.DelayWait_TimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_SlantAngle = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_SlantAngle = True
    
    
End Function

Function PI_HEAD_TeachingImage(ipHedaNo As Integer, _
                               ipDir As Integer, _
                               ipSysPitch_mm As Double, _
                               ipDropPitch_mm As Double, _
                               ipImageLength_mm As Double, _
                               ipStartNzlNo As Integer, _
                               ipEndNzlNo As Integer, _
                               ipUsNzlQty As Integer, _
                               rtn_LineCount As Long, _
                               fl_Res As Boolean) As Boolean
    
    Dim strImagePath As String
        
    strImagePath = "C:\Poongsan\Data\ImageGen\TeachingRawImage.raw"
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ENC_DIR", CStr(ipDir))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "START_NZLNO", CStr(ipStartNzlNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "USE_NZLCNT", CStr(ipUsNzlQty))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "END_NZLNO", CStr(ipEndNzlNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ORG_PITCH", CStr(2))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "ORG_PITCH", CStr(ipDropPitch_mm))
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "IMG_PATH", CStr(strImagePath))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "SYSTEMP_PITCH_UM", CStr(ipSysPitch_mm * 1000))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "DROP_PITCH_UM", CStr(ipDropPitch_mm * 1000))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "IMAGE_LENGTH_UM", CStr(ipImageLength_mm * 1000))
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(UPLOAD_HEAD_ZERO_TEACHING_IMG))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = UploadImageTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_TeachingImage = True
                Else
                    PI_HEAD_TeachingImage = False
                    cur_time# = UploadImageTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If UploadImageTimeCheck(False) > 40 Then
                cur_time# = EncJetStartTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_TeachingImage = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "") '함수 외부에서 완료 체크 하는 경우에 클리어를 하면 안됨.
    End If
    PI_HEAD_TeachingImage = True
    
    rtn_LineCount = CLng(GetSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_CUR_IMGCOUNT", "0"))
    cur_time# = UploadImageTimeCheck(True)
    
End Function

Function PI_HEAD_DelayNozzle(ipHedaNo As Integer, fl_Res As Boolean, ipDelay() As Integer) As Boolean

    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "HEAD_NO", CStr(ipHedaNo))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "Head" & CStr(ipHedaNo) & "_SETNZL_DELAY_" & CStr(n_point%), CStr(ipDelay(n_point%)))
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_SLANTOFFSET))
    PI_HEAD_DelayWait 0.1, True
    
    If fl_Res = True Then
        cur_time# = LiveNozzleTimeCheck(True)
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_DelayNozzle = True
                Else
                    PI_HEAD_DelayNozzle = False
                    cur_time# = LiveNozzleTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If LiveNozzleTimeCheck(False) > 40 Then
                cur_time# = LiveNozzleTimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_DelayNozzle = False
                Exit Function
            End If
        Loop
    End If
    PI_HEAD_DelayNozzle = True
    cur_time# = LiveNozzleTimeCheck(True)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    
End Function

Function PI_HEAD_Set_SystemPitch(ByVal i_dChangingSysPitch_um As Double, Optional ByVal i_bResponse As Boolean = True) As Boolean
On Error GoTo syserr:

    Dim objTimer As New clsTimer
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "System_Image_Pitch", CStr(i_dChangingSysPitch_um))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(SET_SYSTEM_PITCH))
    PI_HEAD_DelayWait 0.1, True
    
    If i_bResponse = True Then
        
        Call objTimer.DelayWait_TimeCheck(True)
        
        Do
            DoEvents
            If PI_HEAD_IF_ResOK_Check <> 1 Then '진행중이 아니면
                If PI_HEAD_IF_ResOK_Check = 2 Then
                    PI_HEAD_Set_SystemPitch = True
                Else
                    PI_HEAD_Set_SystemPitch = False
                    cur_time# = UploadImageTimeCheck(True)
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                    Exit Function
                End If
                Exit Do
            End If
            If objTimer.DelayWait_TimeCheck(False) > 40 Then
                Call objTimer.DelayWait_TimeCheck(True)
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
                Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
                PI_HEAD_Set_SystemPitch = False
                Exit Function
            End If
        Loop
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "0")
        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "RECEIVE", "RETURN_JUDGE", "")
    End If
    
    PI_HEAD_Set_SystemPitch = True
    
Exit Function
syserr:
    PI_HEAD_Set_SystemPitch = False
    MsgBox Err.Description
End Function



