Attribute VB_Name = "App_PUB"
Public DEV_PASS As String
Public fl_Debugging As Boolean
Public p2ndDist As Double
Public bUse2ndImg As Boolean
Public pDummyLenth As Double
Public pDummyGap As Double
Public bUseDummy As Boolean


Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long


Sub Main()

    On Error GoTo errHere

    'Head Ctrl TEST Mode
    'fl_HeadCtrlDebug = True
    'fl_Debugging = True

    Dim dcDraw_CrossLine  As IMGPROC_DISP
    Dim objRunningForm As Object
    
    'OutputDebugString "프로그램을 시작합니다."
    'Change_Resolution 1280, 1024
    'OutputDebugString "화면 해상도 변경 1280x1024"
    
    'Call CloseBd(strMsg)
    'Call Bs_Get_JetState
    
    Call Load_HeadAlign
    Call LoadLineScanPara
        
    Load frmHeadSelect
    frmHeadSelect.Show 1
    
    Load MDI_Main
    'MDI_Main.WindowState = 2
    MDI_Main.Show
    
    Do
        DoEvents
    Loop Until FormExistance("MDI_Main")
    
    Load frmVision
    frmVision.Left = 0
    frmVision.Top = 0
    frmVision.Width = 10260 '  1005 * 15
    frmVision.Height = 8380 ' 710 * 15
    frmVision.Show
    
    Do
        DoEvents
    Loop Until FormExistance("frmVision")
    
    Load frmRunning
    frmRunning.Left = 0
    frmRunning.Top = frmVision.Height
    frmRunning.Width = MDI_Main.ScaleWidth
    frmRunning.Height = MDI_Main.ScaleHeight - frmVision.Height
    frmRunning.Show

    Do
        DoEvents
    Loop Until FormExistance("frmRunning")
        
    Load frmMotion
    frmMotion.Left = frmVision.Width
    frmMotion.Top = 0
    frmMotion.Width = MDI_Main.ScaleWidth - frmVision.Width
    frmMotion.Height = MDI_Main.ScaleHeight - frmRunning.Height
    frmMotion.Show
    
    Call LoadRegistryParams
    
    If g_nHeadType = nLG_Q Then
        
        'MDI_Main.cmdFunc(5).Enabled = False
        'MDI_Main.cmdFunc(8).Enabled = False
        
        frmMotion.SSTab1.Tab = 1
    Else
        Load frmRunning_KM
        frmRunning_KM.Left = 0
        frmRunning_KM.Top = frmVision.Height
        frmRunning_KM.Width = MDI_Main.ScaleWidth
        frmRunning_KM.Height = MDI_Main.ScaleHeight - frmVision.Height
        frmRunning_KM.Show
        
        frmMotion.SSTab1.Tab = 0
    End If
    
    Load frmWavwDetail
    frmWavwDetail.Visible = False
    
    Load frmStart
    frmStart.Show
    
    Set dcDraw_CrossLine = New IMGPROC_DISP
    dcDraw_CrossLine.CrossLIne_Draw frmVision.LineHor, frmVision.LineVer, frmVision.Buf_Main
    Set dcDraw_CrossLine = Nothing
    
    'OutputDebugString "UI Loading 완료"
    'OutputDebugString "VISION CLASS Loading완료"
    DEV_PASS = Chr(49) & Chr(54) & Chr(54) & Chr(51)
    
    'UMac Initialze--------------------------------------------------------------------------------
    'NOTEBOOK
    'PComm32_Init True
    'PComm32_Init False
    'Motion관련 변수 Loading
    
    ' mdlTrig.Connect(MDI_Main.WinsockTrig, "192.168.10.254", 1254) = False Then
    If mdlTrig.Connect(MDI_Main.WinsockTrig, "192.168.10.254", 1025) = False Then
        MsgBox "Fail TriggerBoard connection."
    End If
    
    If mdlLED.LEDCtrl_Init(MDI_Main.MSComm_LED, 2, "4800,n,8,1") = False Then
        MsgBox "Fail HallogenLamp connection."
    End If
        
    If (fl_Debugging = False) And (g_nHeadType = nLG_Q) Then
        Call NX4.InitNX4(MDI_Main.MSComm_NX4, 3)
        
        If (gPrintPara.dSysHeadTemperature > MAX_RESERVIOR_TEMPERATURE) Then
            gPrintPara.dSysHeadTemperature = MAX_RESERVIOR_TEMPERATURE
        End If
        
        If (gPrintPara.dSysReserviorTemperature > MAX_RESERVIOR_TEMPERATURE) Then
            gPrintPara.dSysReserviorTemperature = MAX_RESERVIOR_TEMPERATURE
        End If
        
        If MDI_Main.MSComm_NX4.PortOpen = True Then
            Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 1, 1, 301, gPrintPara.dSysHeadTemperature)
            Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 2, 1, 301, gPrintPara.dSysReserviorTemperature)
        End If
    End If
    
    If fl_Debugging = False Then
        Call Revolver.InitRevolver(MDI_Main.MSComm_Parker, 7)
        Call Revolver.SelectLens(MDI_Main.MSComm_Parker, 1) '// 1 is x2.
    End If
    
