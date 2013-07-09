VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmMotion 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   8445
   ClientLeft      =   1125
   ClientTop       =   2130
   ClientWidth     =   11280
   FillStyle       =   0  '단색
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8445
   ScaleWidth      =   11280
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdMoveReadyStageYPos 
      Caption         =   "Stage Y축 영점   위치 이동"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   1765
      Style           =   1  '그래픽
      TabIndex        =   71
      Top             =   7770
      Width           =   1665
   End
   Begin VB.CommandButton cmdMoveReviewZPos 
      Caption         =   "Review Z축 위치 이동"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   5235
      Style           =   1  '그래픽
      TabIndex        =   70
      Top             =   7770
      Width           =   1665
   End
   Begin VB.CommandButton cmdAllAxisStop 
      BackColor       =   &H0080C0FF&
      Caption         =   "Stop"
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
      Left            =   30
      Picture         =   "frmMotion.frx":0000
      Style           =   1  '그래픽
      TabIndex        =   69
      Top             =   7755
      Width           =   1665
   End
   Begin VB.CommandButton cmdSaveReviewZPos 
      Caption         =   "Review Z축 위치 등록"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   3500
      Style           =   1  '그래픽
      TabIndex        =   68
      Top             =   7770
      Width           =   1665
   End
   Begin VB.CommandButton cmdImgSave 
      Caption         =   "Image 저장"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   8640
      Picture         =   "frmMotion.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   67
      Top             =   5775
      Width           =   1230
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2280
      Left            =   4620
      TabIndex        =   52
      Top             =   1905
      Width           =   2235
      _ExtentX        =   3942
      _ExtentY        =   4022
      _Version        =   393216
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "KM"
      TabPicture(0)   =   "frmMotion.frx":0B14
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "cmdKMHzDn"
      Tab(0).Control(1)=   "cmdKMHzUp"
      Tab(0).Control(2)=   "cmdKMHz_XNeg"
      Tab(0).Control(3)=   "cmdKMHz_XPos"
      Tab(0).Control(4)=   "cmd_KMHd2_PosTheta"
      Tab(0).Control(5)=   "cmd_KMHd2_NegTheta"
      Tab(0).Control(6)=   "cmd_KMHd1_PosTheta"
      Tab(0).Control(7)=   "cmd_KMHd1_NegTheta"
      Tab(0).ControlCount=   8
      TabCaption(1)   =   "LG-Q"
      TabPicture(1)   =   "frmMotion.frx":0B30
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "cmdQHDT_Neg"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "cmdQHDT_Pos"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "cmdQHDZ_Dw"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "cmdQHDZ_Up"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "cmdDW_Pos"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "cmdDW_Neg"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).ControlCount=   6
      TabCaption(2)   =   "KYO"
      TabPicture(2)   =   "frmMotion.frx":0B4C
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmdHzUp"
      Tab(2).Control(1)=   "cmdHzDw"
      Tab(2).ControlCount=   2
      Begin VB.CommandButton cmdDW_Neg 
         Caption         =   "- DX"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   690
         Left            =   1470
         Picture         =   "frmMotion.frx":0B68
         Style           =   1  '그래픽
         TabIndex        =   73
         Top             =   1365
         Width           =   465
      End
      Begin VB.CommandButton cmdDW_Pos 
         Caption         =   "+ DX"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   690
         Left            =   1455
         Picture         =   "frmMotion.frx":1486
         Style           =   1  '그래픽
         TabIndex        =   72
         Top             =   510
         Width           =   465
      End
      Begin VB.CommandButton cmd_KMHd1_NegTheta 
         Caption         =   "H1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   -73500
         Picture         =   "frmMotion.frx":1DA4
         Style           =   1  '그래픽
         TabIndex        =   66
         Top             =   1155
         Width           =   465
      End
      Begin VB.CommandButton cmd_KMHd1_PosTheta 
         Caption         =   "H1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   -74175
         Picture         =   "frmMotion.frx":232E
         Style           =   1  '그래픽
         TabIndex        =   65
         Top             =   1155
         Width           =   465
      End
      Begin VB.CommandButton cmd_KMHd2_NegTheta 
         Caption         =   "H2"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   -73500
         Picture         =   "frmMotion.frx":28B8
         Style           =   1  '그래픽
         TabIndex        =   64
         Top             =   1695
         Width           =   465
      End
      Begin VB.CommandButton cmd_KMHd2_PosTheta 
         Caption         =   "H2"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   -74175
         Picture         =   "frmMotion.frx":2E42
         Style           =   1  '그래픽
         TabIndex        =   63
         Top             =   1695
         Width           =   465
      End
      Begin VB.CommandButton cmdKMHz_XPos 
         Caption         =   "+ X"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   690
         Left            =   -74175
         Picture         =   "frmMotion.frx":33CC
         Style           =   1  '그래픽
         TabIndex        =   62
         Top             =   420
         Width           =   465
      End
      Begin VB.CommandButton cmdKMHz_XNeg 
         Caption         =   "- X"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   690
         Left            =   -73515
         Picture         =   "frmMotion.frx":3CEA
         Style           =   1  '그래픽
         TabIndex        =   61
         Top             =   420
         Width           =   465
      End
      Begin VB.CommandButton cmdKMHzUp 
         Caption         =   "HZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   -74850
         Picture         =   "frmMotion.frx":4608
         Style           =   1  '그래픽
         TabIndex        =   60
         Top             =   585
         Width           =   480
      End
      Begin VB.CommandButton cmdKMHzDn 
         Caption         =   "HZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   -74850
         Picture         =   "frmMotion.frx":4B92
         Style           =   1  '그래픽
         TabIndex        =   59
         Top             =   1350
         Width           =   480
      End
      Begin VB.CommandButton cmdHzDw 
         Caption         =   "KHZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   -74190
         Picture         =   "frmMotion.frx":511C
         Style           =   1  '그래픽
         TabIndex        =   58
         Top             =   1380
         Width           =   465
      End
      Begin VB.CommandButton cmdQHDZ_Up 
         Caption         =   "QHZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   150
         Picture         =   "frmMotion.frx":56A6
         Style           =   1  '그래픽
         TabIndex        =   56
         Top             =   495
         Width           =   480
      End
      Begin VB.CommandButton cmdQHDZ_Dw 
         Caption         =   "QHZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   150
         Picture         =   "frmMotion.frx":5C30
         Style           =   1  '그래픽
         TabIndex        =   55
         Top             =   1380
         Width           =   480
      End
      Begin VB.CommandButton cmdQHDT_Pos 
         Caption         =   "+QHT"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   690
         Picture         =   "frmMotion.frx":61BA
         Style           =   1  '그래픽
         TabIndex        =   54
         Top             =   1380
         Width           =   465
      End
      Begin VB.CommandButton cmdQHDT_Neg 
         Caption         =   "-QHT"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   690
         Picture         =   "frmMotion.frx":6744
         Style           =   1  '그래픽
         TabIndex        =   53
         Top             =   495
         Width           =   465
      End
      Begin VB.CommandButton cmdHzUp 
         Caption         =   "KHZ"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   -74190
         Picture         =   "frmMotion.frx":6CCE
         Style           =   1  '그래픽
         TabIndex        =   57
         Top             =   600
         Width           =   465
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Speed"
      Height          =   795
      Left            =   60
      TabIndex        =   48
      Top             =   1905
      Width           =   2805
      Begin VB.OptionButton optSpeed 
         Caption         =   "상"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   0
         Left            =   60
         Style           =   1  '그래픽
         TabIndex        =   51
         Top             =   315
         Width           =   810
      End
      Begin VB.OptionButton optSpeed 
         Caption         =   "중"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   1
         Left            =   990
         Style           =   1  '그래픽
         TabIndex        =   50
         Top             =   315
         Value           =   -1  'True
         Width           =   810
      End
      Begin VB.OptionButton optSpeed 
         Caption         =   "하"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   2
         Left            =   1920
         Style           =   1  '그래픽
         TabIndex        =   49
         Top             =   315
         Width           =   810
      End
   End
   Begin VB.TextBox txtUsrPosDescription 
      Appearance      =   0  '평면
      BackColor       =   &H0080FFFF&
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   375
      TabIndex        =   45
      Top             =   5220
      Visible         =   0   'False
      Width           =   1845
   End
   Begin VB.ComboBox cboAxisSel 
      Height          =   300
      ItemData        =   "frmMotion.frx":7258
      Left            =   2580
      List            =   "frmMotion.frx":7271
      TabIndex        =   44
      Text            =   "X Axis - 0"
      Top             =   9870
      Visible         =   0   'False
      Width           =   2700
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   7995
      Index           =   6
      Left            =   720
      Picture         =   "frmMotion.frx":72D1
      ScaleHeight     =   7935
      ScaleWidth      =   8850
      TabIndex        =   43
      Top             =   11460
      Width           =   8910
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   300
      Index           =   5
      Left            =   270
      Picture         =   "frmMotion.frx":EC0BF
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   42
      Top             =   12255
      Width           =   300
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   300
      Index           =   4
      Left            =   270
      Picture         =   "frmMotion.frx":EC649
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   41
      Top             =   11955
      Width           =   300
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   300
      Index           =   3
      Left            =   240
      Picture         =   "frmMotion.frx":ECBD3
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   40
      Top             =   11700
      Width           =   300
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   300
      Index           =   2
      Left            =   255
      Picture         =   "frmMotion.frx":ED15D
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   39
      Top             =   11445
      Width           =   300
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   300
      Index           =   1
      Left            =   270
      Picture         =   "frmMotion.frx":ED6E7
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   38
      Top             =   11175
      Width           =   300
   End
   Begin VB.PictureBox Menu_Icon_pic 
      AutoSize        =   -1  'True
      Height          =   240
      Index           =   0
      Left            =   285
      ScaleHeight     =   180
      ScaleWidth      =   180
      TabIndex        =   37
      Top             =   10905
      Width           =   240
   End
   Begin VB.TextBox txtSysMsg 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   45
      TabIndex        =   35
      Text            =   "System Message->"
      Top             =   1170
      Width           =   6840
   End
   Begin VB.CheckBox ChkAxisUse 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   6405
      TabIndex        =   32
      Top             =   4695
      Value           =   1  '확인
      Width           =   180
   End
   Begin VB.CheckBox ChkAxisUse 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   5400
      TabIndex        =   31
      Top             =   4695
      Width           =   180
   End
   Begin VB.CheckBox ChkAxisUse 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   4275
      TabIndex        =   30
      Top             =   4695
      Value           =   1  '확인
      Width           =   180
   End
   Begin VB.CheckBox ChkAxisUse 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   3165
      TabIndex        =   29
      Top             =   4695
      Value           =   1  '확인
      Width           =   180
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3015
      Left            =   30
      TabIndex        =   28
      ToolTipText     =   "마우스좌측버튼으로 선택한 후 우측버튼을 클릭하면 하위메뉴가 풀다운 됩니다."
      Top             =   4650
      Width           =   6870
      _ExtentX        =   12118
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   65
      Cols            =   6
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   $"frmMotion.frx":EDC71
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  '없음
      Height          =   585
      Left            =   15
      TabIndex        =   23
      Top             =   7770
      Visible         =   0   'False
      Width           =   1200
      Begin VB.CommandButton cmdOrg 
         Caption         =   "Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   735
         Picture         =   "frmMotion.frx":EDCDB
         Style           =   1  '그래픽
         TabIndex        =   47
         Top             =   30
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.OptionButton OptServoOn 
         Caption         =   "Servo OFF"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Index           =   1
         Left            =   330
         Picture         =   "frmMotion.frx":EE265
         Style           =   1  '그래픽
         TabIndex        =   25
         Top             =   -15
         Width           =   810
      End
      Begin VB.OptionButton OptServoOn 
         Caption         =   "Servo ON"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Index           =   0
         Left            =   60
         Picture         =   "frmMotion.frx":EE7EF
         Style           =   1  '그래픽
         TabIndex        =   24
         Top             =   -30
         Width           =   810
      End
   End
   Begin VB.CommandButton cmdRvDw 
      Caption         =   "+RvZ"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2925
      Picture         =   "frmMotion.frx":EEB79
      Style           =   1  '그래픽
      TabIndex        =   21
      Top             =   2760
      Width           =   510
   End
   Begin VB.CommandButton cmdRvUp 
      Caption         =   "-RvZ"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   4035
      Picture         =   "frmMotion.frx":EF103
      Style           =   1  '그래픽
      TabIndex        =   20
      Top             =   2760
      Width           =   510
   End
   Begin VB.CommandButton cmdTZero 
      Caption         =   "0°"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   3480
      Picture         =   "frmMotion.frx":EF68D
      Style           =   1  '그래픽
      TabIndex        =   19
      Top             =   3510
      Width           =   510
   End
   Begin VB.CommandButton cmd_PosTheta 
      Caption         =   "+T"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2925
      Picture         =   "frmMotion.frx":EFC17
      Style           =   1  '그래픽
      TabIndex        =   18
      Top             =   3510
      Width           =   510
   End
   Begin VB.CommandButton cmd_NegTheta 
      Caption         =   "T-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   4035
      Picture         =   "frmMotion.frx":F01A1
      Style           =   1  '그래픽
      TabIndex        =   17
      Top             =   3510
      Width           =   510
   End
   Begin VB.TextBox txt_StageMotionMode 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   2430
      TabIndex        =   16
      Text            =   "0"
      Top             =   2805
      Visible         =   0   'False
      Width           =   240
   End
   Begin VB.ComboBox cboRelactivePos 
      Height          =   300
      ItemData        =   "frmMotion.frx":F072B
      Left            =   6420
      List            =   "frmMotion.frx":F072D
      TabIndex        =   10
      Text            =   "0"
      Top             =   9210
      Visible         =   0   'False
      Width           =   1020
   End
   Begin VB.OptionButton Opt_StageMotionMode 
      Caption         =   "상대좌표:"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   2
      Left            =   75
      TabIndex        =   9
      Top             =   3720
      Width           =   1245
   End
   Begin VB.OptionButton Opt_StageMotionMode 
      Caption         =   "절대좌표:"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   1
      Left            =   75
      TabIndex        =   8
      Top             =   3285
      Width           =   1245
   End
   Begin VB.OptionButton Opt_StageMotionMode 
      Caption         =   "Jog"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   0
      Left            =   75
      TabIndex        =   7
      Top             =   2850
      Value           =   -1  'True
      Width           =   705
   End
   Begin VB.TextBox txt_StageMotionMode 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   1365
      TabIndex        =   6
      Text            =   "0"
      Top             =   3240
      Width           =   990
   End
   Begin VB.TextBox txt_StageMotionMode 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   1365
      TabIndex        =   5
      Text            =   "0"
      Top             =   3675
      Width           =   990
   End
   Begin VB.CommandButton cmd_YPos 
      Caption         =   "+  Y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   3480
      Picture         =   "frmMotion.frx":F072F
      Style           =   1  '그래픽
      TabIndex        =   4
      Top             =   2010
      Width           =   510
   End
   Begin VB.CommandButton cmd_YNeg 
      Caption         =   "- Y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   3480
      Picture         =   "frmMotion.frx":F104D
      Style           =   1  '그래픽
      TabIndex        =   3
      Top             =   2760
      Width           =   510
   End
   Begin VB.CommandButton cmd_XNeg 
      Caption         =   "- X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   4035
      Picture         =   "frmMotion.frx":F196B
      Style           =   1  '그래픽
      TabIndex        =   2
      Top             =   2010
      Width           =   510
   End
   Begin VB.CommandButton cmd_XPos 
      Caption         =   "+ X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   2925
      Picture         =   "frmMotion.frx":F2289
      Style           =   1  '그래픽
      TabIndex        =   1
      Top             =   2010
      Width           =   510
   End
   Begin Threed.SSPanel SSPanel9 
      Height          =   300
      Left            =   30
      TabIndex        =   0
      Top             =   1500
      Width           =   6885
      _Version        =   65536
      _ExtentX        =   12144
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Stage / Bridge Axis Manual Motion......................................................"
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
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
         Picture         =   "frmMotion.frx":F2BA7
         Top             =   30
         Width           =   240
      End
   End
   Begin CWUIControlsLib.CWNumEdit CWNumStageMoveSpd 
      Height          =   270
      Index           =   0
      Left            =   4080
      TabIndex        =   11
      Top             =   9690
      Visible         =   0   'False
      Width           =   975
      _Version        =   393218
      _ExtentX        =   1720
      _ExtentY        =   476
      _StockProps     =   4
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Reset_0         =   0   'False
      CompatibleVers_0=   393218
      NumEdit_0       =   1
      ClassName_1     =   "CCWNumEdit"
      opts_1          =   131134
      BorderStyle_1   =   1
      format_1        =   2
      ClassName_2     =   "CCWFormat"
      scale_1         =   3
      ClassName_3     =   "CCWScale"
      opts_3          =   65536
      dMax_3          =   10
      discInterval_3  =   1
      ValueVarType_1  =   5
      IncValueVarType_1=   5
      IncValue_Val_1  =   1
      AccelIncVarType_1=   5
      AccelInc_Val_1  =   5
      RangeMinVarType_1=   5
      RangeMaxVarType_1=   5
      RangeMax_Val_1  =   100
      ButtonStyle_1   =   0
      Bindings_1      =   4
      ClassName_4     =   "CCWBindingHolderArray"
      Editor_4        =   5
      ClassName_5     =   "CCWBindingHolderArrayEditor"
      Owner_5         =   1
   End
   Begin Threed.SSPanel SSPanel1 
      Height          =   300
      Left            =   30
      TabIndex        =   27
      Top             =   4290
      Width           =   6870
      _Version        =   65536
      _ExtentX        =   12118
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     사용자 지정위치...................................................................................."
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
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
         Picture         =   "frmMotion.frx":F3131
         Top             =   30
         Width           =   240
      End
   End
   Begin Threed.SSPanel SSPanel2 
      Height          =   300
      Left            =   30
      TabIndex        =   33
      Top             =   15
      Width           =   6885
      _Version        =   65536
      _ExtentX        =   12144
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     System Status......................................................................................"
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
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
         Index           =   2
         Left            =   45
         Picture         =   "frmMotion.frx":F36BB
         Top             =   30
         Width           =   240
      End
   End
   Begin CWUIControlsLib.CWButton CWB_AutoStart 
      Height          =   825
      Left            =   30
      TabIndex        =   34
      Top             =   315
      Width           =   6900
      _Version        =   393218
      _ExtentX        =   12171
      _ExtentY        =   1455
      _StockProps     =   68
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Reset_0         =   0   'False
      CompatibleVers_0=   393218
      Boolean_0       =   1
      ClassName_1     =   "CCWBoolean"
      opts_1          =   2622
      C[0]_1          =   -2147483643
      Enum_1          =   2
      ClassName_2     =   "CCWEnum"
      Array_2         =   2
      Editor_2        =   0
      Array[0]_2      =   3
      ClassName_3     =   "CCWEnumElt"
      opts_3          =   1
      Name_3          =   "Off"
      frame_3         =   286
      DrawList_3      =   4
      ClassName_4     =   "CDrawList"
      count_4         =   4
      list[4]_4       =   5
      ClassName_5     =   "CCWDrawObj"
      opts_5          =   62
      C[0]_5          =   -2147483640
      C[1]_5          =   -2147483640
      Image_5         =   6
      ClassName_6     =   "CCWTextImage"
      font_6          =   0
      Animator_5      =   0
      Blinker_5       =   0
      list[3]_4       =   7
      ClassName_7     =   "CCWDrawObj"
      opts_7          =   60
      C[0]_7          =   -2147483640
      C[1]_7          =   -2147483640
      Image_7         =   8
      ClassName_8     =   "CCWTextImage"
      szText_8        =   "Processing..."
      font_8          =   0
      Animator_7      =   0
      Blinker_7       =   0
      list[2]_4       =   9
      ClassName_9     =   "CCWDrawObj"
      opts_9          =   62
      C[0]_9          =   -2147483640
      C[1]_9          =   -2147483640
      Image_9         =   10
      ClassName_10    =   "CCWTextImage"
      szText_10       =   "Stand-By"
      font_10         =   0
      Animator_9      =   0
      Blinker_9       =   0
      list[1]_4       =   11
      ClassName_11    =   "CCWDrawObj"
      opts_11         =   62
      C[0]_11         =   19230
      C[1]_11         =   19230
      Image_11        =   12
      ClassName_12    =   "CCWPiccListImage"
      opts_12         =   1280
      Rows_12         =   1
      Cols_12         =   1
      F_12            =   19230
      B_12            =   19230
      ColorReplaceWith_12=   8421504
      ColorReplace_12 =   8421504
      Tolerance_12    =   2
      UsePiccList_12  =   -1  'True
      PiccList_12     =   13
      ClassName_13    =   "CPiccListSquareLED"
      count_13        =   2
      list[2]_13      =   14
      ClassName_14    =   "CCWPicc"
      opts_14         =   62
      Image_14        =   0
      Animator_14     =   0
      Blinker_14      =   0
      Size_14.cx      =   30
      Size_14.cy      =   14
      Model_14.r      =   30
      Model_14.b      =   14
      Actual_14.r     =   460
      Actual_14.b     =   55
      Picc_14         =   412
      Color_14        =   19230
      Name_14         =   "Divot"
      list[1]_13      =   15
      ClassName_15    =   "CCWPicc"
      opts_15         =   62
      Image_15        =   0
      Animator_15     =   0
      Blinker_15      =   0
      Size_15.cx      =   30
      Size_15.cy      =   14
      Model_15.l      =   3
      Model_15.t      =   3
      Model_15.r      =   27
      Model_15.b      =   11
      Actual_15.l     =   3
      Actual_15.t     =   3
      Actual_15.r     =   457
      Actual_15.b     =   52
      Picc_15         =   441
      Color_15        =   19230
      Name_15         =   "Light"
      AllowSetColor_15=   -1  'True
      Animator_11     =   0
      Blinker_11      =   0
      varVarType_3    =   5
      Array[1]_2      =   16
      ClassName_16    =   "CCWEnumElt"
      opts_16         =   1
      Name_16         =   "On"
      frame_16        =   286
      DrawList_16     =   17
      ClassName_17    =   "CDrawList"
      count_17        =   4
      list[4]_17      =   18
      ClassName_18    =   "CCWDrawObj"
      opts_18         =   62
      C[0]_18         =   -2147483640
      C[1]_18         =   -2147483640
      Image_18        =   6
      Animator_18     =   0
      Blinker_18      =   0
      list[3]_17      =   19
      ClassName_19    =   "CCWDrawObj"
      opts_19         =   62
      C[0]_19         =   -2147483640
      C[1]_19         =   -2147483640
      Image_19        =   8
      Animator_19     =   0
      Blinker_19      =   0
      list[2]_17      =   20
      ClassName_20    =   "CCWDrawObj"
      opts_20         =   60
      C[0]_20         =   -2147483640
      C[1]_20         =   -2147483640
      Image_20        =   10
      Animator_20     =   0
      Blinker_20      =   0
      list[1]_17      =   21
      ClassName_21    =   "CCWDrawObj"
      opts_21         =   62
      C[0]_21         =   65380
      C[1]_21         =   65380
      Image_21        =   22
      ClassName_22    =   "CCWPiccListImage"
      opts_22         =   1280
      Rows_22         =   1
      Cols_22         =   1
      F_22            =   65380
      B_22            =   65380
      ColorReplaceWith_22=   8421504
      ColorReplace_22 =   8421504
      Tolerance_22    =   2
      UsePiccList_22  =   -1  'True
      PiccList_22     =   23
      ClassName_23    =   "CPiccListSquareLED"
      count_23        =   2
      list[2]_23      =   24
      ClassName_24    =   "CCWPicc"
      opts_24         =   62
      Image_24        =   0
      Animator_24     =   0
      Blinker_24      =   0
      Size_24.cx      =   30
      Size_24.cy      =   14
      Model_24.r      =   30
      Model_24.b      =   14
      Actual_24.r     =   460
      Actual_24.b     =   55
      Picc_24         =   412
      Color_24        =   65380
      Name_24         =   "Divot"
      list[1]_23      =   25
      ClassName_25    =   "CCWPicc"
      opts_25         =   62
      Image_25        =   0
      Animator_25     =   0
      Blinker_25      =   0
      Size_25.cx      =   30
      Size_25.cy      =   14
      Model_25.l      =   3
      Model_25.t      =   3
      Model_25.r      =   27
      Model_25.b      =   11
      Actual_25.l     =   3
      Actual_25.t     =   3
      Actual_25.r     =   457
      Actual_25.b     =   52
      Picc_25         =   441
      Color_25        =   65380
      Name_25         =   "Light"
      AllowSetColor_25=   -1  'True
      Animator_21     =   0
      Blinker_21      =   26
      ClassName_26    =   "CCWBlinker"
      Interval_26     =   150
      EventID_26      =   7
      Obj_26          =   21
      varVarType_16   =   5
      Bindings_1      =   27
      ClassName_27    =   "CCWBindingHolderArray"
      Editor_27       =   28
      ClassName_28    =   "CCWBindingHolderArrayEditor"
      Owner_28        =   1
      Style_1         =   17
      mechAction_1    =   3
      BGImg_1         =   29
      ClassName_29    =   "CCWDrawObj"
      opts_29         =   62
      Image_29        =   30
      ClassName_30    =   "CCWPictImage"
      opts_30         =   1280
      Rows_30         =   1
      Cols_30         =   1
      Pict_30         =   286
      F_30            =   -2147483633
      B_30            =   -2147483633
      ColorReplaceWith_30=   8421504
      ColorReplace_30 =   8421504
      Tolerance_30    =   2
      Animator_29     =   0
      Blinker_29      =   0
      Array_1         =   6
      Editor_1        =   0
      Array[0]_1      =   11
      Array[1]_1      =   21
      Array[2]_1      =   0
      Array[3]_1      =   0
      Array[4]_1      =   31
      ClassName_31    =   "CCWDrawObj"
      opts_31         =   62
      Image_31        =   8
      Animator_31     =   0
      Blinker_31      =   0
      Array[5]_1      =   32
      ClassName_32    =   "CCWDrawObj"
      opts_32         =   62
      Image_32        =   10
      Animator_32     =   0
      Blinker_32      =   0
      Label_1         =   33
      ClassName_33    =   "CCWDrawObj"
      opts_33         =   62
      C[0]_33         =   -2147483640
      Image_33        =   6
      Animator_33     =   0
      Blinker_33      =   0
   End
   Begin VB.Label lbl_ScrollRow 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   90
      TabIndex        =   46
      Top             =   7755
      Width           =   90
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   6
      Left            =   2400
      Picture         =   "frmMotion.frx":F3C45
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   5
      Left            =   2100
      Picture         =   "frmMotion.frx":1D8A33
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   4
      Left            =   1800
      Picture         =   "frmMotion.frx":1D8FBD
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   3
      Left            =   1470
      Picture         =   "frmMotion.frx":1D9547
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   2
      Left            =   1170
      Picture         =   "frmMotion.frx":1D9AD1
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   1
      Left            =   855
      Picture         =   "frmMotion.frx":1DA05B
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Image Menu_Icon 
      Height          =   240
      Index           =   0
      Left            =   555
      Stretch         =   -1  'True
      Top             =   11070
      Width           =   240
   End
   Begin VB.Label lbl_RowNum 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   90
      TabIndex        =   36
      Top             =   8085
      Width           =   90
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "속도:"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   2
      Left            =   4380
      TabIndex        =   26
      Top             =   9360
      Visible         =   0   'False
      Width           =   450
   End
   Begin VB.Label lblStageRunMode 
      Alignment       =   1  '오른쪽 맞춤
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Jog"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   360
      Index           =   0
      Left            =   1605
      TabIndex        =   22
      Top             =   2760
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "[mm]"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   1
      Left            =   7245
      TabIndex        =   15
      Top             =   10185
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "[mm]"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   3
      Left            =   2385
      TabIndex        =   14
      Top             =   3300
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "[mm]"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   4
      Left            =   2385
      TabIndex        =   13
      Top             =   3765
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "[mm/s]"
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   0
      Left            =   2790
      TabIndex        =   12
      Top             =   9315
      Visible         =   0   'False
      Width           =   540
   End
   Begin VB.Line Line2 
      Visible         =   0   'False
      X1              =   6675
      X2              =   7005
      Y1              =   8355
      Y2              =   8355
   End
   Begin VB.Line Line1 
      Visible         =   0   'False
      X1              =   6915
      X2              =   6915
      Y1              =   8040
      Y2              =   8460
   End
   Begin VB.Menu mnuUserPos 
      Caption         =   "사용자 지정위치"
      Index           =   0
      Begin VB.Menu mnuPopUp 
         Caption         =   "a"
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPopUp 
         Caption         =   "Get Position"
         Index           =   2
      End
      Begin VB.Menu mnuPopUp 
         Caption         =   "Move Select Position"
         Index           =   3
      End
      Begin VB.Menu mnuPopUp 
         Caption         =   "Position Clear"
         Index           =   4
      End
      Begin VB.Menu mnuPopUp 
         Caption         =   "Position Save"
         Index           =   5
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPopUp 
         Caption         =   "──────────▷Cancel◁"
         Index           =   6
      End
   End
   Begin VB.Menu mnuMotionPandant 
      Caption         =   "MotionPandant"
      Begin VB.Menu mnuCapWipUnit 
         Caption         =   "Capping/Wiping Unit Control"
      End
      Begin VB.Menu mnuBalance 
         Caption         =   "Balance Unit Control"
      End
      Begin VB.Menu mnuCancelMotion 
         Caption         =   "──────────▷Cancel◁"
      End
   End
   Begin VB.Menu mnuSysMenu 
      Caption         =   "SystemMenu"
      Begin VB.Menu mnuMotionSetting 
         Caption         =   "Motion Setting"
      End
      Begin VB.Menu mnuPositionSetting 
         Caption         =   "Position Seting"
         Begin VB.Menu mnuCameraOffset 
            Caption         =   "Module내 Head Offset"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuHeadOffset 
            Caption         =   "Head간 Offset설정"
         End
         Begin VB.Menu mnuCpPos 
            Caption         =   "Capping Position"
         End
         Begin VB.Menu mnuWipingPos 
            Caption         =   "Wiping Position"
         End
         Begin VB.Menu mnuBalancePos 
            Caption         =   "저울측정 Position"
         End
      End
      Begin VB.Menu mnuOpticSet 
         Caption         =   "Optic Setting"
      End
      Begin VB.Menu mnuPeriSet 
         Caption         =   "Head controller Setting"
      End
      Begin VB.Menu mnuBanaceLimit 
         Caption         =   "전자저울 Setting"
      End
      Begin VB.Menu mnuSysCancel 
         Caption         =   "──────────▷Cancel◁"
      End
   End
