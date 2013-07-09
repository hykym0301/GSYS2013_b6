VERSION 5.00
Begin VB.Form frmWipingPos 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Wiping Position"
   ClientHeight    =   2355
   ClientLeft      =   2445
   ClientTop       =   2445
   ClientWidth     =   5760
   Icon            =   "frmWipingPos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2355
   ScaleWidth      =   5760
   StartUpPosition =   2  '화면 가운데
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
      Left            =   4380
      Picture         =   "frmWipingPos.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   14
      Top             =   1530
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
      Left            =   4380
      Picture         =   "frmWipingPos.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   13
      Top             =   795
      Width           =   1290
   End
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
      Left            =   4380
      Picture         =   "frmWipingPos.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   12
      Top             =   60
      Width           =   1290
   End
   Begin VB.TextBox txtWipingSpeed 
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
      Left            =   1560
      TabIndex        =   10
      Text            =   "0"
      Top             =   1170
      Width           =   2220
   End
   Begin VB.TextBox txtWpAxisX 
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
      Left            =   1560
      TabIndex        =   7
      Text            =   "000.0000"
      Top             =   795
      Width           =   2220
   End
   Begin VB.TextBox txtWpPosStageY 
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
      Left            =   1560
      TabIndex        =   4
      Text            =   "000.0000"
      Top             =   420
      Width           =   2220
   End
   Begin VB.TextBox txtWpPosStageX 
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
      Left            =   1560
      TabIndex        =   1
      Text            =   "000.0000"
      Top             =   45
      Width           =   2220
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "mm/s"
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
      Left            =   3825
      TabIndex        =   11
      Top             =   1290
      Width           =   480
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Wiping Speed"
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
      Left            =   105
      TabIndex        =   9
      Top             =   1215
      Width           =   1170
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
      Left            =   3825
      TabIndex        =   8
      Top             =   915
      Width           =   330
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Wiping Axis X"
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
      Left            =   105
      TabIndex        =   6
      Top             =   840
      Width           =   1170
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
      Left            =   3825
      TabIndex        =   5
      Top             =   540
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Wiping Stage Y"
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
      Left            =   105
      TabIndex        =   3
      Top             =   465
      Width           =   1275
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
      Left            =   3825
      TabIndex        =   2
      Top             =   165
      Width           =   330
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Wiping Stage X"
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
      Left            =   105
      TabIndex        =   0
      Top             =   90
      Width           =   1290
   End
End
Attribute VB_Name = "frmWipingPos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGetPos_Click()

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    End If
    
    Me.txtWpPosStageX.Text = PComm32_Position_mm(PComm32_XAxis)
    Me.txtWpPosStageY.Text = PComm32_Position_mm(PComm32_YAxis)
    Me.txtWpAxisX.Text = PComm32_Position_mm(PComm32_ClngXAxis)
    
End Sub

Private Sub cmdSave_Click()

    On Error GoTo errHere

    SAVED_POS_WipingStageX = CDbl(Me.txtWpPosStageX.Text)
    SAVED_POS_WipingStageY = CDbl(Me.txtWpPosStageY.Text)
    SAVED_POS_WipingX = CDbl(Me.txtWpAxisX.Text)
    SAVED_WipingSpeed = CDbl(Me.txtWipingSpeed.Text)
    
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_WipingStageX", Me.txtWpPosStageX.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_WipingStageY", Me.txtWpPosStageY.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_WipingX", Me.txtWpAxisX.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_WipingSpeed", Me.txtWipingSpeed.Text)
    
    MsgBox "저장 완료!", vbInformation
    Unload Me
    
Exit Sub
errHere:
    MsgBox Err.Description, vbCritical
    
End Sub

Private Sub cmdViewPadant_Click()

    Load frmCappingWiping
    frmCappingWiping.Show

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    Me.txtWpPosStageX.Text = SAVED_POS_WipingStageX
    Me.txtWpPosStageY.Text = SAVED_POS_WipingStageY
    Me.txtWpAxisX.Text = SAVED_POS_WipingX
    Me.txtWipingSpeed.Text = SAVED_WipingSpeed

End Sub
