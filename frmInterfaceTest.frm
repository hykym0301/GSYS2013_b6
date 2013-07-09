VERSION 5.00
Begin VB.Form frmInterfaceTest 
   Caption         =   "Unit Test"
   ClientHeight    =   10770
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11475
   Icon            =   "frmInterfaceTest.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   10770
   ScaleWidth      =   11475
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Timer Timer_Temp 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1230
      Top             =   3045
   End
   Begin VB.CommandButton cmdInitADLink 
      Caption         =   "Init ADLink"
      Height          =   885
      Left            =   30
      TabIndex        =   58
      Top             =   9255
      Width           =   2280
   End
   Begin VB.CommandButton cmdInituMac 
      Caption         =   "Init uMac"
      Height          =   885
      Left            =   180
      TabIndex        =   57
      Top             =   675
      Width           =   2280
   End
   Begin VB.CommandButton cmdInitNX4 
      Caption         =   "Init NX4"
      Height          =   885
      Left            =   75
      TabIndex        =   56
      Top             =   4890
      Width           =   2280
   End
   Begin VB.CommandButton cmdInitRevolver 
      Caption         =   "Init Revolver"
      Height          =   885
      Left            =   75
      TabIndex        =   55
      Top             =   7155
      Width           =   2280
   End
   Begin VB.Frame Frame9 
      Caption         =   "Cliffer IO - Output"
      Enabled         =   0   'False
      Height          =   1950
      Left            =   5675
      TabIndex        =   13
      Top             =   585
      Width           =   2940
      Begin VB.CheckBox chkOut 
         Caption         =   "Head Z-Axis Brake On/Off"
         Height          =   420
         Index           =   4
         Left            =   240
         TabIndex        =   18
         Top             =   1365
         Width           =   2460
      End
      Begin VB.CheckBox chkOut 
         Caption         =   "Head Heater On/Off"
         Height          =   180
         Index           =   3
         Left            =   240
         TabIndex        =   17
         Top             =   1110
         Width           =   2460
      End
      Begin VB.CheckBox chkOut 
         Caption         =   "Reservior Heater On/Off"
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   16
         Top             =   855
         Width           =   2460
      End
      Begin VB.CheckBox chkOut 
         Caption         =   "Buzzer On/Off"
         Height          =   180
         Index           =   1
         Left            =   240
         TabIndex        =   15
         Top             =   600
         Width           =   1995
      End
      Begin VB.CheckBox chkOut 
         Caption         =   "솔밴트 펌프 On/OFF"
         Height          =   180
         Index           =   0
         Left            =   240
         TabIndex        =   14
         Top             =   330
         Width           =   1995
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "LED(ADLink)"
      Enabled         =   0   'False
      Height          =   1440
      Left            =   2580
      TabIndex        =   7
      Top             =   9180
      Width           =   3510
      Begin VB.CommandButton cmdLightVolumn 
         Caption         =   "Light Max"
         Height          =   405
         Left            =   2190
         TabIndex        =   63
         Top             =   795
         Width           =   1155
      End
      Begin VB.CommandButton cmdLightOn 
         Caption         =   "Light Min"
         Height          =   405
         Left            =   2175
         TabIndex        =   62
         Top             =   345
         Width           =   1155
      End
      Begin VB.HScrollBar HScroll_Light 
         Height          =   315
         Left            =   375
         TabIndex        =   54
         Top             =   885
         Width           =   1680
      End
      Begin VB.Label lblLightVolumn 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   180
         Left            =   1155
         TabIndex        =   64
         Top             =   480
         Width           =   90
      End
   End
   Begin VB.Frame Frame7 
      Caption         =   "Review Z축"
      Enabled         =   0   'False
      Height          =   1965
      Left            =   8740
      TabIndex        =   6
      Top             =   570
      Width           =   2565
      Begin VB.CommandButton cmdMoveAbs_RZ 
         Caption         =   "Move Abs"
         Height          =   285
         Left            =   960
         TabIndex        =   53
         Top             =   1530
         Width           =   1455
      End
      Begin VB.TextBox txtMoveAbsDist_RZ 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   135
         TabIndex        =   52
         Text            =   "0"
         Top             =   1530
         Width           =   690
      End
      Begin VB.CommandButton cmdRelMove_RZ 
         Caption         =   "Move Rel"
         Height          =   330
         Left            =   960
         TabIndex        =   51
         Top             =   1080
         Width           =   1455
      End
      Begin VB.TextBox txtMoveRelDist_RZ 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   135
         TabIndex        =   50
         Text            =   "0"
         Top             =   1095
         Width           =   690
      End
      Begin VB.CommandButton cmdDownHeadRZ 
         Caption         =   "▼"
         Height          =   315
         Left            =   1905
         TabIndex        =   49
         Top             =   585
         Width           =   405
      End
      Begin VB.CommandButton cmdUpHeadRZ 
         Caption         =   "▲"
         Height          =   315
         Left            =   1905
         TabIndex        =   48
         Top             =   225
         Width           =   405
      End
      Begin VB.CommandButton cmdOrgReviewZ 
         Caption         =   "Review Z축 원점"
         Height          =   525
         Left            =   180
         TabIndex        =   47
         Top             =   240
         Width           =   1560
      End
      Begin VB.Label lblStatus 
         AutoSize        =   -1  'True
         Caption         =   "--"
         Height          =   180
         Left            =   225
         TabIndex        =   59
         Top             =   840
         Width           =   180
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Capping 솔밴트"
      Enabled         =   0   'False
      Height          =   1980
      Left            =   2610
      TabIndex        =   5
      Top             =   2610
      Width           =   2940
      Begin VB.CheckBox chkPumpOnOff 
         Caption         =   "--"
         Height          =   465
         Left            =   585
         Style           =   1  '그래픽
         TabIndex        =   45
         Top             =   720
         Width           =   1485
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "1: Pump On, 2: Pump Off"
         Height          =   180
         Left            =   285
         TabIndex        =   46
         Top             =   405
         Width           =   2115
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "공압라인"
      Enabled         =   0   'False
      Height          =   1455
      Left            =   6270
      TabIndex        =   4
      Top             =   9165
      Width           =   2280
      Begin VB.CheckBox cmdMeniscusAndPurge 
         Caption         =   "--"
         Height          =   465
         Left            =   390
         Style           =   1  '그래픽
         TabIndex        =   43
         Top             =   810
         Width           =   1485
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "1: Purge, 2: Meniscus"
         Height          =   180
         Left            =   165
         TabIndex        =   44
         Top             =   405
         Width           =   1875
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "NX4(한영넉스)"
      Enabled         =   0   'False
      Height          =   2085
      Left            =   2580
      TabIndex        =   3
      Top             =   4815
      Width           =   4365
      Begin VB.TextBox txtReserviorTemp 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   300
         Left            =   570
         TabIndex        =   42
         Text            =   "25"
         Top             =   1515
         Width           =   630
      End
      Begin VB.CommandButton cmdSet_ReserviorTemp 
         Caption         =   "Reservior 온도 설정"
         Height          =   345
         Left            =   1635
         TabIndex        =   41
         Top             =   1455
         Width           =   1995
      End
      Begin VB.TextBox txtHeadTemp 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   300
         Left            =   585
         TabIndex        =   40
         Text            =   "25"
         Top             =   1065
         Width           =   630
      End
      Begin VB.CommandButton cmdSet_HeadTemp 
         Caption         =   "헤드 온도 설정"
         Height          =   345
         Left            =   1620
         TabIndex        =   39
         Top             =   1020
         Width           =   1995
      End
      Begin VB.CommandButton cmdRead_NX4 
         Caption         =   "Read"
         Height          =   465
         Left            =   150
         TabIndex        =   37
         Top             =   300
         Width           =   1215
      End
      Begin VB.Label lblCurTemp 
         AutoSize        =   -1  'True
         Caption         =   "Head:25도 / Reservior:25도"
         Height          =   180
         Left            =   1575
         TabIndex        =   38
         Top             =   435
         Width           =   2280
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Revolver(Parker)"
      Enabled         =   0   'False
      Height          =   1965
      Left            =   2565
      TabIndex        =   2
      Top             =   7080
      Width           =   3930
      Begin VB.ListBox List_RevolverCom 
         Height          =   1500
         Left            =   1980
         TabIndex        =   36
         Top             =   330
         Width           =   1860
      End
      Begin VB.CommandButton cmdMove_x10 
         Caption         =   "x10"
         Height          =   465
         Left            =   225
         TabIndex        =   35
         Top             =   1395
         Width           =   1590
      End
      Begin VB.CommandButton cmdMove_x2 
         Caption         =   "x2"
         Height          =   465
         Left            =   225
         TabIndex        =   34
         Top             =   870
         Width           =   1590
      End
      Begin VB.CommandButton cmdHome_Revolver 
         Caption         =   "Home"
         Height          =   465
         Left            =   225
         TabIndex        =   33
         Top             =   345
         Width           =   1590
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Cliffer Motion"
      Enabled         =   0   'False
      Height          =   1965
      Left            =   5685
      TabIndex        =   1
      Top             =   2610
      Width           =   5625
      Begin VB.CommandButton cmdMoveAbs_Theta 
         Caption         =   "Move Abs"
         Height          =   285
         Left            =   3840
         TabIndex        =   32
         Top             =   1440
         Width           =   1455
      End
      Begin VB.TextBox txtMoveAbsDist_Theta 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   3015
         TabIndex        =   31
         Text            =   "0"
         Top             =   1440
         Width           =   690
      End
      Begin VB.CommandButton cmdRelMove_Theta 
         Caption         =   "Move Rel"
         Height          =   330
         Left            =   3840
         TabIndex        =   30
         Top             =   990
         Width           =   1455
      End
      Begin VB.TextBox txtMoveRelDist_Theta 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   3015
         TabIndex        =   29
         Text            =   "0"
         Top             =   1005
         Width           =   690
      End
      Begin VB.CommandButton cmdMoveAbs_Z 
         Caption         =   "Move Abs"
         Height          =   285
         Left            =   1065
         TabIndex        =   28
         Top             =   1455
         Width           =   1455
      End
      Begin VB.TextBox txtMoveAbsDist_Z 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   240
         TabIndex        =   27
         Text            =   "0"
         Top             =   1455
         Width           =   690
      End
      Begin VB.CommandButton cmdRightHeadT 
         Caption         =   "▶"
         Height          =   315
         Left            =   4980
         TabIndex        =   26
         Top             =   315
         Width           =   405
      End
      Begin VB.CommandButton cmdLeftHeadT 
         Caption         =   "◀"
         Height          =   315
         Left            =   4470
         TabIndex        =   25
         Top             =   315
         Width           =   405
      End
      Begin VB.CommandButton cmdRelMove_Z 
         Caption         =   "Move Rel"
         Height          =   330
         Left            =   1065
         TabIndex        =   24
         Top             =   1005
         Width           =   1455
      End
      Begin VB.CommandButton cmdDownHeadZ 
         Caption         =   "▼"
         Height          =   315
         Left            =   1785
         TabIndex        =   23
         Top             =   570
         Width           =   405
      End
      Begin VB.CommandButton cmdUpHeadZ 
         Caption         =   "▲"
         Height          =   315
         Left            =   1785
         TabIndex        =   22
         Top             =   210
         Width           =   405
      End
      Begin VB.TextBox txtMoveRelDist_Z 
         Alignment       =   1  '오른쪽 맞춤
         Height          =   285
         Left            =   240
         TabIndex        =   21
         Text            =   "0"
         Top             =   1020
         Width           =   690
      End
      Begin VB.CommandButton cmdOrgHeadTheta 
         Caption         =   "Head Theta축 원점"
         Height          =   510
         Left            =   2910
         TabIndex        =   20
         Top             =   255
         Width           =   1455
      End
      Begin VB.CommandButton cmdOrgHeadZ 
         Caption         =   "Head Z축 원점"
         Height          =   525
         Left            =   195
         TabIndex        =   19
         Top             =   210
         Width           =   1455
      End
      Begin VB.Label lblHeadTheta 
         AutoSize        =   -1  'True
         Caption         =   "--"
         Height          =   180
         Left            =   2925
         TabIndex        =   61
         Top             =   780
         Width           =   1920
      End
      Begin VB.Label lblHeadZ 
         AutoSize        =   -1  'True
         Caption         =   "--"
         Height          =   180
         Left            =   240
         TabIndex        =   60
         Top             =   795
         Width           =   1395
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Cliffer I/O - Input"
      Enabled         =   0   'False
      Height          =   1950
      Left            =   2610
      TabIndex        =   0
      Top             =   585
      Width           =   2940
      Begin VB.CheckBox chkIn 
         Caption         =   "Head Z-Axis Brake On Status"
         Height          =   360
         Index           =   4
         Left            =   225
         TabIndex        =   12
         Top             =   1485
         Width           =   2445
      End
      Begin VB.CheckBox chkIn 
         Caption         =   "DIO SMPS Status Normal"
         Height          =   180
         Index           =   3
         Left            =   225
         TabIndex        =   11
         Top             =   1185
         Width           =   2445
      End
      Begin VB.CheckBox chkIn 
         Caption         =   "Emergency Off Switch"
         Height          =   180
         Index           =   2
         Left            =   225
         TabIndex        =   10
         Top             =   900
         Width           =   2205
      End
      Begin VB.CheckBox chkIn 
         Caption         =   "Reserve"
         Height          =   180
         Index           =   1
         Left            =   225
         TabIndex        =   9
         Top             =   615
         Width           =   1845
      End
      Begin VB.CheckBox chkIn 
         Caption         =   "System Power On"
         Height          =   180
         Index           =   0
         Left            =   225
         TabIndex        =   8
         Top             =   315
         Width           =   1845
      End
   End
