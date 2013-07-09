VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmSysConfig 
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   4485
   ClientLeft      =   7395
   ClientTop       =   4485
   ClientWidth     =   1845
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4485
   ScaleWidth      =   1845
   ShowInTaskbar   =   0   'False
   Begin Threed.SSPanel sspPopUp_UserPos 
      Height          =   3615
      Left            =   15
      TabIndex        =   0
      Top             =   15
      Width           =   1830
      _Version        =   65536
      _ExtentX        =   3228
      _ExtentY        =   6376
      _StockProps     =   15
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   -1  'True
      Begin VB.CommandButton cmdFunc 
         Caption         =   "전자저울 Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   3
         Left            =   75
         Picture         =   "frmSysCfg.frx":0000
         Style           =   1  '그래픽
         TabIndex        =   7
         Top             =   2925
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Peri B/D Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   4
         Left            =   75
         Picture         =   "frmSysCfg.frx":058A
         Style           =   1  '그래픽
         TabIndex        =   5
         Top             =   2280
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Motion Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   0
         Left            =   75
         Picture         =   "frmSysCfg.frx":0B14
         Style           =   1  '그래픽
         TabIndex        =   4
         Top             =   390
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Position Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   1
         Left            =   75
         Picture         =   "frmSysCfg.frx":109E
         Style           =   1  '그래픽
         TabIndex        =   3
         Top             =   1020
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Optic Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   2
         Left            =   75
         Picture         =   "frmSysCfg.frx":1628
         Style           =   1  '그래픽
         TabIndex        =   2
         Top             =   1650
         Width           =   1695
      End
      Begin VB.CommandButton cmdHidePopUp 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1440
         Picture         =   "frmSysCfg.frx":19B2
         Style           =   1  '그래픽
         TabIndex        =   1
         Top             =   45
         Width           =   330
      End
      Begin VB.Image Image1 
         Height          =   240
         Left            =   75
         Picture         =   "frmSysCfg.frx":1F3C
         Top             =   75
         Width           =   240
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   ">System"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   345
         TabIndex        =   6
         Top             =   90
         Width           =   795
      End
   End
End
Attribute VB_Name = "frmSysConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFunc_Click(Index As Integer)

    Select Case Index
        Case 0
            Load frmMotionSetting
            frmMotionSetting.Show
            Unload Me
        Case 1
        
        Case 2
        
        Case 3
            Load frmBalaceSet
            frmBalaceSet.Show
            
    End Select

End Sub

Private Sub cmdHidePopUp_Click()

    Unload Me

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