End
Attribute VB_Name = "frmMotion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim m_dSpeedUMac(2, PComm32_km1_XAxis) As Double
Dim m_dSpeedCliffer(2, Cliffer_HdtAxis) As Double
Dim m_nSpeedLevel As Integer
Dim m_dABS As Double
Dim m_dRes As Double

Private Sub Init_Var()
On Error GoTo syserr:

m_nSpeedLevel = 1
optSpeed(m_nSpeedLevel).Value = 1

m_dSpeedUMac(0, PComm32_XAxis) = 400 / 2
m_dSpeedUMac(1, PComm32_XAxis) = 100 / 2
m_dSpeedUMac(2, PComm32_XAxis) = 10 / 2

m_dSpeedUMac(0, PComm32_YAxis) = 400 / 2
m_dSpeedUMac(1, PComm32_YAxis) = 100 / 2
m_dSpeedUMac(2, PComm32_YAxis) = 10 / 2

m_dSpeedUMac(0, PComm32_TAxis) = 0.5
m_dSpeedUMac(1, PComm32_TAxis) = 0.3
m_dSpeedUMac(2, PComm32_TAxis) = 0.1

m_dSpeedUMac(0, PComm32_RvZAxis) = 5 / 2
m_dSpeedUMac(1, PComm32_RvZAxis) = 2 / 2
m_dSpeedUMac(2, PComm32_RvZAxis) = 0.1 / 2