End
Attribute VB_Name = "frmInterfaceTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub chkOut_Click(Index As Integer)
    
    Dim nBit As Integer
    nBit = chkOut(Index).Value
    
    If PComm32_DOUT(Index, nBit, 1) = False Then
        'MsgBox "Output Fail..."
    End If
    
End Sub

Private Sub chkPumpOnOff_Click()
        
    PComm32_DOUT oSg_Cliffer_SolventPump, chkPumpOnOff.Value, PComm32_ClifferID

End Sub

Private Sub cmdInitADLink_Click()

If PCI7230_Init_OK = False Then
    Call PCI7230INIT(3): 'OutputDebugString "ADLINK PCI-7230 INIT완료"
End If

    Frame5.Enabled = True
    Frame8.Enabled = True
    
End Sub

Private Sub cmdInitNX4_Click()

If NX4.InitNX4(MDI_Main.MSComm_NX4, 3) = False Then
    MsgBox "NX4 오픈 실패..."
Else
    Frame4.Enabled = True
End If

End Sub

Private Sub cmdInitRevolver_Click()

If Revolver.InitRevolver(MDI_Main.MSComm_Parker) = False Then
    MsgBox "Revolver 오픈 실패..."
Else
    Frame3.Enabled = True
End If

End Sub

Private Sub cmdInituMac_Click()

 If PComm32_Init(False, True) = False Then
    MsgBox "uMac 초기화 실패..."
 Else
    Frame1.Enabled = True
    Frame2.Enabled = True
    Frame6.Enabled = True
    Frame7.Enabled = True
    Frame9.Enabled = True
 End If
 
