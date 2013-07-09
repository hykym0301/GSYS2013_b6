Attribute VB_Name = "Definition_SYSTEM"
Public Const AD7230_DI_INK_Bottle_Pressure_Switch_00            As Integer = 0
Public Const AD7230_DI_Vacuum_Tank_Pressure_Switch_01           As Integer = 1
Public Const AD7230_DI_Drain_Tank_Pressure_Switch_02            As Integer = 2
Public Const AD7230_DI_Not_Used_03                              As Integer = 3
Public Const AD7230_DI_Main_Ink_Tank_High_Level_Senor_04        As Integer = 4
Public Const AD7230_DI_Main_Ink_Tank_Cleaning_Level_Senor_05    As Integer = 5
Public Const AD7230_DI_Main_Ink_Tank_Low_Level_Senor_06         As Integer = 6
Public Const AD7230_DI_Main_Ink_Tank_Middle_Level_Sensor_07     As Integer = 7
Public Const AD7230_DI_Drain_Tank_Middle_Level_Sensor_08        As Integer = 8
Public Const AD7230_DI_Drain_Tank_High_Level_Sensor_09          As Integer = 9
Public Const AD7230_DI_Drain_Tank_Low_Level_Sensor_10           As Integer = 10
Public Const AD7230_DI_Meniscus_역류감지_Sensor_11              As Integer = 11
Public Const AD7230_DI_NMP_Pressure_SW_12                       As Integer = 12
Public Const AD7230_DI_Menuscus_Vacuum_Pressure_SW_13           As Integer = 13
Public Const AD7230_DI_Ink_Tank_Pressure_SW_14                  As Integer = 14
Public Const AD7230_DI_Sub_Ink_Tank_High_Level_Sensor_15        As Integer = 15
Public Const AD7230_DI_전자저울_Down확인_근접_16                As Integer = 16
Public Const AD7230_DI_Not_Used_17                              As Integer = 17
Public Const AD7230_DI_Not_Used_18                              As Integer = 18
Public Const AD7230_DI_Not_Used_19                              As Integer = 19
Public Const AD7230_DI_Not_Used_20                              As Integer = 20
Public Const AD7230_DI_Not_Used_21                              As Integer = 21
Public Const AD7230_DI_Not_Used_22                              As Integer = 22
Public Const AD7230_DI_Not_Used_23                              As Integer = 23
Public Const AD7230_DI_전자저울_Body_UP_Check_Sensor_24         As Integer = 24
Public Const AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25       As Integer = 25
Public Const AD7230_DI_전자저울_Cover_UP_Check_Sensor_26        As Integer = 26
Public Const AD7230_DI_전자저울_Cover_Down_Check_Sensor_27      As Integer = 27
Public Const AD7230_DI_전자저울_Cover_전진_Check_Sensor_28      As Integer = 28
Public Const AD7230_DI_전자저울_Cover_후진_Check_Sensor_29      As Integer = 29
Public Const AD7230_DI_Wiping_Body_UP_Check_Sensor_30           As Integer = 30
Public Const AD7230_DI_Wiping_Body_DOWN_Check_Sensor_31         As Integer = 31

Public Const AD7230_DO_Ink_공급Step1Sol_00                      As Integer = 0
Public Const AD7230_DO_Ink_공급Step2Sol_01                      As Integer = 1
Public Const AD7230_DO_Ink_TankNMP공급Sol_02                    As Integer = 2
Public Const AD7230_DO_Ink_TankVacuumOnOffSol_03                As Integer = 3
Public Const AD7230_DO_ByPass_OnOffSol_04                       As Integer = 4
Public Const AD7230_DO_Ink_PurgeSol_05                          As Integer = 5
Public Const AD7230_DO_Ink_공급Step3Sol_06                      As Integer = 6
Public Const AD7230_DO_Ink_DrainSol_07                          As Integer = 7
Public Const AD7230_DO_Ink_BottleVacuumSol_08                   As Integer = 8
Public Const AD7230_DO_NMP_Suction2Sol_09                       As Integer = 9
Public Const AD7230_DO_NMP_Suction1Sol_10                       As Integer = 10
Public Const AD7230_DO_NMP_SupplySol_11                         As Integer = 11
Public Const AD7230_DO_Wiping_1Sol_12                           As Integer = 12
Public Const AD7230_DO_Wiping_2Sol_13                           As Integer = 13
Public Const AD7230_DO_NMP_DrainSol_14                          As Integer = 14
Public Const AD7230_DO_InkTank_AirVentSol_15                    As Integer = 15
Public Const AD7230_DO_DrainTank_AirVentSol_16                  As Integer = 16
Public Const AD7230_DO_Ink_Spare3Sol_17                         As Integer = 17
Public Const AD7230_DO_Ink_Spare4Sol_18                         As Integer = 18
Public Const AD7230_DO_Ink_Spare5Sol_19                         As Integer = 19
Public Const AD7230_DO_전자저울_BodyUpDownSol_20                As Integer = 20
Public Const AD7230_DO_전자저울_CoverUpDownSol_21               As Integer = 21
Public Const AD7230_DO_전자저울_Cover전후진Sol_22               As Integer = 22
Public Const AD7230_DO_Wiping_BodyUpDownSol_23                  As Integer = 23
Public Const AD7230_DO_Purge_공급Sol_24                         As Integer = 24
Public Const AD7230_DO_Vacuum_Ejector1Sol_26                    As Integer = 25
Public Const AD7230_DO_Vacuum_Ejector2Sol_26                    As Integer = 26
Public Const AD7230_DO_Ink_Bottle저압CDASol_27                  As Integer = 27
Public Const AD7230_DO_Ink_Bottle고압CDASol_28                  As Integer = 28
Public Const AD7230_DO_Drain_CDSol_29                           As Integer = 29
Public Const AD7230_DO_NMP_CDASol_30                            As Integer = 30
Public Const AD7230_DO_Not_Used_31                              As Integer = 31


'SYSTEM 관련 변수 선언부
Public USR_frmMotion_AxisIndex As Integer
Public USR_frmMotion_AbsPos(12) As Double
Public USR_frmMotion_StepPos(12) As Double
Public USR_frmMotion_Speed(12) As Double

Public USR_frmMotion_AxisIndex_Cliffer As Integer
Public USR_frmMotion_AbsPos_Cliffer(1) As Double
Public USR_frmMotion_StepPos_Cliffer(1) As Double
Public USR_frmMotion_Speed_Cliffer(1) As Double

Public InputBox_FormIndex As Integer
Public WaveFormPoint() As Double
Public Head_WaveFormPoint() As Double
Public LiveNozzle_InputMode As Integer
Public WaveFormPoint_Max(9) As Double

Public manual_JetStartX_mm As Double
Public manual_JetStartY_mm As Double

Public manual_BeforeJet_RvX_mm As Double
Public manual_BeforeJet_RvY_mm As Double 'ReviewOffset을 구하기 위함.

Public Saving_RvOffset_X_mm As Double
Public Saving_RvOffset_Y_mm As Double

Public Head_Gap_mm(4) As Double
Public Module_Gap_mm(4) As Double
Public Head_DelayY정_um(9) As Double
Public Head_DelayY역_um(9) As Double
Public Head_MaxDelayY정_um As Double
Public Head_MinDelayY역_um As Double

Public rtn_StageScanStartXmm As Double
Public rtn_StageScanStartYmm As Double
Public rtn_StageScanEndYmm As Double
Public rtn_TrigStartY_um As Double
Public rtn_TrigEndY_um As Double
Public rtn_MaxScanDistanceY As Double
Public rtn_HeadDelay_um(9) As Double

'Public rtn_StageScanStartYmm(1) As Double
'Public rtn_StageScanEndYmm(1) As Double
'Public rtn_TrigStartY_um(1) As Double
'Public rtn_TrigEndY_um(1) As Double
'Public rtn_HeadDelayFwd_um(9) As Double
'Public rtn_HeadDelayBwd_um(9) As Double

Public PComm32_Speed_mms(12) As Double
Public PComm32_Acc_ms(12) As Double
Public PComm32_Scrv_ms(12) As Double 'Device Net축 및 기타축들과 변수 공유를 위하여.....인덱스갯수가 틀림.

Public Cliffer_Speed_mms(1) As Double
Public Cliffer_Acc_ms(1) As Double
Public Cliffer_Scrv_ms(1) As Double

Public SAVED_HeadZ_JetPos As Double
Public SAVED_RwviewZ_ReviewPos As Double
Public SAVED_RwviewZ_LieScanPos As Double

Public SAVED_ReviewOffsetX_mm정(9) As Double
Public SAVED_ReviewOffsetY_mm정(9) As Double

Public SAVED_ReviewOffsetX_mm역(9) As Double
Public SAVED_ReviewOffsetY_mm역(9) As Double

Public SAVED_POS_WipingStageX As Double
Public SAVED_POS_WipingStageY As Double
Public SAVED_POS_WipingX As Double
Public SAVED_WipingSpeed As Double

Public SAVED_Wipe_OffsetX As Double
Public SAVED_Wipe_OffsetY As Double
Public SAVED_Wipe_Width_ALL As Double
Public SAVED_Wipe_Width_One As Double

Public SAVED_POS_CappingStageX As Double
Public SAVED_POS_CappingStageY As Double
Public SAVED_POS_CappingY As Double
Public SAVED_POS_CappingZ As Double
Public SAVED_CappingSpeed As Double
Public SAVED_CapToPurgeOffsetCz As Double

Public SAVED_StageYAxis_ITRK_Pos_UPP As Double
Public SAVED_StageYAxis_ITRK_Pos_LOW As Double
Public SAVED_CapZAxis_ITRK_Pos_Upp As Double

Public SAVED_Balacer_ITRK_StageXPos As Double

'기구위치 보정 관련 변수
Public SAVED_CAMERA_OffsetX As Double
Public SAVED_CAMERA_OffsetY As Double

'Head IF---------------------------------------
Public HEADIF_APP_ProcID As Long

Public SAVED_HEADIF_SystemFolder As String
Public SAVED_HEADIF_SystemFolder_Reg As String
Public SAVED_HEADIF_NLIFileName As String