m_dSpeedUMac(0, PComm32_HdZAxis) = 1.8
m_dSpeedUMac(1, PComm32_HdZAxis) = 1.5
m_dSpeedUMac(2, PComm32_HdZAxis) = 1

m_dSpeedUMac(0, PComm32_HdZAxis_km) = 1.8
m_dSpeedUMac(1, PComm32_HdZAxis_km) = 1.5
m_dSpeedUMac(2, PComm32_HdZAxis_km) = 1

m_dSpeedUMac(0, PComm32_km1_TAxis) = 20
m_dSpeedUMac(1, PComm32_km1_TAxis) = 10
m_dSpeedUMac(2, PComm32_km1_TAxis) = 5

m_dSpeedUMac(0, PComm32_km2_TAxis) = 20
m_dSpeedUMac(1, PComm32_km2_TAxis) = 10
m_dSpeedUMac(2, PComm32_km2_TAxis) = 5

m_dSpeedUMac(0, PComm32_DW_YAxis) = 10
m_dSpeedUMac(1, PComm32_DW_YAxis) = 5
m_dSpeedUMac(2, PComm32_DW_YAxis) = 2.5

m_dSpeedUMac(0, PComm32_km1_XAxis) = 5
m_dSpeedUMac(1, PComm32_km1_XAxis) = 3
m_dSpeedUMac(2, PComm32_km1_XAxis) = 1