End Sub

Private Sub cmdLightOn_Click()

rtnErrCode% = DO_WritePort(ptrCardID(2), 2, 1027)

End Sub

Private Sub cmdLightVolumn_Click()

rtnErrCode% = DO_WritePort(ptrCardID(2), 2, 2047)

End Sub

Private Sub cmdMeniscusAndPurge_Click()

If cmdMeniscusAndPurge.Value = 1 Then
    Call INK_Supply.Purge
Else
    Call INK_Supply.Meniscus
End If

End Sub

Private Sub cmdMove_x10_Click()

Call Revolver.SelectLens(MDI_Main.MSComm_Parker, 2)

End Sub

Private Sub cmdMove_x2_Click()

Call Revolver.SelectLens(MDI_Main.MSComm_Parker, 1)

End Sub

Private Sub cmdMoveAbs_RZ_Click()
        
    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_HdZAxis)

    If IsNumeric(Me.txtMoveAbsDist_RZ.Text) = False Then Exit Sub
    
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_RvZAxis, CDbl(Me.txtMoveAbsDist_RZ.Text)

End Sub

Private Sub cmdOrgHeadTheta_Click()

Call PComm32_OriginRunning(Cliffer_HdtAxis, 1)

End Sub

Private Sub cmdOrgHeadZ_Click()