Public SAVED_HEADIF_BOOT_HEAD_QTY As Integer
Public SAVED_HEADIF_BOOT_ENC_Phase As Integer
Public SAVED_HEADIF_BOOT_ENC_RES As Double
Public SAVED_HEADIF_BOOT_System_Image_Pitch
Public SAVED_HEADIF_BOOT_JET_DELAY As Double
Public SAVED_HEADIF_BOOT_HEAD_TYPE As Integer
Public SAVED_HEADIF_BOOT_SUPPLY_VOLT As Double
Public SAVED_HEADIF_HEAD_DELAY As Double
Public SAVED_HEADIF_BOOT_SLANT_ANGLE As Double
Public SAVED_HEADIF_BOOT_VOLT_OFFSET As Double
Public SAVED_HEADIF_BOOT_BOOT_PATH As String
Public SAVED_HEADIF_BOOT_ERR_MAP As Integer
Public SAVED_HEADIF_BOOT_USE_NzlQTY As Integer

Public SAVED_HEADIF_LastVoltage(32) As Double
Public SAVED_HEADIF_LastLiveNozzle(511) As Integer

Public SAVED_HEADIF_HeadDelay_um(9) As Double
Public SAVED_HEADIF_DefaultDHeadDealy(9) As Double
Public SAVED_HEADIF_LastHeadDelay_um(9) As Double

Public SAVED_HEADIF_BetweenHeadOffset(4) As Double


'Head IF---------------------------------------

'frmRunning Head설정Tab정보--------------------
Public SAVED_WAVEFORM_TIMEus(11) As Double
Public SAVED_WAVEFORM_VOLTage(9) As Double '헤드별 2포인트 동일적용
Public SAVED_WAVEFORM_BaseVOLTage(9) As Double
Public SAVED_SELELCT_HEAD_LIST As Integer
'frmRunning Head설정Tab정보--------------------

'frmRunning 수동운전Tab정보--------------------
Public SAVED_CuImagePath_Fwd(9) As String 'MSFlexGrid1.TextMatrix(n,1)
Public SAVED_CuImageFile_Fwd(9) As String 'MSFlexGrid2.TextMatrix(n,1)
Public SAVED_CuImagePath_Bwd(9) As String 'MSFlexGrid1.TextMatrix(n,2)
Public SAVED_CuImageFile_Bwd(9) As String 'MSFlexGrid2.TextMatrix(n,2)
Public SAVED_NozzleLiveSTR(9) As String 'MSFlexGrid2.TextMatrix(n,4)
Public SAVED_OrgImgPitch(9) As Double 'MSFlexGrid2.TextMatrix(n,4)
Public SAVED_LineQTY_Fwd(9) As Double 'MSFlexGrid2.TextMatrix(n,5)
Public SAVED_LineQTY_Bwd(9) As Double 'MSFlexGrid2.TextMatrix(n,9)
Public SAVED_SCanDistance_Fwd(9) As Double 'MSFlexGrid2.TextMatrix(n,6)
Public SAVED_SCanDistance_Bwd(9) As Double 'MSFlexGrid2.TextMatrix(n,10)

'frmRunning 수동운전Tab정보--------------------

'frmMura Basic AB Tab 정보---------------------
Public SAVED_LAST_HandledFilePath As String


'frmMura Basic AB Tab 정보---------------------

Public SAVED_BALInspPosStageX As Double
Public SAVED_BALInspPosStageY As Double
Public SAVED_BALInspPosX As Double
Public SAVED_BALInspPosY As Double
Public SAVED_MECHANICAL_Module_GAP_Xmm As Double
Public SAVED_MECHANICAL_Module_GAP_Ymm As Double
Public SAVED_MECHANICAL_Module_Offset_Xmm As Double
Public SAVED_BALStbypPosStageX As Double

Public SAVED_Last_Basic_A(9) As Double
Public SAVED_Last_Basic_B(9) As Double
Public SAVED_Last_Basic_TagVolt(9) As Double

Public SAVED_ReviewOpticFactor_Pixel_Per_mm As Double

Public BAL_LimitLow(1) As Double
Public BAL_LimitUpp(1) As Double


Public fl_WipingStop As Boolean
Public fl_WipingRun As Boolean
Public fl_CappingStop As Boolean
Public fl_PurgeStop As Boolean
Public fl_PurgeRun As Boolean
Public fl_TimerStop As Boolean
Public fl_TimerRun As Boolean
Public fl_FirstStart As Boolean
Public fl_cmdDataWrite_V_Click_NoMSG As Boolean
Public fl_VoltageDataNoSave As Boolean

Public StepNo_ManualJet As Double

Public LineCount_50Pro As Long
Public LineCount_PrvMura(9) As Long

Public fl_InspAB_Pause As Boolean
Public fl_InspAB_Start As Boolean
Public fl_InspAB_Stop As Boolean
Public StepNo_BasicAB As Double
'Public ipCurimage_AB As tagImgInfo

Public fl_InspBasicInSide_Pause As Boolean
Public fl_InspBasicInSide_Start As Boolean
Public fl_InspBasicInSide_Stop As Boolean
Public StepNo_BasicBasicInSide As Double
Public BasicInsideSelMdNo As Integer
Public BasicInsideUseHeadList As Integer
'Public ipCurimage As tagImgInfo

Public fl_InspHeadBtw_Pause As Boolean
Public fl_InspHeadBtw_Start As Boolean
Public fl_InspHeadBtw_Stop As Boolean
Public StepNo_HeadBtw As Double
Public HeadBtwSelMdNo As Integer
Public HeadBtwUseHeadList As Integer
'Public ipCurimage_HeadBtw As tagImgInfo

Public fl_HeadCtrlDebug As Boolean
Public fl_BalancerMonitorOut As Boolean

Public fl_ScanBusy As Boolean
Public fl_AutoScan_Pause As Boolean
Public fl_AutoScan_Start As Boolean
Public fl_AutoScan_Stop As Boolean
Public StepNo_AutoScan As Double
Public AutoStartSeq_ReviewX As Double
Public AutoStartSeq_ReviewY As Double
Public AutoMode_FB_Delay As Double

Public fl_InkBottle진공탈기_정지 As Boolean

Public StepNo_INK_InitCharge As Double
Public CCD_CursorMode_Step As Double

Public Const PI = 3.14159265358979
Public Const NOZZLE_PITCH_UM = 254#
Public Const WAVEFORM_SPLIT_CNT = 8
Public Const MAX_WAVEFORM_DIVIDE_CNT = 128
Public Const NOZZLE_COUNT = 256
Public Const MAX_RESERVIOR_TEMPERATURE = 100
'Public Const DEFAULT_ACC_YMM As Integer = 10
Public Const MAX_PRINT_FREQ_KHZ = 50

Public Const STAGE_Y_POSITIVE_MM = 2050
Public Const STAGE_Y_NEGATIVE_MM = -10

Type ST_PRINTINFO
    
    strNzlParamsFilePath As String
    strPrintImageFilePath As String
    strMultiPulseFilePath As String
        
    dPrintStart_Xmm As Double
    dPrintStart_Ymm As Double
    dPrintHeight_mm As Double
    dPrintThickness_mm As Double
    dPrintAccDist_mm As Double
    dReviewOffset_Xmm As Double
    dReviewOffset_Ymm As Double
    dReviewFocus_Zmm As Double
    
    dCfgPrintSpeed_mmPs As Double
    dCfgPrintFreq_kHz As Double
    dCfgXPitch_um As Double
    dCfgDropPitch_um As Double
    dCfgSaberAngle_Degree As Double
    dCfgSaberAngleOffset_Degree As Double
    dCfgHeadThetaOffset_Degree As Double
    dCfgPrintWidth_mm As Double
    
    dCfgTeachingImageLength_mm As Double
    dCfgTeachingImageDropPitch_mm As Double
        
    lngRtnImageYCnt As Long
        
    dTeachHeadZero_Degree As Double
    dTeachCapping_Xmm As Double
    dTeachCapping_Ymm As Double
    dTeachCapping_Zmm As Double
    dTeachCappingQHT_Degree As Double
    dTeachHeadHeight_Zero_Zmm As Double
    
    dSysPurgeTime_sec As Double
    dSysTimerJetTime_sec As Double
    dSysReserviorTemperature As Double
    dSysHeadTemperature As Double
    dSysSupplySolventTime_sec As Double
    
    dTmpReviewOff_SXmm As Double
    dTmpReviewOff_SYmm As Double
    dTmpReviewOff_EYmm As Double
    
    dSysLensOffsetx2x10_Xmm As Double
    dSysLensOffsetx2x10_Ymm As Double
    
    nSetMultiple_Value As Integer
    nSetStartNzlNo As Integer
    nSetEndNzlNo As Integer
    nSetUseNzlCnt As Integer
    nSetNzlLive(NOZZLE_COUNT - 1) As Integer
    nSetNzlDelay(NOZZLE_COUNT - 1) As Integer
    dSetMultiPulseVolt(MAX_WAVEFORM_DIVIDE_CNT / WAVEFORM_SPLIT_CNT) As Double
    dSetPrintSpeed_mmPs As Double
    
    dSetMoveX_mmPs As Double
    dSetMoveY_mmPs As Double
    dSetPrintAccDistOffset_Ymm As Double
    
    nLedBrightness As Integer
    stJetInfo As ScanInfo
    
    lRtnTotalScanCnt As Long
    nRtnLastUseNozzleCnt As Integer
    
    dChangedPhysicNozzlePitch_um As Double
    
    dPhysicNozzleOffset_um As Double
    
    dGet_ADCValue(1) As Double
    dADCFullValue As Double
    dADCEmptyValue As Double
    bADCViewVisible As Boolean
    nADCViewOption As Integer
        
End Type

Public Type PT
    dXmm As Double
    dYmm As Double
End Type

Public gPrintPara As ST_PRINTINFO
Public g_nRunSeqType As Integer
Public g_nPrintSeqNo As Integer
Public g_nCappingSeqNo As Integer
Public g_nTeachingMode As Integer
Public g_dGetHeadTemperature(1) As Double
Public g_bIsPrinting As Boolean
Public g_bStopPrint As Boolean

Public g_nTotalBlockCnt As Integer
Public g_nScanCnt As Integer
Public g_nLastScanCnt As Integer
Public g_nLastLiveNzl(NOZZLE_COUNT - 1) As Integer
Public g_nDataLoadingType As Integer
Public g_dUVRunYSpeed_mmPs As Double

Enum HeadType
    nKM = 0
    nLG_Q
End Enum

Enum MainSylinderStatus
    Forward_MSylinder = 0
    Backward_MSylinder
End Enum