m_dSpeedCliffer(0, Cliffer_HdzAxis) = 5
m_dSpeedCliffer(1, Cliffer_HdzAxis) = 3
m_dSpeedCliffer(2, Cliffer_HdzAxis) = 1

m_dSpeedCliffer(0, Cliffer_HdtAxis) = 8
m_dSpeedCliffer(1, Cliffer_HdtAxis) = 5
m_dSpeedCliffer(2, Cliffer_HdtAxis) = 1
            
Dim dABS As Double
Dim dRes As Double

dABS = CDbl(GetSetting(App.Title, "PRINT_INFO", "MOTION_ABS", "0.000"))
Me.txt_StageMotionMode(1).Text = Format(dABS, "0.000")

dRes = CDbl(GetSetting(App.Title, "PRINT_INFO", "MOTION_RES", "0.000"))
Me.txt_StageMotionMode(2).Text = Format(dRes, "0.000")
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub MoveMotor(ByVal ipAxisNo As Integer, ByVal ipDir As Integer, ByVal ipMsg As String)
    Me.cboAxisSel.Text = ipMsg
     'Call Init_Var
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, ipAxisNo)
    PComm32_JogSpdAccScrvSET ipAxisNo, ip_z_axis_speed#, PComm32_Acc_ms(ipAxisNo), PComm32_Scrv_ms(ipAxisNo)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute ipAxisNo, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step ipAxisNo, CDbl(Me.txt_StageMotionMode(2).Text), ipDir
    End If
End Sub

Private Sub StopMotor(ByVal ipAxisNo As Integer, ByVal Button As Integer)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    PComm32_AxisJogStop ipAxisNo, False
End Sub

Private Sub MoveJog(ByVal ipAxisNo As Integer, ByVal ipDir As Integer, ByVal Button As Integer)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
   'Call Init_Var
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, ipAxisNo)
    PComm32_JogSpdAccScrvSET ipAxisNo, ip_z_axis_speed#, PComm32_Acc_ms(ipAxisNo), PComm32_Scrv_ms(ipAxisNo)
    PComm32_AxisJogMove ipAxisNo, ipDir
End Sub

Private Sub cmd_KMHd1_NegTheta_Click()
    Call MoveMotor(PComm32_km1_TAxis, -1, "km Hdt(1) Axis - 25")
End Sub

Private Sub cmd_KMHd1_NegTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km1_TAxis, -1, Button)
End Sub

Private Sub cmd_KMHd1_NegTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km1_TAxis, Button)
End Sub

Private Sub cmd_KMHd1_PosTheta_Click()
    Call MoveMotor(PComm32_km1_TAxis, 1, "km Hdt(1) Axis - 25")
End Sub

Private Sub cmd_KMHd1_PosTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km1_TAxis, 1, Button)
End Sub

Private Sub cmd_KMHd1_PosTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km1_TAxis, Button)
End Sub

Private Sub cmd_KMHd2_NegTheta_Click()
    Call MoveMotor(PComm32_km2_TAxis, -1, "km Hdt(2) Axis - 26")
End Sub

Private Sub cmd_KMHd2_NegTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km2_TAxis, -1, Button)
End Sub

Private Sub cmd_KMHd2_NegTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km2_TAxis, Button)
End Sub

Private Sub cmd_KMHd2_PosTheta_Click()
    Call MoveMotor(PComm32_km2_TAxis, 1, "km Hdt(2) Axis - 26")
End Sub

Private Sub cmd_KMHd2_PosTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km2_TAxis, 1, Button)
End Sub

Private Sub cmd_KMHd2_PosTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km2_TAxis, Button)
End Sub

Private Sub cmdDW_Neg_Click()
    Call MoveMotor(PComm32_DW_YAxis, -1, "dropwatcher Axis - 27")
End Sub

Private Sub cmdDW_Neg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_DW_YAxis, -1, Button)
End Sub

Private Sub cmdDW_Neg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_DW_YAxis, Button)
End Sub

Private Sub cmdDW_Pos_Click()
    Call MoveMotor(PComm32_DW_YAxis, 1, "dropwatcher Axis - 27")
End Sub

Private Sub cmdDW_Pos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_DW_YAxis, 1, Button)
End Sub

Private Sub cmdDW_Pos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_DW_YAxis, Button)
End Sub

Private Sub cmdKMHz_XNeg_Click()
    Call MoveMotor(PComm32_km1_XAxis, -1, "km Hz X Axis - 28")
End Sub

Private Sub cmdKMHz_XNeg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km1_XAxis, -1, Button)
End Sub

Private Sub cmdKMHz_XNeg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km1_XAxis, Button)
End Sub

Private Sub cmdKMHz_XPos_Click()
    Call MoveMotor(PComm32_km1_XAxis, 1, "km Hz X Axis - 28")
End Sub

Private Sub cmdKMHz_XPos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_km1_XAxis, 1, Button)
End Sub

Private Sub cmdKMHz_XPos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_km1_XAxis, Button)
End Sub

Private Sub cmdKMHzDn_Click()
    Call MoveMotor(PComm32_HdZAxis_km, 1, "km Hz Axis - 12")
End Sub

Private Sub cmdKMHzDn_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_HdZAxis_km, 1, Button)
End Sub

Private Sub cmdKMHzDn_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_HdZAxis_km, Button)
End Sub

Private Sub cmdKMHzUp_Click()
    Call MoveMotor(PComm32_HdZAxis_km, -1, "km Hz Axis - 12")
End Sub

Private Sub cmdKMHzUp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MoveJog(PComm32_HdZAxis_km, -1, Button)
End Sub

Private Sub cmdKMHzUp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call StopMotor(PComm32_HdZAxis_km, Button)
End Sub

Private Sub cmdMoveReadyStageYPos_Click()
On Error GoTo syserr:

    'ctrlEnable False, Me
    If MsgBox("Stage Y축을 영점위치로 이동하시겠습니까?", vbQuestion + vbYesNo) = vbNo Then
        ctrlEnable True, Me
        Exit Sub
    End If
    
    mov_Ymm# = 0
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_YAxis)

    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             ip_speed#, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
                             
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, mov_Ymm#
    
    
    cu_time# = PubTimeCheck(True)
    Do
    
        DoEvents
        If PubTimeCheck(False) > 120 Then
            rtnmsg = "Stage Y축 이동완료 OverTime!!"
            cu_time# = PubTimeCheck(True)
            ctrlEnable True, Me
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple
        
    Loop Until PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1
    cu_time# = PubTimeCheck(True)

    ctrlEnable True, Me

Exit Sub
syserr:
    MsgBox Err.Description
End Sub


Private Sub optSpeed_Click(Index As Integer)
On Error GoTo syserr:
    
    m_nSpeedLevel = Index
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub


Sub cboAxisSel_Click()

    On Error Resume Next
    
    Dim nAxisIndex As Integer
        
'    nAxisIndex = CInt(Right(Me.cboAxisSel.Text, 2))
'
'    If nAxisIndex < 10 Then
'
'        USR_frmMotion_AxisIndex = nAxisIndex
'        USR_frmMotion_AbsPos(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_AbsPos(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        USR_frmMotion_StepPos(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_StepPos(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        USR_frmMotion_Speed(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_Speed(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        Me.txt_StageMotionMode(1).Text = USR_frmMotion_AbsPos(USR_frmMotion_AxisIndex)
'        Me.txt_StageMotionMode(2).Text = USR_frmMotion_StepPos(USR_frmMotion_AxisIndex)
'        Me.CWNumStageMoveSpd(0).Value = USR_frmMotion_Speed(USR_frmMotion_AxisIndex)
'    Else
'
'        If nAxisIndex = 11 Then
'            USR_frmMotion_AxisIndex_Cliffer = 0
'        Else
'            USR_frmMotion_AxisIndex_Cliffer = 1
'        End If
'
'        USR_frmMotion_AbsPos_Cliffer(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_AbsPos_Cliffer(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        USR_frmMotion_StepPos_Cliffer(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_StepPos_Cliffer(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        USR_frmMotion_Speed_Cliffer(USR_frmMotion_AxisIndex) = CDbl(GetSetting(App.Title, "LATCH", "USR_frmMotion_Speed_Cliffer(" & _
'                                                                                    CStr(USR_frmMotion_AxisIndex) & ")", "0"))
'        Me.txt_StageMotionMode(1).Text = USR_frmMotion_AbsPos_Cliffer(USR_frmMotion_AxisIndex_Cliffer)
'        Me.txt_StageMotionMode(2).Text = USR_frmMotion_StepPos_Cliffer(USR_frmMotion_AxisIndex_Cliffer)
'        Me.CWNumStageMoveSpd(0).Value = USR_frmMotion_Speed_Cliffer(USR_frmMotion_AxisIndex_Cliffer)
'    End If

End Sub

Private Sub cboRelactivePos_Click()
    
    'Me.txt_StageMotionMode(2).Text = Me.cboRelactivePos.Text
    
End Sub

Private Sub cmd_NegTheta_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    Me.cboAxisSel.Text = "T Axis - 2"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'    Call Me.cboAxisSel_Click
'
'    If USR_frmMotion_Speed(PComm32_TAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_TAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_TAxis)
    PComm32_JogSpdAccScrvSET PComm32_TAxis, ip_speed#, PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_TAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_TAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1
    End If
    
End Sub

Private Sub cmd_NegTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    'PComm32_JogSpdAccScrvSET PComm32_TAxis, USR_frmMotion_Speed(PComm32_TAxis), PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_TAxis)
    PComm32_JogSpdAccScrvSET PComm32_TAxis, ip_speed#, PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)

    PComm32_AxisJogMove PComm32_TAxis, -1
    
End Sub

Private Sub cmd_NegTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    PComm32_AxisJogStop PComm32_TAxis, False
    
End Sub

Private Sub cmd_PosTheta_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    Me.cboAxisSel.Text = "T Axis - 2"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'    Call Me.cboAxisSel_Click
'
'    If USR_frmMotion_Speed(PComm32_TAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_TAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If

    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_TAxis)
    PComm32_JogSpdAccScrvSET PComm32_TAxis, ip_speed#, PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)

    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_TAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_TAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1
    End If

End Sub

Private Sub cmd_PosTheta_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    'PComm32_JogSpdAccScrvSET PComm32_TAxis, USR_frmMotion_Speed(PComm32_TAxis), PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_TAxis)
    PComm32_JogSpdAccScrvSET PComm32_TAxis, ip_speed#, PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)

    PComm32_AxisJogMove PComm32_TAxis, 1
    
End Sub

Private Sub cmd_PosTheta_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_TAxis, False
    
End Sub

Private Sub cmd_XNeg_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    
'    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
'                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
'                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then
'        Exit Sub
'    End If
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
    
    Me.cboAxisSel.Text = "X Axis - 0"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'    Call Me.cboAxisSel_Click
'
'    If USR_frmMotion_Speed(PComm32_XAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_XAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If

    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_XAxis, ip_speed#, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_XAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_XAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1
    End If

End Sub

Private Sub cmd_XNeg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
'    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
'                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
'                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then
'        Exit Sub
'    End If
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
'    If CappingZ_SafetyCheck = False Then
'        MsgBox "Capping Z축 안전위치 이동 후 다시 작동하여 주십시오.", vbCritical
'        Exit Sub
'    End If
    'PComm32_JogSpdAccScrvSET PComm32_XAxis, USR_frmMotion_Speed(PComm32_XAxis), PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_XAxis, ip_speed#, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)

    PComm32_AxisJogMove PComm32_XAxis, -1
    
End Sub


Private Sub cmd_XNeg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_XAxis, False
    
End Sub

Private Sub cmd_XPos_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    'Xaxis Interlock--------
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then
        Exit Sub
    End If
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
    
    Me.cboAxisSel.Text = "X Axis - 0"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'    Call Me.cboAxisSel_Click
'
'    If USR_frmMotion_Speed(PComm32_XAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_XAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_XAxis, ip_speed#, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
        
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_XAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_XAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1
    End If

End Sub

Private Sub cmd_XPos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Body_UP_Check_Sensor_24) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True) Or _
                    (PCI7230_InSignal_Card2QTY(AD7230_DI_Wiping_Body_UP_Check_Sensor_30) = True) Then
        Exit Sub
    End If
    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
'    If CappingZ_SafetyCheck = False Then
'        MsgBox "Capping Z축 안전위치 이동 후 다시 작동하여 주십시오.", vbCritical
'        Exit Sub
'    End If

    'PComm32_JogSpdAccScrvSET PComm32_XAxis, USR_frmMotion_Speed(PComm32_XAxis), PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_XAxis, ip_speed#, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)

    PComm32_AxisJogMove PComm32_XAxis, 1
    
End Sub

Private Sub cmd_XPos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_XAxis, False
    
End Sub

Private Sub cmd_YNeg_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    
    'D212_LimitCheck MDI_Main.MSComm_Srukawa, D212_Axis_X, rtn_dmy%, x_lim%
    'If x_lim% <> 1 Then Exit Sub
    

    
    Me.cboAxisSel.Text = "Y Axis - 1"

    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_YAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, ip_speed#, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
            
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_YAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_YAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1
    End If

End Sub


Private Sub cmd_YNeg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
 
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_YAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, ip_speed#, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)

    PComm32_AxisJogMove PComm32_YAxis, -1
    
End Sub

Private Sub cmd_YNeg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_YAxis, False
    
End Sub

Private Sub cmd_YPos_Click()

    Me.cboAxisSel.Text = "Y Axis - 1"
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_YAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, ip_speed#, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_YAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_YAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1
    End If
    
End Sub

Private Sub cmd_YPos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_YAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, ip_speed#, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMove PComm32_YAxis, 1
    
End Sub

Private Sub cmd_YPos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_YAxis, False
    
End Sub

Private Sub cmdAllAxisStop_Click()

    PComm32_AxisJogStop 0, True
    PComm32_AxisJogStop 0, True, PComm32_ClifferID

End Sub


Private Sub cmdHzDw_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    Me.cboAxisSel.Text = "Hz Axis - 3"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    If USR_frmMotion_Speed(PComm32_HdZAxis) > 1.8 Then
'        ip_z_axis_speed# = 18 'USR_frmMotion_Speed(PComm32_HdZAxis) * 10
'        Me.CWNumStageMoveSpd(0).Value = 1.8
'    Else
'        ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_HdZAxis) * 10
'    End If
'
'    Call Me.cboAxisSel_Click
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_HdZAxis)
    PComm32_JogSpdAccScrvSET PComm32_HdZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_HdZAxis), PComm32_Scrv_ms(PComm32_HdZAxis)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_HdZAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_HdZAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1
    End If
End Sub

Private Sub cmdHzDw_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    'PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 1
    'PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 1
    'PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 1
    'PComm32_DOUT oSm_CameraUpDn_Mtr_Break,
    
    If USR_frmMotion_Speed(PComm32_HdZAxis) > 1.8 Then
        ip_z_axis_speed# = 18 'USR_frmMotion_Speed(PComm32_HdZAxis) * 10
        Me.CWNumStageMoveSpd(0).Value = 1.8
    Else
        ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_HdZAxis) * 10
    End If
    
    'PComm32_JogSpdAccScrvSET PComm32_HdZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_HdZAxis), PComm32_Scrv_ms(PComm32_HdZAxis)
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_HdZAxis)
    PComm32_JogSpdAccScrvSET PComm32_HdZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_HdZAxis), PComm32_Scrv_ms(PComm32_HdZAxis)


    PComm32_AxisJogMove PComm32_HdZAxis, 1
    
End Sub

Private Sub cmdHzDw_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    'PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 0
    'PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 0
    'PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 0
    'PComm32_DOUT oSm_CameraUpDn_Mtr_Break, 0
    PComm32_AxisJogStop PComm32_HdZAxis, False
    
End Sub

Private Sub cmdHzUp_Click()

    Me.cboAxisSel.Text = "Hz Axis - 3"
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_HdZAxis)
    PComm32_JogSpdAccScrvSET PComm32_HdZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_HdZAxis), PComm32_Scrv_ms(PComm32_HdZAxis)
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_HdZAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_HdZAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1
    End If
    
End Sub

Private Sub cmdHzUp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
                
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_HdZAxis)
    PComm32_JogSpdAccScrvSET PComm32_HdZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_HdZAxis), PComm32_Scrv_ms(PComm32_HdZAxis)

    PComm32_AxisJogMove PComm32_HdZAxis, -1
    
End Sub

Private Sub cmdHzUp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    PComm32_AxisJogStop PComm32_HdZAxis, False
End Sub



