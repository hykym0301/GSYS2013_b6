VERSION 5.00
Begin VB.Form frmBalaceSet 
   BorderStyle     =   1  '단일 고정
   Caption         =   "전자저울 Setting"
   ClientHeight    =   1725
   ClientLeft      =   11100
   ClientTop       =   5970
   ClientWidth     =   4065
   Icon            =   "frmBalaceSet.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1725
   ScaleWidth      =   4065
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
      Height          =   645
      Left            =   2220
      Picture         =   "frmBalaceSet.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   8
      Top             =   975
      Width           =   1635
   End
   Begin VB.TextBox txtUpp 
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
      Height          =   315
      Index           =   1
      Left            =   3045
      TabIndex        =   7
      Text            =   "0"
      Top             =   540
      Width           =   915
   End
   Begin VB.TextBox txtLow 
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
      Height          =   315
      Index           =   1
      Left            =   1875
      TabIndex        =   5
      Text            =   "0"
      Top             =   540
      Width           =   915
   End
   Begin VB.TextBox txtUpp 
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
      Height          =   315
      Index           =   0
      Left            =   3045
      TabIndex        =   3
      Text            =   "0"
      Top             =   150
      Width           =   915
   End
   Begin VB.TextBox txtLow 
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
      Height          =   315
      Index           =   0
      Left            =   1875
      TabIndex        =   1
      Text            =   "0"
      Top             =   150
      Width           =   915
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "~"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   1
      Left            =   2835
      TabIndex        =   6
      Top             =   525
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Secondary Limit[g]:"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   1
      Left            =   165
      TabIndex        =   4
      Top             =   570
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "~"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   2835
      TabIndex        =   2
      Top             =   135
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Primary Limit  [g]:"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   0
      Left            =   165
      TabIndex        =   0
      Top             =   210
      Width           =   1710
   End
End
Attribute VB_Name = "frmBalaceSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdSave_Click()

    For i% = 0 To 1
        BAL_LimitLow(i%) = Me.txtLow(i%).Text
        BAL_LimitUpp(i%) = Me.txtUpp(i%).Text
        SaveSetting App.Title, "SYSTEM", "BAL_LimitLow(" & CStr(i%) & ")", Me.txtLow(i%).Text
        SaveSetting App.Title, "SYSTEM", "BAL_LimitUpp(" & CStr(i%) & ")", Me.txtUpp(i%).Text
    Next i%

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    For i% = 0 To 1
        Me.txtLow(i%).Text = BAL_LimitLow(i%)
        Me.txtUpp(i%).Text = BAL_LimitUpp(i%)
    Next i%

End Sub