Enum DropWatcherSylinderStatus
    Up_Sylinder = 0
    Down_Sylinder
    Forward_Sylinder
    Backward_Sylinder
End Enum

Enum MaintChannelNo
    Q_Head_Maint = 0
    KM_Head_1_Maint
    KM_Head_2_Maint
End Enum

Enum MaintCupPressureStatus
    Close_valve = 0
    Vacuum
    Exhaust
End Enum

Enum KM_TankMode
    Meniscus_KM = 0
    Purge_KM
End Enum

Enum KM_SettingTank
    KM_Head_1 = 0
    KM_Head_2
    KM_Both
End Enum

Enum StrobeSwitch
    Q_Head = 0
    KM_Head
End Enum

Enum MaintRollChannel
    Stop_Roll = 0
    Roll_1
    Roll_2
    Roll_3
End Enum




Public g_nHeadType As HeadType

Type LineScanPara
    dGrabSpeed_mmPs As Double
    dAccDist_mm As Double
    dSPosOffset_mm As Double
    dLampBright As Double
    dMax_BlobCircle As Double
    dMin_BlobCircle As Double
    
    dInspectDotCnt As Double
End Type

Public gLineScanPara As LineScanPara
Public gdResultBlobCnt As Double

Public Type BlobCoord
    Center_X As Double
    Center_Y As Double
    Pos_X As Double
    Pos_Y As Double
    Size_X As Double
    Size_Y As Double
    Area As Double
    Compactness As Double
End Type

Public rtnBlobResult() As BlobCoord

Public gdHeadZeroAlignXPos_mm(1) As Double
Public gdHeadZeroAlignYPos_mm(1) As Double
Public gdHeadAlignCal_mm(1) As Double

Function AutoSeq_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            AutoSeq_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        AutoSeq_TimeCheck = 0
    End If

End Function
Function AutoSeqDelay_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            AutoSeqDelay_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        AutoSeqDelay_TimeCheck = 0
    End If