Private Sub cmdMoveReviewZPos_Click()
On Error GoTo syserr:

    ctrlEnable False, Me
    If MsgBox("저장된 Review Focus위치인 " & Format(gPrintPara.dReviewFocus_Zmm, "0.000") & _
              "mm 위치로 이동하시겠습니까?", vbQuestion + vbYesNo) = vbNo Then
        ctrlEnable True, Me
        Exit Sub
        
    End If
    
    mov_hz# = gPrintPara.dReviewFocus_Zmm
    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_RvZAxis)
    
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, _
                             ip_speed#, _
                             PComm32_Acc_ms(PComm32_RvZAxis), _
                             PComm32_Scrv_ms(PComm32_RvZAxis)
                             
    PComm32_AxisJogMotion_Absoute PComm32_RvZAxis, mov_hz#
    'HdZ Move
    
    cu_time# = PubTimeCheck(True)
    Do
    
        DoEvents
        If PubTimeCheck(False) > 60 Then
            rtnmsg = "Review Z Axis 이동완료 OverTime!!"
            cu_time# = PubTimeCheck(True)
            ctrlEnable True, Me
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple
        
    Loop Until PComm32_AxisStatBit_InPos(PComm32_RvZAxis) = 1
    cu_time# = PubTimeCheck(True)


    ctrlEnable True, Me

Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdQHDT_Neg_Click()
    Me.cboAxisSel.Text = "QHT Axis - 12"
'    If USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) <= 0 Then
'        USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)
'
'    Call Me.cboAxisSel_Click
    
    ip_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdtAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), PComm32_ClifferID

    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.

    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, CDbl(Me.txt_StageMotionMode(1).Text), PComm32_ClifferID
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step Cliffer_HdtAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1, PComm32_ClifferID
    End If
End Sub

Private Sub cmdQHDT_Neg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) <= 0 Then
        USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)
    
    'PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis)
    ip_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdtAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), PComm32_ClifferID

    PComm32_AxisJogMove Cliffer_HdtAxis, -1, PComm32_ClifferID
End Sub

Private Sub cmdQHDT_Neg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdtAxis, False, PComm32_ClifferID
End Sub

Private Sub cmdQHDT_Pos_Click()
    Me.cboAxisSel.Text = "QHT Axis - 12"
'    If USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) <= 0 Then
'        USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)
'
'    Call Me.cboAxisSel_Click
    
    ip_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdtAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), PComm32_ClifferID
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.

    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, CDbl(Me.txt_StageMotionMode(1).Text), PComm32_ClifferID
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step Cliffer_HdtAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1, PComm32_ClifferID
    End If
End Sub

Private Sub cmdQHDT_Pos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) <= 0 Then
        USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis)
    
    'PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis)
    ip_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdtAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, ip_speed#, Cliffer_Acc_ms(Cliffer_HdtAxis), Cliffer_Scrv_ms(Cliffer_HdtAxis), PComm32_ClifferID

    PComm32_AxisJogMove Cliffer_HdtAxis, 1, PComm32_ClifferID
End Sub

Private Sub cmdQHDT_Pos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdtAxis, False, PComm32_ClifferID
End Sub

Private Sub cmdQHDZ_Dw_Click()

    Me.cboAxisSel.Text = "QHz Axis - 11"
'    If USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) <= 0 Then
'        USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)
'
'    Call Me.cboAxisSel_Click
    
    ip_z_axis_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdzAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), PComm32_ClifferID
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.

    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, CDbl(Me.txt_StageMotionMode(1).Text), PComm32_ClifferID
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step Cliffer_HdzAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1, PComm32_ClifferID
    End If
    
End Sub

Private Sub cmdQHDZ_Dw_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) <= 0 Then
        USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)
    
    'PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis)
    ip_z_axis_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdzAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), PComm32_ClifferID

    PComm32_AxisJogMove Cliffer_HdzAxis, 1, PComm32_ClifferID
    
End Sub

Private Sub cmdQHDZ_Dw_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdzAxis, False, PComm32_ClifferID
    
End Sub

Private Sub cmdQHDZ_Up_Click()
    
    Me.cboAxisSel.Text = "QHz Axis - 11"
'    If USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) <= 0 Then
'        USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)
'
'    Call Me.cboAxisSel_Click
    
    ip_z_axis_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdzAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), PComm32_ClifferID
    
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, CDbl(Me.txt_StageMotionMode(1).Text), PComm32_ClifferID
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step Cliffer_HdzAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1, PComm32_ClifferID
    End If
    
End Sub

Private Sub cmdQHDZ_Up_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) <= 0 Then
        USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis)
    
    'PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis)
    
    ip_z_axis_speed# = m_dSpeedCliffer(m_nSpeedLevel, Cliffer_HdzAxis)
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, ip_z_axis_speed#, Cliffer_Acc_ms(Cliffer_HdzAxis), Cliffer_Scrv_ms(Cliffer_HdzAxis), PComm32_ClifferID

    PComm32_AxisJogMove Cliffer_HdzAxis, -1, PComm32_ClifferID
End Sub

Private Sub cmdQHDZ_Up_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop Cliffer_HdzAxis, False, PComm32_ClifferID
End Sub

Private Sub cmdRvDw_Click()

    Me.cboAxisSel.Text = "Rz Axis - 7"
'    If USR_frmMotion_Speed(PComm32_RvZAxis) <= 0 Then
'        USR_frmMotion_Speed(PComm32_RvZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
'
'    Call Me.cboAxisSel_Click
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_RvZAxis)
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
        
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.
    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_RvZAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_RvZAxis, CDbl(Me.txt_StageMotionMode(2).Text), 1
    End If
    
End Sub

Private Sub cmdRvDw_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed(PComm32_RvZAxis) <= 0 Then
        USR_frmMotion_Speed(PComm32_RvZAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
    
    'PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_RvZAxis)
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    
    PComm32_AxisJogMove PComm32_RvZAxis, 1

End Sub

Private Sub cmdRvDw_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_RvZAxis, False
        
End Sub

Private Sub cmdRvUp_Click()

    Me.cboAxisSel.Text = "Rz Axis - 7"
'    If USR_frmMotion_Speed(PComm32_RvZAxis) <= 0 Then
'        USR_frmMotion_Speed(PComm32_RvZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'
'    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
'    Call Me.cboAxisSel_Click

    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_RvZAxis)
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
        
    If Me.Opt_StageMotionMode(0).Value = True Then
        Exit Sub 'Jog모드이면 빠져나간다.

    ElseIf Me.Opt_StageMotionMode(1).Value = True Then 'abs
        If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Absoute PComm32_RvZAxis, CDbl(Me.txt_StageMotionMode(1).Text)
    ElseIf Me.Opt_StageMotionMode(2).Value = True Then 'rel
        If IsNumeric(Me.txt_StageMotionMode(2).Text) = False Then Exit Sub
        PComm32_AxisJogMotion_Step PComm32_RvZAxis, CDbl(Me.txt_StageMotionMode(2).Text), -1
    End If
    
End Sub


Private Sub cmdRvUp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    If USR_frmMotion_Speed(PComm32_RvZAxis) <= 0 Then
        USR_frmMotion_Speed(PComm32_RvZAxis) = Me.CWNumStageMoveSpd(0).Value
    End If
        
    ip_z_axis_speed# = USR_frmMotion_Speed(PComm32_RvZAxis)
    
    'PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)
    
    ip_z_axis_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_RvZAxis)
    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, ip_z_axis_speed#, PComm32_Acc_ms(PComm32_RvZAxis), PComm32_Scrv_ms(PComm32_RvZAxis)

    PComm32_AxisJogMove PComm32_RvZAxis, -1

End Sub

Private Sub cmdRvUp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_StageMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_RvZAxis, False
       
End Sub

Private Sub cmdSaveReviewZPos_Click()
On Error GoTo syserr:
    Call PComm32_PositionReadAllAxis
    If MsgBox("현재 Review Focus위치인 " & Format(PComm32_Position_mm(PComm32_RvZAxis), "0.000") & _
              "mm로 새로 저장 하시겠습니까?", vbQuestion + vbYesNo) = vbNo Then
        ctrlEnable True, Me
        Exit Sub
        
    End If
    
    gPrintPara.dReviewFocus_Zmm = PComm32_Position_mm(PComm32_RvZAxis)
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_REVIEWFOCUS_ZMM", Format(gPrintPara.dReviewFocus_Zmm, "0.000"))
    
Exit Sub
syserr:
    MsgBox Err.Description
    
End Sub

Private Sub cmdTZero_Click()

    'X Axis - 0
    'Y Axis - 1
    'T Axis - 2
    'Hz Axis - 3
    'Rz Axis - 7
    Me.cboAxisSel.Text = "T Axis - 2"
'    If USR_frmMotion_Speed(PComm32_HdZAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_HdZAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If
'    Call Me.cboAxisSel_Click
'
'    If USR_frmMotion_Speed(PComm32_TAxis) = 0 Then
'        USR_frmMotion_Speed(PComm32_TAxis) = Me.CWNumStageMoveSpd(0).Value
'    End If

    ip_speed# = m_dSpeedUMac(m_nSpeedLevel, PComm32_TAxis)
    PComm32_JogSpdAccScrvSET PComm32_TAxis, ip_speed#, PComm32_Acc_ms(PComm32_TAxis), PComm32_Scrv_ms(PComm32_TAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_TAxis, 0#
    
End Sub


