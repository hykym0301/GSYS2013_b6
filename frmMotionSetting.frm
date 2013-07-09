VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmMotionSetting 
   BorderStyle     =   1  '´ÜÀÏ °íÁ¤
   Caption         =   "Motion Setting"
   ClientHeight    =   10470
   ClientLeft      =   4305
   ClientTop       =   1200
   ClientWidth     =   8820
   Icon            =   "frmMotionSetting.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   10470
   ScaleWidth      =   8820
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   16
      Left            =   7545
      TabIndex        =   92
      Text            =   "100"
      Top             =   6735
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   16
      Left            =   7545
      TabIndex        =   91
      Text            =   "200"
      Top             =   6405
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   16
      Left            =   7545
      TabIndex        =   90
      Text            =   "50"
      Top             =   6090
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   15
      Left            =   3255
      TabIndex        =   86
      Text            =   "100"
      Top             =   6720
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   15
      Left            =   3255
      TabIndex        =   85
      Text            =   "200"
      Top             =   6390
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   15
      Left            =   3255
      TabIndex        =   84
      Text            =   "50"
      Top             =   6075
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   14
      Left            =   7545
      TabIndex        =   80
      Text            =   "100"
      Top             =   5670
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   14
      Left            =   7545
      TabIndex        =   79
      Text            =   "200"
      Top             =   5340
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   14
      Left            =   7545
      TabIndex        =   78
      Text            =   "50"
      Top             =   5025
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   13
      Left            =   3255
      TabIndex        =   74
      Text            =   "100"
      Top             =   5655
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   13
      Left            =   3255
      TabIndex        =   73
      Text            =   "200"
      Top             =   5325
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   13
      Left            =   3255
      TabIndex        =   72
      Text            =   "50"
      Top             =   5010
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   12
      Left            =   7545
      TabIndex        =   68
      Text            =   "100"
      Top             =   4590
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   12
      Left            =   7545
      TabIndex        =   67
      Text            =   "200"
      Top             =   4260
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   12
      Left            =   7545
      TabIndex        =   66
      Text            =   "50"
      Top             =   3945
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   11
      Left            =   3255
      TabIndex        =   65
      Text            =   "50"
      Top             =   3930
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   11
      Left            =   3255
      TabIndex        =   64
      Text            =   "200"
      Top             =   4245
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   11
      Left            =   3255
      TabIndex        =   63
      Text            =   "100"
      Top             =   4575
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   10
      Left            =   7545
      TabIndex        =   62
      Text            =   "50"
      Top             =   2805
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   10
      Left            =   7545
      TabIndex        =   61
      Text            =   "200"
      Top             =   3120
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   10
      Left            =   7545
      TabIndex        =   60
      Text            =   "100"
      Top             =   3450
      Width           =   1050
   End
   Begin VB.CommandButton Command2 
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
      Height          =   645
      Left            =   5295
      Picture         =   "frmMotionSetting.frx":058A
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   53
      Top             =   9720
      Visible         =   0   'False
      Width           =   1635
   End
   Begin VB.CommandButton saveCapClean 
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
      Left            =   6960
      Picture         =   "frmMotionSetting.frx":0B14
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   52
      Top             =   9720
      Width           =   1635
   End
   Begin VB.CommandButton cmdApplyUMac 
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
      Height          =   645
      Left            =   5295
      Picture         =   "frmMotionSetting.frx":109E
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   51
      Top             =   7110
      Visible         =   0   'False
      Width           =   1650
   End
   Begin VB.CommandButton cmdSaveUMac 
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
      Left            =   6975
      Picture         =   "frmMotionSetting.frx":1628
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   50
      Top             =   7110
      Width           =   1635
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   7
      Left            =   3255
      TabIndex        =   48
      Text            =   "100"
      Top             =   3465
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   7
      Left            =   3255
      TabIndex        =   46
      Text            =   "200"
      Top             =   3135
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   7
      Left            =   3255
      TabIndex        =   44
      Text            =   "50"
      Top             =   2820
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   6
      Left            =   3225
      TabIndex        =   42
      Text            =   "100"
      Top             =   9990
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   6
      Left            =   3225
      TabIndex        =   40
      Text            =   "200"
      Top             =   9660
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   6
      Left            =   3225
      TabIndex        =   38
      Text            =   "50"
      Top             =   9345
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   5
      Left            =   7530
      TabIndex        =   36
      Text            =   "100"
      Top             =   8880
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   5
      Left            =   7530
      TabIndex        =   34
      Text            =   "200"
      Top             =   8550
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   5
      Left            =   7530
      TabIndex        =   32
      Text            =   "50"
      Top             =   8235
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   4
      Left            =   3225
      TabIndex        =   30
      Text            =   "100"
      Top             =   8880
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   4
      Left            =   3225
      TabIndex        =   28
      Text            =   "200"
      Top             =   8550
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   4
      Left            =   3225
      TabIndex        =   26
      Text            =   "50"
      Top             =   8235
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   7545
      TabIndex        =   24
      Text            =   "100"
      Top             =   2370
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   7545
      TabIndex        =   22
      Text            =   "200"
      Top             =   2040
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   7545
      TabIndex        =   20
      Text            =   "50"
      Top             =   1725
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   3240
      TabIndex        =   18
      Text            =   "100"
      Top             =   2370
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   3240
      TabIndex        =   16
      Text            =   "200"
      Top             =   2040
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   3240
      TabIndex        =   14
      Text            =   "50"
      Top             =   1725
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   7545
      TabIndex        =   12
      Text            =   "100"
      Top             =   1275
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   7545
      TabIndex        =   10
      Text            =   "200"
      Top             =   945
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   7545
      TabIndex        =   8
      Text            =   "50"
      Top             =   630
      Width           =   1050
   End
   Begin VB.TextBox txtScurve 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   3240
      TabIndex        =   6
      Text            =   "100"
      Top             =   1275
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultAcc 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   3240
      TabIndex        =   4
      Text            =   "200"
      Top             =   945
      Width           =   1050
   End
   Begin VB.TextBox txtDefaultSpeed 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   3240
      TabIndex        =   2
      Text            =   "50"
      Top             =   630
      Width           =   1050
   End
   Begin Threed.SSPanel SSPanel9 
      Height          =   300
      Left            =   75
      TabIndex        =   0
      Top             =   105
      Width           =   8670
      _Version        =   65536
      _ExtentX        =   15293
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Stage / Bridge Axis Parameter Setting..............................................................................."
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   -1  'True
      Alignment       =   1
      Begin VB.Image Image1 
         Height          =   240
         Index           =   1
         Left            =   45
         Picture         =   "frmMotionSetting.frx":1BB2
         Top             =   30
         Width           =   240
      End
   End
   Begin Threed.SSPanel SSPanel1 
      Height          =   300
      Left            =   60
      TabIndex        =   49
      Top             =   7815
      Width           =   8670
      _Version        =   65536
      _ExtentX        =   15293
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Capping/Cleaning Unit Axis Parameter Setting..................................................................."
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   -1  'True
      Alignment       =   1
      Begin VB.Image Image1 
         Height          =   240
         Index           =   0
         Left            =   45
         Picture         =   "frmMotionSetting.frx":213C
         Top             =   30
         Width           =   240
      End
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "DWyAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   16
      Left            =   225
      TabIndex        =   95
      Top             =   6735
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "DWyAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   16
      Left            =   225
      TabIndex        =   94
      Top             =   6405
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "DWyAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   16
      Left            =   225
      TabIndex        =   93
      Top             =   6090
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KTxAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   15
      Left            =   4515
      TabIndex        =   89
      Top             =   6750
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KTxAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   15
      Left            =   4515
      TabIndex        =   88
      Top             =   6420
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KTxAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   15
      Left            =   4515
      TabIndex        =   87
      Top             =   6105
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT2AxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   14
      Left            =   4515
      TabIndex        =   83
      Top             =   5730
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT2AxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   14
      Left            =   4515
      TabIndex        =   82
      Top             =   5400
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT2AxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   14
      Left            =   4515
      TabIndex        =   81
      Top             =   5085
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT1AxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   13
      Left            =   225
      TabIndex        =   77
      Top             =   5715
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT1AxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   13
      Left            =   225
      TabIndex        =   76
      Top             =   5385
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KT1AxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   13
      Left            =   225
      TabIndex        =   75
      Top             =   5070
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KMZAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   12
      Left            =   4515
      TabIndex        =   71
      Top             =   4650
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KMZAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   12
      Left            =   4515
      TabIndex        =   70
      Top             =   4320
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KMZAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   12
      Left            =   4515
      TabIndex        =   69
      Top             =   4005
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHTAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   11
      Left            =   225
      TabIndex        =   59
      Top             =   3990
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHTAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   11
      Left            =   225
      TabIndex        =   58
      Top             =   4305
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHTAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   11
      Left            =   225
      TabIndex        =   57
      Top             =   4635
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHZAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   10
      Left            =   4515
      TabIndex        =   56
      Top             =   2880
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHZAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   10
      Left            =   4515
      TabIndex        =   55
      Top             =   3195
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "QHZAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   10
      Left            =   4515
      TabIndex        =   54
      Top             =   3525
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Rz AxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   7
      Left            =   225
      TabIndex        =   47
      Top             =   3525
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Rz AxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   7
      Left            =   225
      TabIndex        =   45
      Top             =   3195
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Rz AxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   7
      Left            =   225
      TabIndex        =   43
      Top             =   2880
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CLxAxisS-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   6
      Left            =   195
      TabIndex        =   41
      Top             =   10050
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CLxAxisAcceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   6
      Left            =   195
      TabIndex        =   39
      Top             =   9720
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CLxAxisDefault Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   6
      Left            =   195
      TabIndex        =   37
      Top             =   9405
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CzAxis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   5
      Left            =   4500
      TabIndex        =   35
      Top             =   8940
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CzAxis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   5
      Left            =   4500
      TabIndex        =   33
      Top             =   8610
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CzAxis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   5
      Left            =   4500
      TabIndex        =   31
      Top             =   8295
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CyAxis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   4
      Left            =   195
      TabIndex        =   29
      Top             =   8940
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CyAxis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   4
      Left            =   195
      TabIndex        =   27
      Top             =   8610
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "CyAxis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   4
      Left            =   195
      TabIndex        =   25
      Top             =   8295
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KYAxis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   3
      Left            =   4515
      TabIndex        =   23
      Top             =   2430
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KYAxis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   3
      Left            =   4515
      TabIndex        =   21
      Top             =   2100
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "KYAxis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   3
      Left            =   4515
      TabIndex        =   19
      Top             =   1785
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "T Axis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   2
      Left            =   210
      TabIndex        =   17
      Top             =   2430
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "T Axis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   2
      Left            =   210
      TabIndex        =   15
      Top             =   2100
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "T Axis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   2
      Left            =   210
      TabIndex        =   13
      Top             =   1785
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Y Axis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   4515
      TabIndex        =   11
      Top             =   1335
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Y Axis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   4515
      TabIndex        =   9
      Top             =   1005
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Y Axis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   4515
      TabIndex        =   7
      Top             =   690
      Width           =   2940
   End
   Begin VB.Label lbl_titleScrv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "X Axis S-Curve      [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   210
      TabIndex        =   5
      Top             =   1335
      Width           =   2940
   End
   Begin VB.Label lbl_titleAcc 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "X Axis Acceleration [  ms] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   210
      TabIndex        =   3
      Top             =   1005
      Width           =   2940
   End
   Begin VB.Label lbl_titleSpeed 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "X Axis Default Speed[mm/s] :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   210
      TabIndex        =   1
      Top             =   690
      Width           =   2940
   End