End Function
Sub AutoSeq_DelayWait(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = AutoSeqDelay_TimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until AutoSeqDelay_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = AutoSeqDelay_TimeCheck(True)
    
End Sub
Function Balacer_SafetyCheck(rtn_MSG As String) As Boolean

    cu_time# = BalSafetyCheckTimeCheck(True)

    '안전위치 확인-----------------------------------------------------------------------------------------------
    If Balacer_Cover_Open2(rtn_dd$) <> 0 Then
        rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
        Balacer_SafetyCheck = False
    End If
    
    D212_PositionReadOneAxis MDI_Main.MSComm_Srukawa, D212_Axis_X, rtn_pos#
    If rtn_pos# >= 1 Then
        If D212_ABSMoveX(MDI_Main.MSComm_Srukawa, 0, 300, 200, 7000, False) = False Then
            rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
            Balacer_SafetyCheck = False
        End If
    End If
    
    D212_PositionReadOneAxis MDI_Main.MSComm_Srukawa, D212_Axis_Y, rtn_pos#
    If rtn_pos# >= 1 Then
        If D212_ABSMoveY(MDI_Main.MSComm_Srukawa, 0, 300, 200, 7000, False) = False Then
            rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
            Balacer_SafetyCheck = False
        End If
    End If

    PComm32_JogSpdAccScrvSET PComm32_YAxis, 80, PComm32_Acc_ms(PComm32_YAxis), 300 'PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_StageYAxis_ITRK_Pos_UPP

    Do
        DoEvents
        If BalSafetyCheckTimeCheck(False) > 60 Then
            cu_time# = BalSafetyCheckTimeCheck(True)
            rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
            Balacer_SafetyCheck = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    tmp_dbl# = BalSafetyCheckTimeCheck(True)
                '안전위치 확인-----------------------------------------------------------------------------------------------
    Balacer_SafetyCheck = True
    
End Function
Function Balacer_SafetyCheck_NoYAxisMove(rtn_MSG As String) As Boolean

    cu_time# = BalSafetyCheckTimeCheck(True)

    '안전위치 확인-----------------------------------------------------------------------------------------------
    If Balacer_Cover_Open2(rtn_dd$) <> 0 Then
        rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
        Balacer_SafetyCheck_NoYAxisMove = False
    End If
    
    D212_PositionReadOneAxis MDI_Main.MSComm_Srukawa, D212_Axis_X, rtn_pos#
    If rtn_pos# >= 1 Then
        If D212_ABSMoveX(MDI_Main.MSComm_Srukawa, 0, 300, 200, 7000, False) = False Then
            rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
            Balacer_SafetyCheck_NoYAxisMove = False
        End If
    End If
    
    D212_PositionReadOneAxis MDI_Main.MSComm_Srukawa, D212_Axis_Y, rtn_pos#
    If rtn_pos# >= 1 Then
        If D212_ABSMoveY(MDI_Main.MSComm_Srukawa, 0, 300, 200, 7000, False) = False Then
            rtn_MSG = "저울축/Stage Y축 안전위치 확인 Error!"
            Balacer_SafetyCheck_NoYAxisMove = False
        End If
    End If
    '안전위치 확인-----------------------------------------------------------------------------------------------
    Balacer_SafetyCheck_NoYAxisMove = True
    
End Function
Function BalSafetyCheckTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            BalSafetyCheckTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        BalSafetyCheckTimeCheck = 0
    End If

End Function

Function Capping_Pos_Move() As Boolean

    'OutputDebugString "Call Capping_Pos_Move()"

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    Else
        GoTo ExitHere
    End If

    PCI7230_OutSignal_Card2QTY 3, 0
    PCI7230_OutSignal_Card2QTY 4, 0

    tmp_dbl# = PubTimeCheck(True)

    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then '위험위치 인터록
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, 20, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
        tmp_dbl# = PubTimeCheck(True)
        Do
            DoEvents
            If PubTimeCheck(False) > 60 Then
                MsgBox "Cz Axis 하강완료 OverTime!!", vbCritical
                'OutputDebugString "Cz Axis 하강완료 OverTime!!"
                GoTo ExitHere
            End If
            Call PComm32_AxisStatusCheckSimple
        Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
        tmp_dbl# = PubTimeCheck(True)
    End If
    DelayWait 1, True
    
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then 'X Axis Move 인터록확인
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0 '0이 전진임.
        PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
        DelayWait 2, True
    End If
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then 'X Axis Move 인터록확인
        GoTo ExitHere
    End If
    
    'X Axis Move
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_CappingStageX
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "X Axis Capping위치 이동완료 OverTime!!", vbCritical
            'OutputDebugString "X Axis Capping위치 이동완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    tmp_dbl# = PubTimeCheck(True)
    DelayWait 1, True
    
    'Cy Axis Move 전진
    PComm32_JogSpdAccScrvSET PComm32_CyAxis, 20, PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
    PComm32_AxisJogMotion_Absoute PComm32_CyAxis, SAVED_POS_CappingY
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Cy Axis Capping위치 이동완료 OverTime!!", vbCritical
            'OutputDebugString "Cy Axis Capping위치 이동완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_CyAxis) = 1
    tmp_dbl# = PubTimeCheck(True)
    DelayWait 1, True
    
    'Cz Axis Move 상승
    PComm32_JogSpdAccScrvSET PComm32_CzAxis, 5, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
    PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_POS_CappingZ
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Cz Axis Capping위치 이동완료 OverTime!!", vbCritical
            'OutputDebugString "Cz Axis Capping위치 이동완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
    tmp_dbl# = PubTimeCheck(True)


    PCI7230_OutSignal_Card2QTY 3, 1
    PCI7230_OutSignal_Card2QTY 4, 1

    PCI7230_OutSignal_Card2QTY 6, 0

    fl_Meniscus = False

    Capping_Pos_Move = True
Exit Function

ExitHere:

    PCI7230_OutSignal_Card2QTY 3, 1
    PCI7230_OutSignal_Card2QTY 4, 1
    fl_Meniscus = False
    Capping_Pos_Move = False
    tmp_dbl# = PubTimeCheck(True)
    
End Function
Function Purging_Pos_Move() As Boolean
    
    'OutputDebugString "Call Purging_Pos_Move()"

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    Else
        GoTo ExitHere
    End If
    
    tmp_dbl# = PubTimeCheck(True)
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then '위험위치 인터록
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, 20, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
        tmp_dbl# = PubTimeCheck(True)
        Do
            DoEvents
            If PubTimeCheck(False) > 60 Then
                Purging_Pos_Move = False
                MsgBox "Cz Axis 하강완료 OverTime!!", vbCritical
                'OutputDebugString "Cz Axis 하강완료 OverTime!!"
                GoTo ExitHere
            End If
            Call PComm32_AxisStatusCheckSimple
        Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
        tmp_dbl# = PubTimeCheck(True)
    End If
    
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then 'X Axis Move 인터록확인
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0
        PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0 '0이 전진임.
        PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
        DelayWait 2, True
    End If
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then 'X Axis Move 인터록확인
        GoTo ExitHere
    End If
    
    'X Axis Move
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_CappingStageX
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 40 Then
            Purging_Pos_Move = False
            MsgBox "X Axis Capping위치 이동완료 OverTime!!", vbCritical
            'OutputDebugString "X Axis Capping위치 이동완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    tmp_dbl# = PubTimeCheck(True)
    
    'Cy Axis Move 전진
    PComm32_JogSpdAccScrvSET PComm32_CyAxis, 20, PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
    PComm32_AxisJogMotion_Absoute PComm32_CyAxis, SAVED_POS_CappingY
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            Purging_Pos_Move = False
            MsgBox "Cy Axis Capping위치 이동완료 OverTime!!", vbCritical
            'OutputDebugString "Cy Axis Capping위치 이동완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_CyAxis) = 1
    tmp_dbl# = PubTimeCheck(True)
    
    'Cz Axis Move 상승
    PComm32_JogSpdAccScrvSET PComm32_CzAxis, 5, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
    PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_POS_CappingZ - SAVED_CapToPurgeOffsetCz
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            Purging_Pos_Move = False
            MsgBox "Cz Axis 하강완료 OverTime!!", vbCritical
            'OutputDebugString "Cz Axis 하강완료 OverTime!!"
            GoTo ExitHere
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
    tmp_dbl# = PubTimeCheck(True)

    Call INKS_Basic_Meniscus

    Purging_Pos_Move = True
    
Exit Function

ExitHere:
    Purging_Pos_Move = False
    tmp_dbl# = PubTimeCheck(True)
    
End Function
Function Run_WipingSequence(ipHeadSelMethod As Integer, ipModuleNo As Integer) As Boolean

    'ipHeadSelMethod = 1 : 모든 헤드 와이핑
    'ipHeadSelMethod = 2 : 지정 Module 와이핑
    
''    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then '위험위치 인터록
''        PComm32_JogSpdAccScrvSET PComm32_CzAxis, 20, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
''        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
''        tmp_dbl# = PubTimeCheck(True)
''        Do
''            DoEvents
''            If PubTimeCheck(False) > 10 Then
''                'MsgBox "Cz Axis 하강완료 OverTime!!", vbCritical
''                'OutputDebugString "Cz Axis 하강완료 OverTime!!"
''                Run_WipingSequence = False
''                Exit Function
''            End If
''            Call PComm32_AxisStatusCheckSimple
''        Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
''        tmp_dbl# = PubTimeCheck(True)
''    End If

    offset_wipe_x# = 40

    If CappingZ_SafetyCheck = False Then
        Run_WipingSequence = False
        Exit Function
    End If
    
    If StageX_Move_Interlock_Check(True) = False Then 'Wiping실린더 하강도 체크
        Run_WipingSequence = False
        Exit Function
    End If

    If StageY_Move_Interlock_Check(True) = False Then
        Run_WipingSequence = False
        Exit Function
    End If

    fl_WipingStop = False
    
    '1.Wiping Stage Position 이동
    
    'Y Axis먼저 이동.
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_POS_WipingStageY
    PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, 200, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
    PComm32_AxisJogMotion_Absoute PComm32_ClngXAxis, SAVED_POS_WipingX + offset_wipe_x#
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
            Run_WipingSequence = False
            tmp_dbl# = PubTimeCheck(True)
            Exit Function
        End If
        If fl_WipingStop = True Then
            PComm32_AxisJogStop 0, True
            fl_WipingStop = False
            'OutputDebugString "Wiping Sequence 강제종료."
            Run_WipingSequence = False
            tmp_dbl# = PubTimeCheck(True)
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1) And _
               (PComm32_AxisStatBit_InPos(PComm32_ClngXAxis) = 1)
    
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 100, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_WipingStageX
    'PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    'PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_POS_WipingStageY
    'PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
    'PComm32_AxisJogMotion_Absoute PComm32_ClngXAxis, SAVED_POS_WipingX
    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 0
    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 0
    
    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
            Run_WipingSequence = False
            tmp_dbl# = PubTimeCheck(True)
            Exit Function
        End If
        If fl_WipingStop = True Then
            PComm32_AxisJogStop 0, True
            fl_WipingStop = False
            'OutputDebugString "Wiping Sequence 강제종료."
            Run_WipingSequence = False
            tmp_dbl# = PubTimeCheck(True)
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until (PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And _
               (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1) And _
               (PComm32_AxisStatBit_InPos(PComm32_ClngXAxis) = 1)
    tmp_dbl# = PubTimeCheck(True)

    Select Case ipHeadSelMethod
        Case 1
            '2. 전체헤드시 - 석션 유니트 상승
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 1
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 1
            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 1
            PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 1

            DelayWait 1.5, True

            '3. 전체헤드시 - 와이핑 축 좌에서 우로 티칭 폭만큼 티칭 속도로 이동
            PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, SAVED_WipingSpeed, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
            PComm32_AxisJogMotion_Step PComm32_ClngXAxis, SAVED_Wipe_Width_ALL + offset_wipe_x#, -1
            DelayWait 1, True
            tmp_dbl# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 60 Then
                    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
                    'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                If fl_WipingStop = True Then
                    PComm32_AxisJogStop 0, True
                    fl_WipingStop = False
                    'OutputDebugString "Wiping Sequence 강제종료."
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until (PComm32_AxisStatBit_InPos(PComm32_ClngXAxis) = 1)
            tmp_dbl# = PubTimeCheck(True)
            DelayWait 1, True
            
            '4. 전체헤드시 - 석션 유니트 하강
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 0
            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 0
                        PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 0

            DelayWait 1.5, True
            
            '5. 전체헤드시 - Stage XY Axis Offset만큼 Step이동
'            PComm32_JogSpdAccScrvSET PComm32_XAxis, 100, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
'            PComm32_AxisJogMotion_Step PComm32_XAxis, SAVED_Wipe_OffsetX, -1
'            PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
'            PComm32_AxisJogMotion_Step PComm32_YAxis, SAVED_Wipe_OffsetY, 1
'            DelayWait 1, True
'            tmp_dbl# = PubTimeCheck(True)
'            Do
'                DoEvents
'                If PubTimeCheck(False) > 60 Then
'                    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
'                    'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
'                    Run_WipingSequence = False
'                    tmp_dbl# = PubTimeCheck(True)
'                    Exit Function
'                End If
'                If fl_WipingStop = True Then
'                    PComm32_AxisJogStop 0, True
'                    fl_WipingStop = False
'                    'OutputDebugString "Wiping Sequence 강제종료."
'                    Run_WipingSequence = False
'                    tmp_dbl# = PubTimeCheck(True)
'                    Exit Function
'                End If
'                Call PComm32_AxisStatusCheckSimple
'            Loop Until (PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And _
'                       (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
'            tmp_dbl# = PubTimeCheck(True)
'            DelayWait 1, True
'
'            '6. 전체헤드시 - 석션 유니트 상승
'            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 1
'            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 1
'            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 1
'                        PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 1
'
'            DelayWait 1.5, True
'
'            '7. 전체헤드시 - 와이핑 축 우에서 좌로 (티칭 폭/3) * 3 만큼 티칭 속도로 이동
'            PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, SAVED_WipingSpeed, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
'            PComm32_AxisJogMotion_Step PComm32_ClngXAxis, (SAVED_Wipe_Width_One * 2) + offset_wipe_x#, 1
'            DelayWait 1, True
'            tmp_dbl# = PubTimeCheck(True)
'            Do
'                DoEvents
'                If PubTimeCheck(False) > 60 Then
'                    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
'                    'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
'                    Run_WipingSequence = False
'                    tmp_dbl# = PubTimeCheck(True)
'                    Exit Function
'                End If
'                If fl_WipingStop = True Then
'                    PComm32_AxisJogStop 0, True
'                    fl_WipingStop = False
'                    'OutputDebugString "Wiping Sequence 강제종료."
'                    Run_WipingSequence = False
'                    tmp_dbl# = PubTimeCheck(True)
'                    Exit Function
'                End If
'                Call PComm32_AxisStatusCheckSimple
'            Loop Until (PComm32_AxisStatBit_InPos(PComm32_ClngXAxis) = 1)
'            tmp_dbl# = PubTimeCheck(True)
'            DelayWait 1, True
'
'            '8. 전체헤드시 - 석션 유니트 하강
'            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
'            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 0
'            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 0
'                        PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 0

            Run_WipingSequence = True
        Case 2
            
            '1.Module번호에 따른 시작점 오프셋
            Select Case ipModuleNo
                Case 1, 2, 3
                    PComm32_JogSpdAccScrvSET PComm32_XAxis, 100, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
                    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_WipingStageX + (SAVED_Wipe_Width_One * (ipModuleNo - 1))
                Case 4, 5
                    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
                    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_WipingStageX + SAVED_Wipe_OffsetX + (SAVED_Wipe_Width_One * (ipModuleNo - 4))
                    PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
                    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_POS_WipingStageY + SAVED_Wipe_OffsetY
            End Select
            tmp_dbl# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 60 Then
                    'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                If fl_WipingStop = True Then
                    PComm32_AxisJogStop 0, True
                    fl_WipingStop = False
                    'OutputDebugString "Wiping Sequence 강제종료."
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until (PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And _
                       (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
            
            '2. Module번호별 - 석션 유니트 상승
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 1
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 1
            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 1
                        PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 1

            DelayWait 1.5, True
        
            '3. Module번호별 - 와이핑 축 좌에서 우로 티칭 폭만큼 티칭 속도로 이동
            PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, SAVED_WipingSpeed, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
            PComm32_AxisJogMotion_Step PComm32_ClngXAxis, SAVED_Wipe_Width_One, -1
            DelayWait 1, True
            tmp_dbl# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 60 Then
                    PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
                    'OutputDebugString "StageXY Wx Axis Wiping Pos이동완료 OverTime!!"
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                If fl_WipingStop = True Then
                    PComm32_AxisJogStop 0, True
                    fl_WipingStop = False
                    'OutputDebugString "Wiping Sequence 강제종료."
                    Run_WipingSequence = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until (PComm32_AxisStatBit_InPos(PComm32_ClngXAxis) = 1)
            tmp_dbl# = PubTimeCheck(True)
            DelayWait 1, True

            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_1Sol_12, 0
            'PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_2Sol_13, 0
                        PCI7230_OutSignal_Card2QTY AD7230_DO_Vacuum_Ejector1Sol_26, 0

            DelayWait 1.5, True
            
        Case Else
            
    End Select

    PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, 200, PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
    PComm32_AxisJogMotion_Absoute PComm32_ClngXAxis, SAVED_POS_WipingX

    Run_WipingSequence = True
    
End Function

Function StageX_Move_Interlock_Check(ipInterlockPosReq As Boolean) As Boolean

    'OutputDebugString "Call StageX_Move_Interlock_Check()"

    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then
        fl_ng% = fl_ng% + 1
    End If
    
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        fl_ng% = fl_ng% + 1
    End If
    
    If fl_ng% = 0 Then
        StageX_Move_Interlock_Check = True
    Else
        StageX_Move_Interlock_Check = False
        If ipInterlockPosReq = True Then
        
            PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0
            PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0
            PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0 '0이 전진임.
            PCI7230_OutSignal_Card2QTY AD7230_DO_Wiping_BodyUpDownSol_23, 0
        
            PComm32_JogSpdAccScrvSET PComm32_CzAxis, 20, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
            PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
            tmp_dbl# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 10 Then
                    'OutputDebugString "Cz Axis 하강완료 OverTime!!"
                    StageX_Move_Interlock_Check = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
            tmp_dbl# = PubTimeCheck(True)
        
            Do
                DoEvents
                If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = False) And _
                                (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = False) And _
                                (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = False) Then
                    Exit Do
                End If
                If PubTimeCheck(False) > 10 Then
                    StageX_Move_Interlock_Check = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
            Loop
            tmp_dbl# = PubTimeCheck(True)
            StageX_Move_Interlock_Check = True
        End If
    End If
    
End Function

Function StageY_Move_Interlock_Check(ipInterlockPosReq As Boolean) As Boolean

    'OutputDebugString "Call StageY_Move_Interlock_Check()"

    D212_PositionReadOneAxis MDI_Main.MSComm_Srukawa, D212_Axis_X, rtn_pos#
    If rtn_pos# >= 0.5 Then
        fl_ng% = 1
    End If
    
    If fl_ng% = 0 Then
        StageY_Move_Interlock_Check = True
    Else
        StageY_Move_Interlock_Check = False
        If ipInterlockPosReq = True Then
            StageY_Move_Interlock_Check = D212_Origin_ALL(MDI_Main.MSComm_Srukawa, 500, 200, 2000, 300)
        End If
    End If
    
End Function
Function BlancerX_Move_Interlock_Check(ipInterlockPosReq As Boolean) As Boolean

    If ((SAVED_StageYAxis_ITRK_Pos_LOW < PComm32_Position_mm(PComm32_YAxis)) And _
                    (SAVED_StageYAxis_ITRK_Pos_UPP > PComm32_Position_mm(PComm32_YAxis))) Then
        fl_ng% = 1
    Else
        fl_ng% = 0
    End If

    If fl_ng% = 0 Then
        BlancerX_Move_Interlock_Check = True
    Else
        BlancerX_Move_Interlock_Check = False
        If ipInterlockPosReq = True Then
            PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
            PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_StageYAxis_ITRK_Pos_UPP + 5
            tmp_dbl# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 10 Then
                    'OutputDebugString "StageY Axis Interlock Pos이동완료 OverTime!!"
                    BlancerX_Move_Interlock_Check = False
                    tmp_dbl# = PubTimeCheck(True)
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
            tmp_dbl# = PubTimeCheck(True)
            BlancerX_Move_Interlock_Check = False
        End If
    End If

End Function
Function Purge_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            Purge_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        Purge_TimeCheck = 0
    End If

End Function
Function Balacer_Cover_Open(rtnmsg As String) As Long

    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
        Balacer_Cover_Open = 255
        rtnmsg = "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오."
        Exit Function
    End If

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0 '바디하강'
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 5 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25 센서가 감지되지 않습니다."
            Balacer_Cover_Open = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True
    
    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_후진_Check_Sensor_29) = True Then
        If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_Down_Check_Sensor_27) = True Then
            PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
            cur_time# = mCoverTimeCheck(True)
            Do
                DoEvents
                If mCoverTimeCheck(False) > 5 Then
                    cur_time# = mCoverTimeCheck(True)
                    rtnmsg = "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26 센서가 감지되지 않습니다."
                    Balacer_Cover_Open = 255
                    Exit Function
                End If
            Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
        End If
    End If
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0  '0이 전진임.
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 5 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_전진_Check_Sensor_28 센서가 감지되지 않습니다."
            Balacer_Cover_Open = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_전진_Check_Sensor_28) = True
    Sleep 500

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0 'Down
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 5 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_Down_Check_Sensor_27 센서가 감지되지 않습니다."
            Balacer_Cover_Open = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_Down_Check_Sensor_27) = True
    Balacer_Cover_Open = 0
    cur_time# = mCoverTimeCheck(True)
    
