VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmImageLoader 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Image File Loader"
   ClientHeight    =   1485
   ClientLeft      =   60
   ClientTop       =   4905
   ClientWidth     =   8670
   Icon            =   "frmImageLoader.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1485
   ScaleWidth      =   8670
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   660
      Left            =   4350
      Picture         =   "frmImageLoader.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   7
      Top             =   750
      Width           =   1575
   End
   Begin VB.CommandButton cmdApply 
      Caption         =   "Apply"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   660
      Left            =   2745
      Picture         =   "frmImageLoader.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   6
      Top             =   750
      Width           =   1575
   End
   Begin VB.CommandButton cmdImgOpen 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   8160
      Picture         =   "frmImageLoader.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   5
      ToolTipText     =   "File Open"
      Top             =   390
      Width           =   375
   End
   Begin VB.TextBox txtFilename 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   1815
      TabIndex        =   4
      Text            =   "C:\Unnamed.bmp"
      Top             =   390
      Width           =   6300
   End
   Begin VB.CommandButton cmdImgOpen 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   0
      Left            =   8160
      Picture         =   "frmImageLoader.frx":1628
      Style           =   1  '그래픽
      TabIndex        =   2
      ToolTipText     =   "File Open"
      Top             =   60
      Width           =   375
   End
   Begin VB.TextBox txtFilename 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   1815
      TabIndex        =   1
      Text            =   "C:\Unnamed.bmp"
      Top             =   60
      Width           =   6300
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Alignment       =   1  '오른쪽 맞춤
      AutoSize        =   -1  'True
      Caption         =   "● 역방향 Image File"
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
      Index           =   1
      Left            =   120
      TabIndex        =   3
      Top             =   420
      Width           =   1635
   End
   Begin VB.Label Label1 
      Alignment       =   1  '오른쪽 맞춤
      AutoSize        =   -1  'True
      Caption         =   "● 정방향 Image File"
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
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   90
      Width           =   1635
   End
End
Attribute VB_Name = "frmImageLoader"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
