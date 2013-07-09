VERSION 5.00
Begin VB.Form frmReviewOpticSet 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Review Optic Setting"
   ClientHeight    =   2280
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   Icon            =   "frmReviewOpticSet.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2280
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox txtFactor 
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
      Height          =   330
      Left            =   2288
      TabIndex        =   8
      Text            =   "0"
      Top             =   1065
      Width           =   1980
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
      Left            =   2888
      Picture         =   "frmReviewOpticSet.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   6
      Top             =   1470
      Width           =   1290
   End
   Begin VB.TextBox txtDistance 
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
      Height          =   330
      Left            =   2288
      TabIndex        =   5
      Text            =   "0"
      Top             =   405
      Width           =   1980
   End
   Begin VB.TextBox txtPixDis 
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
      Height          =   330
      Left            =   2288
      TabIndex        =   3
      Text            =   "0"
      Top             =   735
      Width           =   1980
   End
   Begin VB.OptionButton OptPoint 
      Caption         =   "Ponit2 Draw"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   1
      Left            =   2468
      TabIndex        =   1
      Top             =   120
      Width           =   1605
   End
   Begin VB.OptionButton OptPoint 
      Caption         =   "Ponit1 Draw"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   0
      Left            =   743
      TabIndex        =   0
      Top             =   120
      Value           =   -1  'True
      Width           =   1605
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Optic Factor[Pix/mm]"
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
      Left            =   413
      TabIndex        =   7
      Top             =   1125
      Width           =   1800
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Ruler Distance[mm]"
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
      Left            =   428
      TabIndex        =   4
      Top             =   465
      Width           =   1695
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Draw Distance[Pixel]"
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
      Left            =   428
      TabIndex        =   2
      Top             =   795
      Width           =   1785
   End
End
Attribute VB_Name = "frmReviewOpticSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSave_Click()

    SAVED_ReviewOpticFactor_Pixel_Per_mm = CDbl(Me.txtFactor.Text)
    Call SaveSetting(App.Title, "LATCH", "SAVED_ReviewOpticFactor_Pixel_Per_mm", CStr(SAVED_ReviewOpticFactor_Pixel_Per_mm))

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
            
End Sub

Private Sub Form_Load()

    'SAVED_ReviewOpticFactor_Pixel_Per_mm

    Me.txtFactor.Text = SAVED_ReviewOpticFactor_Pixel_Per_mm
    frmVision.LineCal.Visible = True
    
End Sub

Private Sub Form_Terminate()

    frmVision.LineCal.Visible = False

End Sub

Private Sub Form_Unload(Cancel As Integer)

    frmVision.LineCal.Visible = False

End Sub