End Function
Function mCoverTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            mCoverTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        mCoverTimeCheck = 0
    End If

End Function
Function Balacer_Cover_Close(rtnmsg As String) As Long

    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True Then
        Balacer_Cover_Close = 255
        rtnmsg = "위험합니다!! Cover를 Down 시킨 후 구동 하십시오."
        Exit Function
    End If

    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
        Balacer_Cover_Close = 255
        rtnmsg = "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오."
        Exit Function
    End If

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0 '바디하강'
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 15 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25 센서가 감지되지 않습니다."
            Balacer_Cover_Close = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 15 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26 센서가 감지되지 않습니다."
            Balacer_Cover_Close = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
    Sleep 500
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 1 '후진
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        If mCoverTimeCheck(False) > 15 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_후진_Check_Sensor_29 센서가 감지되지 않습니다."
            Balacer_Cover_Close = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_후진_Check_Sensor_29) = True

    Balacer_Cover_Close = 0
    cur_time# = mCoverTimeCheck(True)
    
End Function
Function Balancer_BodyUp(rtnmsg As String) As Long

    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_후진_Check_Sensor_29) = True Then
        If Balacer_Cover_Open(rtn_MSG$) <> 0 Then
            rtnmsg = "전자저울 Cover가 Open되지 않습니다. - " & rtn_MSG$
            Balancer_BodyUp = 255
            Exit Function
        End If
    End If

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 1 'UP
    cur_time# = mCoverTimeCheck(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck(False) > 5 Then
            cur_time# = mCoverTimeCheck(True)
            rtnmsg = "AD7230_DI_전자저울_Body_UP_Check_Sensor_24 센서가 감지되지 않습니다."
            Balancer_BodyUp = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True
    Balancer_BodyUp = 0
    cur_time# = mCoverTimeCheck(True)
    
End Function
Sub Cal_HeadDelaySet(ipCWArray As Control, _
                     ipScanDis_mm() As Double, _
                     ipRvOffsetYFwd_mm() As Double, _
                     ipRvOffsetYBwd_mm() As Double, _
                     ipHeadUseFlag() As Integer, _
                     ipCuReviewXmm, _
                     CuReviewYmm, _
                     ipScanDir As Integer, _
                     ipAccDis_mm As Double)
                
'Public rtn_StageScanStartXmm As Double
'Public rtn_StageScanStartYmm As Double
'Public rtn_TrigStartX_um(9) As Double
'Public rtn_TrigEndY_um(9) As Double

    Dim TrigStartArray As Variant
    Dim DelayArray As Variant
    Dim tmp_TrigStartY_um(4) As Double
    If ipScanDir = 0 Then   '정방향시
    '------------------------------------------------------