Private Sub CWNumStageMoveSpd_ValueChanged(Index As Integer, Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
'
'    If Len(Me.CWNumStageMoveSpd(0).Text) = 1 Then
'        Exit Sub
'    End If
    If IsNumeric(Me.CWNumStageMoveSpd(0).Text) = False Then
        MsgBox "Wrong Data Type!", vbCritical
        Exit Sub
    End If
    
    nAxisIndex = CInt(Right(Me.cboAxisSel.Text, 2))
     
    If nAxisIndex < 10 Then
        USR_frmMotion_Speed(CInt(Right(Me.cboAxisSel.Text, 1))) = CDbl(Me.CWNumStageMoveSpd(0).Text)
        SaveSetting App.Title, "LATCH", "USR_frmMotion_Speed(" & Right(Me.cboAxisSel.Text, 1) & ")", Me.CWNumStageMoveSpd(0).Text
    Else
        
        If nAxisIndex = 11 Then
            USR_frmMotion_AxisIndex_Cliffer = 0
        Else
            USR_frmMotion_AxisIndex_Cliffer = 1
        End If
        
        USR_frmMotion_Speed_Cliffer(USR_frmMotion_AxisIndex_Cliffer) = CDbl(Me.CWNumStageMoveSpd(0).Text)
        SaveSetting App.Title, "LATCH", "USR_frmMotion_Speed_Cliffer(" & USR_frmMotion_AxisIndex_Cliffer & ")", Me.CWNumStageMoveSpd(0).Text
        
    End If
End Sub

Private Sub Form_Load()

    For i% = 1 To 64
        Me.MSFlexGrid1.TextMatrix(i%, 0) = CStr(i%)
    Next i%

    Me.mnuUserPos(0).Visible = False
    Me.mnuMotionPandant.Visible = False
    Me.mnuSysMenu.Visible = False
    
    For i% = 1 To 6
        PopUpMenu_ImageLoad Me, i%, Me.Menu_Icon(i%)
    Next i%

    For i% = 1 To Me.MSFlexGrid1.Rows - 1
        For j% = 1 To Me.MSFlexGrid1.Cols - 1
            frmMotion.MSFlexGrid1.TextMatrix(i%, j%) = GetSetting(App.Title, "LATCH", "(" & CStr(i%) & "," & CStr(j%) & ")", "")
        Next j%
    Next i%
'
'    For i% = 1 To 10
'        cboRelactivePos.AddItem CStr(i%)
'    Next i%
    
'    cboRelactivePos.ListIndex = 0
    
    Call Init_Var

End Sub




Private Sub mnuBalance_Click()

    Load frmBalUnitMov
    frmBalUnitMov.Show
    'OutputDebugString "저울Teaching Pandant UI Loading"

End Sub

Private Sub mnuBalancePos_Click()

    Load frmBalancerPos
    frmBalancerPos.Show
    
End Sub

Private Sub mnuBanaceLimit_Click()

    Load frmBalaceSet
    frmBalaceSet.Show
    'OutputDebugString "저울Limit설정 UI Loading"
    
End Sub

Private Sub mnuCameraOffset_Click()

    'Load frmReviewOffset
    'frmReviewOffset.Show

End Sub

Private Sub mnuCapWipUnit_Click()

    Load frmCappingWiping
    frmCappingWiping.Show
    'OutputDebugString "Cap/Wipe Teaching Pandant UI Loading"
    
End Sub

Private Sub mnuCpPos_Click()

    Load frmCapPos
    frmCapPos.Show

End Sub

Private Sub mnuHeadOffset_Click()

    Load frmReviewOffset
    frmReviewOffset.Show

End Sub

Private Sub mnuMotionSetting_Click()

    Load frmMotionSetting
    frmMotionSetting.Show
    
End Sub

Private Sub mnuOpticSet_Click()

    Load frmReviewOpticSet
    frmReviewOpticSet.Show
    
End Sub

Private Sub mnuPeriSet_Click()

On Error GoTo syserr:

    If g_nHeadType = nLG_Q Then
        Load frmPeriSet
        frmPeriSet.Show
    ElseIf g_nHeadType = nKM Then
        Load frmSetup_KM
        frmSetup_KM.Show
    Else
        MsgBox "선택된 헤드 타입이 이상합니다.", vbExclamation + vbOKOnly
    End If
        
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub mnuPopUp_Click(Index As Integer)

    sel_row% = CInt(frmMotion.lbl_RowNum.Caption)

    ctrlEnable False, Me

    Select Case Index
'        Case 1
'            InputBox_FormIndex = 1
'            Load frmDescriptionInput
'            frmDescriptionInput.Show
'            For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
'                For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
'                    frmMotion.MSFlexGrid1.Row = i%
'                    frmMotion.MSFlexGrid1.Col = j%
'                    frmMotion.MSFlexGrid1.CellBackColor = vbWhite
'                Next j%
'            Next i%
'            frmMotion.MSFlexGrid1.Row = CInt(frmMotion.lbl_RowNum.Caption)
'            Me.txtUsrPosDescription.Visible = False
        Case 2 '포지션 취득
            
            If PComm32_Init_Flag = True Then
                Call PComm32_PositionReadAllAxis
                Call PComm32_PositionReadAllAxis(PComm32_ClifferID)
            End If
        
            If Me.ChkAxisUse(0).Value = 1 Then 'X
                'X 취득
                Me.MSFlexGrid1.TextMatrix(sel_row%, 2) = Format(PComm32_Position_mm(PComm32_XAxis), "0.0000")
            End If
            If Me.ChkAxisUse(1).Value = 1 Then 'Y
                'Y 취득
                Me.MSFlexGrid1.TextMatrix(sel_row%, 3) = Format(PComm32_Position_mm(PComm32_YAxis), "0.0000")
            End If
            If Me.ChkAxisUse(2).Value = 1 Then 'HdZ
                'HdZ 취득
                Me.MSFlexGrid1.TextMatrix(sel_row%, 4) = Format(Cliffer_Position_mm(Cliffer_HdzAxis), "0.0000")
            End If
            If Me.ChkAxisUse(3).Value = 1 Then 'RvZ
                'RvZ 취득 - 디바이스 넷 별도 처리
                Me.MSFlexGrid1.TextMatrix(sel_row%, 5) = Format(PComm32_Position_mm(PComm32_RvZAxis), "0.0000")
            End If
            
            For i% = 1 To Me.MSFlexGrid1.Rows - 1
                For j% = 1 To Me.MSFlexGrid1.Cols - 1
                    Call SaveSetting(App.Title, "LATCH", "(" & CStr(i%) & "," & CStr(j%) & ")", Me.MSFlexGrid1.TextMatrix(i%, j%))
                Next j%
            Next i%
            
        Case 3 '사용자 저장 위치 이동
        
            If PComm32_Init_Flag = False Then
                Exit Sub
                Call PComm32_PositionReadAllAxis
                Call PComm32_PositionReadAllAxis(PComm32_ClifferID)
            End If
            
            If HeadZAxis_SafetyCheck = False Then
            
                MsgBox "Head Z Axis 구동 위험 위치입니다. 수동 상승 후 작동하여 주세요!", vbCritical
                ctrlEnable True, Me
                Exit Sub
                
            End If
        
            On Error Resume Next
            mov_x# = CDbl(Me.MSFlexGrid1.TextMatrix(sel_row%, 2))
            mov_y# = CDbl(Me.MSFlexGrid1.TextMatrix(sel_row%, 3))
            mov_hz# = CDbl(Me.MSFlexGrid1.TextMatrix(sel_row%, 4))
            mov_rz# = CDbl(Me.MSFlexGrid1.TextMatrix(sel_row%, 5))
            Err.Clear
                        
'            strMsg$ = "XY축이 구동하기전 Head Z축을 안전위치로 이동후 구동하시겠습니까?"
'            dSaftyZmm# = 0
'
'            If MsgBox(strMsg$ & " -> Hz = " & CStr(dSaftyZmm#) & "mm", vbQuestion + vbYesNo) = vbYes Then
'
'                PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
'                                         USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis), _
'                                         Cliffer_Acc_ms(Cliffer_HdzAxis), _
'                                         Cliffer_Scrv_ms(Cliffer_HdzAxis), _
'                                         PComm32_ClifferID
'
'                PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dSaftyZmm#, PComm32_ClifferID
'                'HdZ Move
'
'                cu_time# = PubTimeCheck(True)
'                Do
'                    DoEvents
'                    If PubTimeCheck(False) > 60 Then
'                        rtnmsg = "Head Z Axis 안전위치 이동완료 OverTime!!"
'                        cu_time# = PubTimeCheck(True)
'                        ctrlEnable True, Me
'                        Exit Sub
'                    End If
'                    Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
'                Loop Until Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1
'                cu_time# = PubTimeCheck(True)
'
'            End If
            
            If Me.ChkAxisUse(0).Value = 1 Then 'X
                
                PComm32_JogSpdAccScrvSET PComm32_XAxis, 100, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
                PComm32_AxisJogMotion_Absoute PComm32_XAxis, mov_x#
                'X Move
                
            End If
            If Me.ChkAxisUse(1).Value = 1 Then 'Y
            
                PComm32_JogSpdAccScrvSET PComm32_YAxis, 100, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
                PComm32_AxisJogMotion_Absoute PComm32_YAxis, mov_y#
                'Y Move
                
            End If
            cu_time# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 60 Then
                    rtnmsg = "XY Axis 이동완료 OverTime!!"
                    cu_time# = PubTimeCheck(True)
                    ctrlEnable True, Me
                    Exit Sub
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
            cu_time# = PubTimeCheck(True)
            
            
            
            
            
            
            
            If Me.ChkAxisUse(2).Value = 1 Then 'HdZ
            
                If MsgBox("Head Z축을 이동 하시겠습니까? -> Hz = " & CStr(mov_hz#) & "mm", vbQuestion + vbYesNo) = vbYes Then
                
                    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                                             USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis), _
                                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                                             PComm32_ClifferID
                                             
                    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, mov_hz#, PComm32_ClifferID
                    'HdZ Move
                    
                    cu_time# = PubTimeCheck(True)
                    Do
                        DoEvents
                        If PubTimeCheck(False) > 60 Then
                            rtnmsg = "Head Z Axis 이동완료 OverTime!!"
                            cu_time# = PubTimeCheck(True)
                            ctrlEnable True, Me
                            Exit Sub
                        End If
                        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
                    Loop Until Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1
                    cu_time# = PubTimeCheck(True)
                    
                End If
                
            End If
            If Me.ChkAxisUse(3).Value = 1 Then 'RvZ
                If MsgBox("Review Z축을 이동 하시겠습니까?", vbQuestion + vbYesNo) = vbYes Then
                    'RvZ Move
                    PComm32_JogSpdAccScrvSET PComm32_RvZAxis, _
                                             USR_frmMotion_Speed(PComm32_RvZAxis), _
                                             PComm32_Acc_ms(PComm32_RvZAxis), _
                                             PComm32_Scrv_ms(PComm32_RvZAxis)
                                             
                    PComm32_AxisJogMotion_Absoute PComm32_RvZAxis, mov_rz#
                    
                    cu_time# = PubTimeCheck(True)
                    Do
                        DoEvents
                        If PubTimeCheck(False) > 60 Then
                            rtnmsg = "Review Z Axis 이동완료 OverTime!!"
                            cu_time# = PubTimeCheck(True)
                            ctrlEnable True, Me
                            Exit Sub
                        End If
                        Call PComm32_AxisStatusCheckSimple
                    Loop Until PComm32_AxisStatBit_InPos(PComm32_RvZAxis) = 1
                    cu_time# = PubTimeCheck(True)
                    
                
                End If
            End If
        Case 4 'Row Clear
        
        For c% = 1 To 5
            Me.MSFlexGrid1.TextMatrix(sel_row%, c%) = ""
        Next c%
'
'        Case 5 'Save
'
        Case 6 'Cancel
            For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
                For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
                    frmMotion.MSFlexGrid1.row = i%
                    frmMotion.MSFlexGrid1.Col = j%
                    frmMotion.MSFlexGrid1.CellBackColor = vbWhite
                Next j%
            Next i%
            frmMotion.MSFlexGrid1.row = CInt(frmMotion.lbl_RowNum.Caption)
            Me.txtUsrPosDescription.Visible = False
            
    End Select
    
    For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
        For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
            frmMotion.MSFlexGrid1.row = i%
            frmMotion.MSFlexGrid1.Col = j%
            frmMotion.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%
    frmMotion.MSFlexGrid1.row = CInt(frmMotion.lbl_RowNum.Caption)
    Me.txtUsrPosDescription.Visible = False
    ctrlEnable True, Me
    '그리드 내용 자동 저장함.
    
End Sub

Private Sub mnuWipingPos_Click()

    Load frmWipingPos
    frmWipingPos.Show

End Sub

Private Sub MSFlexGrid1_Click()

    text_box_fixed_x& = 345 '420
    text_box_fixed_y& = 4695 '4710
    text_box_move_y& = 270 '285

    frmMotion.lbl_RowNum.Caption = frmMotion.MSFlexGrid1.row
    For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
        For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
            frmMotion.MSFlexGrid1.row = i%
            frmMotion.MSFlexGrid1.Col = j%
            frmMotion.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%
    frmMotion.MSFlexGrid1.row = CInt(frmMotion.lbl_RowNum.Caption)
    
    For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
        frmMotion.MSFlexGrid1.Col = j%
        frmMotion.MSFlexGrid1.CellBackColor = vbYellow
    Next j%

    Me.lbl_ScrollRow.Caption = (CInt(frmMotion.lbl_RowNum.Caption) - frmMotion.MSFlexGrid1.TopRow) ' + 1
    Me.txtUsrPosDescription.Move text_box_fixed_x&, text_box_fixed_y& + (text_box_move_y& * Me.lbl_ScrollRow.Caption)
    Me.txtUsrPosDescription.Text = frmMotion.MSFlexGrid1.TextMatrix(CInt(frmMotion.lbl_RowNum.Caption), 1)
    Me.txtUsrPosDescription.Visible = True
    Me.txtUsrPosDescription.SetFocus
    
End Sub

Private Sub MSFlexGrid1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    If Button <> 2 Then Exit Sub
    
    frmMotion.lbl_RowNum.Caption = frmMotion.MSFlexGrid1.row
    For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
        For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
            frmMotion.MSFlexGrid1.row = i%
            frmMotion.MSFlexGrid1.Col = j%
            frmMotion.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%

    frmMotion.MSFlexGrid1.row = CInt(frmMotion.lbl_RowNum.Caption)
    For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
        frmMotion.MSFlexGrid1.Col = j%
        frmMotion.MSFlexGrid1.CellBackColor = vbYellow
    Next j%

    User_PopUpMenu Me, Me.mnuUserPos(0), Me.MSFlexGrid1
    Me.txtUsrPosDescription.Visible = False
    
End Sub

Private Sub MSFlexGrid1_Scroll()

    For i% = 1 To frmMotion.MSFlexGrid1.Rows - 1
        For j% = 1 To frmMotion.MSFlexGrid1.Cols - 1
            frmMotion.MSFlexGrid1.row = i%
            frmMotion.MSFlexGrid1.Col = j%
            frmMotion.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%
    Me.txtUsrPosDescription.Visible = False

End Sub

Private Sub Opt_StageMotionMode_Click(Index As Integer)

    Select Case Index
        Case 0
            Me.lblStageRunMode(0).Caption = "Jog"
        Case 1
            Me.lblStageRunMode(0).Caption = "Abs"
        Case 2
            Me.lblStageRunMode(0).Caption = "Rel"
    End Select
    
End Sub

Private Sub txt_StageMotionMode_Change(Index As Integer)

'    On Error Resume Next
    
'    nAxisIndex = CInt(Right(Me.cboAxisSel.Text, 2))
        
'    If nAxisIndex < 10 Then
'        If Index = 1 Then
'            If Me.txt_StageMotionMode(1).Text = "-" Then
'                Exit Sub
'            End If
'            If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then
'                MsgBox "Wrong Data Type!", vbCritical
'                Exit Sub
'            End If
'            USR_frmMotion_AbsPos(CInt(Right(Me.cboAxisSel.Text, 1))) = CDbl(Me.txt_StageMotionMode(1).Text)
'            SaveSetting App.Title, "LATCH", "USR_frmMotion_AbsPos(" & Right(Me.cboAxisSel.Text, 1) & ")", Me.txt_StageMotionMode(1).Text
'        ElseIf Index = 2 Then
'            If Me.txt_StageMotionMode(1).Text = "-" Then
'                Exit Sub
'            End If
'            If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then
'                MsgBox "Wrong Data Type!", vbCritical
'                Exit Sub
'            End If
'            USR_frmMotion_StepPos(CInt(Right(Me.cboAxisSel.Text, 1))) = CDbl(Me.txt_StageMotionMode(2).Text)
'            SaveSetting App.Title, "LATCH", "USR_frmMotion_StepPos(" & Right(Me.cboAxisSel.Text, 1) & ")", Me.txt_StageMotionMode(2).Text
'            rr = Me.txt_StageMotionMode(2).Text 'USR_frmMotion_StepPos(CInt(Right(Me.cboAxisSel.Text, 1)))
'        End If
'    Else
'
'        If nAxisIndex = 11 Then
'            USR_frmMotion_AxisIndex_Cliffer = 0
'        Else
'            USR_frmMotion_AxisIndex_Cliffer = 1
'        End If
'
'        If Index = 1 Then
'            If Me.txt_StageMotionMode(1).Text = "-" Then
'                Exit Sub
'            End If
'            If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then
'                MsgBox "Wrong Data Type!", vbCritical
'                Exit Sub
'            End If
'            USR_frmMotion_AbsPos_Cliffer(USR_frmMotion_AxisIndex_Cliffer) = CDbl(Me.txt_StageMotionMode(1).Text)
'            SaveSetting App.Title, "LATCH", "USR_frmMotion_AbsPos_Cliffer(" & USR_frmMotion_AxisIndex_Cliffer & ")", Me.txt_StageMotionMode(1).Text
'        ElseIf Index = 2 Then
'            If Me.txt_StageMotionMode(1).Text = "-" Then
'                Exit Sub
'            End If
'            If IsNumeric(Me.txt_StageMotionMode(1).Text) = False Then
'                MsgBox "Wrong Data Type!", vbCritical
'                Exit Sub
'            End If
'            USR_frmMotion_StepPos_Cliffer(USR_frmMotion_AxisIndex_Cliffer) = CDbl(Me.txt_StageMotionMode(2).Text)
'            SaveSetting App.Title, "LATCH", "USR_frmMotion_StepPos_Cliffer(" & USR_frmMotion_AxisIndex_Cliffer & ")", Me.txt_StageMotionMode(2).Text
'            rr = Me.txt_StageMotionMode(2).Text 'USR_frmMotion_StepPos(CInt(Right(Me.cboAxisSel.Text, 1)))
'        End If
'    End If

End Sub

Private Sub txt_StageMotionMode_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub

    If IsNumeric(Me.txt_StageMotionMode(Index).Text) = False Then
        MsgBox "Wrong Data Type!", vbCritical
        Exit Sub
    End If
    
    'Init_Var
    strPos$ = Me.txt_StageMotionMode(Index).Text
    
    If Index = 1 Then
        Call SaveSetting(App.Title, "PRINT_INFO", "MOTION_ABS", strPos$)
    ElseIf Index = 2 Then
        Call SaveSetting(App.Title, "PRINT_INFO", "MOTION_RES", strPos$)
    End If
    
Exit Sub
syserr:
    MsgBox Err.Description
    

End Sub

Private Sub txt_StageMotionMode_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo syserr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
syserr:
    MsgBox Err.Description
'    If Index <> 2 Then Exit Sub
'    If KeyAscii <> 13 Then Exit Sub
'
'    If Me.cboRelactivePos.ListCount > 32 Then
'        Me.cboRelactivePos.RemoveItem 32
'    End If
'    Me.cboRelactivePos.AddItem Me.txt_StageMotionMode(2).Text
'    Me.cboRelactivePos.Text = txt_StageMotionMode(2).Text

    
End Sub

Private Sub txtUsrPosDescription_KeyPress(KeyAscii As Integer)

    If KeyAscii <> 13 Then Exit Sub
    
    sel_row% = CInt(frmMotion.lbl_RowNum.Caption)
    If Me.txtUsrPosDescription.Text <> "" Then
        Me.MSFlexGrid1.TextMatrix(sel_row%, 1) = Me.txtUsrPosDescription.Text
    End If
    Me.txtUsrPosDescription.Visible = False

    Call SaveSetting(App.Title, "LATCH", "(" & CStr(sel_row%) & ",1)", Me.MSFlexGrid1.TextMatrix(sel_row%, 1))

End Sub

Private Sub txtUsrPosDescription_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    If Button <> 2 Then Exit Sub
    Me.txtUsrPosDescription.Visible = False
    User_PopUpMenu Me, Me.mnuUserPos(0), Me.txtUsrPosDescription 'Me.MSFlexGrid1
    
End Sub
