VERSION 5.00
Begin VB.Form frmBalancerPos 
   BorderStyle     =   1  '단일 고정
   Caption         =   "저울측정 Position"
   ClientHeight    =   2325
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5670
   Icon            =   "frmBalancerPos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2325
   ScaleWidth      =   5670
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton cmdGetPos 
      Caption         =   "Get Position"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   4275
      Picture         =   "frmBalancerPos.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   14
      Top             =   75
      Width           =   1290
   End
   Begin VB.CommandButton cmdViewPadant 
      Caption         =   "Pendant"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   4260
      Picture         =   "frmBalancerPos.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   13
      Top             =   810
      Width           =   1290
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   4275
      Picture         =   "frmBalancerPos.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   12
      Top             =   1545
      Width           =   1290
   End
   Begin VB.TextBox txtBl_AxisY 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1590
      TabIndex        =   9
      Text            =   "000.0000"
      Top             =   1185
      Width           =   2220
   End
   Begin VB.TextBox txtBl_PosStageX 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1590
      TabIndex        =   2
      Text            =   "000.0000"
      Top             =   60
      Width           =   2220
   End
   Begin VB.TextBox txtBl_PosStageY 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1590
      TabIndex        =   1
      Text            =   "000.0000"
      Top             =   435
      Width           =   2220
   End
   Begin VB.TextBox txtBl_AxisX 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1590
      TabIndex        =   0
      Text            =   "000.0000"
      Top             =   810
      Width           =   2220
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Bal Axis Y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   135
      TabIndex        =   11
      Top             =   1230
      Width           =   840
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "mm"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   3855
      TabIndex        =   10
      Top             =   1305
      Width           =   330
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Stage X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   135
      TabIndex        =   8
      Top             =   105
      Width           =   660
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "mm"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   3855
      TabIndex        =   7
      Top             =   180
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Stage Y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   135
      TabIndex        =   6
      Top             =   480
      Width           =   645
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "mm"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   3855
      TabIndex        =   5
      Top             =   555
      Width           =   330
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Bal Axis X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   135
      TabIndex        =   4
      Top             =   855
      Width           =   855
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "mm"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   3855
      TabIndex        =   3
      Top             =   930
      Width           =   330
   End
End
Attribute VB_Name = "frmBalancerPos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGetPos_Click()

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    End If
    
    Me.txtBl_PosStageX.Text = PComm32_Position_mm(PComm32_XAxis)
    Me.txtBl_PosStageY.Text = PComm32_Position_mm(PComm32_YAxis)

    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#

    Me.txtBl_AxisX.Text = rtn_xxx#
    Me.txtBl_AxisY.Text = rtn_yyy#
    
End Sub

Private Sub cmdSave_Click()

    SAVED_BALInspPosStageX = CDbl(Me.txtBl_PosStageX.Text)
    SAVED_BALInspPosStageY = CDbl(Me.txtBl_PosStageY.Text)
    SAVED_BALInspPosX = CDbl(Me.txtBl_AxisX.Text)
    SAVED_BALInspPosY = CDbl(Me.txtBl_AxisY.Text)

    Call SaveSetting(App.Title, "LATCH", "SAVED_BALInspPosStageX", Me.txtBl_PosStageX.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_BALInspPosStageY", Me.txtBl_PosStageY.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_BALInspPosX", Me.txtBl_AxisX.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_BALInspPosY", Me.txtBl_AxisY.Text)

End Sub

Private Sub cmdViewPadant_Click()

    Load frmBalUnitMov
    frmBalUnitMov.Show

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    Me.txtBl_PosStageX.Text = SAVED_BALInspPosStageX
    Me.txtBl_PosStageY.Text = SAVED_BALInspPosStageY
    Me.txtBl_AxisX.Text = SAVED_BALInspPosX
    Me.txtBl_AxisY.Text = SAVED_BALInspPosY

End Sub
