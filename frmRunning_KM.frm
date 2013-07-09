VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Begin VB.Form frmRunning_KM 
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   6060
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   17160
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6060
   ScaleMode       =   0  '사용자
   ScaleWidth      =   17250
   ShowInTaskbar   =   0   'False
   Begin TabDlg.SSTab SSTab1 
      Height          =   6015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   17115
      _ExtentX        =   30189
      _ExtentY        =   10610
      _Version        =   393216
      Tabs            =   5
      Tab             =   4
      TabsPerRow      =   7
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Printing 설정 && Print"
      TabPicture(0)   =   "frmRunning_KM.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame24"
      Tab(0).Control(1)=   "Frame34"
      Tab(0).Control(2)=   "framePrintPosition"
      Tab(0).Control(3)=   "Frame19"
      Tab(0).Control(4)=   "cmdHeadSetup"
      Tab(0).Control(5)=   "Frame14"
      Tab(0).Control(6)=   "Frame7"
      Tab(0).Control(7)=   "Frame3"
      Tab(0).Control(8)=   "SSPanel2"
      Tab(0).ControlCount=   9
      TabCaption(1)   =   "Offset 관련 Teaching"
      TabPicture(1)   =   "frmRunning_KM.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Maint"
      TabPicture(2)   =   "frmRunning_KM.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      TabCaption(3)   =   "System"
      TabPicture(3)   =   "frmRunning_KM.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).ControlCount=   0
      TabCaption(4)   =   "Dev"
      TabPicture(4)   =   "frmRunning_KM.frx":0070
      Tab(4).ControlEnabled=   -1  'True
      Tab(4).Control(0)=   "Frame1"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "Frame2"
      Tab(4).Control(1).Enabled=   0   'False
      Tab(4).ControlCount=   2
      Begin VB.Frame Frame2 
         Caption         =   "I/O"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3090
         Left            =   195
         TabIndex        =   59
         Top             =   2640
         Width           =   5250
         Begin VB.CheckBox chOut 
            Caption         =   "Roll All Stop"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   3915
            Style           =   1  '그래픽
            TabIndex        =   73
            Top             =   360
            Width           =   1245
         End
         Begin VB.CheckBox chOut 
            Caption         =   "Strobe Switch"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   2970
            Style           =   1  '그래픽
            TabIndex        =   72
            Top             =   2505
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "KM Head 2"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   2970
            Style           =   1  '그래픽
            TabIndex        =   71
            Top             =   2100
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "KM Head 1"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   2970
            Style           =   1  '그래픽
            TabIndex        =   70
            Top             =   1740
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "KM Meniscus"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   8
            Left            =   2970
            Style           =   1  '그래픽
            TabIndex        =   69
            Top             =   1380
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "Maint 전진"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   7
            Left            =   240
            Style           =   1  '그래픽
            TabIndex        =   68
            Top             =   2070
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "Dropwatcher 전진"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            Left            =   240
            Style           =   1  '그래픽
            TabIndex        =   67
            Top             =   1710
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "Dropwatcher 상승"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   255
            Style           =   1  '그래픽
            TabIndex        =   66
            Top             =   1350
            Width           =   2025
         End
         Begin VB.CheckBox chOut 
            Caption         =   "KM T2 Reset"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   2580
            TabIndex        =   65
            Top             =   780
            Width           =   1950
         End
         Begin VB.CheckBox chOut 
            Caption         =   "KM T1 Reset"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   1110
            TabIndex        =   64
            Top             =   765
            Width           =   1365
         End
         Begin VB.CheckBox chOut 
            Caption         =   "Roll run"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   2640
            Style           =   1  '그래픽
            TabIndex        =   63
            Top             =   360
            Width           =   1245
         End
         Begin VB.CheckBox chOut 
            Caption         =   "배출"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   1935
            TabIndex        =   62
            Top             =   390
            Width           =   825
         End
         Begin VB.CheckBox chOut 
            Caption         =   "진공"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1125
            TabIndex        =   61
            Top             =   375
            Width           =   825
         End
         Begin VB.ComboBox cboMaintChNo 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            ItemData        =   "frmRunning_KM.frx":008C
            Left            =   165
            List            =   "frmRunning_KM.frx":0099
            TabIndex        =   60
            Text            =   "1"
            Top             =   375
            Width           =   900
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Hallogen Lamp"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1830
         Left            =   255
         TabIndex        =   56
         Top             =   750
         Width           =   5205
         Begin VB.HScrollBar HScroll_LampVolumn 
            Height          =   300
            Left            =   480
            Max             =   255
            TabIndex        =   57
            Top             =   735
            Width           =   4560
         End
         Begin VB.Label lbl_Volumn 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "--"
            Height          =   180
            Left            =   60
            TabIndex        =   58
            Top             =   810
            Width           =   180
         End
      End
      Begin VB.Frame Frame24 
         Caption         =   "프린트 이미지 폭[mm]"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   915
         Left            =   -74820
         TabIndex        =   53
         Top             =   3225
         Width           =   3600
         Begin VB.TextBox txtPrintImageWidth_mm 
            Alignment       =   2  '가운데 맞춤
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   180
            TabIndex        =   54
            Text            =   "0000.000"
            Top             =   360
            Width           =   990
         End
         Begin VB.Label lblReturnImageYCnt 
            AutoSize        =   -1  'True
            Caption         =   "응답갯수(H): -----------[cnt]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   1350
            TabIndex        =   55
            Top             =   405
            Width           =   2055
         End
      End
      Begin VB.Frame Frame34 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1590
         Left            =   -74820
         TabIndex        =   35
         Top             =   4245
         Width           =   11880
         Begin VB.Frame frameUseNzlInfo 
            Caption         =   "사용 노즐 정보"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1140
            Left            =   210
            TabIndex        =   48
            Top             =   300
            Width           =   2145
            Begin VB.ComboBox cboStartNzlNo 
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   345
               Left            =   1095
               TabIndex        =   50
               Text            =   "1"
               Top             =   330
               Width           =   840
            End
            Begin VB.ComboBox cboEndNzlNo 
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   345
               Left            =   1095
               TabIndex        =   49
               Text            =   "256"
               Top             =   735
               Width           =   840
            End
            Begin VB.Label Label10 
               Caption         =   "시작노즐"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   225
               TabIndex        =   52
               Top             =   420
               Width           =   840
            End
            Begin VB.Label Label22 
               Caption         =   "끝노즐"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   210
               Left            =   315
               TabIndex        =   51
               Top             =   825
               Width           =   840
            End
         End
         Begin VB.Frame Frame44 
            Caption         =   "Printing Path 정보"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1140
            Left            =   2460
            TabIndex        =   41
            Top             =   300
            Width           =   6615
            Begin VB.Label lblTotalBlockScanCnt 
               AutoSize        =   -1  'True
               Caption         =   "Total Path 횟수: 0 / 0"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   150
               TabIndex        =   47
               Top             =   390
               Width           =   1665
            End
            Begin VB.Label lblLastBlockUseNzlCnt 
               AutoSize        =   -1  'True
               Caption         =   "짜투리 노즐개수: 0[cnt]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   2190
               TabIndex        =   46
               Top             =   390
               Width           =   1830
            End
            Begin VB.Label lblOneScanWidth_mm 
               AutoSize        =   -1  'True
               Caption         =   "1-Path 폭: ----.---[mm]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   165
               TabIndex        =   45
               Top             =   795
               Width           =   1740
            End
            Begin VB.Label lblHeadOffset_Angle 
               AutoSize        =   -1  'True
               Caption         =   "Head Angle Offset:--.-[°]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   4200
               TabIndex        =   44
               Top             =   390
               Width           =   1920
            End
            Begin VB.Label lblUseSelectedNzlCnt 
               AutoSize        =   -1  'True
               Caption         =   "사용노즐개수: ---[cnt]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   2190
               TabIndex        =   43
               Top             =   795
               Width           =   1680
            End
            Begin VB.Label lblPrintFrequency_kHz 
               AutoSize        =   -1  'True
               Caption         =   "프린트 주파수: ----.-[kHz]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   4185
               TabIndex        =   42
               Top             =   795
               Width           =   1950
            End
         End
         Begin VB.Frame Frame48 
            Caption         =   "Head 온도"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1140
            Left            =   9195
            TabIndex        =   36
            Top             =   300
            Width           =   2535
            Begin VB.Label lblReserviorTemp 
               AutoSize        =   -1  'True
               Caption         =   "Reservior: 00.0 °C"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   90
               TabIndex        =   40
               Top             =   780
               Width           =   1500
            End
            Begin VB.Label lblHeadTemp 
               AutoSize        =   -1  'True
               Caption         =   "Head: 00.0 °C"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   90
               TabIndex        =   39
               Top             =   390
               Width           =   1155
            End
            Begin VB.Label lblHeaterOn 
               Caption         =   "Off"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   0
               Left            =   1860
               TabIndex        =   38
               Top             =   345
               Width           =   360
            End
            Begin VB.Label lblHeaterOn 
               Caption         =   "Off"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   1
               Left            =   1860
               TabIndex        =   37
               Top             =   735
               Width           =   330
            End
         End
      End
      Begin VB.Frame framePrintPosition 
         Caption         =   "Regist Print Start Position"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   -68805
         TabIndex        =   24
         Top             =   2940
         Width           =   5865
         Begin VB.TextBox txtPrintStart_Ymm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H80000000&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   2595
            TabIndex        =   30
            Text            =   "0"
            Top             =   705
            Width           =   945
         End
         Begin VB.TextBox txtPrintStart_Xmm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H80000000&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   855
            TabIndex        =   29
            Text            =   "0"
            Top             =   705
            Width           =   945
         End
         Begin VB.CommandButton cmdSetPrintOrigin 
            Caption         =   "시작위치 등록"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   765
            Left            =   3630
            TabIndex        =   28
            Top             =   270
            Width           =   1545
         End
         Begin VB.CommandButton cmdMovePrintStartPos 
            Caption         =   "이동"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   765
            Left            =   5235
            TabIndex        =   27
            Top             =   285
            Width           =   510
         End
         Begin VB.TextBox txtPrintOriginXDistance_Xmm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H0000FFFF&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   855
            TabIndex        =   26
            Text            =   "0"
            Top             =   285
            Width           =   945
         End
         Begin VB.TextBox txtPrintOriginXDistance_Ymm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H0000FFFF&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   2595
            TabIndex        =   25
            Text            =   "0"
            Top             =   285
            Width           =   945
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            Caption         =   "SY[mm]"
            Height          =   225
            Left            =   1890
            TabIndex        =   34
            Top             =   750
            Width           =   645
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "SX[mm]"
            Height          =   225
            Left            =   180
            TabIndex        =   33
            Top             =   735
            Width           =   645
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            Caption         =   "ΔX[mm]"
            Height          =   225
            Left            =   180
            TabIndex        =   32
            Top             =   315
            Width           =   630
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "ΔY[mm]"
            Height          =   225
            Left            =   1890
            TabIndex        =   31
            Top             =   330
            Width           =   630
         End
      End
      Begin VB.Frame Frame19 
         Caption         =   "프린팅 속도[mm/s]"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   915
         Left            =   -71115
         TabIndex        =   21
         Top             =   3225
         Width           =   2205
         Begin VB.TextBox txtPrintSpeed_mmPs 
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
            Height          =   300
            Left            =   480
            TabIndex        =   22
            Text            =   "0"
            Top             =   390
            Width           =   1170
         End
      End
      Begin VB.CommandButton cmdHeadSetup 
         Caption         =   "Head Setup"
         Height          =   765
         Left            =   -74310
         TabIndex        =   20
         Top             =   1125
         Width           =   1545
      End
      Begin VB.Frame Frame14 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2550
         Left            =   -62775
         TabIndex        =   7
         Top             =   465
         Width           =   4755
         Begin VB.Frame Frame16 
            Caption         =   "Head 세팅온도[°C]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1170
            Left            =   150
            TabIndex        =   15
            Top             =   195
            Width           =   2145
            Begin VB.TextBox txtReserviorTemp 
               Alignment       =   2  '가운데 맞춤
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Left            =   1260
               TabIndex        =   17
               Text            =   "25"
               Top             =   735
               Width           =   780
            End
            Begin VB.TextBox txtHeadTemp 
               Alignment       =   2  '가운데 맞춤
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Left            =   1260
               TabIndex        =   16
               Text            =   "25"
               Top             =   315
               Width           =   780
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "Head"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   375
               TabIndex        =   19
               Top             =   435
               Width           =   450
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Reservior"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Left            =   255
               TabIndex        =   18
               Top             =   810
               Width           =   795
            End
         End
         Begin VB.Frame Frame36 
            Caption         =   "프린팅 높이[mm]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   840
            Left            =   165
            TabIndex        =   13
            Top             =   1545
            Width           =   2160
            Begin VB.TextBox txtPrintHeight_mm 
               Alignment       =   2  '가운데 맞춤
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Left            =   270
               TabIndex        =   14
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
         End
         Begin VB.Frame Frame37 
            Caption         =   "가감속 거리[mm]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1155
            Left            =   2445
            TabIndex        =   10
            Top             =   195
            Width           =   2160
            Begin VB.TextBox txtPrintAccDist_mm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Left            =   495
               TabIndex        =   11
               Text            =   "0"
               Top             =   765
               Width           =   1170
            End
            Begin VB.Label Label12 
               Caption         =   "변경시 ReviewOffset 새로 설정"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00008000&
               Height          =   450
               Left            =   105
               TabIndex        =   12
               Top             =   285
               Width           =   1965
            End
         End
         Begin VB.Frame Frame47 
            Caption         =   "Glass 두께[mm]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   840
            Left            =   2460
            TabIndex        =   8
            Top             =   1545
            Width           =   2160
            Begin VB.TextBox txtGlassThickness_mm 
               Alignment       =   2  '가운데 맞춤
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Left            =   435
               TabIndex        =   9
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "프린트 진행 로그"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1605
         Left            =   -62775
         TabIndex        =   5
         Top             =   3075
         Width           =   4755
         Begin VB.ListBox List_PrintInfo 
            BackColor       =   &H00808080&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   1185
            Left            =   120
            TabIndex        =   6
            Top             =   300
            Width           =   4425
         End
      End
      Begin VB.Frame Frame3 
         Height          =   1155
         Left            =   -62775
         TabIndex        =   1
         Top             =   4680
         Width           =   4755
         Begin VB.CommandButton cmdSavePrintInfo 
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
            Height          =   885
            Left            =   120
            TabIndex        =   4
            Top             =   195
            Width           =   1365
         End
         Begin VB.CommandButton cmdPrint 
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
            Height          =   885
            Left            =   1530
            TabIndex        =   3
            Top             =   195
            Width           =   1380
         End
         Begin VB.CommandButton cmdRunUV 
            Caption         =   "UV"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   885
            Left            =   3300
            TabIndex        =   2
            Top             =   195
            Width           =   1365
         End
      End
      Begin Threed.SSPanel SSPanel2 
         Height          =   270
         Left            =   -70005
         TabIndex        =   23
         Top             =   4275
         Width           =   3720
         _Version        =   65536
         _ExtentX        =   6562
         _ExtentY        =   476
         _StockProps     =   15
         Caption         =   "Print Information"
         BackColor       =   8421631
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
   End