'    If fl_Debugging = False Then
'        AD4212_INIT MDI_Main.MSComm_Balancer
'    End If
    
    '인터록 관련 변수 로딩-----------------------------------------------------------------------
    SAVED_POS_WipingStageX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_WipingStageX", "0"))
    SAVED_POS_WipingStageY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_WipingStageY", "0"))
    SAVED_POS_WipingX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_WipingX", "0"))
    SAVED_WipingSpeed = CDbl(GetSetting(App.Title, "LATCH", "SAVED_WipingSpeed", "10"))
    
    SAVED_Wipe_OffsetX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_Wipe_OffsetX", "62.588")) '63
    SAVED_Wipe_OffsetY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_Wipe_OffsetY", "165")) '166
    SAVED_Wipe_Width_ALL = CDbl(GetSetting(App.Title, "LATCH", "SAVED_Wipe_Width_ALL", "370")) '370
    SAVED_Wipe_Width_One = CDbl(GetSetting(App.Title, "LATCH", "SAVED_Wipe_Width_One", "123.3333")) 'SAVED_Wipe_Width_ALL / 3
    
    SAVED_POS_CappingStageX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_CappingStageX", "0"))
    SAVED_POS_CappingStageY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_CappingStageY", "0"))
    SAVED_POS_CappingY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_CappingY", "0"))
    SAVED_POS_CappingZ = CDbl(GetSetting(App.Title, "LATCH", "SAVED_POS_CappingZ", "0"))
    SAVED_CappingSpeed = 10 '고정됨.
    
    SAVED_StageYAxis_ITRK_Pos_UPP = CDbl(GetSetting(App.Title, "LATCH", "SAVED_StageYAxis_ITRK_Pos_UPP", "1950")) '1850
    SAVED_StageYAxis_ITRK_Pos_LOW = CDbl(GetSetting(App.Title, "LATCH", "SAVED_StageYAxis_ITRK_Pos_LOW", "45")) '45
    SAVED_CapZAxis_ITRK_Pos_Upp = CDbl(GetSetting(App.Title, "LATCH", "SAVED_CapZAxis_ITRK_Pos_Upp", "30")) '30
    SAVED_CapToPurgeOffsetCz = CDbl(GetSetting(App.Title, "LATCH", "SAVED_CapToPurgeOffsetCz", "10")) '20
    
    SAVED_Balacer_ITRK_StageXPos = CDbl(GetSetting(App.Title, "LATCH", "SAVED_Balacer_ITRK_StageXPos", "420")) '20
    
    
    '인터록 관련 변수 로딩------------------------------------------------------------------------
    '전자저울 관련변수 Loading

    For i% = 0 To 1
        BAL_LimitLow(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "BAL_LimitLow(" & CStr(i%) & ")", "0"))
        BAL_LimitUpp(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "BAL_LimitUpp(" & CStr(i%) & ")", "0"))
    Next i%
    
    ReDim WaveFormPoint(16)
    ReDim Head_WaveFormPoint(9, 16)
    
    'PCI 7230 Board Init------------------------------------------------------------------
    Call PCI7230INIT(3): 'OutputDebugString "ADLINK PCI-7230 INIT완료"
    