PComm32_DOUT oSm_Cliffer_HeadZ_Brake, 1, PComm32_ClifferID

Call PComm32_OriginRunning(Cliffer_HdzAxis, 1)

End Sub

Private Sub cmdOrgReviewZ_Click()

Call PComm32_OriginRunning(PComm32_RvZAxis)

Me.Timer_Temp.Enabled = True

End Sub

Private Sub cmdRead_NX4_Click()
Dim dValue As Double
Dim strMsg As String

dValue = NX4.Send_DRR(MDI_Main.MSComm_NX4, 1, 1, 1)

'strMsg = "Head:25도 / Reservior:25도"
strMsg = "Head: " & Format(dValue, "0.0") & "도 / "

dValue = NX4.Send_DRR(MDI_Main.MSComm_NX4, 2, 1, 1)
strMsg = strMsg & "Reservior: " & Format(dValue, "0.0") & "도"

Me.lblCurTemp.Caption = strMsg

End Sub

Private Sub cmdSet_HeadTemp_Click()

    Dim lngValue As Long
    
    lngValue = Val(Me.txtHeadTemp.Text)
    
    Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 1, 1, 301, lngValue)
End Sub

Private Sub cmdSet_ReserviorTemp_Click()
   Dim lngValue As Long
    
   lngValue = Val(Me.txtHeadTemp.Text)
    
   Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 2, 1, 301, lngValue)
   