End
Attribute VB_Name = "frmRunning_KM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub chOut_Click(Index As Integer)
On Error GoTo syserr
    
    Dim nCheckingValue As Integer
    Dim nChannelNo As Integer
    
    nChannelNo = Me.cboMaintChNo.ListIndex
    nCheckingValue = Me.chOut(Index).Value
    
    Select Case (Index)
    
        Case 0  ' Maint 진공
            If nCheckingValue = 1 Then
                Call Set_MaintCupPressure(nChannelNo, Vacuum)
            Else
                Call Set_MaintCupPressure(nChannelNo, Close_valve)
            End If
        Case 1  ' Maint 배출
            If nCheckingValue = 1 Then
                Call Set_MaintCupPressure(nChannelNo, Exhaust)
            Else
                Call Set_MaintCupPressure(nChannelNo, Close_valve)
            End If
        Case 2  ' Roll Run/Stop
            If nCheckingValue = 1 Then
                Call Set_MaintRoll(nChannelNo, True)
                Me.chOut(Index).Caption = "Roll stop"
            Else
                Call Set_MaintRoll(nChannelNo, False)
                Me.chOut(Index).Caption = "Roll run"
            End If
        Case 3  ' KM Theta 1 Reset
            Call Reset_KMThetaMotor(0)
        Case 4  ' KM Theta 2 Reset
            Call Reset_KMThetaMotor(1)
        Case 5  ' DW Up/Down
            If nCheckingValue = 1 Then
                Call Set_DropWatcherSylinder(Up_Sylinder)
                Me.chOut(Index).Caption = "Dropwatcher 하강"
            Else
                Call Set_DropWatcherSylinder(Down_Sylinder)
                Me.chOut(Index).Caption = "Dropwatcher 상승"
            End If
        Case 6  ' DW 전진/후진
            If nCheckingValue = 1 Then
                Call Set_DropWatcherSylinder(Forward_Sylinder)
                Me.chOut(Index).Caption = "Dropwatcher 후진"
            Else
                Call Set_DropWatcherSylinder(Backward_Sylinder)
                Me.chOut(Index).Caption = "Dropwatcher 전진"
            End If
        Case 7  ' Maint 전진/후진
            If nCheckingValue = 1 Then
                Call Set_MaintSylinder(Forward_MSylinder)
                Me.chOut(Index).Caption = "Maint 후진"
            Else
                Call Set_MaintSylinder(Backward_MSylinder)
                Me.chOut(Index).Caption = "Maint 전진"
            End If
        Case 8  ' KM Meniscus/Purge
            If nCheckingValue = 1 Then
                Call Set_KMTankMode(Meniscus_KM)
                Me.chOut(Index).Caption = "KM Purge"
            Else
                Call Set_KMTankMode(Purge_KM)
                Me.chOut(Index).Caption = "KM Meniscus"
            End If
        Case 9  ' KM Head 1( Open/Close )
            If nCheckingValue = 1 Then
                Call Set_KMSettingTank(KM_Head_1, True)
                Me.chOut(Index).Caption = "KM Head 1 Off"
            Else
                Call Set_KMSettingTank(KM_Head_1, False)
                Me.chOut(Index).Caption = "KM Head 1 On"
            End If
        Case 10  ' KM Head 2( Open/Close )
            If nCheckingValue = 1 Then
                Call Set_KMSettingTank(KM_Head_2, True)
                Me.chOut(Index).Caption = "KM Head 2 Off"
            Else
                Call Set_KMSettingTank(KM_Head_2, False)
                Me.chOut(Index).Caption = "KM Head 2 On"
            End If
        Case 11  ' Strobe Switch( Q/KM)
            If nCheckingValue = 1 Then
                Call Set_StrobeSwitch(Q_Head)
                Me.chOut(Index).Caption = "Strobe KM"
            Else
                Call Set_StrobeSwitch(KM_Head)
                Me.chOut(Index).Caption = "Strobe Q"
            End If
            
        Case 12  ' Roll All Stop
            
            Call Set_MaintRoll(Stop_Roll, False)
    End Select

    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub HScroll_LampVolumn_Change()
On Error GoTo syserr
    
    volumn% = HScroll_LampVolumn.Value
    Me.lbl_Volumn.Caption = CStr(volumn%)
    Call LEDCtrl_VolumeControl(MDI_Main.MSComm_LED, volumn%)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