'    If fl_Debugging = False Then
'        D212_INIT MDI_Main.MSComm_Srukawa, 6, "38400,n,8,1", 0: 'OutputDebugString "DS102-2Axis INIT완료"
'    End If
    
    Call SaveSetting("PCI7230_2QTY", "LATCHED", "DO_" & CStr(ip_BitNo), CStr(ipBitCase))
    'Latced Output Set
    
    'Meniscus상태-----------------------------------
    PCI7230_OutSignal_Card2QTY 3, 0
    PCI7230_OutSignal_Card2QTY 4, 0
    PCI7230_OutSignal_Card2QTY 5, 0
    PCI7230_OutSignal_Card2QTY 26, 1 '<<<bada
    'OutputDebugString "Valve Meniscus상태변경"
    'Meniscus상태-----------------------------------
    
    For i% = 0 To 31
        on_off_bit% = CInt(GetSetting("PCI7230_2QTY", "LATCHED", "DO_" & CStr(i%), "0"))
        If ((i% <> 3) And (i% <> 4) And (i% <> 5) And (i% <> 26)) Then
            PCI7230_OutSignal_Card2QTY i%, on_off_bit%
        End If
    Next i%
    '-------------------------------------------------------------------------------------

    SAVED_BALInspPosStageX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_BALInspPosStageX", "40.221"))
    SAVED_BALInspPosStageY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_BALInspPosStageY", "1950"))
    SAVED_BALInspPosX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_BALInspPosX", "90"))
    SAVED_BALInspPosY = CDbl(GetSetting(App.Title, "LATCH", "SAVED_BALInspPosY", "10"))
    
    SAVED_MECHANICAL_Module_GAP_Xmm = CDbl(GetSetting(App.Title, "LATCH", "SAVED_MECHANICAL_Module_GAP_Xmm", "129.536")) '131.536 '125
    SAVED_MECHANICAL_Module_GAP_Ymm = CDbl(GetSetting(App.Title, "LATCH", "SAVED_MECHANICAL_Module_GAP_Ymm", "30")) '164
    SAVED_MECHANICAL_Module_Offset_Xmm = CDbl(GetSetting(App.Title, "LATCH", "SAVED_MECHANICAL_Module_Offset_Xmm", "65.768")) '62
    SAVED_BALStbypPosStageX = CDbl(GetSetting(App.Title, "LATCH", "SAVED_BALStbypPosStageX", "600")) '600

    SAVED_HeadZ_JetPos = CDbl(GetSetting(App.Title, "LATCH", "SAVED_HeadZ_JetPos", "151.5710"))
    SAVED_RwviewZ_ReviewPos = CDbl(GetSetting(App.Title, "LATCH", "SAVED_RwviewZ_ReviewPos", "0"))
    SAVED_RwviewZ_LieScanPos = CDbl(GetSetting(App.Title, "LATCH", "SAVED_RwviewZ_LieScanPos", "0"))

    SAVED_SELELCT_HEAD_LIST = CInt(GetSetting(App.Title, "LATCH", "SAVED_SELELCT_HEAD_LIST", "0"))

    fl_FirstStart = True
    
    SAVED_ReviewOpticFactor_Pixel_Per_mm = CDbl(GetSetting(App.Title, "LATCH", "SAVED_ReviewOpticFactor_Pixel_Per_mm", "1"))
    
    Saving_RvOffset_X_mm = CDbl(GetSetting(App.Title, "LATCH", "Saving_RvOffset_X_mm", "0"))
    Saving_RvOffset_Y_mm = CDbl(GetSetting(App.Title, "LATCH", "Saving_RvOffset_Y_mm", "0"))
   
    Unload frmStart
     
    Call frmVision.Digitizer1.GrabContinuous
    frmVision.lblLightVolumn.Caption = gPrintPara.nLedBrightness
    frmVision.HScroll_Light.Value = gPrintPara.nLedBrightness
    Call PCI7230.Set_LightVolumn(gPrintPara.nLedBrightness)
    