hERE:
        scan_dis_max_mm# = ipCWArray.MaxArray(ipScanDis_mm)
        'scan_dis_min_mm# = ipCWArray.MinArray(ipScanDis_mm)
        rtn_MaxScanDistanceY = scan_dis_max_mm#
        
        'TriggerStartY , MAX/MIN
        For i% = 0 To 4
            If ipHeadUseFlag(i%) = 1 Then
                tmp_dbl# = (CuReviewYmm + ipRvOffsetYFwd_mm(i%)) * 1000 '정방향 변수 사용점. 입력변수는 모두 mm -> um환산
                temp_str$ = temp_str$ & tmp_dbl# & ","
                tmp_TrigStartY_um(i%) = (CuReviewYmm + ipRvOffsetYFwd_mm(i%)) * 1000
            End If
        Next i%
        temp_str$ = Left(temp_str$, Len(temp_str$) - 1)
        TrigStartArray = Split(temp_str$, ",", 10, vbTextCompare)
        cal_trig_start_max# = ipCWArray.MaxArray(TrigStartArray) 'um
        cal_trig_start_min# = ipCWArray.MinArray(TrigStartArray) 'um
        
        '''rtn_TrigStartY_um = Format(cal_trig_start_min#, "0")    '원래것               '전역변수에 TriggerStartY 대입.
        rtn_TrigStartY_um = Format(cal_trig_start_min#, "0") ' + (ipAccDis_mm * 1000)
        
        'HeadDelay
        temp_str$ = ""
        For i% = 0 To 4
            If ipHeadUseFlag(i%) = 1 Then
                rtn_HeadDelay_um(i%) = tmp_TrigStartY_um(i%) - cal_trig_start_min#  '전역변수에 HeadDelay 대입.
                temp_str$ = temp_str$ & CStr(rtn_HeadDelay_um(i%)) & ","
            End If
        Next i%
        temp_str$ = Left(temp_str$, Len(temp_str$) - 1)
        DelayArray = Split(temp_str$, ",", 10, vbTextCompare)
        
        max_delay_dis_um# = ipCWArray.MaxArray(DelayArray) 'um
        min_delay_dis_um# = ipCWArray.MinArray(DelayArray) 'um
        
        'TriggerEndY
        rtn_TrigStartY_um = Format(cal_trig_start_min#, "0") + (ipAccDis_mm * 1000)
        
        rtn_TrigEndY_um = rtn_TrigStartY_um + (scan_dis_max_mm# * 1000) + max_delay_dis_um# 'cal_trig_start_min# + (scan_dis_max_mm# * 1000) + max_delay_dis_um#         '전역변수에 TriggerEndY 대입.
        '''rtn_TrigEndY_um = cal_trig_start_min# + (scan_dis_max_mm# * 1000) + max_delay_dis_um# '원래것
        
        'Stage Scan Start/End Y
        rtn_StageScanStartYmm = (cal_trig_start_min# / 1000) - ipAccDis_mm          '전역변수에 Stage Scan StartY 대입.
        rtn_StageScanEndYmm = ((cal_trig_start_min# + max_delay_dis_um#) / 1000) + _
                                                    scan_dis_max_mm# + (ipAccDis_mm * 2)  '전역변수에 Stage Scan EndY 대입.
    '------------------------------------------------------
    Else                    '역방향시
    
    'GoTo hERE
    
        scan_dis_max_mm# = ipCWArray.MaxArray(ipScanDis_mm)
        scan_dis_min_mm# = ipCWArray.MinArray(ipScanDis_mm)

        'TriggerStartY , MAX/MIN
        For i% = 0 To 4
            If ipHeadUseFlag(i%) = 1 Then
                tmp_dbl# = (CuReviewYmm + ipRvOffsetYBwd_mm(i%)) * 1000 '역방향 변수 사용점. 입력변수는 모두 mm -> um환산
                temp_str$ = temp_str$ & tmp_dbl# & ","
                tmp_TrigStartY_um(i%) = (CuReviewYmm + ipRvOffsetYFwd_mm(i%)) * 1000
            End If
        Next i%
        temp_str$ = Left(temp_str$, Len(temp_str$) - 1)
        TrigStartArray = Split(temp_str$, ",", 10, vbTextCompare)
        cal_trig_start_max# = ipCWArray.MaxArray(TrigStartArray) 'um
        cal_trig_start_min# = ipCWArray.MinArray(TrigStartArray) 'um

        'rtn_TrigStartY_um = Format(cal_trig_start_min#, "0")                        '전역변수에 TriggerStartY 대입.
        '20110407''rtn_TrigStartY_um = Format(cal_trig_start_max#, "0")                        '전역변수에 TriggerStartY 대입.
        rtn_TrigStartY_um = ((CuReviewYmm - ipAccDis_mm) * 1000) ' + 30000
        
        'HeadDelay
        temp_str$ = ""
        For i% = 0 To 4
            If ipHeadUseFlag(i%) = 1 Then
                rtn_HeadDelay_um(i%) = cal_trig_start_max# - tmp_TrigStartY_um(i%) '전역변수에 HeadDelay 대입.
                temp_str$ = temp_str$ & CStr(rtn_HeadDelay_um(i%)) & ","
            End If
        Next i%
        temp_str$ = Left(temp_str$, Len(temp_str$) - 1)
        DelayArray = Split(temp_str$, ",", 10, vbTextCompare)

        max_delay_dis_um# = ipCWArray.MaxArray(DelayArray) 'um
        min_delay_dis_um# = ipCWArray.MinArray(DelayArray) 'um

        'TriggerEndY
        rtn_TrigEndY_um = rtn_TrigStartY_um - (scan_dis_max_mm# * 1000) - 30000 'cal_trig_start_max# - ((scan_dis_max_mm# * 1000) + max_delay_dis_um#)         '전역변수에 TriggerEndY 대입.

        'Stage Scan Start/End Y
        rtn_StageScanStartYmm = CuReviewYmm ''(cal_trig_start_max# / 1000) + ipAccDis_mm          '전역변수에 Stage Scan StartX 대입.
        rtn_StageScanEndYmm = (cal_trig_start_max# / 1000) - _
                    ((max_delay_dis_um# / 1000) + scan_dis_max_mm# + (ipAccDis_mm * 2)) '전역변수에 Stage Scan StartY 대입.
        
        rtn_StageScanEndYmm = rtn_StageScanStartYmm - scan_dis_max_mm# - (ipAccDis_mm * 2)
    '------------------------------------------------------



    End If
    

End Sub
Sub Balancer_PosOffset(ipModuleNo As Integer, rtnOffsetStageX As Double, rtnOffsetBalY As Double)

    '시작점 기준으로 오프셋거리를 리턴.

    Select Case ipModuleNo
        Case 0
            rtnOffsetStageX = 0
            rtnOffsetBalY = 0
            
        Case 1 'SAVED_MECHANICAL_Module_Offset_Xmm
            rtnOffsetStageX = SAVED_MECHANICAL_Module_Offset_Xmm
            rtnOffsetBalY = SAVED_MECHANICAL_Module_GAP_Ymm
            
        Case 2
            rtnOffsetStageX = SAVED_MECHANICAL_Module_GAP_Xmm
            rtnOffsetBalY = 0
            
        Case 3
            rtnOffsetStageX = SAVED_MECHANICAL_Module_Offset_Xmm + SAVED_MECHANICAL_Module_GAP_Xmm
            rtnOffsetBalY = SAVED_MECHANICAL_Module_GAP_Ymm
            
        Case 4
            rtnOffsetStageX = SAVED_MECHANICAL_Module_GAP_Xmm * 2
            rtnOffsetBalY = 0
    End Select

End Sub
Function Balancer_InspPosMoveToModule(ipMdNo As Integer) As Boolean

    '지정된 모듈 번호에 따른 저울 측정위치로 이동한다.

    cu_time# = BAL_MovTimeCheck(True)
    nd_no% = ipMdNo
    
    Balancer_PosOffset nd_no% - 1, rtn_stage_offset_x#, rtn_bal_offset_y#

    mov_stage_x# = SAVED_BALInspPosStageX + rtn_stage_offset_x#
    mov_stage_y# = SAVED_BALInspPosStageY
    mov_bal_x# = SAVED_BALInspPosX
    mov_bal_y# = SAVED_BALInspPosY + rtn_bal_offset_y#
    
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 100, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, mov_stage_y#
    
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If BAL_MovTimeCheck(False) > 120 Then
            MsgBox "Y Axis Capping위치 이동완료 OverTime!!", vbCritical
            cu_time# = BAL_MovTimeCheck(True)
            Balancer_InspPosMoveToModule = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    cu_time# = BAL_MovTimeCheck(True)
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 100, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, mov_stage_x#
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If BAL_MovTimeCheck(False) > 120 Then
            MsgBox "X Axis Capping위치 이동완료 OverTime!!", vbCritical
            cu_time# = BAL_MovTimeCheck(True)
            Balancer_InspPosMoveToModule = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    cu_time# = BAL_MovTimeCheck(True)
    
    
    If D212_ABSMoveX(MDI_Main.MSComm_Srukawa, mov_bal_x#, 300, 200, 7000, True) = False Then
        MsgBox "Balancer X위치이동완료 OverTime!!", vbCritical
        Balancer_InspPosMoveToModule = False
        cu_time# = BAL_MovTimeCheck(True)
        Exit Function
    End If
    
    If D212_ABSMoveY(MDI_Main.MSComm_Srukawa, mov_bal_y#, 300, 200, 7000, True) = False Then
        MsgBox "Balancer Y위치이동완료 OverTime!!", vbCritical
        Balancer_InspPosMoveToModule = False
        cu_time# = BAL_MovTimeCheck(True)
        Exit Function
    End If
    
    cu_time# = BAL_MovTimeCheck(True)
    Balancer_InspPosMoveToModule = True
    
End Function
Function BAL_MovTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            BAL_MovTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        BAL_MovTimeCheck = 0
    End If

End Function
Function INSPECTION_Weight(ipMdNo As Integer, ipSelelectHeadList As Integer, ipMovSpeed As Double, ipMovDistance As Double, _
                                ipScanDir As Integer, ipStabTime_sec As Double, rtnWeight_gram As Double, rtnmsg As String) As Boolean

    Dim ipAccDis As Double

    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    fl_BalancerMonitorOut = True
    
    '대기위치로 이동-----------------------------------------------------------------------------------------
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_BALInspPosStageY
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "Y Axis Capping위치 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_BALStbypPosStageX
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "X Axis Capping위치 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    'Cover Close----------------------------------------------------------------------------------------------
    If Balacer_Cover_Close(rtnmsg) <> 0 Then
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If

    'Zero Set-------------------------------------------------------------------------------------------------
    Weght_DelayWait 3, True  'Delay 3sec 후 ZeroSet
    AD4212_ZeroSet MDI_Main.MSComm_Balancer

    'Cover Open-----------------------------------------------------------------------------------------------
    If Balacer_Cover_Open(rtnmsg) <> 0 Then
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    
    '측정 Module로 이동---------------------------------------------------------------------------------------
    If Balancer_InspPosMoveToModule(ipMdNo) = False Then
        rtnmsg = "측정 Module로 이동중 ERROR!"
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If

    '측정부---------------------------------------------------------------------------------------------------

    
    '함수화시 Bridge작업-----------------------------------------------------
    ipAccDis = (PComm32_Acc_ms(PComm32_YAxis) / 1000) * ipMovSpeed

    '저울 Body UP------------------------
    If Balancer_BodyUp(rtnmsg) <> 0 Then
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '저울 Body UP------------------------

    '분사시작----------------------------
    mov_spd_mm# = ipMovSpeed
    acc_dis_mm# = ipAccDis
    mov_dis_mm# = ipMovDistance
    scan_dir% = ipScanDir
    sel_head_sum% = ipSelelectHeadList
    
    acc_dis_mm# = 2
    
    'jet_end_delay_sec# = ((mov_dis_mm# / 1000) + (acc_dis_mm# * 2)) / mov_spd_mm#
    jet_end_delay_sec# = ((mov_dis_mm# / 1000) + (acc_dis_mm# * 2)) / mov_spd_mm#
    'freq# = (mov_spd_mm# / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    freq# = (mov_spd_mm# / (SAVED_HEADIF_BOOT_System_Image_Pitch * 1000)) * 1000
    
    ffff# = Format(freq#, "0.##")
    start_trig_um# = PComm32_Position_mm(PComm32_YAxis) * 1000
    
    If scan_dir% = 0 Then
        end_trig_um# = (PComm32_Position_mm(PComm32_YAxis) + mov_dis_mm# + acc_dis_mm#) * 1000
    Else
        end_trig_um# = (PComm32_Position_mm(PComm32_YAxis) - (mov_dis_mm# + acc_dis_mm#)) * 1000
    End If
    
    If PI_HEAD_ImgTimerJetStart(sel_head_sum%, scan_dir%, acc_dis_mm#, 0, start_trig_um#, end_trig_um#, ffff#, True) = False Then
        rtnmsg = "Image Timer Jet분사 실패!"
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '분사시작----------------------------
    
    '이동완료시간만큼 대기 후 분사정지----------------------------
    'DelayWait jet_end_delay_sec# + 1, True
    Weght_DelayWait jet_end_delay_sec# + 1, True
    PI_HEAD_JetStop 0, False
    '이동완료시간만큼 대기 후 분사정지----------------------------

    '저울 Body Down----------------------
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 20 Then
            rtnmsg = "AD7230_DO_전자저울_BodyUpDownSol_20 Sensor 감지 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True
    '저울 BodyDown----------------------
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    'XY STage 측정 대기위치로 이동--------------------------------
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_BALInspPosStageY
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "Y축 측정 대기위치로 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_BALStbypPosStageX
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "Y축 측정 대기위치로 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    'XY STage 측정 대기위치로 이동--------------------------------

    double_buf$ = MDI_Main.MSComm_Balancer.Input 'Buffer비우기
    double_buf$ = ""
    
    '저울 Cover닫기-----------------------------------------------
    If Balacer_Cover_Close(rtnmsg) <> 0 Then
        INSPECTION_Weight = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '저울 Cover닫기-----------------------------------------------
    
    '측정안정화 딜레이--------------------------------------------
    Weght_DelayWait ipStabTime_sec, True
    '측정안정화 딜레이--------------------------------------------
    
    
    'Me.txtWeight.Text = AD4212_READED_VAL '함수화시 교체 해야할 대입문
    'rtnWeight
    
    'AD4212_READED_Buffer 의 갱신은 MSComm의 OnComm Event에서 이루어짐.
    Dim W_Array As Variant
    Do
        'DoEvents
        If MDI_Main.MSComm_Balancer.InBufferCount > 1 Then
            double_buf$ = double_buf$ & MDI_Main.MSComm_Balancer.Input
            If InStr(1, double_buf$, "US") <> 0 Then
                double_buf$ = "" '취득한 데이터배열중 UnStabilizing Data가 포함되면 모두 버린다.
            Else
                W_Array = Split(double_buf$, " g" & vbCrLf & "ST,", 500, vbTextCompare)
                If UBound(W_Array) >= 20 Then
                    rtnWeight_gram = MDI_Main.CWStat1.Mean(W_Array)  '측정무게값 100회 Sampling 후 평균값 리턴
                    Exit Do
                Else
                    Weght_DelayWait 2, True 'ipStabTime_sec
                End If
                If INSPECTION_WeightTimeCheck(False) > 60 Then
                    rtnmsg = "전자저울 안정화 실패!"
                    cu_time# = INSPECTION_WeightTimeCheck(True)
                    INSPECTION_Weight = False
                    fl_BalancerMonitorOut = False
                    Exit Function
                End If
            End If
        Else
            If INSPECTION_WeightTimeCheck(False) > 30 Then
                rtnmsg = "전자저울 안정화 실패!"
                cu_time# = INSPECTION_WeightTimeCheck(True)
                INSPECTION_Weight = False
                fl_BalancerMonitorOut = False
                Exit Function
            End If
        End If
    Loop
    cu_time# = INSPECTION_WeightTimeCheck(True)
    fl_BalancerMonitorOut = False
    
    If Balacer_Cover_Open(rtnmsg) <> 0 Then
        BalancerINSPstart = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    
    '대기위치로 이동-----------------------------------------------------------------------------------------
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, SAVED_BALInspPosStageY
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "Y Axis Capping위치 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_BALStbypPosStageX
    Do
        DoEvents
        If INSPECTION_WeightTimeCheck(False) > 120 Then
            rtnmsg = "X Axis Capping위치 이동완료 OverTime!!"
            cu_time# = INSPECTION_WeightTimeCheck(True)
            INSPECTION_Weight = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1
    cu_time# = INSPECTION_WeightTimeCheck(True)
    
    INSPECTION_Weight = True
    fl_BalancerMonitorOut = False
    
End Function
Function INSPECTION_WeightTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            INSPECTION_WeightTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        INSPECTION_WeightTimeCheck = 0
    End If

End Function
Sub Weght_DelayWait(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = DelayWait_TimeCheck(True)
    Do
    
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until DelayWait_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = DelayWait_TimeCheck(True)
    
End Sub
Function Weght_DelayWait_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            Weght_DelayWait_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        Weght_DelayWait_TimeCheck = 0
    End If

End Function
Function INSPECTION_Weight2(ipMdNo As Integer, ipSelelectHeadList As Integer, ipMovSpeed As Double, ipMovDistance As Double, _
                                ipScanDir As Integer, ipStabTime_sec As Double, rtnWeight_gram As Double, rtnmsg As String) As Boolean

    Dim ipAccDis As Double

    'X축 인터록을 해제한 함수임. 함수 외부에서 커버 열기 및 실린더 하강후 사용해야함.

    cu_time# = INSPECTION_Weight2TimeCheck(True)
    
    fl_BalancerMonitorOut = True
    
'    'Cover Close----------------------------------------------------------------------------------------------
'    If Balacer_Cover_Close2(rtnMSG) <> 0 Then
'        INSPECTION_Weight2 = False
'        fl_BalancerMonitorOut = False
'        Exit Function
'    End If

    'Zero Set-------------------------------------------------------------------------------------------------
    Weght_DelayWait 3, True  'Delay 3sec 후 ZeroSet
    AD4212_ZeroSet MDI_Main.MSComm_Balancer

    'Cover Open-----------------------------------------------------------------------------------------------
    If Balacer_Cover_Open2(rtnmsg) <> 0 Then
        INSPECTION_Weight2 = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    
    '측정 Module로 이동---------------------------------------------------------------------------------------
    If Balancer_InspPosMoveToModule(ipMdNo + 1) = False Then
        rtnmsg = "측정 Module로 이동중 ERROR!"
        INSPECTION_Weight2 = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If

    '측정부---------------------------------------------------------------------------------------------------

    
    '함수화시 Bridge작업-----------------------------------------------------
    ipAccDis = (PComm32_Acc_ms(PComm32_YAxis) / 1000) * ipMovSpeed

    '저울 Body UP------------------------
    If Balancer_BodyUp(rtnmsg) <> 0 Then
        INSPECTION_Weight2 = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '저울 Body UP------------------------

    '분사시작----------------------------
    mov_spd_mm# = ipMovSpeed
    acc_dis_mm# = ipAccDis
    mov_dis_mm# = ipMovDistance
    scan_dir% = ipScanDir
    sel_head_sum% = ipSelelectHeadList
    
'    '바꿀것----------------------------------------------------
'    mov_spd_mm# = 2000 '
'    '바꿀것----------------------------------------------------

    acc_dis_mm# = 2

    jet_end_delay_sec# = (mov_dis_mm# + (acc_dis_mm# * 2)) / mov_spd_mm#

    freq# = (mov_spd_mm# / (SAVED_HEADIF_BOOT_System_Image_Pitch * 1000)) * 1000
    ffff# = Format(freq#, "0.##")
    start_trig_um# = PComm32_Position_mm(PComm32_YAxis) * 1000
    
    If scan_dir% = 0 Then
        end_trig_um# = (PComm32_Position_mm(PComm32_YAxis) + mov_dis_mm# + acc_dis_mm#) * 1000
    Else
        end_trig_um# = (PComm32_Position_mm(PComm32_YAxis) - (mov_dis_mm# + acc_dis_mm#)) * 1000
    End If
    
    If PI_HEAD_ImgTimerJetStart(ipSelelectHeadList, scan_dir%, acc_dis_mm#, 0, start_trig_um#, end_trig_um#, ffff#, True) = False Then
        rtnmsg = "Image Timer Jet분사 실패!"
        INSPECTION_Weight2 = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '분사시작----------------------------
    
    '이동완료시간만큼 대기 후 분사정지----------------------------
    'DelayWait jet_end_delay_sec# + 1, True
    Weght_DelayWait jet_end_delay_sec# + 5, True
    PI_HEAD_JetStop 0, False
    '이동완료시간만큼 대기 후 분사정지----------------------------

    '저울 Body Down----------------------
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If INSPECTION_Weight2TimeCheck(False) > 20 Then
            rtnmsg = "AD7230_DO_전자저울_BodyUpDownSol_20 Sensor 감지 OverTime!!"
            cu_time# = INSPECTION_Weight2TimeCheck(True)
            INSPECTION_Weight2 = False
            fl_BalancerMonitorOut = False
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True
    '저울 BodyDown----------------------
    cu_time# = INSPECTION_Weight2TimeCheck(True)
    
   
    '저울 Cover닫기-----------------------------------------------
    If Balacer_Cover_Close2(rtnmsg) <> 0 Then
        INSPECTION_Weight2 = False
        fl_BalancerMonitorOut = False
        Exit Function
    End If
    '저울 Cover닫기-----------------------------------------------
    
    '측정안정화 딜레이--------------------------------------------
    Weght_DelayWait ipStabTime_sec, True
    '측정안정화 딜레이--------------------------------------------

    Dim W_Array As Variant
    Dim reW_Array As Variant
    Do
        'DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If MDI_Main.MSComm_Balancer.InBufferCount > 1 Then
            double_buf$ = double_buf$ & MDI_Main.MSComm_Balancer.Input
            If InStr(1, double_buf$, "US") <> 0 Then
                double_buf$ = "" '취득한 데이터배열중 UnStabilizing Data가 포함되면 모두 버린다.
            Else
                W_Array = Split(double_buf$, " g" & vbCrLf & "ST,", 500, vbTextCompare)
                If UBound(W_Array) >= 13 Then
                    
                    st% = 2: ed% = UBound(W_Array) - 2
                    For k% = st% To ed%
                        buf_2$ = buf_2$ & W_Array(k%) & ","
                    Next k%
                    buf_2$ = Left(buf_2$, Len(buf_2$) - 1)
                    reW_Array = Split(buf_2$, ",", 500, vbTextCompare)

                    rtnWeight_gram = MDI_Main.CWStat1.Mean(reW_Array)   '측정무게값 100회 Sampling 후 평균값 리턴

                    Exit Do
                Else
                    Weght_DelayWait 2, True 'ipStabTime_sec
                End If
                If INSPECTION_Weight2TimeCheck(False) > 90 Then
                    rtnmsg = "전자저울 안정화 실패!"
                    cu_time# = INSPECTION_Weight2TimeCheck(True)
                    INSPECTION_Weight2 = False
                    fl_BalancerMonitorOut = False
                    Exit Function
                End If
            End If
        Else
            If INSPECTION_Weight2TimeCheck(False) > 90 Then
                rtnmsg = "전자저울 안정화 실패!"
                cu_time# = INSPECTION_Weight2TimeCheck(True)
                INSPECTION_Weight2 = False
                fl_BalancerMonitorOut = False
                Exit Function
            End If
        End If
    Loop
    cu_time# = INSPECTION_Weight2TimeCheck(True)
    fl_BalancerMonitorOut = False
    
'    If Balacer_Cover_Open2(rtnMSG) <> 0 Then
'        BalancerINSPstart = False
'        fl_BalancerMonitorOut = False
'        Exit Function
'    End If

    cu_time# = INSPECTION_Weight2TimeCheck(True)
    
    INSPECTION_Weight2 = True
    fl_BalancerMonitorOut = False
    
End Function
Function INSPECTION_Weight2TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            INSPECTION_Weight2TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        INSPECTION_Weight2TimeCheck = 0
    End If

End Function
Sub Weght_DelayWait2(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = Weght_DelayWait2_TimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until Weght_DelayWait2_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = DelayWait_TimeCheck(True)
    
End Sub
Function Weght_DelayWait2_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            Weght_DelayWait2_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        Weght_DelayWait2_TimeCheck = 0
    End If

End Function
Function mCoverTimeCheck2(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            mCoverTimeCheck2 = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        mCoverTimeCheck2 = 0
    End If

End Function
Function Balacer_Cover_Close2(rtnmsg As String) As Long

    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True Then
        Balacer_Cover_Close2 = 255
        rtnmsg = "위험합니다!! Cover를 Down 시킨 후 구동 하십시오."
        Exit Function
    End If

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0 '바디하강'
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25 센서가 감지되지 않습니다."
            Balacer_Cover_Close2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26 센서가 감지되지 않습니다."
            Balacer_Cover_Close2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
    Sleep 500
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 1 '후진
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_후진_Check_Sensor_29 센서가 감지되지 않습니다."
            Balacer_Cover_Close2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_후진_Check_Sensor_29) = True

    Balacer_Cover_Close2 = 0
    cur_time# = mCoverTimeCheck2(True)
    
End Function
Function Balacer_Cover_Open2(rtnmsg As String) As Long

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0 '바디하강'
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25 센서가 감지되지 않습니다."
            Balacer_Cover_Open2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_DOWN_Check_Sensor_25) = True
    
    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_후진_Check_Sensor_29) = True Then
        If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_Down_Check_Sensor_27) = True Then
            PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
            cur_time# = mCoverTimeCheck2(True)
            Do
                DoEvents
                
                'Call Monitor------------
                MDI_Main.TimerStatus_Timer
                'Call Monitor------------
                
                If mCoverTimeCheck2(False) > 5 Then
                    cur_time# = mCoverTimeCheck2(True)
                    rtnmsg = "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26 센서가 감지되지 않습니다."
                    Balacer_Cover_Open2 = 255
                    Exit Function
                End If
            Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
        End If
    End If
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0  '0이 전진임.
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_전진_Check_Sensor_28 센서가 감지되지 않습니다."
            Balacer_Cover_Open2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_전진_Check_Sensor_28) = True
    Sleep 500

    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0 'Down
    cur_time# = mCoverTimeCheck2(True)
    Do
        DoEvents
        
        'Call Monitor------------
        MDI_Main.TimerStatus_Timer
        'Call Monitor------------
        
        If mCoverTimeCheck2(False) > 5 Then
            cur_time# = mCoverTimeCheck2(True)
            rtnmsg = "AD7230_DI_전자저울_Cover_Down_Check_Sensor_27 센서가 감지되지 않습니다."
            Balacer_Cover_Open2 = 255
            Exit Function
        End If
    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_Down_Check_Sensor_27) = True
    Balacer_Cover_Open2 = 0
    cur_time# = mCoverTimeCheck2(True)
    
End Function
Function HeadZAxis_SafetyCheck() As Boolean

    If PComm32_Init_Flag = False Then
        HeadZAxis_SafetyCheck = False
        Exit Function
    End If
    Call PComm32_PositionReadAllAxis
    If SAVED_HeadZ_JetPos < PComm32_Position_mm(PComm32_HdZAxis) Then
        HeadZAxis_SafetyCheck = False
    Else
        HeadZAxis_SafetyCheck = True
    End If

End Function
Function CappingZ_SafetyCheck() As Boolean

    If PComm32_Init_Flag = False Then
    
        CappingZ_SafetyCheck = False
        Exit Function
        
    End If
    tmp_dbl# = CappingZ_SafetyTimeCheck(True)
    Call PComm32_PositionReadAllAxis
    If PComm32_Position_mm(PComm32_CzAxis) > 0 Then '위험위치 인터록SAVED_CapZAxis_ITRK_Pos_Upp
    
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, 20, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
        tmp_dbl# = PubTimeCheck(True)
        Do
        
            DoEvents
            If CappingZ_SafetyTimeCheck(False) > 10 Then
            
                tmp_dbl# = CappingZ_SafetyTimeCheck(True)
                MsgBox "Cz Axis 하강완료 OverTime!!", vbCritical
                CappingZ_SafetyCheck = False
                Exit Function
                
            End If
            Call PComm32_AxisStatusCheckSimple
            
        Loop Until PComm32_AxisStatBit_InPos(PComm32_CzAxis) = 1
        tmp_dbl# = CappingZ_SafetyTimeCheck(True)
        CappingZ_SafetyCheck = True
        
    Else
    
        CappingZ_SafetyCheck = True
        
    End If
                
End Function
Function CappingZ_SafetyTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            CappingZ_SafetyTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        CappingZ_SafetyTimeCheck = 0
    End If

End Function

Function ArcCos(ByVal dValue As Double) As Double
On Error GoTo syserr:
    If (dValue > 1) Then
        dRadian# = -444
        ArcCos = dRadian#
        Exit Function
    ElseIf (dValue = 1) Then
        dRadian# = 0
        ArcCos = dRadian#
        Exit Function
    Else
        dRadian# = Atn((-1 * dValue) / Sqr((-1 * dValue * dValue) + 1)) + 2 * Atn(1)
    End If
    dRadian# = Atn((-1 * dValue) / Sqr((-1 * dValue * dValue) + 1)) + 2 * Atn(1)
    dAngle# = (180 * dRadian#) / PI
    ArcCos = dAngle#
    Exit Function
syserr:
    MsgBox Err.Description
End Function

Function ArcSin(ByVal dValue As Double) As Double
On Error GoTo syserr:
    dRadian# = Atn((dValue) / Sqr((-1 * dValue * dValue) + 1))
    dAngle# = (180 * dRadian#) / PI
    ArcSin = dAngle#
    Exit Function
syserr:
    MsgBox Err.Description
End Function

Function ArcTan(ByVal dValue As Double) As Double
On Error GoTo syserr:
    dRadian# = Atn(dValue)
    dAngle# = (180 * dRadian#) / PI
    ArcTan = dAngle#
Exit Function
syserr:
    MsgBox Err.Description
End Function

Function GetNameToPath(ByVal ipstrPath As String) As String
On Error GoTo syserr:
    Dim strtmp As Variant
    Dim nSplitCnt As Integer
    
    strtmp = Split(ipstrPath, "\", -1, vbTextCompare)
    nSplitCnt = UBound(strtmp)
    If (nSplitCnt = 0) Or (nSplitCnt < 0) Then
        GetNameToPath = ""
    Else
        GetNameToPath = strtmp(nSplitCnt)
    End If
Exit Function
syserr:
End Function

Sub Check_PrintNzlNo()
On Error GoTo syserr:
    Dim bChecked(1) As Boolean
    
    For i% = 0 To (NOZZLE_COUNT - 1) Step 1
        If gPrintPara.nSetNzlLive(i%) = 1 Then
            gPrintPara.nSetStartNzlNo = i% + 1
            bChecked(0) = True
            Exit For
        End If
    Next i%
    
    For i% = (NOZZLE_COUNT - 1) To 0 Step -1
        If gPrintPara.nSetNzlLive(i%) = 1 Then
            gPrintPara.nSetEndNzlNo = i% + 1
            bChecked(1) = True
            Exit For
        End If
    Next i%
    
    If (bChecked(0) = False) Or (bChecked(1) = False) Then
        gPrintPara.nSetStartNzlNo = 1
        gPrintPara.nSetStartNzlNo = NOZZLE_COUNT
        MsgBox "시작노즐과 끝노즐 지정이 없거나 세팅이 잘못되었습니다. 다시한번 확인 부탁드립니다.", vbExclamation
    End If
    
    frmRunning.cboStartNzlNo.Text = CStr(gPrintPara.nSetStartNzlNo)
    frmRunning.cboEndNzlNo.Text = CStr(gPrintPara.nSetEndNzlNo)
    frmRunning.FrameNzlNo.Caption = "Live 노즐 && Delay (" & CStr(gPrintPara.nSetStartNzlNo) & " ~ " & CStr(gPrintPara.nSetEndNzlNo) & ")"
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Sub Load_NozzleParams(ByVal i_strPath As String)
    On Error GoTo Err:
    
    'Dim NzlLive(255) As Integer
    'Dim NzlDelay(255) As Integer
    Dim ReArray As Variant
    file_name$ = i_strPath
    
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If

    Open file_name$ For Input As #1
    iindex% = 0
    Do While Not EOF(1)
        Line Input #1, str_line$
        ReArray = Split(str_line$, ",", 3, vbTextCompare)
        If (iindex% >= 1) Then
            gPrintPara.nSetNzlLive(iindex% - 1) = ReArray(1)
            gPrintPara.nSetNzlDelay(iindex% - 1) = ReArray(2)
        End If
        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
            MsgBox "Nozzle Live중 Interface Error!", vbCritical
        End If
        
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Nozzle Delay중 Interface Error!", vbCritical
        End If
    End If
    
    Call Check_PrintNzlNo
    
    Exit Sub
Err:
    Close #1
    MsgBox Err.Description
End Sub

Function Get_RotatePoint(ByVal i_dCXmm As Double, _
                         ByVal i_dCYmm As Double, _
                         ByVal i_dSXmm As Double, _
                         ByVal i_dSYmm As Double, _
                         ByVal i_dRotateAngle As Double) As PT
On Error GoTo syserr:
    
    
    Dim ptTmp As PT
    Dim ptRot As PT
    
    Dim dXmm As Double
    Dim dYmm As Double
    Dim dRad As Double
    Dim dRotAngle As Double
    
    dRotAngle = i_dRotateAngle
    
    dRad = dRotAngle * (PI / 180)
    ptTmp.dXmm = i_dCXmm - i_dSXmm
    ptTmp.dYmm = i_dSYmm - i_dCYmm
    
    dXmm = ptTmp.dXmm * Cos(dRad) - ptTmp.dYmm * Sin(dRad)
    dYmm = ptTmp.dXmm * Sin(dRad) + ptTmp.dYmm * Cos(dRad)
        
    ptRot.dXmm = dXmm + i_dCXmm
    ptRot.dYmm = dYmm + i_dCYmm
    
    Get_RotatePoint = ptRot
Exit Function
syserr:
    Get_RotatePoint = ptRot
    MsgBox Err.Description
End Function


Sub MoveCappingPos()
On Error GoTo syserr:

    '// 1. 안전위치 이동
    
    dSaftyZPos# = 0
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             Cliffer_Speed_mms(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dSaftyZPos#, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until (Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    '// X
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             USR_frmMotion_Speed(PComm32_XAxis), _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)

                             
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, gPrintPara.dTeachCapping_Xmm
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "X Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1)) ' And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    '// head theta, height
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                             USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis), _
                             Cliffer_Acc_ms(Cliffer_HdtAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                             PComm32_ClifferID
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, gPrintPara.dTeachCappingQHT_Degree, PComm32_ClifferID
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, gPrintPara.dTeachCapping_Zmm, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head and theta Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until ((Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1) And (Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub





