End
Attribute VB_Name = "frmMotionSetting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSaveUMac_Click()

    For i% = 0 To 3
        PComm32_Speed_mms(i%) = CDbl(Me.txtDefaultSpeed(i%).Text)
        PComm32_Acc_ms(i%) = CDbl(Me.txtDefaultAcc(i%).Text)
        PComm32_Scrv_ms(i%) = CDbl(Me.txtScurve(i%).Text)
        SaveSetting App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(i%) & ")", Me.txtDefaultSpeed(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(i%) & ")", Me.txtDefaultAcc(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(i%) & ")", Me.txtScurve(i%).Text
        PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
    Next i%

    'Exit Sub

    i% = 7
    PComm32_Speed_mms(i%) = CDbl(Me.txtDefaultSpeed(i%).Text)
    PComm32_Acc_ms(i%) = CDbl(Me.txtDefaultAcc(i%).Text)
    PComm32_Scrv_ms(i%) = CDbl(Me.txtScurve(i%).Text)
    SaveSetting App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(i%) & ")", Me.txtDefaultSpeed(i%).Text
    SaveSetting App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(i%) & ")", Me.txtDefaultAcc(i%).Text
    SaveSetting App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(i%) & ")", Me.txtScurve(i%).Text
    PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
    
    
    i% = 10
    Cliffer_Speed_mms(Cliffer_HdzAxis) = CDbl(Me.txtDefaultSpeed(i%).Text)
    Cliffer_Acc_ms(Cliffer_HdzAxis) = CDbl(Me.txtDefaultAcc(i%).Text)
    Cliffer_Scrv_ms(Cliffer_HdzAxis) = CDbl(Me.txtScurve(i%).Text)
    SaveSetting App.Title, "SYSTEM", "Cliffer_Speed_mms(" & CStr(Cliffer_HdzAxis) & ")", Me.txtDefaultSpeed(i%).Text
    SaveSetting App.Title, "SYSTEM", "Cliffer_Acc_ms(" & CStr(Cliffer_HdzAxis) & ")", Me.txtDefaultAcc(i%).Text
    SaveSetting App.Title, "SYSTEM", "Cliffer_Scrv_ms(" & CStr(Cliffer_HdzAxis) & ")", Me.txtScurve(i%).Text
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, Cliffer_Speed_mms(Cliffer_HdzAxis), Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), PComm32_ClifferID
    
    i% = 11
    Cliffer_Speed_mms(Cliffer_HdtAxis) = CDbl(Me.txtDefaultSpeed(i%).Text)
    Cliffer_Acc_ms(Cliffer_HdtAxis) = CDbl(Me.txtDefaultAcc(i%).Text)
    Cliffer_Scrv_ms(Cliffer_HdtAxis) = CDbl(Me.txtScurve(i%).Text)
    SaveSetting App.Title, "SYSTEM", "Cliffer_Speed_mms(" & CStr(Cliffer_HdtAxis) & ")", Me.txtDefaultSpeed(i%).Text
    SaveSetting App.Title, "SYSTEM", "Cliffer_Acc_ms(" & CStr(Cliffer_HdtAxis) & ")", Me.txtDefaultAcc(i%).Text
    SaveSetting App.Title, "SYSTEM", "Cliffer_Scrv_ms(" & CStr(Cliffer_HdtAxis) & ")", Me.txtScurve(i%).Text
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, Cliffer_Speed_mms(Cliffer_HdtAxis), Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), PComm32_ClifferID
    
    For i% = 12 To 16 Step 1
        Index% = i% - 4
        
        PComm32_Speed_mms(Index%) = CDbl(Me.txtDefaultSpeed(i%).Text)
        PComm32_Acc_ms(Index%) = CDbl(Me.txtDefaultAcc(i%).Text)
        PComm32_Scrv_ms(Index%) = CDbl(Me.txtScurve(i%).Text)
        SaveSetting App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(Index%) & ")", Me.txtDefaultSpeed(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(Index%) & ")", Me.txtDefaultAcc(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(Index%) & ")", Me.txtScurve(i%).Text
        PComm32_JogSpdAccScrvSET Index%, PComm32_Speed_mms(Index%), PComm32_Acc_ms(Index%), PComm32_Scrv_ms(Index%)
    Next i%
    
    
End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    For i% = 0 To 7
        Me.txtDefaultSpeed(i%).Text = PComm32_Speed_mms(i%) ' = CDbl(Me.txtDefaultSpeed(i%).Text)
        Me.txtDefaultAcc(i%).Text = PComm32_Acc_ms(i%) ' = CDbl(Me.txtDefaultAcc(i%).Text)
        Me.txtScurve(i%).Text = PComm32_Scrv_ms(i%) ' = CDbl(Me.txtScurve(i%).Text)
        'SaveSetting App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(i%) & ")", Me.txtDefaultSpeed(i%).Text
        'SaveSetting App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(i%) & ")", Me.txtDefaultAcc(i%).Text
        'SaveSetting App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(i%) & ")", Me.txtScurve(i%).Text
        'PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
    Next i%
    
    
    i% = 10
    Me.txtDefaultSpeed(i%).Text = Cliffer_Speed_mms(0) ' = CDbl(Me.txtDefaultSpeed(i%).Text)
    Me.txtDefaultAcc(i%).Text = Cliffer_Acc_ms(0) ' = CDbl(Me.txtDefaultAcc(i%).Text)
    Me.txtScurve(i%).Text = Cliffer_Scrv_ms(0) ' = CDbl(Me.txtScurve(i%).Text)

    i% = 11
    Me.txtDefaultSpeed(i%).Text = Cliffer_Speed_mms(1) ' = CDbl(Me.txtDefaultSpeed(i%).Text)
    Me.txtDefaultAcc(i%).Text = Cliffer_Acc_ms(1) ' = CDbl(Me.txtDefaultAcc(i%).Text)
    Me.txtScurve(i%).Text = Cliffer_Scrv_ms(1) ' = CDbl(Me.txtScurve(i%).Text)
    
    For i% = 12 To 16 Step 1
        Index% = i% - 4
        
        Me.txtDefaultSpeed(i%).Text = PComm32_Speed_mms(Index%) ' = CDbl(Me.txtDefaultSpeed(i%).Text)
        Me.txtDefaultAcc(i%).Text = PComm32_Acc_ms(Index%) ' = CDbl(Me.txtDefaultAcc(i%).Text)
        Me.txtScurve(i%).Text = PComm32_Scrv_ms(Index%) ' = CDbl(Me.txtScurve(i%).Text)
    Next i%
    
End Sub

Private Sub saveCapClean_Click()

    For i% = 4 To 6
        PComm32_Speed_mms(i%) = CDbl(Me.txtDefaultSpeed(i%).Text)
        PComm32_Acc_ms(i%) = CDbl(Me.txtDefaultAcc(i%).Text)
        PComm32_Scrv_ms(i%) = CDbl(Me.txtScurve(i%).Text)
        SaveSetting App.Title, "SYSTEM", "PComm32_Speed_mms(" & CStr(i%) & ")", Me.txtDefaultSpeed(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Acc_ms(" & CStr(i%) & ")", Me.txtDefaultAcc(i%).Text
        SaveSetting App.Title, "SYSTEM", "PComm32_Scrv_ms(" & CStr(i%) & ")", Me.txtScurve(i%).Text
        PComm32_JogSpdAccScrvSET i%, PComm32_Speed_mms(i%), PComm32_Acc_ms(i%), PComm32_Scrv_ms(i%)
    Next i%
    
End Sub
