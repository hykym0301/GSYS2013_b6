Attribute VB_Name = "PComm32_Motion"
Type PmacMsg
    newline As Boolean
    msg As String
End Type

'PMAC.DLL Functions

Public Declare Function PmacSelect Lib "Pcomm32.dll" (ByVal hWnd As Long) As Long
Public Declare Function OpenPmacDevice Lib "Pcomm32.dll" (ByVal pmac As Long) As Long
Public Declare Function PmacConfigure Lib "Pcomm32.dll" (ByVal hWnd As Long, ByVal pmac As Long) As Long
Public Declare Function PmacGetResponseA Lib "Pcomm32.dll" (ByVal pmac As Long, ByVal response$, ByVal dummy As Integer, ByVal com_string$) As Long
Public Declare Function PmacFlush Lib "Pcomm32.dll" (ByVal pmac As Long) As Integer
Public Declare Function PmacGetPmacType Lib "Pcomm32.dll" (ByVal pmac As Long) As Integer
Public Declare Function ClosePmacDevice Lib "Pcomm32.dll" (ByVal pmac As Long) As Long
Public Declare Function PmacDownloadA Lib "Pcomm32.dll" (ByVal pmac As Long, ByVal dummy As Long, ByVal dummy As Long, ByVal dummy As Long, ByVal fname$, ByVal macro%, ByVal map%, ByVal log%, ByVal do_pmacDownloada%) As Integer

Public PComm32_DeviceID As Long
Public PComm32_ClifferID As Long
Public PComm32_ReturnErrCode As Long
Public PComm32_Response As String * 256

Public PComm32_AxisNo(12) As Integer '0:X , 1:Y , 2:T , 3:Head-Z , 4:Capping Unit전후진(Cy) ,
                                    '5:Capping Unit Z(Cz) , 6:하부조명X(CleaningX축/ClngX)
'Public PComm32_Speed_mms(9) As Double
'Public PComm32_Acc_ms(9) As Double
'Public PComm32_Scrv_ms(9) As Double 'Device Net축 및 기타축들과 변수 공유를 위하여.....인덱스갯수가 틀림--공용변수 선언으로 옮김.

Public PComm32_Cts_Per_mm(12) As Double
Public Const PComm32_XAxis              As Integer = 0
Public Const PComm32_YAxis              As Integer = 1

Public Const PComm32_TAxis              As Integer = 2

Public Const PComm32_HdZAxis            As Integer = 3
Public Const PComm32_CyAxis             As Integer = 4
Public Const PComm32_CzAxis             As Integer = 5
Public Const PComm32_ClngXAxis          As Integer = 6 '축 지시자 인덱스
Public Const PComm32_RvZAxis            As Integer = 7 '원래는 디바이스 축이지만 관리의 일원화를 위하여 PComm32에선언.

Public Const PComm32_HdZAxis_km         As Integer = 8
Public Const PComm32_km1_TAxis          As Integer = 9
Public Const PComm32_km2_TAxis          As Integer = 10
Public Const PComm32_DW_YAxis           As Integer = 11
Public Const PComm32_km1_XAxis          As Integer = 12

Public Const PComm32_Stage_Rotation_RADIUS_mm As Double = 600
Public PComm32_Axis_InPosGain(12) As Double

Public PComm32_SensorStatusAddr As String
Public PComm32_AxisStatusSimpleAddr As String
Public PComm32_DIN_Addr As String
Public PComm32_DOUT_Addr As String

Public PComm32_Position_mm(12) As Double
Public PComm32_SensorCheckBit_Home(12) As Integer
Public PComm32_SensorCheckBit_NLmt(12) As Integer
Public PComm32_SensorCheckBit_PLmt(12) As Integer
Public PComm32_AxisStatBit_AmpEna(12)  As Integer
Public PComm32_AxisStatBit_WFollowingErr(12)  As Integer
Public PComm32_AxisStatBit_FFollowingErr(12)  As Integer
Public PComm32_AxisStatBit_InPos(12)  As Integer
Public PComm32_AxisStatBit_HomeComplete(12)  As Integer

Public PComm32_DIN_Bit(135) As Integer
Public PComm32_DOUT_Bit(135) As Integer '111
Public PComm32_DIN_Comment(135) As String
Public PComm32_DOUT_Comment(135) As String '111

'// Cliffer

Public Const CLIFFER_MTR_CNT As Integer = 2
Public Const CLIFFER_IO_CNT As Integer = 32

Public Cliffer_AxisNo(CLIFFER_MTR_CNT - 1) As Integer '0:Hdz , 1:Hdt
Public Cliffer_Cts_Per_mm(CLIFFER_MTR_CNT - 1) As Double

Public Const Cliffer_HdzAxis          As Integer = 0
Public Const Cliffer_HdtAxis          As Integer = 1

Public Cliffer_Axis_InPosGain(CLIFFER_MTR_CNT - 1) As Double

Public Cliffer_SensorStatusAddr As String
Public Cliffer_AxisStatusSimpleAddr As String
Public Cliffer_DIN_Addr As String
Public Cliffer_DOUT_Addr As String

