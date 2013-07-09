VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmSetup_KM_IJCS 
   Caption         =   "IJCS-1 - System Parameter"
   ClientHeight    =   5970
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15705
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   5970
   ScaleWidth      =   15705
   StartUpPosition =   3  'Windows ±âº»°ª
   Begin TabDlg.SSTab SSTab1 
      Height          =   5985
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15720
      _ExtentX        =   27728
      _ExtentY        =   10557
      _Version        =   393216
      Tabs            =   7
      Tab             =   1
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
      TabCaption(0)   =   "Version"
      TabPicture(0)   =   "frmSetup_KM_IJCS.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).ControlCount=   0
      TabCaption(1)   =   "Trigger setup"
      TabPicture(1)   =   "frmSetup_KM_IJCS.frx":001C
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame3"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame1"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Phase counter setup"
      TabPicture(2)   =   "frmSetup_KM_IJCS.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label21"
      Tab(2).Control(1)=   "Frame7"
      Tab(2).Control(2)=   "Frame8"
      Tab(2).Control(3)=   "Frame9"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Phase Z setup:"
      TabPicture(3)   =   "frmSetup_KM_IJCS.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame11"
      Tab(3).Control(1)=   "Frame10"
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "External I/O setup"
      TabPicture(4)   =   "frmSetup_KM_IJCS.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Frame14"
      Tab(4).Control(1)=   "Frame13"
      Tab(4).Control(2)=   "Frame12"
      Tab(4).ControlCount=   3
      TabCaption(5)   =   "Scan mode setup"
      TabPicture(5)   =   "frmSetup_KM_IJCS.frx":008C
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Frame16"
      Tab(5).Control(1)=   "Frame15"
      Tab(5).ControlCount=   2
      TabCaption(6)   =   "Management tool"
      TabPicture(6)   =   "frmSetup_KM_IJCS.frx":00A8
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Frame18"
      Tab(6).Control(1)=   "Frame17"
      Tab(6).ControlCount=   2
      Begin VB.Frame Frame1 
         Caption         =   "Scan Trigger"
         Height          =   2940
         Left            =   180
         TabIndex        =   83
         Top             =   555
         Width           =   9180
         Begin VB.ComboBox cboTigType 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":00C4
            Left            =   1515
            List            =   "frmSetup_KM_IJCS.frx":00D1
            TabIndex        =   97
            Top             =   450
            Width           =   1800
         End
         Begin VB.ComboBox cboTrgMode 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0121
            Left            =   1515
            List            =   "frmSetup_KM_IJCS.frx":012B
            TabIndex        =   96
            Top             =   1215
            Width           =   1800
         End
         Begin VB.Frame Frame2 
            Caption         =   "when trigger mode is auto trigger"
            Height          =   1275
            Left            =   3705
            TabIndex        =   89
            Top             =   330
            Width           =   5250
            Begin VB.TextBox txtATrgRepeatTime 
               Height          =   330
               Left            =   2640
               TabIndex        =   91
               Text            =   "1"
               Top             =   360
               Width           =   735
            End
            Begin VB.TextBox Text1 
               Height          =   330
               Left            =   2640
               TabIndex        =   90
               Text            =   "1"
               Top             =   780
               Width           =   735
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "Auto trigger Repeat number:"
               Height          =   225
               Left            =   210
               TabIndex        =   95
               Top             =   390
               Width           =   2310
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "time( 1 to 65535 )"
               Height          =   225
               Left            =   3465
               TabIndex        =   94
               Top             =   420
               Width           =   1440
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "Trigger interval:"
               Height          =   225
               Left            =   1260
               TabIndex        =   93
               Top             =   840
               Width           =   1260
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               Caption         =   "time( 1 to 1048575 )"
               Height          =   225
               Left            =   3465
               TabIndex        =   92
               Top             =   840
               Width           =   1650
            End
         End
         Begin VB.Frame Frame5 
            Caption         =   "Trigger"
            Height          =   1170
            Left            =   225
            TabIndex        =   84
            Top             =   1635
            Width           =   8745
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Enable"
               Height          =   585
               Index           =   0
               Left            =   330
               TabIndex        =   88
               Top             =   375
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Disable"
               Height          =   585
               Index           =   1
               Left            =   2100
               TabIndex        =   87
               Top             =   390
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Trigger generation"
               Height          =   585
               Index           =   2
               Left            =   3915
               TabIndex        =   86
               Top             =   390
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Reset auto trigger"
               Height          =   585
               Index           =   3
               Left            =   5790
               TabIndex        =   85
               Top             =   420
               Width           =   1455
            End
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Trigger type"
            Height          =   225
            Left            =   315
            TabIndex        =   99
            Top             =   465
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Trigger mode"
            Height          =   225
            Left            =   315
            TabIndex        =   98
            Top             =   1230
            Width           =   1110
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Flushing Trigger"
         Height          =   2310
         Left            =   180
         TabIndex        =   66
         Top             =   3555
         Width           =   14430
         Begin VB.Frame Frame4 
            Caption         =   "Auto Flushing"
            Height          =   1575
            Left            =   8100
            TabIndex        =   73
            Top             =   600
            Width           =   6225
            Begin VB.TextBox Text2 
               Height          =   330
               Left            =   1710
               TabIndex        =   77
               Text            =   "1"
               Top             =   780
               Width           =   1110
            End
            Begin VB.TextBox Text3 
               Height          =   330
               Left            =   1695
               TabIndex        =   76
               Text            =   "1"
               Top             =   360
               Width           =   1125
            End
            Begin VB.CommandButton cmdAFlush 
               Caption         =   "START"
               Height          =   585
               Index           =   0
               Left            =   4665
               TabIndex        =   75
               Top             =   240
               Width           =   1455
            End
            Begin VB.CommandButton cmdAFlush 
               Caption         =   "STOP"
               Height          =   585
               Index           =   1
               Left            =   4665
               TabIndex        =   74
               Top             =   870
               Width           =   1455
            End
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               Caption         =   "sec( 1 to 1000 )"
               Height          =   225
               Left            =   2940
               TabIndex        =   81
               Top             =   840
               Width           =   1275
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Interval time:"
               Height          =   225
               Left            =   330
               TabIndex        =   80
               Top             =   840
               Width           =   1035
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "time( 1 to 1000000 )"
               Height          =   225
               Left            =   2925
               TabIndex        =   79
               Top             =   420
               Width           =   1650
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Repeat number:"
               Height          =   225
               Left            =   210
               TabIndex        =   78
               Top             =   390
               Width           =   1335
            End
         End
         Begin VB.ComboBox cboFTrgType 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0147
            Left            =   1515
            List            =   "frmSetup_KM_IJCS.frx":0154
            TabIndex        =   72
            Top             =   450
            Width           =   1800
         End
         Begin VB.Frame Frame6 
            Caption         =   "Trigger"
            Height          =   1170
            Left            =   210
            TabIndex        =   67
            Top             =   975
            Width           =   7695
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Reset auto trigger"
               Height          =   585
               Index           =   4
               Left            =   5790
               TabIndex        =   71
               Top             =   420
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Trigger generation"
               Height          =   585
               Index           =   5
               Left            =   3915
               TabIndex        =   70
               Top             =   390
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Disable"
               Height          =   585
               Index           =   6
               Left            =   2100
               TabIndex        =   69
               Top             =   390
               Width           =   1455
            End
            Begin VB.CommandButton cmdTrigger 
               Caption         =   "Enable"
               Height          =   585
               Index           =   7
               Left            =   330
               TabIndex        =   68
               Top             =   375
               Width           =   1455
            End
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Trigger type"
            Height          =   225
            Left            =   315
            TabIndex        =   82
            Top             =   465
            Width           =   960
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Phase counter setup for scan"
         Height          =   1710
         Left            =   -74565
         TabIndex        =   57
         Top             =   555
         Width           =   6300
         Begin VB.ComboBox cboTrgPoint1 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":01A4
            Left            =   1740
            List            =   "frmSetup_KM_IJCS.frx":01B1
            TabIndex        =   61
            Top             =   585
            Width           =   1380
         End
         Begin VB.ComboBox cboTrgPoint2 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":01C4
            Left            =   1740
            List            =   "frmSetup_KM_IJCS.frx":01D1
            TabIndex        =   60
            Top             =   1050
            Width           =   1380
         End
         Begin VB.TextBox Text4 
            Height          =   330
            Left            =   3360
            TabIndex        =   59
            Text            =   "1"
            Top             =   1050
            Width           =   1110
         End
         Begin VB.TextBox Text5 
            Height          =   330
            Left            =   3345
            TabIndex        =   58
            Text            =   "1"
            Top             =   630
            Width           =   1125
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Trigger point 1:"
            Height          =   225
            Left            =   180
            TabIndex        =   65
            Top             =   660
            Width           =   1230
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Trigger point 2:"
            Height          =   225
            Left            =   180
            TabIndex        =   64
            Top             =   1095
            Width           =   1230
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "( 0 to 16777215 )"
            Height          =   225
            Left            =   4575
            TabIndex        =   63
            Top             =   690
            Width           =   1395
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "( 0 to 16777215 )"
            Height          =   225
            Left            =   4575
            TabIndex        =   62
            Top             =   1125
            Width           =   1395
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Phase counter setup for flushing"
         Height          =   1710
         Left            =   -74565
         TabIndex        =   48
         Top             =   2460
         Width           =   6300
         Begin VB.TextBox Text6 
            Height          =   330
            Left            =   3345
            TabIndex        =   52
            Text            =   "1"
            Top             =   630
            Width           =   1125
         End
         Begin VB.TextBox Text7 
            Height          =   330
            Left            =   3360
            TabIndex        =   51
            Text            =   "1"
            Top             =   1050
            Width           =   1110
         End
         Begin VB.ComboBox Combo1 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":01E4
            Left            =   1740
            List            =   "frmSetup_KM_IJCS.frx":01F1
            TabIndex        =   50
            Top             =   1050
            Width           =   1380
         End
         Begin VB.ComboBox Combo2 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0204
            Left            =   1740
            List            =   "frmSetup_KM_IJCS.frx":0211
            TabIndex        =   49
            Top             =   585
            Width           =   1380
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "( 0 to 16777215 )"
            Height          =   225
            Left            =   4575
            TabIndex        =   56
            Top             =   1125
            Width           =   1395
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "( 0 to 16777215 )"
            Height          =   225
            Left            =   4575
            TabIndex        =   55
            Top             =   690
            Width           =   1395
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Trigger point 2:"
            Height          =   225
            Left            =   180
            TabIndex        =   54
            Top             =   1095
            Width           =   1230
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Trigger point 1:"
            Height          =   225
            Left            =   180
            TabIndex        =   53
            Top             =   660
            Width           =   1230
         End
      End
      Begin VB.Frame Frame9 
         Caption         =   "Initial value setup of phase counter"
         Height          =   1710
         Left            =   -67995
         TabIndex        =   43
         Top             =   540
         Width           =   8025
         Begin VB.TextBox Text9 
            Height          =   330
            Left            =   2460
            TabIndex        =   45
            Text            =   "1"
            Top             =   615
            Width           =   1125
         End
         Begin VB.CommandButton Command1 
            Caption         =   "Reset phase counter"
            Height          =   345
            Left            =   5370
            TabIndex        =   44
            Top             =   630
            Width           =   2040
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Set initial counter value:"
            Height          =   225
            Left            =   180
            TabIndex        =   47
            Top             =   660
            Width           =   1935
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "( 0 to 16777215 )"
            Height          =   225
            Left            =   3720
            TabIndex        =   46
            Top             =   690
            Width           =   1395
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "Select fire"
         Height          =   2460
         Left            =   -74715
         TabIndex        =   25
         Top             =   735
         Width           =   12840
         Begin VB.ComboBox Combo3 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0224
            Left            =   1260
            List            =   "frmSetup_KM_IJCS.frx":0231
            TabIndex        =   31
            Top             =   375
            Width           =   1800
         End
         Begin VB.TextBox Text8 
            Height          =   330
            Left            =   2445
            TabIndex        =   30
            Text            =   "212"
            Top             =   885
            Width           =   1125
         End
         Begin VB.TextBox Text10 
            Height          =   330
            Left            =   9195
            TabIndex        =   29
            Text            =   "530"
            Top             =   675
            Width           =   1125
         End
         Begin VB.TextBox Text11 
            Height          =   330
            Left            =   2445
            TabIndex        =   28
            Text            =   "400"
            Top             =   1545
            Width           =   1125
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H80000000&
            Enabled         =   0   'False
            Height          =   330
            Left            =   9195
            TabIndex        =   27
            Text            =   "1887"
            Top             =   1395
            Width           =   1125
         End
         Begin VB.TextBox Text13 
            BackColor       =   &H80000000&
            Enabled         =   0   'False
            Height          =   330
            Left            =   9195
            TabIndex        =   26
            Text            =   "119.811"
            Top             =   1890
            Width           =   1125
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Fire signal:"
            Height          =   225
            Left            =   165
            TabIndex        =   42
            Top             =   450
            Width           =   915
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Encoder input cycle:"
            Height          =   225
            Left            =   165
            TabIndex        =   41
            Top             =   930
            Width           =   1635
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "um( 1.000 to 65535.000)"
            Height          =   225
            Left            =   3705
            TabIndex        =   40
            Top             =   960
            Width           =   2025
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Internal clock firing cycle:"
            Height          =   225
            Left            =   6915
            TabIndex        =   39
            Top             =   720
            Width           =   2025
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "usec( 0.025 to 819.200)"
            Height          =   225
            Left            =   10455
            TabIndex        =   38
            Top             =   750
            Width           =   1950
         End
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            Caption         =   "Speed:"
            Height          =   225
            Left            =   165
            TabIndex        =   37
            Top             =   1635
            Width           =   585
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "mm/sec(1.000 to 65535.000)"
            Height          =   225
            Left            =   3705
            TabIndex        =   36
            Top             =   1620
            Width           =   2385
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Head Frequency:"
            Height          =   225
            Left            =   6915
            TabIndex        =   35
            Top             =   1440
            Width           =   1395
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Hz"
            Height          =   225
            Left            =   10455
            TabIndex        =   34
            Top             =   1470
            Width           =   210
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Resolution:"
            Height          =   225
            Left            =   6915
            TabIndex        =   33
            Top             =   1935
            Width           =   945
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "dpi"
            Height          =   225
            Left            =   10455
            TabIndex        =   32
            Top             =   1965
            Width           =   255
         End
      End
      Begin VB.Frame Frame11 
         Caption         =   "Encoder phase Z setup"
         Height          =   1515
         Left            =   -74610
         TabIndex        =   22
         Top             =   3360
         Width           =   5595
         Begin VB.ComboBox Combo4 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0270
            Left            =   1500
            List            =   "frmSetup_KM_IJCS.frx":027D
            TabIndex        =   23
            Top             =   600
            Width           =   1800
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Fire signal:"
            Height          =   225
            Left            =   405
            TabIndex        =   24
            Top             =   675
            Width           =   915
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "Ack signal"
         Height          =   1170
         Left            =   -74400
         TabIndex        =   20
         Top             =   915
         Width           =   2655
         Begin VB.ComboBox Combo5 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":02AB
            Left            =   405
            List            =   "frmSetup_KM_IJCS.frx":02B5
            TabIndex        =   21
            Top             =   570
            Width           =   1800
         End
      End
      Begin VB.Frame Frame13 
         Caption         =   "Display status"
         Height          =   1170
         Left            =   -71445
         TabIndex        =   18
         Top             =   930
         Width           =   2655
         Begin VB.CheckBox Check1 
            Caption         =   "Extend display status"
            Height          =   225
            Left            =   345
            TabIndex        =   19
            Top             =   525
            Width           =   2115
         End
      End
      Begin VB.Frame Frame14 
         Caption         =   "Select output firing"
         Height          =   2970
         Left            =   -74475
         TabIndex        =   11
         Top             =   2385
         Width           =   5640
         Begin VB.ComboBox Combo6 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":02E1
            Left            =   2040
            List            =   "frmSetup_KM_IJCS.frx":02F1
            TabIndex        =   14
            Top             =   600
            Width           =   1800
         End
         Begin VB.ComboBox Combo7 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0309
            Left            =   2025
            List            =   "frmSetup_KM_IJCS.frx":0319
            TabIndex        =   13
            Top             =   1185
            Width           =   1800
         End
         Begin VB.ComboBox Combo8 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0339
            Left            =   2010
            List            =   "frmSetup_KM_IJCS.frx":0343
            TabIndex        =   12
            Top             =   1755
            Width           =   1800
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Drive unit:"
            Height          =   225
            Left            =   240
            TabIndex        =   17
            Top             =   630
            Width           =   810
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "KMDB:"
            Height          =   225
            Left            =   285
            TabIndex        =   16
            Top             =   1260
            Width           =   555
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Select row:"
            Height          =   225
            Left            =   300
            TabIndex        =   15
            Top             =   1860
            Width           =   900
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "Scan mode setup"
         Height          =   1170
         Left            =   -74010
         TabIndex        =   9
         Top             =   1170
         Width           =   2655
         Begin VB.ComboBox Combo9 
            Height          =   345
            ItemData        =   "frmSetup_KM_IJCS.frx":0355
            Left            =   405
            List            =   "frmSetup_KM_IJCS.frx":0362
            TabIndex        =   10
            Top             =   570
            Width           =   1800
         End
      End
      Begin VB.Frame Frame16 
         Caption         =   "Repetitional scanning"
         Height          =   1170
         Left            =   -73995
         TabIndex        =   7
         Top             =   2700
         Width           =   3945
         Begin VB.CheckBox Check2 
            Caption         =   "Execute repetitional scanning"
            Height          =   225
            Left            =   345
            TabIndex        =   8
            Top             =   525
            Width           =   3225
         End
      End
      Begin VB.Frame Frame17 
         Caption         =   "NV"
         Height          =   1635
         Left            =   -74445
         TabIndex        =   3
         Top             =   735
         Width           =   4410
         Begin VB.CheckBox Check3 
            Caption         =   "MMB"
            Height          =   225
            Left            =   255
            TabIndex        =   6
            Top             =   510
            Width           =   1065
         End
         Begin VB.CheckBox Check4 
            Caption         =   "KMDB"
            Height          =   225
            Left            =   255
            TabIndex        =   5
            Top             =   960
            Width           =   1065
         End
         Begin VB.CommandButton Command2 
            Caption         =   "Save to NV ROM"
            Height          =   585
            Left            =   1710
            TabIndex        =   4
            Top             =   525
            Width           =   2445
         End
      End
      Begin VB.Frame Frame18 
         Caption         =   "Reset Board"
         Height          =   1245
         Left            =   -74490
         TabIndex        =   1
         Top             =   2535
         Width           =   4440
         Begin VB.CommandButton Command3 
            Caption         =   "Reset"
            Height          =   585
            Left            =   1740
            TabIndex        =   2
            Top             =   360
            Width           =   2445
         End
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "* This function becomes effective when ""Phase counter"" is chosen in ""Trigger setup""."
         Height          =   225
         Left            =   -67290
         TabIndex        =   100
         Top             =   3345
         Width           =   6915
      End
   End
End
Attribute VB_Name = "frmSetup_KM_IJCS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