Exit Sub
errHere:

    'OutputDebugString "Sub Main() - ERROR"
    MsgBox Err.Description & "-Sub Main()", vbCritical
    
    Unload frmStart

End Sub

Sub LoadRegistryParams()
On Error GoTo syserr:

    For i% = 0 To 7
        PComm32_Speed_mms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(i%) & ")", "5"))
        PComm32_Acc_ms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(i%) & ")", "200"))
        PComm32_Scrv_ms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(i%) & ")", "100"))
        USR_frmMotion_Speed(i%) = PComm32_Speed_mms(i%)
        'If i% < 7 Then
        '    PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
        'End If
    Next i%

    For i% = 0 To 1
        Cliffer_Speed_mms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "Cliffer_Speed_mms(" & CStr(i% + 10) & ")", "5"))
        Cliffer_Acc_ms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "Cliffer_Acc_ms(" & CStr(i% + 10) & ")", "200"))
        Cliffer_Scrv_ms(i%) = CDbl(GetSetting(App.Title, "SYSTEM", "Cliffer_Scrv_ms(" & CStr(i% + 10) & ")", "100"))
        USR_frmMotion_Speed_Cliffer(i%) = Cliffer_Speed_mms(i%)
    Next i%
    
    For i% = 12 To 16
        Index% = i% - 4
        PComm32_Speed_mms(Index%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(Index%) & ")", "5"))
        PComm32_Acc_ms(Index%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(Index%) & ")", "200"))
        PComm32_Scrv_ms(Index%) = CDbl(GetSetting(App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(Index%) & ")", "100"))
        USR_frmMotion_Speed(Index%) = PComm32_Speed_mms(Index%)
        'If i% < 7 Then
        '    PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
        'End If
    Next i%
    
    Call PI_HEAD_IF_Init(False)
            
    '// 추가된 프린트 정보 로딩...
    gPrintPara.strMultiPulseFilePath = GetSetting(App.Title, "PRINT_INFO", "MULTI_PULSE_FILEPATH", "C:\")
    gPrintPara.strNzlParamsFilePath = GetSetting(App.Title, "PRINT_INFO", "NOZZLE_PARAMS_FILEPATH", "C:\")
    gPrintPara.strPrintImageFilePath = GetSetting(App.Title, "PRINT_INFO", "PRINT_IMAGE_FILEPATH", "C:\")
    
    gPrintPara.dPrintStart_Xmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_START_XMM", "500"))
    gPrintPara.dPrintStart_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_START_YMM", "500"))
    gPrintPara.dPrintHeight_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_HEIGHT_MM", "1"))
    'gPrintPara.dPrintAccDist_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_ACCDIST_MM", "100"))
    gPrintPara.dReviewOffset_Xmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_XMM", "0"))
    gPrintPara.dReviewOffset_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_YMM", "0"))
    gPrintPara.dReviewFocus_Zmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_REVIEWFOCUS_ZMM", "0"))
    
    'gPrintPara.dCfgPrintFreq_kHz = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_FREQUENCY_KHZ", "5"))
    gPrintPara.dCfgPrintSpeed_mmPs = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_SPEED_MMPS", "50"))
    gPrintPara.dCfgXPitch_um = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_X_PITCH_UM", "100"))
    gPrintPara.dCfgDropPitch_um = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_DROP_PITCH_UM", "100"))
    
    gPrintPara.dCfgSaberAngleOffset_Degree = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_SABERANGLE_OFFSET", "0"))
    gPrintPara.dCfgHeadThetaOffset_Degree = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_QHT_OFFSET_DEGREE", "0"))
    gPrintPara.dCfgPrintWidth_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_WIDTH_XMM", "100"))
    
    gPrintPara.dTeachHeadZero_Degree = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_QHT_ZERO_DEGREE", "90"))
    gPrintPara.dTeachCapping_Xmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_XMM", "0"))
    gPrintPara.dTeachCapping_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_YMM", "0"))
    gPrintPara.dTeachCapping_Zmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_ZMM", "0"))
    gPrintPara.dTeachCappingQHT_Degree = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_DEGREE", "0"))
    
    gPrintPara.dSysPurgeTime_sec = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_PURGETIME_SEC", "5"))
    gPrintPara.dSysTimerJetTime_sec = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_TIMERJETTIME_SEC", "5"))
    gPrintPara.dSysSupplySolventTime_sec = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_SUPPLYSOLVENT_TIME_SEC", "5"))
    gPrintPara.dSysReserviorTemperature = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_RESERVIOR_TEMPERATURE", "45"))
    gPrintPara.dSysHeadTemperature = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_HEAD_TEMPERATURE", "45"))
    
    gPrintPara.dSysLensOffsetx2x10_Xmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_X2X10_OFFSET_XMM", "0.466"))
    gPrintPara.dSysLensOffsetx2x10_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "SYS_X2X10_OFFSET_YMM", "0.375"))
    
    gPrintPara.dTeachHeadHeight_Zero_Zmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACH_QHEAD_HEIGHT_ZERO_ZMM", "15.0"))
    
    gPrintPara.dPrintThickness_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_GLASS_THICKNESS_MM", "1"))
    
    gPrintPara.nLedBrightness = CDbl(GetSetting(App.Title, "PRINT_INFO", "LED_BRIGHTNESS_VALUE", "7"))
        
    gPrintPara.dPhysicNozzleOffset_um = CDbl(GetSetting(App.Title, "PRINT_INFO", "NOZZLE_PITCH_OFFSET_UM", "0"))

    gPrintPara.dCfgTeachingImageLength_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACHING_IMAGE_LENGTH_MM", "50"))
    gPrintPara.dCfgTeachingImageDropPitch_mm = CDbl(GetSetting(App.Title, "PRINT_INFO", "TEACHING_IMAGE_DROP_PITCH_MM", "0.005"))
        
        
    gPrintPara.dSetPrintAccDistOffset_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "PRINT_ACCDISTANCE_OFFSET_MM", "20"))
    gPrintPara.dSetMoveX_mmPs = CDbl(GetSetting(App.Title, "PRINT_INFO", "MOVE_X_MMPS", "100"))
    gPrintPara.dSetMoveY_mmPs = CDbl(GetSetting(App.Title, "PRINT_INFO", "MOVE_Y_MMPS", "100"))
    
    gPrintPara.dADCEmptyValue = CDbl(GetSetting(App.Title, "PRINT_INFO", "INK_EMPTY_VALUE", "0"))
    gPrintPara.dADCFullValue = CDbl(GetSetting(App.Title, "PRINT_INFO", "INK_FULL_VALUE", "1024"))
    gPrintPara.nADCViewOption = CInt(GetSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_OPTION", "1"))
    
    nADCViewEnable% = CInt(GetSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_ENABLE", "1"))
    If nADCViewEnable% = 1 Then
        gPrintPara.bADCViewVisible = True
    Else
        gPrintPara.bADCViewVisible = False
    End If
        
    g_dUVRunYSpeed_mmPs = CDbl(GetSetting(App.Title, "PRINT_INFO", "UV_RUN_Y_MMPS", "100"))

    Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                    NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                    gPrintPara.dChangedPhysicNozzlePitch_um, _
                                    gPrintPara.nSetMultiple_Value, _
                                    gPrintPara.dCfgSaberAngle_Degree)
                                    
    Call Load_NozzleParams(gPrintPara.strNzlParamsFilePath)
    Call frmRunning.DisplayPrintParams
    
    Call frmRunning.Apply_PrintInfo
    
Exit Sub

syserr:
    MsgBox Err.Description
End Sub

Sub SaveLineScanPara()
On Error GoTo syserr:
    
Call SaveSetting(App.Title, "LINE_SCAN", "SPEED_MMPS", Format(gLineScanPara.dGrabSpeed_mmPs, "0.000"))
Call SaveSetting(App.Title, "LINE_SCAN", "ACCDIST_MM", Format(gLineScanPara.dAccDist_mm, "0.000"))
Call SaveSetting(App.Title, "LINE_SCAN", "SP_OFFSET_MM", Format(gLineScanPara.dSPosOffset_mm, "0.000"))
Call SaveSetting(App.Title, "LINE_SCAN", "LAMP_BRIGHTNESS", Format(gLineScanPara.dLampBright, "0"))
Call SaveSetting(App.Title, "LINE_SCAN", "BLOB_MAX_UM", Format(gLineScanPara.dMax_BlobCircle, "0"))
Call SaveSetting(App.Title, "LINE_SCAN", "BLOB_MIN_UM", Format(gLineScanPara.dMin_BlobCircle, "0"))
Call SaveSetting(App.Title, "LINE_SCAN", "LIMIT_CIRCLE_CNT", Format(gLineScanPara.dInspectDotCnt, "0"))


Exit Sub
syserr:
MsgBox Err.Description
End Sub
Sub LoadLineScanPara()
On Error GoTo syserr:
    
    gLineScanPara.dGrabSpeed_mmPs = CDbl(GetSetting(App.Title, "LINE_SCAN", "SPEED_MMPS", "100"))
    gLineScanPara.dAccDist_mm = CDbl(GetSetting(App.Title, "LINE_SCAN", "ACCDIST_MM", "10"))
    gLineScanPara.dSPosOffset_mm = CDbl(GetSetting(App.Title, "LINE_SCAN", "SP_OFFSET_MM", "0"))
    gLineScanPara.dLampBright = CDbl(GetSetting(App.Title, "LINE_SCAN", "LAMP_BRIGHTNESS", "100"))
    gLineScanPara.dMax_BlobCircle = CDbl(GetSetting(App.Title, "LINE_SCAN", "BLOB_MAX_UM", "10000"))
    gLineScanPara.dMin_BlobCircle = CDbl(GetSetting(App.Title, "LINE_SCAN", "BLOB_MIN_UM", "100"))
    gLineScanPara.dInspectDotCnt = CDbl(GetSetting(App.Title, "LINE_SCAN", "LIMIT_CIRCLE_CNT", "10"))

Exit Sub
syserr:
MsgBox Err.Description
End Sub

Sub Load_HeadAlign()
On Error GoTo syserr:
    
    gdHeadZeroAlignXPos_mm(0) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "FIRST_X_MM", "0"))
    gdHeadZeroAlignYPos_mm(0) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "FIRST_Y_MM", "0"))
    gdHeadZeroAlignXPos_mm(1) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "SECOND_X_MM", "0"))
    gdHeadZeroAlignYPos_mm(1) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "SECOND_Y_MM", "0"))
    
Exit Sub
syserr:
MsgBox Err.Description
End Sub


Sub Load_KMSysData()
On Error GoTo syserr:
    
    gdHeadZeroAlignXPos_mm(0) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "FIRST_X_MM", "0"))
    gdHeadZeroAlignYPos_mm(0) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "FIRST_Y_MM", "0"))
    gdHeadZeroAlignXPos_mm(1) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "SECOND_X_MM", "0"))
    gdHeadZeroAlignYPos_mm(1) = CDbl(GetSetting(App.Title, "HEAD_ALIGN", "SECOND_Y_MM", "0"))
    
Exit Sub
syserr:
MsgBox Err.Description

End Sub