Public Cliffer_Position_mm(CLIFFER_MTR_CNT - 1) As Double
Public Cliffer_SensorCheckBit_Home(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_SensorCheckBit_NLmt(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_SensorCheckBit_PLmt(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_AxisStatBit_AmpEna(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_AxisStatBit_WFollowingErr(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_AxisStatBit_FFollowingErr(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_AxisStatBit_InPos(CLIFFER_MTR_CNT - 1) As Integer
Public Cliffer_AxisStatBit_HomeComplete(CLIFFER_MTR_CNT - 1) As Integer

Public Cliffer_DIN_Bit(CLIFFER_IO_CNT - 1) As Integer
Public Cliffer_DOUT_Bit(CLIFFER_IO_CNT - 1) As Integer

Public PComm32_Init_Flag As Boolean

'       <Input>
'            iSg_    :   외부기기와 통신하는 입력 데이타..
'            iCs_    :   단동 실린더 센서.
'            iCd_    :   복동 실린더 센서.
'            iVs_    :   단동 백큠 솔 센서.
'            iVd_    :   복동 백큠 솔 센서.
'
'            iSi_    :   그외 모든 입력 시그널..
'
'        <Output>
'            oSg_    :   외부기기와 통신하는 출력 데이타..
'            oCs_    :   단동 실린더 출력.
'            oCd_    :   복동 실린더 출력.
'            oVs_    :   단동 백큠 솔 출력.
'            oVd_    :   복동 백큠 솔 출력.
'
'            oPw_    :   외부장치의 파워 출력.
'            oGm_    :   멍텅구리와 관련된 출력.
'            oSm_    :   서보및 스텝과 관련된 출력.
'
'            o_      :   그외 모든 출력 시그널..

'Cliffer Digital IO - Input
Public Const iSi_Cliffer_SystemPower As Long = 0
Public Const iSi_Cliffer_01 As Long = 1
Public Const iSi_Cliffer_Emergency As Long = 2
Public Const iSi_Cliffer_SMPS As Long = 3
Public Const iSi_Cliffer_HeadZ_Brake As Long = 4
Public Const iSi_Cliffer_UV_StandBy As Long = 5
Public Const iSi_Cliffer_UV_Life As Long = 6
Public Const iSi_Cliffer_UV_Temp As Long = 7

Public Const iSi_Cliffer_DW_Backward As Long = 16
Public Const iSi_Cliffer_Maint_Backward As Long = 17
Public Const iSi_Cliffer_Maint_forward As Long = 18

Public Const iSi_Cliffer_DW_Up As Long = 29
Public Const iSi_Cliffer_DW_Down As Long = 30
Public Const iSi_Cliffer_DW_Forward As Long = 31

'Cliffer Digital IO - Output
Public Const oSg_Cliffer_SolventPump As Long = 0
Public Const oSg_Cliffer_Buzzer As Long = 1
Public Const oSg_Cliffer_Reservior_Heater As Long = 2
Public Const oSg_Cliffer_Head_Heater As Long = 3
Public Const oSm_Cliffer_HeadZ_Brake As Long = 4
Public Const oSg_Cliffer_UV_LIght_1_On As Long = 5
Public Const oSg_Cliffer_UV_LIght_2_On As Long = 6
Public Const oSg_Cliffer_UV_LIght_3_On As Long = 7
Public Const oSg_Cliffer_UV_LIght_4_On As Long = 8

Public Const oSg_Cliffer_Reserve_9 As Long = 9

Public Const oSg_Cliffer_Maint_1_Vacuum As Long = 10        '
Public Const oSg_Cliffer_Maint_1_Exhaust As Long = 11       '
Public Const oSg_Cliffer_Maint_2_Vacuum As Long = 12        '
Public Const oSg_Cliffer_Maint_2_Exhaust As Long = 13       '
Public Const oSg_Cliffer_Maint_3_Vacuum As Long = 14        '
Public Const oSg_Cliffer_Maint_3_Exhaust As Long = 15       '

Public Const oSg_Cliffer_Roll_1 As Long = 16                '
Public Const oSg_Cliffer_Roll_2 As Long = 17                '
Public Const oSg_Cliffer_Roll_3 As Long = 18                '

Public Const oSg_Cliffer_Reset_Theta_1 As Long = 19         '
Public Const oSg_Cliffer_Reset_Theta_2 As Long = 20         '

Public Const oSg_Cliffer_DW_Up As Long = 21                 '
Public Const oSg_Cliffer_DW_Down As Long = 22               '
Public Const oSg_Cliffer_DW_FW As Long = 23                 '
Public Const oSg_Cliffer_DW_BW As Long = 24                 '
Public Const oSg_Cliffer_Maint_FW As Long = 25              '
Public Const oSg_Cliffer_Maint_BW As Long = 26              '

Public Const oSg_Cliffer_Reserve_27 As Long = 27

Public Const oSg_Cliffer_KM_TankPresMode As Long = 28       '
Public Const oSg_Cliffer_KM_Tank_Head_1 As Long = 29        '
Public Const oSg_Cliffer_KM_Tank_Head_2 As Long = 30        '
Public Const oSg_Cliffer_Strobe_Mode As Long = 31           '

'UMac Disital IO - Input Definition-----------------------------------------------------------------
Public Const iSi_MainAir_Pressure               As Long = 0      '/ Main Air pressure sensor.
Public Const iSi_00                             As Long = 1        '/ not used !!  iSi_MainVacuum_SW
Public Const iSi_MainVacuum_PumpTrip            As Long = 2
Public Const iSi_Emergency_SW                   As Long = 3         '// B 접점..
Public Const iSi_Alarm_Reset_SW                 As Long = 4
Public Const iSi_BuzzerStop_SW                  As Long = 5
Public Const iSi_ChuckAirFlow_SW1               As Long = 6     '   // Chuck supply Air pressure 1
Public Const iSi_ChuckAirFlow_SW2               As Long = 7     '
Public Const iVs_Glass_ChuckVacSW_1of6          As Long = 8     '
Public Const iVs_Glass_ChuckVacSW_2of6          As Long = 9     '
Public Const iVs_Glass_ChuckVacSW_3of6          As Long = 10     '
Public Const iVs_Glass_ChuckVacSW_4of6          As Long = 11     '
Public Const iVs_Glass_ChuckVacSW_5of6          As Long = 12     '  //center vac..
Public Const iVs_Glass_ChuckVacSW_6of6          As Long = 13     '
Public Const iSi_01                             As Long = 14      '
Public Const iSi_02                             As Long = 15      '

'    // Page 2
Public Const iSi_03                             As Long = 16        '
Public Const iSi_04                             As Long = 17        '
Public Const iSi_05                             As Long = 18        '
Public Const iSi_06                             As Long = 19        '
Public Const iSi_07                             As Long = 20        '
Public Const iSi_08                             As Long = 21        '
Public Const iSi_09                             As Long = 22        '
Public Const iSi_10                             As Long = 23        '
Public Const iSg_Vision_AutoMd                  As Long = 24        '
Public Const iSg_Vision_ManualMd                As Long = 25        '
Public Const iSg_Vision_Error                   As Long = 26        '
Public Const iSi_Vis_nc1                        As Long = 27        '
Public Const iSi_Vis_nc2                        As Long = 28        '
Public Const iSi_Vis_nc3                        As Long = 29        '
Public Const iSi_Vis_nc4                        As Long = 30        '
Public Const iSi_Vis_nc5                        As Long = 31        '

'    // Page 3
Public Const iSi_11                             As Long = 32        '   //Vacuum Pump Trip .. need confirm
Public Const iSi_12                             As Long = 33        '
Public Const iSi_13                             As Long = 34        '
Public Const iSi_14                             As Long = 35        '
Public Const iSi_15                             As Long = 36        '
Public Const iSi_16                             As Long = 37        '
Public Const iSi_17                             As Long = 38        '
Public Const iSi_18                             As Long = 39        '
Public Const iSi_19                             As Long = 40         '
Public Const iSi_20                             As Long = 41        '
Public Const iSi_21                             As Long = 42        '
Public Const iSi_22                             As Long = 43        '
Public Const iSi_23                             As Long = 44        '
Public Const iSi_24                             As Long = 45        '
Public Const iSi_25                             As Long = 46        '
Public Const iSi_26                             As Long = 47        '

'    // Page 4
Public Const iYaxis_Jog_Plus_SWR                As Long = 48        '  //iYaxis_Jog_MovePurg_SW
Public Const iYaxis_Jog_Minus_SWR               As Long = 49        '
Public Const iYaxis_Jog_Plus_SWL                As Long = 50        '
Public Const iYaxis_Jog_Minus_SWL               As Long = 51        '
Public Const iSi_29                             As Long = 52        '
Public Const iSi_30                             As Long = 53        '
Public Const iSi_31                             As Long = 54        '
Public Const iSi_32                             As Long = 55        '
Public Const iSi_33                             As Long = 56        '
Public Const iSi_34                             As Long = 57        '
Public Const iSi_35                             As Long = 58        '
Public Const iSi_36                             As Long = 59        '
Public Const iSi_37                             As Long = 60        '
Public Const iSi_38                             As Long = 61        '
Public Const iSi_39                             As Long = 62        '
Public Const iSi_40                             As Long = 63        '   //M4050: Y Jog +/ M4051: Y Jog-

'    // Page 5
Public Const iSi_Emergency_Stop                 As Long = 64       '   // Emergency
Public Const iSi_AirBearingSen_1of16            As Long = 65       '   // Left(1# -> 8#) X Axis Air Bearing 압력 센서.
Public Const iSi_AirBearingSen_2of16            As Long = 66       '
Public Const iSi_AirBearingSen_3of16            As Long = 67       '
Public Const iSi_AirBearingSen_6of16            As Long = 70       '
Public Const iSi_AirBearingSen_7of16            As Long = 71       '
Public Const iSi_AirBearingSen_8of16            As Long = 72       '
Public Const iSi_AirBearingSen_9of16            As Long = 73       '   // Right(8# <- 1#) X Axis Air Bearing 압력 센서.
Public Const iSi_AirBearingSen_10of16           As Long = 74       '
Public Const iSi_AirBearingSen_11of16           As Long = 75       '
Public Const iSi_AirBearingSen_14of16           As Long = 76       '
Public Const iSi_AirBearingSen_13of16           As Long = 77       '
Public Const iSi_AirBearingSen_12of16           As Long = 78       '
Public Const iSi_AirBearingSen_15of16           As Long = 79       '

'    // Page 6
Public Const iSi_AirBearingSen_16of16           As Long = 80       '
Public Const iSi_99                             As Long = 81       '
Public Const iSi_100                            As Long = 82       '
Public Const iSi_101                            As Long = 83       '
Public Const iSi_102                            As Long = 84       '
Public Const iSi_103                            As Long = 85       '
Public Const iSi_104                            As Long = 86       '
Public Const iSi_105                            As Long = 87       '
Public Const iSi_CapCLnMotPowerSts              As Long = 88       '
Public Const iSi_107                            As Long = 89       '
Public Const iSi_108                            As Long = 90       '
Public Const iSi_109                            As Long = 91       '
Public Const iSi_110                            As Long = 92       '
Public Const iSi_111                            As Long = 93       '
Public Const iSi_112                            As Long = 94       '
Public Const iSi_113                            As Long = 95       '

'    // Page 7
Public Const iSi_114                            As Long = 96       '
Public Const iSi_115                            As Long = 97       '
Public Const iSi_HD1ZInpos                      As Long = 98       '
Public Const iSi_HD2ZInpos                      As Long = 99       '
Public Const iSi_CapCLnMainVaccum               As Long = 100       '
Public Const iSi_CapCLnINSPO1                   As Long = 101       '
Public Const iSi_CapCLnINSPO2                   As Long = 102       '
Public Const iSi_CapCLnINSPO3                   As Long = 103       '
Public Const iSi_HD1InkTankOverFlow             As Long = 104       '
Public Const iSi_HD2InkTankOverFlow             As Long = 105       '
Public Const iSi_HD3InkTankOverFlow             As Long = 106       '
Public Const iSi_HD4InkTankOverFlow             As Long = 107       '
Public Const iSi_125                            As Long = 108       '
Public Const iSi_126                            As Long = 109       '
Public Const iSi_127                            As Long = 110       '
Public Const iSi_128                            As Long = 111       '

'    // Page 8
Public Const iSi_HDINSPO4                       As Long = 112       '
Public Const iSi_HDINSPO5                       As Long = 113       '
Public Const iSi_129                            As Long = 114       '
Public Const iSi_UseTenKey                      As Long = 115       '
Public Const iSi_StgY_MMove                     As Long = 116       '
Public Const iSi_StgY_PMove                     As Long = 117       '
Public Const iSi_StgX_MMove                     As Long = 118       '
Public Const iSi_StgX_PMove                     As Long = 119       '
Public Const iSi_NzlTest_HD1                    As Long = 120           '
Public Const iSi_NzlTest_HD2                    As Long = 121       '
Public Const iSi_NzlTest_HD3                    As Long = 122       '
Public Const iSi_NzlTest_HD4                    As Long = 123       '
Public Const iSi_Purge_Pos                      As Long = 124       '
Public Const iSi_HD34_Dist                      As Long = 125       '
Public Const iSi_HD23_Dist                      As Long = 126       '
Public Const iSi_HD12_Dist                      As Long = 127       '
'
'    // Page 9
Public Const iSi_Nzl256_Pos                     As Long = 128       '
Public Const iSi_Nzl1_Pos                       As Long = 129       '
Public Const iSi_MMove_NzlPitch                 As Long = 130       '
Public Const iSi_PMove_NzlPitch                 As Long = 131       '
Public Const iSi_Select_HD4                     As Long = 132       '
Public Const iSi_Select_HD3                     As Long = 133       '
Public Const iSi_Select_HD2                     As Long = 134       '
Public Const iSi_Select_HD1                     As Long = 135       '

'UMac Digital IO - Output Definition---------------------------------
'    // Page 1
Public Const oVs_Glass_ChuckVac_Cntr            As Long = 0 '
Public Const oVs_Glass_ChuckVac_1of6            As Long = 1 '
Public Const oVs_Glass_ChuckVac_2of6            As Long = 2 '
Public Const oVs_Glass_ChuckVac_3of6            As Long = 3 '
Public Const oVs_Glass_ChuckVac_4of6            As Long = 4 '
Public Const oVs_Glass_ChuckVac_Edge            As Long = 5 '
Public Const oCs_Glass_AirBlow_1of6             As Long = 6 '
Public Const oCs_Glass_AirBlow_2of6             As Long = 7 '
Public Const oCs_Glass_AirBlow_3of6             As Long = 8 '
Public Const oCs_Glass_AirBlow_4of6             As Long = 9 '
Public Const oCs_Glass_AirBlow_5of6             As Long = 10 '
Public Const oCs_Glass_AirBlow_6of6             As Long = 11 '
Public Const oSi_00                             As Long = 12 '
Public Const oSi_01                             As Long = 13 '
Public Const oSi_02                             As Long = 14 '
Public Const oSi_03                             As Long = 15 '
'
'    // Page 2
Public Const o_Signal_Sound1                    As Long = 16 '
Public Const o_Signal_Sound2                    As Long = 17 '
Public Const o_Signal_Sound3                    As Long = 18 '
Public Const o_Signal_Sound4                    As Long = 19 '
Public Const oSi_04                             As Long = 20 '
Public Const oSi_05                             As Long = 21 '
Public Const oSi_06                             As Long = 22 '
Public Const oSi_07                             As Long = 23 '
Public Const oSg_Vision_AutoMd                  As Long = 24 '
Public Const oSg_Vision_ManualMd                As Long = 25 '
Public Const oSg_Vision_RepairStt               As Long = 26 '
Public Const oSg_Vision_ErrStt                  As Long = 27 '
Public Const oSg_Vision_EmgStt                  As Long = 28 '
Public Const oSi_Vision_nc1                     As Long = 29 '
Public Const oSi_Vision_nc2                     As Long = 30 '
Public Const oSi_Vision_nc3                     As Long = 31 '

'    // Page 3
Public Const oVs_VacuumPump_On                  As Long = 32 '
Public Const oSm_Servo_MtrPwr                   As Long = 33 '
Public Const oSm_Step_MtrPwr                    As Long = 34 '
Public Const oSi_08                             As Long = 35 '
Public Const oSm_HeadUpDn_Mtr1_Break            As Long = 36 '
Public Const oSm_HeadUpDn_Mtr2_Break            As Long = 37 '
Public Const oSm_HeadUpDn_Mtr3_Break            As Long = 38 '
Public Const oSm_CameraUpDn_Mtr_Break           As Long = 39 '
Public Const oSi_09                             As Long = 40 '
Public Const oSi_10                             As Long = 41 '
Public Const oSi_11                             As Long = 42 '
Public Const oSi_12                             As Long = 43 '
Public Const oSi_13                             As Long = 44 '
Public Const oSi_14                             As Long = 45 '
Public Const oSi_15                             As Long = 46 '
Public Const oSi_16                             As Long = 47 '

'    // Page 4
Public Const o_TowerLamp_Red                    As Long = 48 '
Public Const o_TowerLamp_Yellow                 As Long = 49 '
Public Const o_TowerLamp_Green                  As Long = 50 '
Public Const oSi_17                             As Long = 51 '
Public Const o_YJog_P_SW_R                      As Long = 52 '  //YJog_P_SW_R (Right)
Public Const o_YJog_M_SW_R                      As Long = 53 '  //YJog_M_SW_R (Right)
Public Const o_YJog_P_SW_L                      As Long = 54 '  //YJog_P_SW_L (Left)
Public Const o_YJog_M_SW_L                      As Long = 55 '  //YJog_M_SW_L (Left)
Public Const oSi_22                             As Long = 56 '
Public Const oSi_23                             As Long = 57 '
Public Const oSi_24                             As Long = 58 '
Public Const oSi_25                             As Long = 59 '
Public Const oSi_26                             As Long = 60 '
Public Const oSi_27                             As Long = 61 '
Public Const oSi_28                             As Long = 62 '
Public Const oSi_29                             As Long = 63 '

'    // Page 5
Public Const oSm_CapCLnMotPower                 As Long = 64 '
Public Const oSm_02                             As Long = 65 '
Public Const oSm_03                             As Long = 66 '
Public Const oSm_04                             As Long = 67 '
Public Const oSm_CapCLnZAxisBrkRelease          As Long = 68 '
Public Const oSm_06                             As Long = 69 '
Public Const oSm_07                             As Long = 70 '
Public Const oSm_08                             As Long = 71 '
Public Const oSm_09                             As Long = 72 '
Public Const oSm_10                             As Long = 73 '
Public Const oSm_11                             As Long = 74 '
Public Const oSm_12                             As Long = 75 '
Public Const oSm_CapXDriveRst                   As Long = 76 '
Public Const oSm_CapZDriveRst                   As Long = 77 '
Public Const oSm_HD1DriveRst                    As Long = 78 '
Public Const oSm_HD2DriveRst                    As Long = 79 '

'    // Page 6
Public Const oSm_17                             As Long = 80 '
Public Const oSm_18                             As Long = 81 '
Public Const oSm_19                             As Long = 82 '
Public Const oSm_20                             As Long = 83 '
Public Const oSm_LedOn_HD4                      As Long = 84 '
Public Const oSm_LedOn_HD3                      As Long = 85 '
Public Const oSm_LedOn_HD2                      As Long = 86 '
Public Const oSm_LedOn_HD1                      As Long = 87 '
Public Const oVs_CapCLnSol_1                    As Long = 88 '
Public Const oVs_CapCLnSol_2                    As Long = 89 '
Public Const oVs_CapCLnSol_3                    As Long = 90 '
Public Const oVs_CapCLnSol_4                    As Long = 91 '
Public Const oSm_CapCLnPump                     As Long = 92 '
Public Const oSm_EncZeroCmd                     As Long = 93 '
Public Const oSm_31                             As Long = 94 '
Public Const oSm_32                             As Long = 95 '

'    // Page 7
Public Const oSm_33                             As Long = 96 '
Public Const oSm_34                             As Long = 97 '
Public Const oSm_35                             As Long = 98 '
Public Const oSm_36                             As Long = 99 '
Public Const oSm_HDOUTSPO1                      As Long = 100 '
Public Const oSm_HDOUTSPO2                      As Long = 101 '
Public Const oSm_HDOUTSPO3                      As Long = 102 '
Public Const oSm_40                             As Long = 103 '
Public Const oSm_41                             As Long = 104 '
Public Const oSm_42                             As Long = 105 '
Public Const oSm_43                             As Long = 106 '
Public Const oSm_44                             As Long = 107 '
Public Const oSm_45                             As Long = 108 '
Public Const oSm_46                             As Long = 109 '
Public Const oSm_47                             As Long = 110 '
Public Const oSm_48                             As Long = 111
Sub PComm32_DelayWait(ipWaitTime As Double, ipFlagDoeventsEnabled As Boolean)

    rtn_dbl# = DelayWait_TimeCheck(True)
    Do
        If ipFlagDoeventsEnabled = True Then
            DoEvents
        End If
    Loop Until PComm32_DelayWait_TimeCheck(False) >= ipWaitTime
    rtn_dbl# = PComm32_DelayWait_TimeCheck(True)
    
End Sub
Function PComm32_DelayWait_TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            PComm32_DelayWait_TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        PComm32_DelayWait_TimeCheck = 0
    End If

End Function
Function PComm32_Hex_FormatString(ipHex As String, StrQuantity As Integer) As String

    tmp_hex$ = ipHex
    For i% = 1 To (StrQuantity - Len(ipHex)) 'Step -1
        tmp_hex$ = "0" & tmp_hex$
    Next i%
    PComm32_Hex_FormatString = tmp_hex$
    
End Function
Function PComm32_Init(ipSimulationFlag As Boolean, ipPowerReset As Boolean) As Boolean
    
    Dim rtnSTR As String * 128
    
    'ClosePmacDevice PComm32_DeviceID
    
    'PI# = 3.141592
    
    If PComm32_Init_Flag = True Then
        ClosePmacDevice PComm32_DeviceID
        ClosePmacDevice PComm32_ClifferID
    End If
    
    PComm32_DeviceID = 0 '상수임.
    PComm32_ClifferID = 1
    
    If ipSimulationFlag = False Then
    
        PComm32_ReturnErrCode = OpenPmacDevice(PComm32_DeviceID)
        If PComm32_ReturnErrCode < 0 Then
            PComm32_Init = False
            Exit Function
        End If
        
        PComm32_ReturnErrCode = OpenPmacDevice(PComm32_ClifferID)
        If PComm32_ReturnErrCode < 0 Then
            PComm32_Init = False
            Exit Function
        End If

        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENA PLC 1") '기본PLC Enable
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "ENA PLC 1") '기본PLC Enable
        
        '// 추가된 Cliffer
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "P1101=0")   '// Head Z
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "P1201=0")   '// Head Theta
        
        Cliffer_AxisNo(Cliffer_HdzAxis) = 1
        Cliffer_AxisNo(Cliffer_HdtAxis) = 2
        
        Cliffer_Cts_Per_mm(Cliffer_HdzAxis) = 0.002
        Cliffer_Cts_Per_mm(Cliffer_HdtAxis) = 360 / (10000 * 533.333333333)
        
        Cliffer_SensorStatusAddr = ""
        Cliffer_AxisStatusSimpleAddr = ""
        Cliffer_DIN_Addr = ""
        Cliffer_DOUT_Addr = ""
        
        For i% = 0 To (CLIFFER_MTR_CNT - 1) 'Mx20:Home,Mx21:-Limit,Mx22:+Limit --> x = Axis No
            Cliffer_SensorStatusAddr = Cliffer_SensorStatusAddr & "M" & CStr(Cliffer_AxisNo(i%)) & "20" & _
                                                                  "M" & CStr(Cliffer_AxisNo(i%)) & "21" & _
                                                                  "M" & CStr(Cliffer_AxisNo(i%)) & "22"
                                      
            Cliffer_AxisStatusSimpleAddr = Cliffer_AxisStatusSimpleAddr & "M" & CStr(Cliffer_AxisNo(i%)) & "39" & _
                                                                          "M" & CStr(Cliffer_AxisNo(i%)) & "41" & _
                                                                          "M" & CStr(Cliffer_AxisNo(i%)) & "42" & _
                                                                          "M" & CStr(Cliffer_AxisNo(i%)) & "40" & _
                                                                          "M" & CStr(Cliffer_AxisNo(i%)) & "45"
        
            Cliffer_Axis_InPosGain(i%) = 0.05 '50um
        Next i%
                                                                            'Mx39:    Amp Enable
                                                                            'Mx41:Warning Following Error
                                                                            'Mx42:Fatal Following Error
                                                                            'Mx44:Foreground Inposition
                                                                            'Mx45:Home Complete
        For i% = 4100 To 4131
            Cliffer_DIN_Addr = Cliffer_DIN_Addr & "M" & CStr(i%)
        Next i%
        
        For i% = 4200 To 4231
            Cliffer_DOUT_Addr = Cliffer_DOUT_Addr & "M" & CStr(i%)
        Next i%
        
        PComm32_DOUT oSm_Cliffer_HeadZ_Brake, 1, PComm32_ClifferID
        
        If (g_nHeadType = nLG_Q) Then
            PComm32_DOUT oSg_Cliffer_Reservior_Heater, 1, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_Head_Heater, 1, PComm32_ClifferID
        Else
            PComm32_DOUT oSg_Cliffer_Reservior_Heater, 0, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_Head_Heater, 0, PComm32_ClifferID
        End If
                
        '// 기존 uMac
        PComm32_Response = ""
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#20K")
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#1$")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#2$")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#1j/")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#2j/")
        
        'X Axis(#1) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2001=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3001=0")
        PComm32_AxisNo(PComm32_XAxis) = 1
        PComm32_Cts_Per_mm(PComm32_XAxis) = 0.0003125
        
        'Y Axis(#2) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2002=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3002=0")
        PComm32_AxisNo(PComm32_YAxis) = 2
        PComm32_Cts_Per_mm(PComm32_YAxis) = 0.0003125
        
        'T Axis(#9) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2009=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3009=0")
        PComm32_AxisNo(PComm32_TAxis) = 9
        PComm32_Cts_Per_mm(PComm32_TAxis) = 0.0000076394 '360 / (2 * Pi# * PComm32_Stage_Rotation_RADIUS_mm * 12500) '1Cts:0.0000076394도
        
        'Head Z Axis(#11) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2011=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3011=0")
        PComm32_AxisNo(PComm32_HdZAxis) = 11
        PComm32_Cts_Per_mm(PComm32_HdZAxis) = 0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        'Cy,Cz Axis(#5,#6) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2005=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005=0") '5,6축 동시지령,확인
        PComm32_AxisNo(PComm32_CyAxis) = 5
        PComm32_AxisNo(PComm32_CzAxis) = 6
        PComm32_Cts_Per_mm(PComm32_CyAxis) = 0.00023842 '3.814697265625E-07 '1Rev=1048576Cts ,기어비 1/25 , Ball Screw 10mm
        PComm32_Cts_Per_mm(PComm32_CzAxis) = 0.00009537 '1.52587890625E-07  '1Rev=1048576Cts ,기어비 1/25 , Ball Screw 4mm
        
        'ClngX Axis(#3/기존하부조명축,현재클리닝X축) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P300=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P333=0")
        PComm32_AxisNo(PComm32_ClngXAxis) = 3
        PComm32_Cts_Per_mm(PComm32_ClngXAxis) = 0.0003125
        
        
        'ClngX Axis(#3/기존하부조명축,현재클리닝X축) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2007=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3007=0")
        PComm32_AxisNo(PComm32_RvZAxis) = 7
        PComm32_Cts_Per_mm(PComm32_RvZAxis) = 5.98243421862072E-05 '885927 / 53
        
       
         'Head Z Axis(#12) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2012=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3012=0")
        PComm32_AxisNo(PComm32_HdZAxis_km) = 12
        PComm32_Cts_Per_mm(PComm32_HdZAxis_km) = 0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
      
        '////// Now Cts/mm 확인
        'km Head theta Axis(#25) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2025=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3025=0")
        PComm32_AxisNo(PComm32_km1_TAxis) = 25
        PComm32_Cts_Per_mm(PComm32_km1_TAxis) = 360 / 1000000 '0.000006 '1Rev=10000Cts ,기어비 1/100 ,360도
        
        'km Head theta Axis(#26) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2026=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3026=0")
        PComm32_AxisNo(PComm32_km2_TAxis) = 26
        PComm32_Cts_Per_mm(PComm32_km2_TAxis) = 360 / 1000000 '0.000006 '1Rev=10000Cts ,기어비 1/100 ,360도
        
        'Dropwatcher Axis(#27) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2027=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3027=0")
        PComm32_AxisNo(PComm32_DW_YAxis) = 27
        PComm32_Cts_Per_mm(PComm32_DW_YAxis) = 0.0001
        
         'km X Axis(#28) 원점지령 및 완료 플래그 클리어
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2028=0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3028=0")
        PComm32_AxisNo(PComm32_km1_XAxis) = 28
        PComm32_Cts_Per_mm(PComm32_km1_XAxis) = 0.00005
                
        'Sensor Check And DIO PComm32 Command Create
        PComm32_SensorStatusAddr = ""
        PComm32_AxisStatusSimpleAddr = ""
        PComm32_DIN_Addr = ""
        PComm32_DOUT_Addr = ""
        
        For i% = 0 To 12 'Mx20:Home,Mx21:-Limit,Mx22:+Limit --> x = Axis No
        
            PComm32_SensorStatusAddr = PComm32_SensorStatusAddr & "M" & CStr(PComm32_AxisNo(i%)) & "20M" & _
                                                                        CStr(PComm32_AxisNo(i%)) & "21M" & _
                                                                        CStr(PComm32_AxisNo(i%)) & "22"
                                                                        
            PComm32_AxisStatusSimpleAddr = PComm32_AxisStatusSimpleAddr & "M" & CStr(PComm32_AxisNo(i%)) & "39M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "41M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "42M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "40M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "45"
        
            PComm32_Axis_InPosGain(i%) = 0.05 '50um
        
        Next i%
                                                                            'Mx39:    Amp Enable
                                                                            'Mx41:Warning Following Error
                                                                            'Mx42:Fatal Following Error
                                                                            'Mx44:Foreground Inposition
                                                                            'Mx45:Home Complete
        For i% = 4000 To 4063
            PComm32_DIN_Addr = PComm32_DIN_Addr & "M" & CStr(i%)
        Next i%
        For i% = 7000 To 7071
            PComm32_DIN_Addr = PComm32_DIN_Addr & "M" & CStr(i%)
        Next i%
        
        For i% = 4100 To 4163
            PComm32_DOUT_Addr = PComm32_DOUT_Addr & "M" & CStr(i%)
        Next i%
        For i% = 7424 To 7471
            PComm32_DOUT_Addr = PComm32_DOUT_Addr & "M" & CStr(i%)
        Next i%
        
''''        ini_file_name$ = App.Path & "\System\UMac_IO_Comments.ini"
''''        For i% = 0 To 135
''''            addr$ = "X" & PComm32_Hex_FormatString(Hex(i%), 4)
''''            rtn_lng& = GetPrivateProfileString("INPUT", addr$, "0", rtnSTR, 128, ini_file_name$)
''''            PComm32_DIN_Comment(i%) = Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1)): rtnSTR = ""
''''        Next i%
''''
''''        For i% = 0 To 111
''''            addr$ = "Y" & PComm32_Hex_FormatString(Hex(i%), 4)
''''            rtn_lng& = GetPrivateProfileString("OUTPUT", addr$, "0", rtnSTR, 128, ini_file_name$)
''''            PComm32_DOUT_Comment(i%) = Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1)): rtnSTR = ""
''''            'I/O All Clear
''''            'PComm32_DOUT i%, 0
''''        Next i%
''''

        If ipPowerReset = True Then
            PComm32_DOUT oSm_Servo_MtrPwr, 0
            PComm32_DOUT oSm_Step_MtrPwr, 0
            PComm32_DOUT oSm_CapCLnMotPower, 0
            PComm32_DelayWait 2, True
        End If
        PComm32_DOUT oSm_Servo_MtrPwr, 1
        PComm32_DOUT oSm_Step_MtrPwr, 1
        PComm32_DOUT oSm_CapCLnMotPower, 1
        
        '
        PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 1 'Breaking Off
        PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 1
        PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 1
        PComm32_DOUT oSm_CameraUpDn_Mtr_Break, 1
        PComm32_DOUT oSm_CapCLnZAxisBrkRelease, 1
        
        'Drv Reset
        PComm32_DOUT oSm_CapXDriveRst, 1
        PComm32_DOUT oSm_CapZDriveRst, 1
        PComm32_DOUT oSm_HD1DriveRst, 1
        PComm32_DOUT oSm_HD2DriveRst, 1
        PComm32_DelayWait 2, True
        PComm32_DOUT oSm_CapXDriveRst, 0
        PComm32_DOUT oSm_CapZDriveRst, 0
        PComm32_DOUT oSm_HD1DriveRst, 0
        PComm32_DOUT oSm_HD2DriveRst, 0
        PComm32_DelayWait 1, True
        If PComm32_ReturnErrCode < 0 Then
            PComm32_Response = ""
            PComm32_ReturnErrCode = 0
            PComm32_Init = False
            Exit Function
        Else
            PComm32_ReturnErrCode = 0
            PComm32_Init = True
        End If

    Else
    
        PComm32_AxisNo(PComm32_XAxis) = 1
        PComm32_Cts_Per_mm(PComm32_XAxis) = 0.0003125
        
        PComm32_AxisNo(PComm32_YAxis) = 2
        PComm32_Cts_Per_mm(PComm32_YAxis) = 0.0003125
        
        PComm32_AxisNo(PComm32_TAxis) = 9
        PComm32_Cts_Per_mm(PComm32_TAxis) = 360 / (2 * PI# * PComm32_Stage_Rotation_RADIUS_mm * 12500) '1Cts:0.0000076394도
        
        PComm32_AxisNo(PComm32_HdZAxis) = 11
        PComm32_Cts_Per_mm(PComm32_HdZAxis) = 0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        PComm32_AxisNo(PComm32_CyAxis) = 5
        PComm32_AxisNo(PComm32_CzAxis) = 6
        PComm32_Cts_Per_mm(PComm32_CyAxis) = 3.814697265625E-07 '1Rev=1048576Cts ,기어비 1/25 , Ball Screw 10mm
        PComm32_Cts_Per_mm(PComm32_CzAxis) = 1.52587890625E-07  '1Rev=1048576Cts ,기어비 1/25 , Ball Screw 4mm
        
        PComm32_AxisNo(PComm32_ClngXAxis) = 3
        PComm32_Cts_Per_mm(PComm32_ClngXAxis) = 0.0003125
        
        PComm32_AxisNo(PComm32_RvZAxis) = 7
        PComm32_Cts_Per_mm(PComm32_RvZAxis) = 5.98243421862072E-05                 '885927 / 53
        
        PComm32_AxisNo(PComm32_HdZAxis_km) = 12
        PComm32_Cts_Per_mm(PComm32_HdZAxis_km) = 0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
      
        '////// Now Cts/mm 확인
        PComm32_AxisNo(PComm32_km1_TAxis) = 25
        PComm32_Cts_Per_mm(PComm32_km1_TAxis) = 0 '0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        PComm32_AxisNo(PComm32_km2_TAxis) = 26
        PComm32_Cts_Per_mm(PComm32_km2_TAxis) = 0 '0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        PComm32_AxisNo(PComm32_DW_YAxis) = 27
        PComm32_Cts_Per_mm(PComm32_DW_YAxis) = 0 '0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        PComm32_AxisNo(PComm32_DW_YAxis) = 28
        PComm32_Cts_Per_mm(PComm32_DW_YAxis) = 0 '0.000006 '1Rev=10000Cts ,기어비 1/100 , Ball Screw 6mm
        
        PComm32_SensorStatusAddr = ""
        PComm32_AxisStatusSimpleAddr = ""
        PComm32_DIN_Addr = ""
        PComm32_DOUT_Addr = ""
        
        For i% = 0 To 12 'Mx20:Home,Mx21:-Limit,Mx22:+Limit --> x = Axis No
        
            PComm32_SensorStatusAddr = PComm32_SensorStatusAddr & "M" & CStr(PComm32_AxisNo(i%)) & "20M" & _
                                                                        CStr(PComm32_AxisNo(i%)) & "21M" & CStr(PComm32_AxisNo(i%)) & "22"
                                                                        
            PComm32_AxisStatusSimpleAddr = PComm32_AxisStatusSimpleAddr & "M" & CStr(PComm32_AxisNo(i%)) & "39M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "41M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "42M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "40M" & _
                                                                                CStr(PComm32_AxisNo(i%)) & "45"
        Next i%
                                                                            'Mx39:    Amp Enable
                                                                            'Mx41:Warning Following Error
                                                                            'Mx42:Fatal Following Error
                                                                            'Mx44:Foreground Inposition
                                                                            'Mx45:Home Complete
        For i% = 4000 To 4063
            PComm32_DIN_Addr = PComm32_DIN_Addr & "M" & CStr(i%)
        Next i%
        For i% = 7000 To 7071
            PComm32_DIN_Addr = PComm32_DIN_Addr & "M" & CStr(i%)
        Next i%
        
        For i% = 4100 To 4163
            PComm32_DOUT_Addr = PComm32_DOUT_Addr & "M" & CStr(i%)
        Next i%
        For i% = 7424 To 7471
            PComm32_DOUT_Addr = PComm32_DOUT_Addr & "M" & CStr(i%)
        Next i%
                
        For i% = 0 To 135
            Addr$ = "X" & PComm32_Hex_FormatString(Hex(i%), 4)
            rtn_lng& = GetPrivateProfileString("INPUT", Addr$, "0", rtnSTR, 128, ini_file_name$)
            PComm32_DIN_Comment(i%) = Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1)): rtnSTR = ""
        Next i%
        
        For i% = 0 To 111
            Addr$ = "Y" & PComm32_Hex_FormatString(Hex(i%), 4)
            rtn_lng& = GetPrivateProfileString("OUTPUT", Addr$, "0", rtnSTR, 128, ini_file_name$)
            PComm32_DOUT_Comment(i%) = Mid(Trim(rtnSTR), 1, (InStr(1, Trim(rtnSTR), Chr(0)) - 1)): rtnSTR = ""
        Next i%
    
    End If
    'notebook
    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#11j/#12j/#20j/") 'Head Z Axis Servo ON
    PComm32_Init_Flag = True

End Function
Function PComm32_OriginRunning(ipAxisIndex As Integer, Optional ipDeviceNo As Long = 0) As Boolean

    If PComm32_Init_Flag = False Then Exit Function
    
    If ipDeviceNo = 0 Then
    
        PComm32_Response = ""
        Select Case ipAxisIndex
            Case 0
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3001=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2001=1")
            Case 1
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3002=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2002=1")
            Case 2
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2009=1")
            Case 3
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3011=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2011=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 11")
            Case 4
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2005=1")
            Case 5
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2005=1")
            Case 6
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P333=0")
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P300=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 7")
            Case 7
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3007=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2007=1")
            Case 8
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3012=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2012=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 12")
            Case 9
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3025=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2025=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 25")
            Case 10
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3026=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2026=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 26")
            Case 11
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3027=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2027=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 27")
            Case 12
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3028=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2028=1")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "ENAPLC 28")
        End Select
               
    Else
        
        PComm32_Response = ""
        
        Select Case ipAxisIndex
            Case 0
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "P1101=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "enaplc11")
            Case 1
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "P1201=0")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, "enaplc12")
        End Select
        
    End If
        
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_OriginRunning = False
        Exit Function
    Else
        PComm32_OriginRunning = True
    End If


    
End Function
Function PComm32_OriginConfirm(ipAxisIndex As Integer, rtnEndingFlag As Boolean, Optional ipDeviceNo As Long = 0) As Boolean

    If PComm32_Init_Flag = False Then Exit Function

    If ipDeviceNo = 0 Then
        PComm32_Response = ""
        Select Case ipAxisIndex
            Case 0
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3001")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2001=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3001=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 1
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3002")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2002=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3002=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 2
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3009")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2009=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3009=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 3
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3011")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2011=0")
                    'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3020=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 4
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2005=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 5
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2005=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3005=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 6
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P333")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P300=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P333=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 7
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3007")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2007=0")
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3007=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 8
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3012")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2012=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 9
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3025")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2025=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 10
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3026")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2026=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 11
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3027")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2027=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            Case 12
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P3028")
                If InStr(1, PComm32_Response, "1") <> 0 Then
                    PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "P2028=0")
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
        End Select
    Else
        
        Dim strResponse As String * 1
        
        Select Case ipAxisIndex
            Case 0
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, strResponse, 1, "p1101")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, strResponse, 1, "p1105")
                If InStr(1, strResponse, "1") <> 0 Then
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            
            Case 1
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, strResponse, 1, "P1201")
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, strResponse, 1, "P1205")
                If InStr(1, strResponse, "1") <> 0 Then
                    rtnEndingFlag = True
                Else
                    rtnEndingFlag = False
                End If
            
        End Select

    End If
    
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_OriginConfirm = False
        Exit Function
    Else
        PComm32_OriginConfirm = True
    End If

End Function
Function PComm32_PositionReadAllAxis(Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function
    
    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
        
        'out_cmd$ = "#1 P#2 P#9 P#11 P#5 P#6 P#3 P#7 P" '"#1 P#2 P#9 P#20 P#5 P#6 P#3 P"
        out_cmd$ = "#1P #2P #9P #11P #5P #6P #3P #7P #12P #25P #26P #27P #28P" '"#1 P#2 P#9 P#20 P#5 P#6 P#3 P"
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_cmd$)
        'PComm32_ReturnErrCode = 0
        'rr = Len(PComm32_Response)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_PositionReadAllAxis = False
            Exit Function
        End If
        rtn_Array = Split(PComm32_Response, vbCr, 13, vbTextCompare)
        
        nCnt% = UBound(rtn_Array)
        
        If nCnt% >= 12 Then
            For i% = 0 To 12
                If i% = 3 Then
                    'PComm32_Position_mm(i%) = (CSng(rtn_Array(i%)) * (PComm32_Cts_Per_mm(i%) * -1))
                    PComm32_Position_mm(i%) = CSng(rtn_Array(i%)) * PComm32_Cts_Per_mm(i%)
                Else
                    PComm32_Position_mm(i%) = CSng(rtn_Array(i%)) * PComm32_Cts_Per_mm(i%)
                End If
            Next i%
            PComm32_PositionReadAllAxis = True
        Else
            PComm32_PositionReadAllAxis = False
        End If
        
    Else
        out_cmd$ = "#1P #2P"
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_cmd$)
        
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_PositionReadAllAxis = False
            Exit Function
        End If
        rtn_Array = Split(PComm32_Response, vbCr, CLIFFER_MTR_CNT, vbTextCompare)
    
        If UBound(rtn_Array) >= (CLIFFER_MTR_CNT - 1) Then
            For i% = 0 To (CLIFFER_MTR_CNT - 1)
                
                If i% = Cliffer_HdzAxis Then
                    Cliffer_Position_mm(i%) = CSng(rtn_Array(i%)) * Cliffer_Cts_Per_mm(i%)
                ElseIf i% = Cliffer_HdtAxis Then
                    Cliffer_Position_mm(i%) = gPrintPara.dTeachHeadZero_Degree - (CSng(rtn_Array(i%)) * Cliffer_Cts_Per_mm(i%))
                End If
                
            Next i%
            PComm32_PositionReadAllAxis = True
        Else
            PComm32_PositionReadAllAxis = False
        End If
    End If
    
End Function
Function PComm32_PositionReadOneAxis(ipAxisIndex As Integer, Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function

    PComm32_Response = ""
        
    If ipDeviceNo = 0 Then
        Select Case ipAxisIndex
            Case 0
                out_cmd$ = "#1P"
            Case 1
                out_cmd$ = "#2P"
            Case 2
                out_cmd$ = "#9P"
            Case 3
                out_cmd$ = "#11P" '"#20 P"
            Case 4
                out_cmd$ = "#5P"
            Case 5
                out_cmd$ = "#6P"
            Case 6
                out_cmd$ = "#3P"
            Case 7
                out_cmd$ = "#7P"
            Case 8
                out_cmd$ = "#12P"
            Case 9
                out_cmd$ = "#25P"
            Case 10
                out_cmd$ = "#26P"
            Case 11
                out_cmd$ = "#27P"
            Case 12
                out_cmd$ = "#28P"
        End Select
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_cmd$)
        rtn_Array = Split(PComm32_ReturnErrCode, vbCr, 1, vbTextCompare)
        If ipAxisIndex = 3 Then
            PComm32_Position_mm(ipAxisIndex) = (CSng(rtn_Array(0)) * PComm32_Cts_Per_mm(ipAxisIndex)) * -1
        Else
            PComm32_Position_mm(ipAxisIndex) = CSng(rtn_Array(0)) * PComm32_Cts_Per_mm(ipAxisIndex)
        End If
    Else
        Select Case ipAxisIndex
            Case 0
                out_cmd$ = "#1P"
            Case 1
                out_cmd$ = "#2P"
        End Select
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_cmd$)
        rtn_Array = Split(PComm32_ReturnErrCode, vbCr, 1, vbTextCompare)
        
        If i% = Cliffer_HdzAxis Then
            Cliffer_Position_mm(i%) = CSng(rtn_Array(i%)) * Cliffer_Cts_Per_mm(i%)
        ElseIf i% = Cliffer_HdtAxis Then
            Cliffer_Position_mm(i%) = gPrintPara.dTeachHeadZero_Degree - (CSng(rtn_Array(i%)) * Cliffer_Cts_Per_mm(i%))
        End If
    End If
        
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_PositionReadOneAxis = False
        Exit Function
    Else
        PComm32_PositionReadOneAxis = True
    End If
    
End Function
Public Function PComm32_SensorCheck(Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant
    
    If PComm32_Init_Flag = False Then Exit Function
    
    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
    
         'Mx20:Home,Mx21:-Limit,Mx22:+Limit
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, PComm32_SensorStatusAddr)
        
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_SensorCheck = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 39, vbTextCompare)
        
        If UBound(rtn_Array) >= 38 Then
            PComm32_SensorCheckBit_Home(0) = CInt(rtn_Array(0))
            PComm32_SensorCheckBit_NLmt(0) = CInt(rtn_Array(1))
            PComm32_SensorCheckBit_PLmt(0) = CInt(rtn_Array(2))
            
            PComm32_SensorCheckBit_Home(1) = CInt(rtn_Array(3))
            PComm32_SensorCheckBit_NLmt(1) = CInt(rtn_Array(4))
            PComm32_SensorCheckBit_PLmt(1) = CInt(rtn_Array(5))
            
            PComm32_SensorCheckBit_Home(2) = CInt(rtn_Array(6))
            PComm32_SensorCheckBit_NLmt(2) = CInt(rtn_Array(7))
            PComm32_SensorCheckBit_PLmt(2) = CInt(rtn_Array(8))
            
            PComm32_SensorCheckBit_Home(3) = CInt(rtn_Array(9))
            PComm32_SensorCheckBit_NLmt(3) = CInt(rtn_Array(10))
            PComm32_SensorCheckBit_PLmt(3) = CInt(rtn_Array(11))
            
            PComm32_SensorCheckBit_Home(4) = CInt(rtn_Array(12))
            PComm32_SensorCheckBit_NLmt(4) = CInt(rtn_Array(13))
            PComm32_SensorCheckBit_PLmt(4) = CInt(rtn_Array(14))
            
            PComm32_SensorCheckBit_Home(5) = CInt(rtn_Array(15))
            PComm32_SensorCheckBit_NLmt(5) = CInt(rtn_Array(16))
            PComm32_SensorCheckBit_PLmt(5) = CInt(rtn_Array(17))
            
            PComm32_SensorCheckBit_Home(6) = CInt(rtn_Array(18))
            PComm32_SensorCheckBit_NLmt(6) = CInt(rtn_Array(19))
            PComm32_SensorCheckBit_PLmt(6) = CInt(rtn_Array(20))
            
            PComm32_SensorCheckBit_Home(7) = CInt(rtn_Array(21))
            PComm32_SensorCheckBit_NLmt(7) = CInt(rtn_Array(22))
            PComm32_SensorCheckBit_PLmt(7) = CInt(rtn_Array(23))
            
            PComm32_SensorCheckBit_Home(8) = CInt(rtn_Array(24))
            PComm32_SensorCheckBit_NLmt(8) = CInt(rtn_Array(25))
            PComm32_SensorCheckBit_PLmt(8) = CInt(rtn_Array(26))
            
            PComm32_SensorCheckBit_Home(9) = CInt(rtn_Array(27))
            PComm32_SensorCheckBit_NLmt(9) = CInt(rtn_Array(28))
            PComm32_SensorCheckBit_PLmt(9) = CInt(rtn_Array(29))
            
            PComm32_SensorCheckBit_Home(10) = CInt(rtn_Array(30))
            PComm32_SensorCheckBit_NLmt(10) = CInt(rtn_Array(31))
            PComm32_SensorCheckBit_PLmt(10) = CInt(rtn_Array(32))
            
            PComm32_SensorCheckBit_Home(11) = CInt(rtn_Array(33))
            PComm32_SensorCheckBit_NLmt(11) = CInt(rtn_Array(34))
            PComm32_SensorCheckBit_PLmt(11) = CInt(rtn_Array(35))
            
            PComm32_SensorCheckBit_Home(12) = CInt(rtn_Array(36))
            PComm32_SensorCheckBit_NLmt(12) = CInt(rtn_Array(37))
            PComm32_SensorCheckBit_PLmt(12) = CInt(rtn_Array(38))
            
            PComm32_SensorCheck = True
        Else
            PComm32_SensorCheck = False
        End If
    Else
        'Mx20:Home,Mx21:-Limit,Mx22:+Limit
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Cliffer_SensorStatusAddr)
        
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_SensorCheck = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 6, vbTextCompare)
        
        If UBound(rtn_Array) >= 5 Then
            Cliffer_SensorCheckBit_Home(0) = CInt(rtn_Array(0))
            Cliffer_SensorCheckBit_NLmt(0) = CInt(rtn_Array(1))
            Cliffer_SensorCheckBit_PLmt(0) = CInt(rtn_Array(2))
            
            Cliffer_SensorCheckBit_Home(1) = CInt(rtn_Array(3))
            Cliffer_SensorCheckBit_NLmt(1) = CInt(rtn_Array(4))
            Cliffer_SensorCheckBit_PLmt(1) = CInt(rtn_Array(5))
            
            PComm32_SensorCheck = True
        Else
            PComm32_SensorCheck = False
        End If
    End If
    

    
End Function
Public Function PComm32_AxisStatusCheckSimple(Optional ipDeviceNo As Long = 0) As Boolean
    
    On Error Resume Next
    
    Dim rtn_Array As Variant
    
    If PComm32_Init_Flag = False Then Exit Function
    
    PComm32_Response = ""
    'Mx39:Amp Enable
    'Mx41:Warning Following Error
    'Mx42:Fatal Following Error
    'Mx44:Foreground Inposition
    'Mx45:Home Complete
    
    If ipDeviceNo = 0 Then
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, PComm32_AxisStatusSimpleAddr)
        If PComm32_ReturnErrCode <= 0 Then
            UMac_AxisStatusCheckSimple = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 65, vbTextCompare)
        If UBound(rtn_Array) >= 64 Then
            PComm32_AxisStatBit_AmpEna(0) = CInt(rtn_Array(0))
            PComm32_AxisStatBit_WFollowingErr(0) = CInt(rtn_Array(1))
            PComm32_AxisStatBit_FFollowingErr(0) = CInt(rtn_Array(2))
            PComm32_AxisStatBit_InPos(0) = CInt(rtn_Array(3))
            PComm32_AxisStatBit_HomeComplete(0) = CInt(rtn_Array(4))
            
            PComm32_AxisStatBit_AmpEna(1) = CInt(rtn_Array(5))
            PComm32_AxisStatBit_WFollowingErr(1) = CInt(rtn_Array(6))
            PComm32_AxisStatBit_FFollowingErr(1) = CInt(rtn_Array(7))
            PComm32_AxisStatBit_InPos(1) = CInt(rtn_Array(8))
            PComm32_AxisStatBit_HomeComplete(1) = CInt(rtn_Array(9))
            
            PComm32_AxisStatBit_AmpEna(2) = CInt(rtn_Array(10))
            PComm32_AxisStatBit_WFollowingErr(2) = CInt(rtn_Array(11))
            PComm32_AxisStatBit_FFollowingErr(2) = CInt(rtn_Array(12))
            PComm32_AxisStatBit_InPos(2) = CInt(rtn_Array(13))
            PComm32_AxisStatBit_HomeComplete(2) = CInt(rtn_Array(14))
            
            PComm32_AxisStatBit_AmpEna(3) = CInt(rtn_Array(15))
            PComm32_AxisStatBit_WFollowingErr(3) = CInt(rtn_Array(16))
            PComm32_AxisStatBit_FFollowingErr(3) = CInt(rtn_Array(17))
            PComm32_AxisStatBit_InPos(3) = CInt(rtn_Array(18))
            PComm32_AxisStatBit_HomeComplete(3) = CInt(rtn_Array(19))
            
            PComm32_AxisStatBit_AmpEna(4) = CInt(rtn_Array(20))
            PComm32_AxisStatBit_WFollowingErr(4) = CInt(rtn_Array(21))
            PComm32_AxisStatBit_FFollowingErr(4) = CInt(rtn_Array(22))
            PComm32_AxisStatBit_InPos(4) = CInt(rtn_Array(23))
            PComm32_AxisStatBit_HomeComplete(4) = CInt(rtn_Array(24))
            
            PComm32_AxisStatBit_AmpEna(5) = CInt(rtn_Array(25))
            PComm32_AxisStatBit_WFollowingErr(5) = CInt(rtn_Array(26))
            PComm32_AxisStatBit_FFollowingErr(5) = CInt(rtn_Array(27))
            PComm32_AxisStatBit_InPos(5) = CInt(rtn_Array(28))
            PComm32_AxisStatBit_HomeComplete(5) = CInt(rtn_Array(29))
            
            PComm32_AxisStatBit_AmpEna(6) = CInt(rtn_Array(30))
            PComm32_AxisStatBit_WFollowingErr(6) = CInt(rtn_Array(31))
            PComm32_AxisStatBit_FFollowingErr(6) = CInt(rtn_Array(32))
            PComm32_AxisStatBit_InPos(6) = CInt(rtn_Array(33))
            PComm32_AxisStatBit_HomeComplete(6) = CInt(rtn_Array(34))
            
            PComm32_AxisStatBit_AmpEna(7) = CInt(rtn_Array(35))
            PComm32_AxisStatBit_WFollowingErr(7) = CInt(rtn_Array(36))
            PComm32_AxisStatBit_FFollowingErr(7) = CInt(rtn_Array(37))
            PComm32_AxisStatBit_InPos(7) = CInt(rtn_Array(38))
            PComm32_AxisStatBit_HomeComplete(7) = CInt(rtn_Array(39))
            
            PComm32_AxisStatBit_AmpEna(7) = CInt(rtn_Array(40))
            PComm32_AxisStatBit_WFollowingErr(8) = CInt(rtn_Array(41))
            PComm32_AxisStatBit_FFollowingErr(8) = CInt(rtn_Array(42))
            PComm32_AxisStatBit_InPos(8) = CInt(rtn_Array(43))
            PComm32_AxisStatBit_HomeComplete(8) = CInt(rtn_Array(44))
            
            PComm32_AxisStatBit_AmpEna(9) = CInt(rtn_Array(45))
            PComm32_AxisStatBit_WFollowingErr(9) = CInt(rtn_Array(46))
            PComm32_AxisStatBit_FFollowingErr(9) = CInt(rtn_Array(47))
            PComm32_AxisStatBit_InPos(9) = CInt(rtn_Array(48))
            PComm32_AxisStatBit_HomeComplete(9) = CInt(rtn_Array(49))
            
            PComm32_AxisStatBit_AmpEna(10) = CInt(rtn_Array(50))
            PComm32_AxisStatBit_WFollowingErr(10) = CInt(rtn_Array(51))
            PComm32_AxisStatBit_FFollowingErr(10) = CInt(rtn_Array(52))
            PComm32_AxisStatBit_InPos(10) = CInt(rtn_Array(53))
            PComm32_AxisStatBit_HomeComplete(10) = CInt(rtn_Array(54))
            
            PComm32_AxisStatBit_AmpEna(11) = CInt(rtn_Array(55))
            PComm32_AxisStatBit_WFollowingErr(11) = CInt(rtn_Array(56))
            PComm32_AxisStatBit_FFollowingErr(11) = CInt(rtn_Array(57))
            PComm32_AxisStatBit_InPos(11) = CInt(rtn_Array(58))
            PComm32_AxisStatBit_HomeComplete(11) = CInt(rtn_Array(59))
            
            PComm32_AxisStatBit_AmpEna(12) = CInt(rtn_Array(60))
            PComm32_AxisStatBit_WFollowingErr(12) = CInt(rtn_Array(61))
            PComm32_AxisStatBit_FFollowingErr(12) = CInt(rtn_Array(62))
            PComm32_AxisStatBit_InPos(12) = CInt(rtn_Array(63))
            PComm32_AxisStatBit_HomeComplete(12) = CInt(rtn_Array(64))
            
            PComm32_AxisStatusCheckSimple = True
        Else
            PComm32_AxisStatusCheckSimple = False
        End If
    Else
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Cliffer_AxisStatusSimpleAddr)
        If PComm32_ReturnErrCode <= 0 Then
            UMac_AxisStatusCheckSimple = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 10, vbTextCompare)
        If UBound(rtn_Array) >= 9 Then
            Cliffer_AxisStatBit_AmpEna(0) = CInt(rtn_Array(0))
            Cliffer_AxisStatBit_WFollowingErr(0) = CInt(rtn_Array(1))
            Cliffer_AxisStatBit_FFollowingErr(0) = CInt(rtn_Array(2))
            Cliffer_AxisStatBit_InPos(0) = CInt(rtn_Array(3))
            Cliffer_AxisStatBit_HomeComplete(0) = CInt(rtn_Array(4))
            
            Cliffer_AxisStatBit_AmpEna(1) = CInt(rtn_Array(5))
            Cliffer_AxisStatBit_WFollowingErr(1) = CInt(rtn_Array(6))
            Cliffer_AxisStatBit_FFollowingErr(1) = CInt(rtn_Array(7))
            Cliffer_AxisStatBit_InPos(1) = CInt(rtn_Array(8))
            Cliffer_AxisStatBit_HomeComplete(1) = CInt(rtn_Array(9))
            
            PComm32_AxisStatusCheckSimple = True
        Else
            PComm32_AxisStatusCheckSimple = False
        End If
    End If
End Function
Function PComm32_DIN_ReadAll(Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function

    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, PComm32_DIN_Addr)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DIN_ReadAll = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 136, vbTextCompare)
        If UBound(rtn_Array) >= 135 Then
            For i% = 0 To 135
                PComm32_DIN_Bit(i%) = CInt(rtn_Array(i%))
            Next i%
            PComm32_DIN_ReadAll = True
        Else
            PComm32_DIN_ReadAll = False
        End If
    Else
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Cliffer_DIN_Addr)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DIN_ReadAll = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, CLIFFER_IO_CNT, vbTextCompare)
        If UBound(rtn_Array) >= (CLIFFER_IO_CNT - 1) Then
            For i% = 0 To (CLIFFER_IO_CNT - 1)
                Cliffer_DIN_Bit(i%) = CInt(rtn_Array(i%))
            Next i%
            PComm32_DIN_ReadAll = True
        Else
            PComm32_DIN_ReadAll = False
        End If
    End If
    
End Function
Function PComm32_DIN_ReadOneBit(ipBitNo As Integer, Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function
    
    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
        If ipBitNo < 64 Then
            Addr$ = "M" & CStr(4000 + ipBitNo)
        Else
            Addr$ = "M" & CStr(7000 + (ipBitNo - 64))
        End If
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, Addr$)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DIN_ReadOneBit = False
            Exit Function
        Else
            PComm32_DIN_ReadOneBit = True
        End If
        
        If InStr(1, PComm32_Response, "1") <> 0 Then
            PComm32_DIN_Bit(ipBitNo) = 1
        Else
            PComm32_DIN_Bit(ipBitNo) = 0
        End If
    
    Else
        Addr$ = "M" & CStr(4100 + ipBitNo)
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_clifferDeviceID, PComm32_Response, 255, Addr$)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DIN_ReadOneBit = False
            Exit Function
        Else
            PComm32_DIN_ReadOneBit = True
        End If
        
        If InStr(1, PComm32_Response, "1") <> 0 Then
            Cliffer_DIN_Bit(ipBitNo) = 1
        Else
            Cliffer_DIN_Bit(ipBitNo) = 0
        End If

    End If

End Function
Function PComm32_DOUT_ReadAll(Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function

    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
    
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, PComm32_DOUT_Addr)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DOUT_ReadAll = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, 112, vbTextCompare)
        If UBound(rtn_Array) >= 111 Then
            For i% = 0 To 111
                PComm32_DOUT_Bit(i%) = CInt(rtn_Array(i%))
            Next i%
            PComm32_DOUT_ReadAll = True
        Else
            PComm32_DOUT_ReadAll = False
        End If
    Else
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Cliffer_DOUT_Addr)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DOUT_ReadAll = False
            Exit Function
        End If
        
        rtn_Array = Split(PComm32_Response, vbCr, CLIFFER_IO_CNT, vbTextCompare)
        If UBound(rtn_Array) >= (CLIFFER_IO_CNT - 1) Then
            For i% = 0 To (CLIFFER_IO_CNT - 1)
                Cliffer_DOUT_Bit(i%) = CInt(rtn_Array(i%))
            Next i%
            PComm32_DOUT_ReadAll = True
        Else
            PComm32_DOUT_ReadAll = False
        End If

    End If
    
End Function
Function PComm32_DOUT(ipBitNo As Integer, ipBitCase As Integer, Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function

    PComm32_Response = ""
    
    If ipDeviceNo = 0 Then
        If ipBitNo < 64 Then
            Addr$ = "M" & CStr(4100 + ipBitNo) & "=" & CStr(ipBitCase)
        Else
            Addr$ = "M" & CStr(7424 + (ipBitNo - 64)) & "=" & CStr(ipBitCase)
        End If
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, Addr$)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DOUT = False
            Exit Function
        Else
            PComm32_DOUT = True
        End If
    Else
        
        Addr$ = "M" & CStr(4200 + ipBitNo) & "=" & CStr(ipBitCase)
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Addr$)
        If PComm32_ReturnErrCode <= 0 Then
            PComm32_DOUT = False
            Exit Function
        Else
            PComm32_DOUT = True
        End If

    End If
End Function

Public Function PComm32_JogSpdAccScrvSET(ipAxisIndex As Integer, ipSpeed As Double, ipAcc As Double, ipScrv As Double, Optional ipDeviceNo As Long = 0) As Boolean

    If PComm32_Init_Flag = False Then Exit Function

    cts_acc# = ipAcc
    cts_scrv# = ipScrv

    If ipDeviceNo = 0 Then
        cts_speed# = (ipSpeed * (PComm32_Cts_Per_mm(ipAxisIndex) ^ -1)) / 1000

'        If ipAxisIndex = 3 Then
'            cts_speed# = (ipSpeed * (PComm32_Cts_Per_mm(ipAxisIndex) ^ -1)) / 10000
'            If cts_speed# > 300 Then
'                cts_speed# = 300
'            End If
'        End If
    
        out_command$ = ""
        out_command$ = "I" & CStr(PComm32_AxisNo(ipAxisIndex)) & "20=" & Format(cts_acc#, "0") & _
                       "I" & CStr(PComm32_AxisNo(ipAxisIndex)) & "21=" & Format(cts_scrv#, "0") & _
                       "I" & CStr(PComm32_AxisNo(ipAxisIndex)) & "22=" & Format(cts_speed#, "0")
                       
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    Else
                 
        cts_speed# = (ipSpeed * (Cliffer_Cts_Per_mm(ipAxisIndex) ^ -1)) / 1000
    
        out_command$ = ""
        out_command$ = "I" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "20=" & Format(cts_acc#, "0") & _
                       "I" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "21=" & Format(cts_scrv#, "0") & _
                       "I" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "22=" & Format(cts_speed#, "0")
                       
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
    End If
        
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_JogSpdAccScrvSET = False
    Else
        PComm32_JogSpdAccScrvSET = True
    End If
    
End Function
Public Function PComm32_AxisJogStop(ipAxisIndex As Integer, Optional ByVal ipAxisAllFlag As Boolean, Optional ipDeviceNo As Long = 0) As Boolean

    If PComm32_Init_Flag = False Then Exit Function

    out_command$ = ""
    out_command1$ = ""
        
    If ipDeviceNo = 0 Then
        If ipAxisAllFlag = True Then
            For i% = 0 To 12
                out_command$ = out_command$ & "#" & CStr(PComm32_AxisNo(i%)) & "J/" '& vbCrLf
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
                out_command1$ = out_command1$ & "#" & CStr(PComm32_AxisNo(i%)) & "A" '& vbCrLf
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
                Sleep 200
            Next i%
        Else
            out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J/"
            PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
        End If
    Else
        If ipAxisAllFlag = True Then
            For i% = 0 To (CLIFFER_MTR_CNT - 1)
                out_command$ = out_command$ & "#" & CStr(Cliffer_AxisNo(i%)) & "J/" '& vbCrLf
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
                out_command1$ = out_command1$ & "#" & CStr(Cliffer_AxisNo(i%)) & "A" '& vbCrLf
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
                Sleep 200
            Next i%
        Else
            out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J/"
            PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
        End If

    End If
    
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_AxisJogStop = False
    Else
        PComm32_AxisJogStop = True
    End If
    
End Function
Public Function PComm32_AxisJogMove(ipAxisIndex As Integer, ipDirection As Integer, Optional ipDeviceNo As Long = 0) As Boolean

    If PComm32_Init_Flag = False Then Exit Function

    If ipDeviceNo = 0 Then
        If ipDirection > 0 Then
            out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J+"
        Else
            out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J-"
        End If
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    Else
        If ipDirection > 0 Then
            out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J+"
        Else
            out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J-"
        End If
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
    End If
    
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_AxisJogMove = False
    Else
        PComm32_AxisJogMove = True
    End If
    
End Function
Public Function PComm32_AxisJogMotion_Absoute(ipAxisIndex As Integer, ipCoodinate As Double, Optional ipDeviceNo As Long = 0) As Boolean
    '절대위치 이동 조그 이동 지령

    If PComm32_Init_Flag = False Then Exit Function
    
    If ipDeviceNo = 0 Then
        
        PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, 50, 500
    
        'If ipAxisIndex = 3 Then
        '    count_val# = (ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1))) * -1
        'Else
            count_val# = ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1))
        'End If
    '    If PComm32_AxisNo(ipAxisIndex) <> 20 Then
            out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J=" & Format(count_val#, "0")
            PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    '    Else
    '        out_command$ = "#11J=" & Format(count_val#, "0")
    '        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    '        out_command$ = "#12J=" & Format(count_val#, "0")
    '        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    '    End If

    Else
        
        If ipAxisIndex = Cliffer_HdtAxis Then
            count_val# = (gPrintPara.dTeachHeadZero_Degree - ipCoodinate) * (Cliffer_Cts_Per_mm(ipAxisIndex) ^ (-1))
        Else
            count_val# = ipCoodinate * (Cliffer_Cts_Per_mm(ipAxisIndex) ^ (-1))
        End If
        
        out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J=" & Format(count_val#, "0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
    End If
        
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_AxisJogMotion_Absoute = False
    Else
        PComm32_AxisJogMotion_Absoute = True
    End If
    
End Function
Public Function PComm32_AxisJogMotion_Relactive(ipAxisIndex As Integer, ipCoodinate As Double, ipDirection As Integer, Optional ipDeviceNo As Long = 0) As Boolean
    '현재위치 기준으로 입력위치량 만큼 조그 이동 지령

    If PComm32_Init_Flag = False Then Exit Function
    
    If ipDeviceNo = 0 Then
        If ipAxisIndex = 3 Then
            count_val# = (ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection) * -1
        Else
            count_val# = ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection
        End If
        
        out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J^" & Format(count_val#, "0")
    
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    Else
        
        count_val# = ipCoodinate * (Cliffer_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection
        out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J^" & Format(count_val#, "0")
    
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)
    End If
    
    
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_AxisJogMotion_Relactive = False
    Else
        PComm32_AxisJogMotion_Relactive = True
    End If
    
End Function

Public Function PComm32_AxisJogMotion_Step(ipAxisIndex As Integer, ipCoodinate As Double, ipDirection As Integer, Optional ipDeviceNo As Long = 0) As Boolean
    '이전(완료전 명령일지라도)지령위치 기준으로 입력위치량 만큼 조그 이동 지령

    If PComm32_Init_Flag = False Then Exit Function
   
    If ipDeviceNo = 0 Then
        'If ipAxisIndex = 3 Then
        '    count_val# = (ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection) * -1
        'Else
            count_val# = ipCoodinate * (PComm32_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection
        'End If
        
        out_command$ = "#" & CStr(PComm32_AxisNo(ipAxisIndex)) & "J:" & Format(count_val#, "0")
    
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, out_command$)
    Else
    
        count_val# = ipCoodinate * (Cliffer_Cts_Per_mm(ipAxisIndex) ^ (-1)) * ipDirection
        out_command$ = "#" & CStr(Cliffer_AxisNo(ipAxisIndex)) & "J:" & Format(count_val#, "0")
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, out_command$)

    End If
    
    If PComm32_ReturnErrCode <= 0 Then
        PComm32_AxisJogMotion_Step = False
    Else
        PComm32_AxisJogMotion_Step = True
    End If
    
End Function

Function Get_ADCVAlue(Optional ipDeviceNo As Long = 0) As Boolean

    Dim rtn_Array As Variant

    If PComm32_Init_Flag = False Then Exit Function

    PComm32_Response = ""
    
    If ipDeviceNo = 1 Then
        
        Addr$ = "M105M205"
        
        PComm32_ReturnErrCode = PmacGetResponseA(PComm32_ClifferID, PComm32_Response, 255, Addr$)
        If PComm32_ReturnErrCode <= 0 Then
            Get_ADCVAlue = False
            Exit Function
        Else
            rtn_Array = Split(PComm32_Response, vbCr, 40, vbTextCompare)
            gPrintPara.dGet_ADCValue(0) = CDbl(rtn_Array(0))
            gPrintPara.dGet_ADCValue(1) = CDbl(rtn_Array(1))
            Get_ADCVAlue = True
        End If
    End If
End Function

Function Set_MaintSylinder(ByVal ipSylinder As MainSylinderStatus) As Boolean

On Error GoTo syserr
    If ipSylinder = Forward_MSylinder Then
        PComm32_DOUT oSg_Cliffer_Maint_FW, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_Maint_BW, 0, PComm32_ClifferID
    Else
        PComm32_DOUT oSg_Cliffer_Maint_FW, 0, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_Maint_BW, 1, PComm32_ClifferID
    End If
    
    Set_MaintSylinder = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_MaintSylinder = False
End Function

Function Set_DropWatcherSylinder(ByVal ipSylinder As DropWatcherSylinderStatus) As Boolean
On Error GoTo syserr
    
    If ipSylinder = Up_Sylinder Then
        PComm32_DOUT oSg_Cliffer_DW_Up, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_DW_Down, 0, PComm32_ClifferID
    ElseIf ipSylinder = Down_Sylinder Then
        PComm32_DOUT oSg_Cliffer_DW_Up, 0, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_DW_Down, 1, PComm32_ClifferID
    ElseIf ipSylinder = Forward_Sylinder Then
        PComm32_DOUT oSg_Cliffer_DW_FW, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_DW_BW, 0, PComm32_ClifferID
    ElseIf ipSylinder = Backward_Sylinder Then
        PComm32_DOUT oSg_Cliffer_DW_FW, 0, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_DW_BW, 1, PComm32_ClifferID
    Else
        Set_DropWatcherSylinder = False
        Exit Function
    End If
    Set_DropWatcherSylinder = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_DropWatcherSylinder = False
End Function

Function Set_MaintCupPressure(ByVal ipChannelNo As MaintChannelNo, ByVal ipPressure As MaintCupPressureStatus) As Boolean
On Error GoTo syserr
    
    Dim nSetAddr_on As Integer
    Dim nSetAddr_off As Integer
    
    If ipChannelNo = Q_Head_Maint Then
        If ipPressure = Vacuum Then
            nSetAddr_on = oSg_Cliffer_Maint_1_Vacuum
            nSetAddr_off = oSg_Cliffer_Maint_1_Exhaust
        ElseIf ipPressure = Exhaust Then
            nSetAddr_on = oSg_Cliffer_Maint_1_Exhaust
            nSetAddr_off = oSg_Cliffer_Maint_1_Vacuum
        Else
            PComm32_DOUT oSg_Cliffer_Maint_1_Exhaust, 0, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_Maint_1_Vacuum, 0, PComm32_ClifferID
            
            Set_MaintCupPressure = True
            Exit Function
        End If
    ElseIf ipChannelNo = KM_Head_1_Maint Then
        If ipPressure = Vacuum Then
            nSetAddr_on = oSg_Cliffer_Maint_2_Vacuum
            nSetAddr_off = oSg_Cliffer_Maint_2_Exhaust
        ElseIf ipPressure = Exhaust Then
            nSetAddr_on = oSg_Cliffer_Maint_2_Exhaust
            nSetAddr_off = oSg_Cliffer_Maint_2_Vacuum
        Else
            PComm32_DOUT oSg_Cliffer_Maint_2_Exhaust, 0, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_Maint_2_Vacuum, 0, PComm32_ClifferID
            
            Set_MaintCupPressure = True
            Exit Function
        End If
    ElseIf ipChannelNo = KM_Head_2_Maint Then
        If ipPressure = Vacuum Then
            nSetAddr_on = oSg_Cliffer_Maint_3_Vacuum
            nSetAddr_off = oSg_Cliffer_Maint_3_Exhaust
        ElseIf ipPressure = Exhaust Then
            nSetAddr_on = oSg_Cliffer_Maint_3_Exhaust
            nSetAddr_off = oSg_Cliffer_Maint_3_Vacuum
        Else
            PComm32_DOUT oSg_Cliffer_Maint_3_Exhaust, 0, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_Maint_3_Vacuum, 0, PComm32_ClifferID
            
            Set_MaintCupPressure = True
            Exit Function
        End If
    Else
        MsgBox "Channel No is wrong.", vbExclamation
        Set_MaintCupPressure = False
        Exit Function
    End If
    
    PComm32_DOUT nSetAddr_on, 1, PComm32_ClifferID
    PComm32_DOUT nSetAddr_off, 0, PComm32_ClifferID
    
    Set_MaintCupPressure = True
    
Exit Function
syserr:
    MsgBox Err.Description
    Set_MaintCupPressure = False
End Function

'// 0: Meniscus / 1: Purge
Function Set_KMTankMode(ByVal ipMode As KM_TankMode) As Boolean
On Error GoTo syserr
    If ipMode = Meniscus_KM Then
        PComm32_DOUT oSg_Cliffer_KM_TankPresMode, 0, PComm32_ClifferID
    ElseIf ipMode = Purge_KM Then
        PComm32_DOUT oSg_Cliffer_KM_TankPresMode, 1, PComm32_ClifferID
    Else
        Set_KMTankMode = False
        Exit Function
    End If
    Set_KMTankMode = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_KMTankMode = False
End Function

Function Set_KMSettingTank(ByVal ipTankNo As KM_SettingTank, ByVal ipOn As Boolean) As Boolean
On Error GoTo syserr
    If ipTankNo = KM_Head_1 Then
        If ipOn = True Then
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_1, 1, PComm32_ClifferID
        Else
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_1, 0, PComm32_ClifferID
        End If
    ElseIf ipTankNo = KM_Head_2 Then
        If ipOn = True Then
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_2, 1, PComm32_ClifferID
        Else
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_2, 0, PComm32_ClifferID
        End If
    ElseIf ipTankNo = KM_Both Then
        If ipOn = True Then
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_1, 1, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_2, 1, PComm32_ClifferID
        Else
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_1, 0, PComm32_ClifferID
            PComm32_DOUT oSg_Cliffer_KM_Tank_Head_2, 0, PComm32_ClifferID
        End If
    Else
        Set_KMSettingTank = False
        Exit Function
    End If
    
    Set_KMSettingTank = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_KMSettingTank = False
End Function

Function Set_StrobeSwitch(ByVal ipStrobeSwitch As StrobeSwitch) As Boolean
On Error GoTo syserr
    If ipStrobeSwitch = Q_Head Then
        PComm32_DOUT oSg_Cliffer_Strobe_Mode, 1, PComm32_ClifferID
    Else
        PComm32_DOUT oSg_Cliffer_Strobe_Mode, 0, PComm32_ClifferID
    End If
    
    Set_StrobeSwitch = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_StrobeSwitch = False
End Function

Function Set_MaintRoll(ByVal ipRoll As MaintRollChannel, ByVal ipOn As Boolean) As Boolean
On Error GoTo syserr
    If ipRoll = Stop_Roll Then
        PComm32_DOUT oSg_Cliffer_Roll_1, 0, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_Roll_2, 0, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_Roll_3, 0, PComm32_ClifferID
    ElseIf ipRoll = Roll_1 Then
        PComm32_DOUT oSg_Cliffer_Roll_1, 1, PComm32_ClifferID
    ElseIf ipRoll = Roll_2 Then
        PComm32_DOUT oSg_Cliffer_Roll_2, 1, PComm32_ClifferID
    ElseIf ipRoll = Roll_3 Then
        PComm32_DOUT oSg_Cliffer_Roll_3, 1, PComm32_ClifferID
    Else
        Set_MaintRoll = False
        Exit Function
    End If
    
    Set_MaintRoll = True
Exit Function
syserr:
    MsgBox Err.Description
    Set_MaintRoll = False
End Function

Function Reset_KMThetaMotor(ByVal ipResetChannelNo As Integer) As Boolean
On Error GoTo syserr
    If ipResetChannelNo = 0 Then
        PComm32_DOUT oSg_Cliffer_Reset_Theta_1, 1, PComm32_ClifferID
        Call DelayWait(4, True)
        PComm32_DOUT oSg_Cliffer_Reset_Theta_1, 0, PComm32_ClifferID
    ElseIf ipResetChannelNo = 1 Then
        PComm32_DOUT oSg_Cliffer_Reset_Theta_2, 1, PComm32_ClifferID
        Call DelayWait(4, True)
        PComm32_DOUT oSg_Cliffer_Reset_Theta_2, 0, PComm32_ClifferID
    Else
        Reset_KMThetaMotor = False
        Exit Function
    End If
    Reset_KMThetaMotor = True
Exit Function
syserr:
    MsgBox Err.Description
    Reset_KMThetaMotor = False
End Function

Function Check_DropWatcherUpStatus() As Boolean

On Error GoTo syserr
    
    Call PComm32_DelayWait_TimeCheck(True)
        
    Do
        Call PComm32_DIN_ReadAll(1)
        If PComm32_DelayWait_TimeCheck(False) > 5 Then
            Call PComm32_DelayWait_TimeCheck(True)
            Check_DropWatcherUpStatus = False
            Exit Function
        End If
    Loop Until ((Cliffer_DIN_Bit(29) = 0) And (Cliffer_DIN_Bit(30) = 1))
    
    Call PComm32_DelayWait_TimeCheck(True)
    
    Check_DropWatcherUpStatus = True
Exit Function
syserr:
    MsgBox Err.Description
    Check_DropWatcherUpStatus = False
End Function

Function Init_SylinderPos()
On Error GoTo syserr
    
    Call Set_MaintSylinder(Forward_MSylinder)
    Call Set_DropWatcherSylinder(Down_Sylinder)
    Call Set_DropWatcherSylinder(Backward_Sylinder)
    Call Set_MaintCupPressure(KM_Head_1_Maint, Close_valve)
    Call Set_MaintCupPressure(KM_Head_2_Maint, Close_valve)
    Call Set_MaintCupPressure(Q_Head_Maint, Close_valve)
    Call Set_KMTankMode(Meniscus_KM)
    
    Call Set_MaintRoll(Stop_Roll, False)
    
    If g_nHeadType = nKM Then
        Call Set_KMSettingTank(KM_Both, True)
        Call Set_StrobeSwitch(KM_Head)
    Else
        Call Set_KMSettingTank(KM_Both, False)
        Call Set_StrobeSwitch(Q_Head)
    End If
    
    Init_SylinderPos = True
Exit Function
syserr:
    MsgBox Err.Description
    Init_SylinderPos = False
End Function


'// TEST GitHub
