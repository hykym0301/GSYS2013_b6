VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmBalance 
   BorderStyle     =   1  '단일 고정
   Caption         =   "전자 저울"
   ClientHeight    =   1485
   ClientLeft      =   13305
   ClientTop       =   4560
   ClientWidth     =   3870
   Icon            =   "frmBalance.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1485
   ScaleWidth      =   3870
   Begin VB.CommandButton cmdFunc 
      Caption         =   "Close"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Index           =   3
      Left            =   2850
      Picture         =   "frmBalance.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   6
      Top             =   840
      Width           =   885
   End
   Begin VB.CommandButton cmdFunc 
      Caption         =   "Zero Set"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Index           =   2
      Left            =   1950
      Picture         =   "frmBalance.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   5
      Top             =   840
      Width           =   885
   End
   Begin VB.CommandButton cmdFunc 
      Caption         =   "Print"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Index           =   1
      Left            =   1050
      Picture         =   "frmBalance.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   4
      Top             =   840
      Width           =   885
   End
   Begin VB.CommandButton cmdFunc 
      Caption         =   "CAL"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Index           =   0
      Left            =   135
      Picture         =   "frmBalance.frx":1628
      Style           =   1  '그래픽
      TabIndex        =   3
      Top             =   840
      Width           =   885
   End
   Begin Threed.SSPanel SSPanel1 
      Height          =   765
      Left            =   15
      TabIndex        =   0
      Top             =   30
      Width           =   3825
      _Version        =   65536
      _ExtentX        =   6747
      _ExtentY        =   1349
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
      BevelOuter      =   1
      Begin VB.CheckBox chkMon 
         Caption         =   "Monitor"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   15
         TabIndex        =   7
         Top             =   570
         Width           =   945
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "g"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3383
         TabIndex        =   2
         Top             =   360
         Width           =   150
      End
      Begin VB.Label lblWeightDis 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "000.0000"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   338
         TabIndex        =   1
         Top             =   60
         Width           =   3000
      End
   End
End
Attribute VB_Name = "frmBalance"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