End Sub

Private Sub cmdUpHeadRZ_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
    
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    PComm32_AxisJogMove PComm32_RvZAxis, -1
End Sub

Private Sub cmdUpHeadRZ_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_RvZAxis, False
End Sub

Private Sub cmdDownHeadRZ_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
    
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    PComm32_AxisJogMove PComm32_RvZAxis, 1
End Sub

Private Sub cmdDownHeadRZ_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_RvZAxis, False
End Sub

Private Sub cmdUpHeadZ_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), 1
    PComm32_AxisJogMove Cliffer_HdzAxis, -1, 1
End Sub

Private Sub cmdUpHeadZ_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdzAxis, False, 1
End Sub

Private Sub cmdDownHeadZ_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(PComm32_RvZAxis)
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), 1
    PComm32_AxisJogMove Cliffer_HdzAxis, 1, 1
End Sub

Private Sub cmdDownHeadZ_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdzAxis, False, 1
End Sub

Private Sub cmdRightHeadT_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)
    
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), 1
    PComm32_AxisJogMove Cliffer_HdtAxis, 1, 1
End Sub

Private Sub cmdRightHeadT_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdtAxis, False, 1
End Sub

Private Sub cmdLeftHeadT_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    ip_z_axis_speed# = 10
    
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), 1
    PComm32_AxisJogMove Cliffer_HdtAxis, -1, 1
End Sub

Private Sub cmdLeftHeadT_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdtAxis, False, 1
End Sub

Private Sub cmdMoveAbs_Z_Click()
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)

    If IsNumeric(Me.txtMoveAbsDist_Z.Text) = False Then Exit Sub
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), 1
    
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, CDbl(Me.txtMoveAbsDist_Z.Text), 1
End Sub

Private Sub cmdMoveAbs_Theta_Click()
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)

    If IsNumeric(Me.txtMoveAbsDist_Theta.Text) = False Then Exit Sub
    
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), 1
    
    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, CDbl(Me.txtMoveAbsDist_Theta.Text), 1
End Sub


Private Sub Form_Load()

    Frame5.Enabled = PCI7230_Init_OK
    Frame8.Enabled = PCI7230_Init_OK
    
    HScroll_Light.Min = 0
    HScroll_Light.Max = 255
    
    If MDI_Main.MSComm_Parker.PortOpen = True Then
        Frame3.Enabled = True
    End If
    
    If MDI_Main.MSComm_NX4.PortOpen = True Then
        Frame4.Enabled = True
    End If
    
    If PComm32_Init_Flag = True Then
        Frame1.Enabled = True
        Frame2.Enabled = True
        Frame6.Enabled = True
        Frame7.Enabled = True
        Frame9.Enabled = True
        
        Me.Timer_Temp.Enabled = True
    End If
    
End Sub


Private Sub HScroll_Light_Change()

'Call PCI7230_OutSignal(2, Index, chkADLink_Out(Index).Value)

lblLightVolumn.Caption = Me.HScroll_Light.Value

Call PCI7230.Set_LightVolumn(Me.HScroll_Light.Value)

End Sub

Private Sub HScroll_Light_Scroll()

Dim nValue As Integer

lblLightVolumn.Caption = Me.HScroll_Light.Value

Call PCI7230.Set_LightVolumn(Me.HScroll_Light.Value)

End Sub

Private Sub Timer_Temp_Timer()

    Dim strPos As String
    
    Dim rtn_Bool As Boolean
    PComm32_OriginConfirm PComm32_RvZAxis, rtn_Bool
       
    If rtn_Bool = True Then
        Call PComm32_PositionReadOneAxis(PComm32_RvZAxis)
        

    Else
        lblStatus.Caption = "Origin ~ing"
    End If
    
    Call PComm32_PositionReadAllAxis(0)
    Call PComm32_PositionReadAllAxis(1)
    
    strPos = Format(PComm32_Position_mm(PComm32_RvZAxis), "0.000")
    lblStatus.Caption = strPos & "mm"
    strPos = Format(Cliffer_Position_mm(Cliffer_HdzAxis), "0.000")
    Me.lblHeadZ.Caption = strPos & "mm"
    strPos = Format(Cliffer_Position_mm(Cliffer_HdtAxis), "0.000")
    Me.lblHeadTheta.Caption = strPos & "도"
        
    Call PComm32_DIN_ReadAll(1)
    
    For i% = 0 To CLIFFER_IO_CNT Step 1
        If i% <= 4 Then
            Me.chkIn(i%).Value = Cliffer_DIN_Bit(i%)
        End If
    Next i%

End Sub
