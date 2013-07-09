VERSION 5.00
Begin VB.Form frmCapPos 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Capping Position"
   ClientHeight    =   2340
   ClientLeft      =   7275
   ClientTop       =   6030
   ClientWidth     =   5760
   Icon            =   "frmCapPos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2340
   ScaleWidth      =   5760
   Begin VB.TextBox txtCpPosStageX 
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
      TabIndex        =   6
      Text            =   "000.0000"
      Top             =   45
      Width           =   2220
   End
   Begin VB.TextBox txtCpPosStageY 
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
      TabIndex        =   5
      Text            =   "000.0000"
      Top             =   420
      Width           =   2220
   End
   Begin VB.TextBox txtCpAxisY 
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
      Top             =   795
      Width           =   2220
   End
   Begin VB.TextBox txtCpAxisZ 
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
      TabIndex        =   3
      Text            =   "000.0000"
      Top             =   1170
      Width           =   2220
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
      Picture         =   "frmCapPos.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   2
      Top             =   60
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
      Picture         =   "frmCapPos.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   1
      Top             =   795
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
      Left            =   4380
      Picture         =   "frmCapPos.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   0
      Top             =   1530
      Width           =   1290
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Capping Stage X"
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
      TabIndex        =   14
      Top             =   90
      Width           =   1395
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
      TabIndex        =   13
      Top             =   165
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Capping Stage Y"
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
      TabIndex        =   12
      Top             =   465
      Width           =   1380
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
      TabIndex        =   11
      Top             =   540
      Width           =   330
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Capping Axis Y"
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
      TabIndex        =   10
      Top             =   840
      Width           =   1260
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
      TabIndex        =   9
      Top             =   915
      Width           =   330
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Capping Axis Z"
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
      TabIndex        =   8
      Top             =   1215
      Width           =   1260
   End
   Begin VB.Label Label8 
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
      TabIndex        =   7
      Top             =   1290
      Width           =   330
   End
End
Attribute VB_Name = "frmCapPos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGetPos_Click()

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    End If
    
    Me.txtCpPosStageX.Text = PComm32_Position_mm(PComm32_XAxis)
    Me.txtCpPosStageY.Text = PComm32_Position_mm(PComm32_YAxis)
    Me.txtCpAxisY.Text = PComm32_Position_mm(PComm32_CyAxis)
    Me.txtCpAxisZ.Text = PComm32_Position_mm(PComm32_CzAxis)
    
End Sub

Private Sub cmdSave_Click()

    On Error GoTo errHere

    SAVED_POS_CappingStageX = CDbl(Me.txtCpPosStageX.Text)
    SAVED_POS_CappingStageY = CDbl(Me.txtCpPosStageY.Text)
    SAVED_POS_CappingY = CDbl(Me.txtCpAxisY.Text)
    SAVED_POS_CappingZ = CDbl(Me.txtCpAxisZ.Text)
    
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_CappingStageX", Me.txtCpPosStageX.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_CappingStageY", Me.txtCpPosStageY.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_CappingY", Me.txtCpAxisY.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_POS_CappingZ", Me.txtCpAxisZ.Text)
    
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

Private Sub Form_Load()

    Me.txtCpPosStageX.Text = SAVED_POS_CappingStageX
    Me.txtCpPosStageY.Text = SAVED_POS_CappingStageY
    Me.txtCpAxisY.Text = SAVED_POS_CappingY
    Me.txtCpAxisZ.Text = SAVED_POS_CappingZ
    
End Sub
