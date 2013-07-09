VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmRunning 
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   6060
   ClientLeft      =   4050
   ClientTop       =   3405
   ClientWidth     =   17250
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
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6060
   ScaleWidth      =   17250
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer_Main 
      Left            =   16275
      Top             =   240
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   5910
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   17130
      _ExtentX        =   30215
      _ExtentY        =   10425
      _Version        =   393216
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Printing 설정 && Print"
      TabPicture(0)   =   "frmRunning.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame14"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame12"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame7"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame3"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      TabCaption(1)   =   "Offset 관련 Teaching"
      TabPicture(1)   =   "frmRunning.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "frameOffsetTeaching"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame32"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Maint"
      TabPicture(2)   =   "frmRunning.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Frame6"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Frame11"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "Frame2"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "Frame25"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).Control(5)=   "Frame26"
      Tab(2).Control(5).Enabled=   0   'False
      Tab(2).Control(6)=   "Frame31"
      Tab(2).Control(6).Enabled=   0   'False
      Tab(2).Control(7)=   "Frame35"
      Tab(2).Control(7).Enabled=   0   'False
      Tab(2).Control(8)=   "Frame40"
      Tab(2).Control(8).Enabled=   0   'False
      Tab(2).ControlCount=   9
      TabCaption(3)   =   "System"
      TabPicture(3)   =   "frmRunning.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame27"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).Control(1)=   "Frame17"
      Tab(3).Control(1).Enabled=   0   'False
      Tab(3).Control(2)=   "Frame9"
      Tab(3).Control(2).Enabled=   0   'False
      Tab(3).Control(3)=   "Frame46"
      Tab(3).Control(3).Enabled=   0   'False
      Tab(3).Control(4)=   "Frame45"
      Tab(3).Control(4).Enabled=   0   'False
      Tab(3).Control(5)=   "Frame15"
      Tab(3).Control(5).Enabled=   0   'False
      Tab(3).Control(6)=   "Frame4"
      Tab(3).Control(6).Enabled=   0   'False
      Tab(3).Control(7)=   "Frame22"
      Tab(3).Control(7).Enabled=   0   'False
      Tab(3).Control(8)=   "lblPrintSpeed_mmPs"
      Tab(3).Control(8).Enabled=   0   'False
      Tab(3).Control(9)=   "lblPrintHeight_mm"
      Tab(3).Control(9).Enabled=   0   'False
      Tab(3).ControlCount=   10
      TabCaption(4)   =   "DEV"
      TabPicture(4)   =   "frmRunning.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "cmdInterfaceTest"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "txtOriginImagePitch_um"
      Tab(4).Control(1).Enabled=   0   'False
      Tab(4).Control(2)=   "txtSystemImagePitch_um"
      Tab(4).Control(2).Enabled=   0   'False
      Tab(4).Control(3)=   "txtPrintImagePath"
      Tab(4).Control(3).Enabled=   0   'False
      Tab(4).Control(4)=   "cmdUploadPrintImage"
      Tab(4).Control(4).Enabled=   0   'False
      Tab(4).Control(5)=   "cmdBootHeadCtrl"
      Tab(4).Control(5).Enabled=   0   'False
      Tab(4).Control(6)=   "Frame39"
      Tab(4).Control(6).Enabled=   0   'False
      Tab(4).Control(7)=   "Frame1"
      Tab(4).Control(7).Enabled=   0   'False
      Tab(4).Control(8)=   "chkUVLamp(0)"
      Tab(4).Control(8).Enabled=   0   'False
      Tab(4).Control(9)=   "chkUVLamp(1)"
      Tab(4).Control(9).Enabled=   0   'False
      Tab(4).Control(10)=   "chkUVLamp(2)"
      Tab(4).Control(10).Enabled=   0   'False
      Tab(4).Control(11)=   "chkUVLamp(3)"
      Tab(4).Control(11).Enabled=   0   'False
      Tab(4).Control(12)=   "chkUVLamp(4)"
      Tab(4).Control(12).Enabled=   0   'False
      Tab(4).ControlCount=   13
      Begin VB.CommandButton cmdInterfaceTest 
         Caption         =   "DEV( I/F Test)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   765
         Left            =   -59025
         Picture         =   "frmRunning.frx":008C
         Style           =   1  '그래픽
         TabIndex        =   289
         Top             =   5025
         Width           =   1005
      End
      Begin VB.Frame Frame27 
         Caption         =   "프린팅 Frequency[kHz]"
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
         Left            =   -63060
         TabIndex        =   275
         Top             =   4635
         Visible         =   0   'False
         Width           =   2205
         Begin VB.TextBox txtPrintFreq_kHz 
            Alignment       =   2  '가운데 맞춤
            Height          =   330
            Left            =   480
            TabIndex        =   276
            Text            =   "0"
            Top             =   390
            Width           =   1170
         End
      End
      Begin VB.Frame Frame17 
         Caption         =   "                             Ink Level Teaching"
         Height          =   1665
         Left            =   -71370
         TabIndex        =   269
         Top             =   4080
         Width           =   6315
         Begin VB.CheckBox chkDisplayInkLevel 
            Caption         =   "사용시 체크"
            Height          =   225
            Left            =   120
            TabIndex        =   286
            Top             =   15
            Width           =   1335
         End
         Begin VB.Frame Frame20 
            Caption         =   "표기 방법"
            Height          =   1125
            Left            =   4815
            TabIndex        =   282
            Top             =   465
            Width           =   1395
            Begin VB.OptionButton optDisplay 
               Caption         =   "cc"
               Height          =   225
               Index           =   1
               Left            =   255
               TabIndex        =   284
               Top             =   750
               Width           =   585
            End
            Begin VB.OptionButton optDisplay 
               Caption         =   "%"
               Height          =   225
               Index           =   0
               Left            =   255
               TabIndex        =   283
               Top             =   360
               Width           =   585
            End
         End
         Begin VB.Frame Frame10 
            Caption         =   "Real Value"
            Height          =   1125
            Left            =   3105
            TabIndex        =   279
            Top             =   465
            Width           =   1650
            Begin VB.Label lblADC_Value 
               AutoSize        =   -1  'True
               Caption         =   "CH1: --"
               Height          =   225
               Index           =   0
               Left            =   195
               TabIndex        =   281
               Top             =   390
               Width           =   585
            End
            Begin VB.Label lblADC_Value 
               AutoSize        =   -1  'True
               Caption         =   "CH2: --"
               Height          =   225
               Index           =   1
               Left            =   195
               TabIndex        =   280
               Top             =   780
               Width           =   585
            End
         End
         Begin VB.TextBox txtFullInk 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   1725
            TabIndex        =   272
            Text            =   "0"
            Top             =   705
            Width           =   1170
         End
         Begin VB.TextBox txtEmptyInk 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   315
            TabIndex        =   271
            Text            =   "0"
            Top             =   720
            Width           =   1170
         End
         Begin VB.CommandButton cmdSaveInkLevelValue 
            Caption         =   "저장"
            Height          =   345
            Left            =   405
            TabIndex        =   270
            Top             =   1170
            Width           =   2430
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "CH2번은 사용안함"
            ForeColor       =   &H000000C0&
            Height          =   225
            Left            =   3165
            TabIndex        =   285
            Top             =   195
            Width           =   1500
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Full"
            Height          =   225
            Left            =   1740
            TabIndex        =   274
            Top             =   375
            Width           =   300
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Empty"
            Height          =   225
            Left            =   330
            TabIndex        =   273
            Top             =   390
            Width           =   510
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "UV 조사 스테이지 Y 속도 [mm/s]"
         Height          =   930
         Left            =   -61320
         TabIndex        =   266
         Top             =   2715
         Width           =   3180
         Begin VB.TextBox txtUVRunYSpeed_mmPs 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   225
            TabIndex        =   268
            Text            =   "0"
            Top             =   375
            Width           =   1170
         End
         Begin VB.CommandButton cmdSaveUVRunYSpeed 
            Caption         =   "저장"
            Height          =   345
            Left            =   1695
            TabIndex        =   267
            Top             =   360
            Width           =   1365
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Teaching 이미지 설정 [mm]"
         Height          =   1665
         Left            =   -61335
         TabIndex        =   260
         Top             =   915
         Width           =   3180
         Begin VB.TextBox txtTeachingImageDropPitch_mm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   1650
            TabIndex        =   263
            Text            =   "0"
            Top             =   690
            Width           =   1170
         End
         Begin VB.TextBox txtTeachingImageYDistance_mm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   405
            TabIndex        =   262
            Text            =   "0"
            Top             =   705
            Width           =   1170
         End
         Begin VB.CommandButton cmdSaveTeachingImageYDistance_mm 
            Caption         =   "저장"
            Height          =   345
            Left            =   405
            TabIndex        =   261
            Top             =   1170
            Width           =   2430
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Drop-Pitch[mm]"
            Height          =   225
            Left            =   1650
            TabIndex        =   265
            Top             =   405
            Width           =   1290
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Length[mm]"
            Height          =   225
            Left            =   405
            TabIndex        =   264
            Top             =   405
            Width           =   990
         End
      End
      Begin VB.Frame Frame11 
         Caption         =   "Solvent 주입"
         Height          =   4515
         Left            =   -66360
         TabIndex        =   252
         Top             =   930
         Width           =   2355
         Begin VB.Frame Frame8 
            Caption         =   "솔밴트 주입 time[sec]"
            Height          =   1500
            Left            =   90
            TabIndex        =   255
            Top             =   390
            Width           =   2175
            Begin VB.OptionButton optSupplySolvent 
               Caption         =   "Stop"
               Height          =   615
               Index           =   1
               Left            =   1110
               Style           =   1  '그래픽
               TabIndex        =   259
               Top             =   795
               Value           =   -1  'True
               Width           =   900
            End
            Begin VB.OptionButton optSupplySolvent 
               Caption         =   "Start"
               Height          =   615
               Index           =   0
               Left            =   60
               Style           =   1  '그래픽
               TabIndex        =   258
               Top             =   795
               Width           =   960
            End
            Begin VB.TextBox txtSupplySolventTime_sec 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   120
               TabIndex        =   256
               Text            =   "0"
               Top             =   315
               Width           =   1170
            End
            Begin VB.Label lblSupplyTime_sec 
               Caption         =   "--[s]"
               Height          =   225
               Left            =   1335
               TabIndex        =   257
               Top             =   330
               Width           =   810
            End
         End
         Begin VB.Frame Frame42 
            Caption         =   "Continuous switch"
            Height          =   1365
            Left            =   105
            TabIndex        =   253
            Top             =   2970
            Width           =   2160
            Begin VB.CommandButton cmdSolventSupply 
               Caption         =   "Solvent 주입"
               BeginProperty Font 
                  Name            =   "굴림"
                  Size            =   9
                  Charset         =   129
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   120
               TabIndex        =   254
               Top             =   435
               Width           =   1935
            End
         End
      End
      Begin VB.Frame Frame9 
         Caption         =   "Default Data Path"
         Height          =   735
         Left            =   -67710
         TabIndex        =   249
         Top             =   675
         Width           =   8280
         Begin VB.CommandButton cmdSaveRecipePath 
            Caption         =   "저장"
            Height          =   345
            Left            =   6075
            TabIndex        =   251
            Top             =   270
            Width           =   2040
         End
         Begin VB.TextBox txtRecipePath 
            Height          =   330
            Left            =   75
            TabIndex        =   250
            Text            =   "C:\Documents and Settings\Administrator\바탕 화면"
            Top             =   285
            Width           =   5790
         End
      End
      Begin VB.Frame Frame46 
         Caption         =   "Q-Head Zero 높이 저장"
         Height          =   1665
         Left            =   -74760
         TabIndex        =   244
         Top             =   4095
         Width           =   2505
         Begin VB.TextBox txtQHeadHeight_Zero_Zmm 
            Alignment       =   2  '가운데 맞춤
            Height          =   300
            Left            =   1020
            TabIndex        =   247
            Text            =   "0"
            Top             =   420
            Width           =   1170
         End
         Begin VB.CommandButton cmdQHZ_Zero 
            Caption         =   "저장"
            Height          =   345
            Left            =   210
            TabIndex        =   246
            Top             =   1200
            Width           =   2055
         End
         Begin VB.CommandButton cmdReadZHeight 
            Caption         =   "좌표취득"
            Height          =   345
            Left            =   210
            TabIndex        =   245
            Top             =   795
            Width           =   2055
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Z mm"
            Height          =   225
            Left            =   270
            TabIndex        =   248
            Top             =   465
            Width           =   480
         End
      End
      Begin VB.Frame Frame45 
         Caption         =   "Lens 동심축 보정옵셋"
         Height          =   1695
         Left            =   -74730
         TabIndex        =   238
         Top             =   690
         Width           =   2475
         Begin VB.CommandButton cmdSaveLensOffset 
            Caption         =   "Lens offset 저장"
            Height          =   345
            Left            =   165
            TabIndex        =   241
            Top             =   1215
            Width           =   2160
         End
         Begin VB.TextBox txtLensOffset_Xmm 
            Alignment       =   2  '가운데 맞춤
            Height          =   300
            Left            =   1020
            TabIndex        =   240
            Text            =   "0"
            Top             =   420
            Width           =   1170
         End
         Begin VB.TextBox txtLensOffset_Ymm 
            Alignment       =   2  '가운데 맞춤
            Height          =   300
            Left            =   1020
            TabIndex        =   239
            Text            =   "0"
            Top             =   810
            Width           =   1170
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "X mm"
            Height          =   225
            Left            =   270
            TabIndex        =   243
            Top             =   465
            Width           =   480
         End
         Begin VB.Label Label51 
            AutoSize        =   -1  'True
            Caption         =   "Y mm"
            Height          =   225
            Left            =   270
            TabIndex        =   242
            Top             =   840
            Width           =   480
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "Head의 물리적인 0도 세팅"
         Height          =   1410
         Left            =   -74745
         TabIndex        =   234
         Top             =   2565
         Width           =   2490
         Begin VB.TextBox txtQHTZero_Angle 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   1065
            TabIndex        =   236
            Text            =   "0"
            Top             =   420
            Width           =   1170
         End
         Begin VB.CommandButton cmdSaveQHT_ZeroDegree 
            Caption         =   "저장"
            Height          =   345
            Left            =   210
            TabIndex        =   235
            Top             =   900
            Width           =   2160
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Head T [°]"
            Height          =   225
            Left            =   120
            TabIndex        =   237
            Top             =   435
            Width           =   810
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "가감속 옵셋 [mm]"
         Height          =   1665
         Left            =   -71355
         TabIndex        =   231
         Top             =   675
         Width           =   3285
         Begin VB.TextBox txtPrintAccDistOffset_mm 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   990
            TabIndex        =   233
            Text            =   "0"
            Top             =   585
            Width           =   1170
         End
         Begin VB.CommandButton cmdSaveAccDistOffset 
            Caption         =   "저장"
            Height          =   345
            Left            =   405
            TabIndex        =   232
            Top             =   1170
            Width           =   2430
         End
      End
      Begin VB.Frame Frame22 
         Caption         =   "X,Y 이동 속도 [mm]"
         Height          =   1665
         Left            =   -71370
         TabIndex        =   225
         Top             =   2385
         Width           =   3285
         Begin VB.CommandButton cmdSaveXYMoveSpeed_mmPs 
            Caption         =   "저장"
            Height          =   345
            Left            =   405
            TabIndex        =   228
            Top             =   1170
            Width           =   2430
         End
         Begin VB.TextBox txtMoveX_mmPs 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   315
            TabIndex        =   227
            Text            =   "0"
            Top             =   720
            Width           =   1170
         End
         Begin VB.TextBox txtMoveY_mmPs 
            Alignment       =   2  '가운데 맞춤
            BackColor       =   &H00FFFFFF&
            Height          =   300
            Left            =   1725
            TabIndex        =   226
            Text            =   "0"
            Top             =   705
            Width           =   1170
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "X축[mm/s]"
            Height          =   225
            Left            =   330
            TabIndex        =   230
            Top             =   390
            Width           =   855
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Y축[mm/s]"
            Height          =   225
            Left            =   1740
            TabIndex        =   229
            Top             =   375
            Width           =   855
         End
      End
      Begin VB.TextBox txtOriginImagePitch_um 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   -72555
         TabIndex        =   224
         Text            =   "256"
         Top             =   1635
         Width           =   1215
      End
      Begin VB.TextBox txtSystemImagePitch_um 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   -72510
         TabIndex        =   223
         Text            =   "10"
         Top             =   930
         Width           =   1215
      End
      Begin VB.TextBox txtPrintImagePath 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   -71100
         TabIndex        =   222
         Text            =   "D:\LHJ_Work\PI_Alpha_Sys\MainUI\Image Gen\테스트이미지\2000_pixel_50피치_256노즐.bmp"
         Top             =   1710
         Width           =   9045
      End
      Begin VB.CommandButton cmdUploadPrintImage 
         Caption         =   "Upload Print Image"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -74745
         TabIndex        =   221
         Top             =   1530
         Width           =   1995
      End
      Begin VB.CommandButton cmdBootHeadCtrl 
         Caption         =   "Boot"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -74805
         TabIndex        =   220
         Top             =   900
         Width           =   1995
      End
      Begin VB.Frame Frame39 
         Caption         =   "Cliffer I/O - Input"
         Enabled         =   0   'False
         Height          =   2910
         Left            =   -74580
         TabIndex        =   210
         Top             =   2640
         Width           =   2940
         Begin VB.CheckBox chkIn 
            Caption         =   "System Power On"
            Height          =   180
            Index           =   0
            Left            =   225
            TabIndex        =   219
            Top             =   315
            Width           =   1845
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "Reserve"
            Height          =   180
            Index           =   1
            Left            =   225
            TabIndex        =   218
            Top             =   615
            Width           =   1845
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "Emergency Off Switch"
            Height          =   180
            Index           =   2
            Left            =   225
            TabIndex        =   217
            Top             =   900
            Width           =   2205
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "DIO SMPS Status Normal"
            Height          =   180
            Index           =   3
            Left            =   225
            TabIndex        =   216
            Top             =   1185
            Width           =   2445
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "Head Z-Axis Brake On Status"
            Height          =   360
            Index           =   4
            Left            =   225
            TabIndex        =   215
            Top             =   1485
            Width           =   2445
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "UV StandBy"
            Height          =   180
            Index           =   5
            Left            =   240
            TabIndex        =   214
            Top             =   1980
            Width           =   1845
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "UV Life"
            Height          =   180
            Index           =   6
            Left            =   240
            TabIndex        =   213
            Top             =   2205
            Width           =   1845
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "UV Temp"
            Height          =   180
            Index           =   7
            Left            =   240
            TabIndex        =   212
            Top             =   2430
            Width           =   1845
         End
         Begin VB.CheckBox chkIn 
            Caption         =   "Reserve"
            Height          =   180
            Index           =   8
            Left            =   240
            TabIndex        =   211
            Top             =   2670
            Width           =   1845
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Cliffer IO - Output"
         Enabled         =   0   'False
         Height          =   2895
         Left            =   -71505
         TabIndex        =   200
         Top             =   2655
         Width           =   2940
         Begin VB.CheckBox chkOut 
            Caption         =   "솔밴트 펌프 On/OFF"
            Height          =   180
            Index           =   0
            Left            =   240
            TabIndex        =   209
            Top             =   330
            Width           =   1995
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "Buzzer On/Off"
            Height          =   180
            Index           =   1
            Left            =   240
            TabIndex        =   208
            Top             =   600
            Width           =   1995
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "Reservior Heater On/Off"
            Height          =   180
            Index           =   2
            Left            =   240
            TabIndex        =   207
            Top             =   855
            Width           =   2460
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "Head Heater On/Off"
            Height          =   180
            Index           =   3
            Left            =   240
            TabIndex        =   206
            Top             =   1110
            Width           =   2460
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "Head Z-Axis Brake On/Off"
            Height          =   420
            Index           =   4
            Left            =   240
            TabIndex        =   205
            Top             =   1365
            Width           =   2460
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "UV CH1 Lamp ON/OFF"
            Height          =   180
            Index           =   5
            Left            =   240
            TabIndex        =   204
            Top             =   1845
            Width           =   2400
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "UV CH2 Lamp ON/OFF"
            Height          =   180
            Index           =   6
            Left            =   240
            TabIndex        =   203
            Top             =   2100
            Width           =   2520
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "UV CH3 Lamp ON/OFF"
            Height          =   180
            Index           =   7
            Left            =   240
            TabIndex        =   202
            Top             =   2355
            Width           =   2505
         End
         Begin VB.CheckBox chkOut 
            Caption         =   "UV CH4 Lamp ON/OFF"
            Height          =   180
            Index           =   8
            Left            =   240
            TabIndex        =   201
            Top             =   2610
            Width           =   2520
         End
      End
      Begin VB.CheckBox chkUVLamp 
         Caption         =   "UV Lamp - CH1"
         Height          =   615
         Index           =   0
         Left            =   -68250
         Style           =   1  '그래픽
         TabIndex        =   199
         Top             =   2790
         Width           =   2535
      End
      Begin VB.CheckBox chkUVLamp 
         Caption         =   "UV Lamp - CH2"
         Height          =   615
         Index           =   1
         Left            =   -68250
         Style           =   1  '그래픽
         TabIndex        =   198
         Top             =   3465
         Width           =   2535
      End
      Begin VB.CheckBox chkUVLamp 
         Caption         =   "UV Lamp - CH3"
         Height          =   615
         Index           =   2
         Left            =   -68250
         Style           =   1  '그래픽
         TabIndex        =   197
         Top             =   4125
         Width           =   2535
      End
      Begin VB.CheckBox chkUVLamp 
         Caption         =   "UV Lamp - CH4"
         Height          =   615
         Index           =   3
         Left            =   -68250
         Style           =   1  '그래픽
         TabIndex        =   196
         Top             =   4800
         Width           =   2535
      End
      Begin VB.CheckBox chkUVLamp 
         Caption         =   "UV Lamp - All"
         Height          =   615
         Index           =   4
         Left            =   -65625
         Style           =   1  '그래픽
         TabIndex        =   195
         Top             =   2805
         Width           =   2535
      End
      Begin VB.Frame Frame3 
         Height          =   1155
         Left            =   12255
         TabIndex        =   190
         Top             =   4655
         Width           =   4755
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
            TabIndex        =   193
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
            TabIndex        =   192
            Top             =   195
            Width           =   1380
         End
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
            TabIndex        =   191
            Top             =   195
            Width           =   1365
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Stage Align"
         Height          =   3465
         Left            =   -74820
         TabIndex        =   153
         Top             =   915
         Width           =   3315
         Begin VB.CommandButton cmdMove_2nd 
            Caption         =   "이동"
            Height          =   330
            Left            =   1905
            TabIndex        =   161
            Top             =   1035
            Width           =   1095
         End
         Begin VB.CommandButton cmdMove_1st 
            Caption         =   "이동"
            Height          =   330
            Left            =   270
            TabIndex        =   160
            Top             =   1020
            Width           =   1095
         End
         Begin VB.CommandButton cmdRotateStagTheta 
            Caption         =   "회전"
            Height          =   345
            Left            =   600
            TabIndex        =   158
            Top             =   2925
            Width           =   2160
         End
         Begin VB.CommandButton cmdCheck_2nd 
            Caption         =   "두번재 위치 지정"
            Height          =   540
            Left            =   1905
            TabIndex        =   155
            Top             =   450
            Width           =   1095
         End
         Begin VB.CommandButton cmdCheck_1st 
            Caption         =   "첫번재 위치 지정"
            Height          =   540
            Left            =   270
            TabIndex        =   154
            Top             =   435
            Width           =   1095
         End
         Begin VB.Label lblStageAlignResult 
            AutoSize        =   -1  'True
            Caption         =   "수평방향축 보정: ---.--(°)"
            Height          =   225
            Left            =   120
            TabIndex        =   159
            Top             =   2535
            Width           =   1935
         End
         Begin VB.Label lblChecked_2nd 
            AutoSize        =   -1  'True
            Caption         =   "2nd: ----.---(xmm) / ----.---(Ymm)"
            Height          =   225
            Left            =   120
            TabIndex        =   157
            Top             =   2010
            Width           =   2550
         End
         Begin VB.Label lblChecked_1st 
            AutoSize        =   -1  'True
            Caption         =   "1st:  ----.---(xmm) / ----.---(Ymm)"
            Height          =   225
            Left            =   135
            TabIndex        =   156
            Top             =   1560
            Width           =   2535
         End
      End
      Begin VB.Frame Frame25 
         Caption         =   "Purge && Meniscus"
         Height          =   4515
         Left            =   -68820
         TabIndex        =   126
         Top             =   930
         Width           =   2355
         Begin VB.Frame Frame30 
            Caption         =   "Continuous switch"
            Height          =   1365
            Left            =   120
            TabIndex        =   130
            Top             =   2985
            Width           =   2160
            Begin VB.CommandButton cmdPurgeContinue 
               Caption         =   "Purge"
               BeginProperty Font 
                  Name            =   "굴림"
                  Size            =   9
                  Charset         =   129
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   120
               TabIndex        =   131
               Top             =   405
               Width           =   1935
            End
         End
         Begin VB.Frame Frame29 
            Caption         =   "Purge time[sec]"
            Height          =   2100
            Left            =   105
            TabIndex        =   127
            Top             =   360
            Width           =   2160
            Begin VB.CheckBox chkSupplySovent 
               Caption         =   "Solvent 주입"
               Height          =   180
               Left            =   120
               TabIndex        =   194
               Top             =   450
               Width           =   1575
            End
            Begin VB.OptionButton optPurge 
               Caption         =   "Start"
               Height          =   615
               Index           =   0
               Left            =   90
               Style           =   1  '그래픽
               TabIndex        =   187
               Top             =   1395
               Width           =   960
            End
            Begin VB.OptionButton optPurge 
               Caption         =   "Stop"
               Height          =   615
               Index           =   1
               Left            =   1140
               Style           =   1  '그래픽
               TabIndex        =   186
               Top             =   1395
               Value           =   -1  'True
               Width           =   900
            End
            Begin VB.TextBox txtPurgeTime_sec 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   120
               TabIndex        =   128
               Text            =   "0"
               Top             =   840
               Width           =   1170
            End
            Begin VB.Label lblPurgeTime_sec 
               Caption         =   "--[s]"
               Height          =   225
               Left            =   1320
               TabIndex        =   129
               Top             =   870
               Width           =   810
            End
         End
      End
      Begin VB.Frame Frame26 
         Caption         =   "TimerJet"
         Height          =   4515
         Left            =   -71370
         TabIndex        =   118
         Top             =   915
         Width           =   2430
         Begin VB.Frame Frame41 
            Caption         =   "Continuous switch"
            Height          =   1395
            Left            =   120
            TabIndex        =   124
            Top             =   3015
            Width           =   2175
            Begin VB.CommandButton cmdTimerJetContinue 
               Caption         =   "TimerJet"
               BeginProperty Font 
                  Name            =   "굴림"
                  Size            =   9
                  Charset         =   129
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   135
               TabIndex        =   125
               Top             =   405
               Width           =   1935
            End
         End
         Begin VB.Frame Frame38 
            Caption         =   "TimerJet time[sec]"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1650
            Left            =   120
            TabIndex        =   121
            Top             =   1335
            Width           =   2175
            Begin VB.OptionButton optTimerJet 
               Caption         =   "Stop"
               Height          =   615
               Index           =   1
               Left            =   1170
               Style           =   1  '그래픽
               TabIndex        =   189
               Top             =   855
               Value           =   -1  'True
               Width           =   900
            End
            Begin VB.OptionButton optTimerJet 
               Caption         =   "Start"
               Height          =   615
               Index           =   0
               Left            =   120
               Style           =   1  '그래픽
               TabIndex        =   188
               Top             =   855
               Width           =   960
            End
            Begin VB.TextBox txtTimerJet_DelayTime_sec 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   120
               TabIndex        =   122
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
            Begin VB.Label lblTime_sec 
               Caption         =   "--[s]"
               Height          =   225
               Left            =   1335
               TabIndex        =   123
               Top             =   390
               Width           =   795
            End
         End
         Begin VB.Frame Frame28 
            Caption         =   "프린팅 Frequency[kHz]"
            Height          =   795
            Left            =   135
            TabIndex        =   119
            Top             =   405
            Width           =   2175
            Begin VB.TextBox txtJetFrequency_khz 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   300
               Left            =   420
               TabIndex        =   120
               Text            =   "0"
               Top             =   345
               Width           =   1170
            End
         End
      End
      Begin VB.Frame Frame31 
         Caption         =   "Capping"
         Height          =   2715
         Left            =   -63885
         TabIndex        =   106
         Top             =   930
         Width           =   2430
         Begin VB.TextBox txtCapping_QHT_Zmm 
            Alignment       =   2  '가운데 맞춤
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1005
            TabIndex        =   113
            Text            =   "0"
            Top             =   915
            Width           =   1170
         End
         Begin VB.CommandButton cmdMoveCappingPos 
            Caption         =   "Capping 위치 이동"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   105
            TabIndex        =   112
            Top             =   2175
            Width           =   2070
         End
         Begin VB.CommandButton cmdSaveCappingPos 
            Caption         =   "저장"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   1485
            TabIndex        =   111
            Top             =   1740
            Width           =   690
         End
         Begin VB.TextBox txtCapping_QHT_Degree 
            Alignment       =   2  '가운데 맞춤
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1005
            TabIndex        =   110
            Text            =   "0"
            Top             =   1275
            Width           =   1170
         End
         Begin VB.TextBox txtCapping_QHT_Ymm 
            Alignment       =   2  '가운데 맞춤
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1005
            TabIndex        =   109
            Text            =   "0"
            Top             =   570
            Width           =   1170
         End
         Begin VB.CommandButton cmdReadCappingPos 
            Caption         =   "좌표 취득"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   105
            TabIndex        =   108
            Top             =   1740
            Width           =   1275
         End
         Begin VB.TextBox txtCapping_QHT_Xmm 
            Alignment       =   2  '가운데 맞춤
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1005
            TabIndex        =   107
            Text            =   "0"
            Top             =   225
            Width           =   1170
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Z[mm]"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   120
            TabIndex        =   117
            Top             =   990
            Width           =   630
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "QHT[°]"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   135
            TabIndex        =   116
            Top             =   1335
            Width           =   615
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Y[mm]"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   120
            TabIndex        =   115
            Top             =   645
            Width           =   630
         End
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            Caption         =   "X[mm]"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   120
            TabIndex        =   114
            Top             =   300
            Width           =   630
         End
      End
      Begin VB.Frame Frame35 
         Caption         =   "공압라인"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   -71340
         TabIndex        =   44
         Top             =   8600
         Width           =   2280
         Begin VB.CheckBox Check6 
            Caption         =   "--"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   390
            Style           =   1  '그래픽
            TabIndex        =   45
            Top             =   810
            Width           =   1485
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "1: Purge, 2: Meniscus"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   165
            TabIndex        =   46
            Top             =   405
            Width           =   1875
         End
      End
      Begin VB.Frame Frame40 
         Caption         =   "공압라인"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   -71340
         TabIndex        =   41
         Top             =   8600
         Width           =   2280
         Begin VB.CheckBox cmdMeniscusAndPurge 
            Caption         =   "--"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   390
            Style           =   1  '그래픽
            TabIndex        =   42
            Top             =   810
            Width           =   1485
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "1: Purge, 2: Meniscus"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   180
            Left            =   165
            TabIndex        =   43
            Top             =   405
            Width           =   1875
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
         Left            =   12255
         TabIndex        =   33
         Top             =   3050
         Width           =   4755
         Begin VB.ListBox List_PrintInfo 
            BackColor       =   &H00808080&
            ForeColor       =   &H0000FFFF&
            Height          =   1185
            Left            =   120
            TabIndex        =   34
            Top             =   300
            Width           =   4425
         End
      End
      Begin VB.Frame frameOffsetTeaching 
         Height          =   5295
         Left            =   -74790
         TabIndex        =   27
         Top             =   470
         Width           =   16710
         Begin VB.Frame Frame56 
            Caption         =   "Nozzle Pitch Offset"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   1500
            Left            =   14205
            TabIndex        =   163
            Top             =   3660
            Width           =   2280
            Begin VB.CommandButton cmdSaveNozzlePitchOffset_um 
               Caption         =   "Save Offset"
               Height          =   345
               Index           =   3
               Left            =   330
               TabIndex        =   166
               Top             =   1035
               Width           =   1710
            End
            Begin VB.TextBox txtNozzlePitchOffset_um 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   975
               TabIndex        =   164
               Text            =   "0"
               Top             =   570
               Width           =   1170
            End
            Begin VB.Label Label16 
               AutoSize        =   -1  'True
               Caption         =   "Offset[um]"
               Height          =   225
               Left            =   105
               TabIndex        =   167
               Top             =   600
               Width           =   840
            End
            Begin VB.Label lblNozzlePitch_um 
               AutoSize        =   -1  'True
               Caption         =   "노즐 Pitch = ---.---um"
               Height          =   225
               Index           =   0
               Left            =   105
               TabIndex        =   165
               Top             =   285
               Width           =   1680
            End
         End
         Begin VB.Frame Frame55 
            Caption         =   "Offset 초기화"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   2175
            Left            =   14205
            TabIndex        =   143
            Top             =   1320
            Width           =   2280
            Begin VB.CommandButton cmdResetOffsetValues 
               Caption         =   "Image Aling Offset"
               Height          =   345
               Index           =   2
               Left            =   285
               TabIndex        =   146
               Top             =   1530
               Width           =   1710
            End
            Begin VB.CommandButton cmdResetOffsetValues 
               Caption         =   "Head Align Offset"
               Height          =   345
               Index           =   1
               Left            =   285
               TabIndex        =   145
               Top             =   982
               Width           =   1710
            End
            Begin VB.CommandButton cmdResetOffsetValues 
               Caption         =   "ReviewOffset"
               Height          =   345
               Index           =   0
               Left            =   285
               TabIndex        =   144
               Top             =   435
               Width           =   1710
            End
         End
         Begin VB.Frame FrameNzlNo 
            Caption         =   "Live 노즐 && Delay ( 1 ~ 256 )"
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
            Left            =   10755
            TabIndex        =   134
            Top             =   270
            Width           =   5745
            Begin VB.CommandButton cmdFindLiveDelay 
               Caption         =   "..."
               Height          =   345
               Index           =   1
               Left            =   3390
               TabIndex        =   137
               Top             =   345
               Width           =   465
            End
            Begin VB.TextBox txtNozzleParamsFilePath 
               BackColor       =   &H80000000&
               Height          =   360
               Index           =   1
               Left            =   90
               TabIndex        =   136
               Text            =   "Nozzle Params Path"
               Top             =   345
               Width           =   3240
            End
            Begin VB.CommandButton cmdLoadNzlParamsForm 
               Caption         =   "Edit Nozzle Para"
               Height          =   345
               Index           =   1
               Left            =   3930
               TabIndex        =   135
               Top             =   330
               Width           =   1710
            End
         End
         Begin VB.Frame Frame54 
            Caption         =   "Trigger Setting Position"
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
            Left            =   6990
            TabIndex        =   132
            Top             =   270
            Width           =   3705
            Begin VB.Label lblTriggerPosInfo 
               AutoSize        =   -1  'True
               Caption         =   "SY: 0000.000 [Ymm] / EY: 0000.000 [Ymm]"
               Height          =   225
               Left            =   105
               TabIndex        =   133
               Top             =   390
               Width           =   3465
            End
         End
         Begin VB.Frame Frame53 
            Caption         =   "Step 3. 검 증"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1515
            Left            =   10335
            TabIndex        =   102
            Top             =   3645
            Width           =   3795
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "이동"
               Height          =   345
               Index           =   16
               Left            =   1890
               TabIndex        =   149
               Top             =   660
               Width           =   510
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "2. Print                  "
               Height          =   345
               Index           =   5
               Left            =   150
               TabIndex        =   104
               Top             =   1065
               Width           =   1710
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "1. 기준 위치 지정"
               Height          =   345
               Index           =   4
               Left            =   150
               TabIndex        =   103
               Top             =   660
               Width           =   1710
            End
            Begin VB.Label lblConfirmPrintPos 
               AutoSize        =   -1  'True
               Caption         =   "기준: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   300
               TabIndex        =   105
               Top             =   315
               Width           =   3195
            End
         End
         Begin VB.Frame Frame52 
            Caption         =   "Step 2. Image Angle 추가 보정 "
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1515
            Left            =   105
            TabIndex        =   85
            Top             =   3645
            Width           =   10110
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "이동"
               Height          =   345
               Index           =   15
               Left            =   2070
               TabIndex        =   148
               Top             =   540
               Width           =   510
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "5. Offset 계산 "
               Height          =   345
               Index           =   13
               Left            =   8265
               TabIndex        =   90
               Top             =   1065
               Width           =   1710
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "4. Drop 끝점 확인"
               Height          =   345
               Index           =   12
               Left            =   6315
               TabIndex        =   89
               Top             =   1065
               Width           =   1710
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "3. Drop 시작점 확인"
               Height          =   345
               Index           =   11
               Left            =   4350
               TabIndex        =   88
               Top             =   1065
               Width           =   1740
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "2. Print                 "
               Height          =   345
               Index           =   10
               Left            =   315
               TabIndex        =   87
               Top             =   960
               Width           =   1710
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "1. 기준 위치 지정"
               Height          =   345
               Index           =   9
               Left            =   315
               TabIndex        =   86
               Top             =   540
               Width           =   1710
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "( 해당 기능은 Image  Angle이 안맞을 때 사용하세요. )"
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
               Height          =   225
               Left            =   2715
               TabIndex        =   139
               Top             =   -15
               Width           =   4500
            End
            Begin VB.Label lblIPrintOriginImageAngle 
               AutoSize        =   -1  'True
               Caption         =   "기준: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   2805
               TabIndex        =   138
               Top             =   555
               Width           =   3195
            End
            Begin VB.Label lblImageAngleOffset_End 
               AutoSize        =   -1  'True
               Caption         =   "끝        점: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   6285
               TabIndex        =   101
               Top             =   705
               Width           =   3555
            End
            Begin VB.Label lblImageAngleOffset_Start 
               AutoSize        =   -1  'True
               Caption         =   "시  작  점: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   6285
               TabIndex        =   100
               Top             =   360
               Width           =   3555
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   ">>>>>>>>"
               Height          =   225
               Left            =   3015
               TabIndex        =   99
               Top             =   1125
               Width           =   840
            End
         End
         Begin VB.Frame Frame51 
            Caption         =   "Step 1."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2175
            Left            =   120
            TabIndex        =   73
            Top             =   1320
            Width           =   14010
            Begin VB.Frame Frame57 
               Caption         =   "사용 노즐 지정"
               Height          =   1005
               Left            =   11910
               TabIndex        =   171
               Top             =   1065
               Width           =   1995
               Begin VB.ComboBox cboNzlNo_2nd 
                  BeginProperty Font 
                     Name            =   "Arial"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   330
                  Left            =   900
                  TabIndex        =   173
                  Top             =   615
                  Width           =   1035
               End
               Begin VB.ComboBox cboNzlNo_1st 
                  BeginProperty Font 
                     Name            =   "Arial"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   330
                  Left            =   900
                  TabIndex        =   172
                  Top             =   240
                  Width           =   1035
               End
               Begin VB.Label Label17 
                  AutoSize        =   -1  'True
                  Caption         =   "End  No."
                  Height          =   225
                  Left            =   135
                  TabIndex        =   175
                  Top             =   645
                  Width           =   705
               End
               Begin VB.Label Label2 
                  AutoSize        =   -1  'True
                  Caption         =   "Start No."
                  Height          =   225
                  Left            =   135
                  TabIndex        =   174
                  Top             =   300
                  Width           =   705
               End
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "이동"
               Height          =   345
               Index           =   14
               Left            =   2085
               TabIndex        =   147
               Top             =   300
               Width           =   510
            End
            Begin VB.Frame Frame50 
               Caption         =   "Head Align Offset"
               Height          =   855
               Left            =   8130
               TabIndex        =   79
               Top             =   210
               Width           =   5775
               Begin VB.CommandButton cmdReviewOffset 
                  Caption         =   "3. Drop 시작점 확인"
                  Height          =   345
                  Index           =   7
                  Left            =   195
                  TabIndex        =   82
                  Top             =   345
                  Width           =   1740
               End
               Begin VB.CommandButton cmdReviewOffset 
                  Caption         =   "4. Drop 끝점 확인"
                  Height          =   345
                  Index           =   8
                  Left            =   2025
                  TabIndex        =   81
                  Top             =   345
                  Width           =   1710
               End
               Begin VB.CommandButton cmdReviewOffset 
                  Caption         =   "5. Offset 계산 "
                  Height          =   345
                  Index           =   6
                  Left            =   3870
                  TabIndex        =   80
                  Top             =   345
                  Width           =   1710
               End
            End
            Begin VB.Frame Frame49 
               Caption         =   "Review Offset "
               Height          =   855
               Left            =   3960
               TabIndex        =   76
               Top             =   210
               Width           =   3840
               Begin VB.CommandButton cmdReviewOffset 
                  Caption         =   "3. Drop 시작점 확인"
                  Height          =   345
                  Index           =   2
                  Left            =   180
                  TabIndex        =   78
                  Top             =   330
                  Width           =   1740
               End
               Begin VB.CommandButton cmdReviewOffset 
                  Caption         =   "4. Offset 계산 "
                  Height          =   345
                  Index           =   3
                  Left            =   2010
                  TabIndex        =   77
                  Top             =   330
                  Width           =   1635
               End
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "2. Print                 "
               Height          =   345
               Index           =   1
               Left            =   330
               TabIndex        =   75
               Top             =   705
               Width           =   1710
            End
            Begin VB.CommandButton cmdReviewOffset 
               Caption         =   "1. 기준 위치 지정"
               Height          =   345
               Index           =   0
               Left            =   330
               TabIndex        =   74
               Top             =   300
               Width           =   1710
            End
            Begin VB.Label lblFixedHeadTheta 
               AutoSize        =   -1  'True
               Caption         =   "보정 각도: -- [°]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00008000&
               Height          =   210
               Left            =   9960
               TabIndex        =   151
               Top             =   1170
               Width           =   1260
            End
            Begin VB.Label lblMeasureAngle 
               AutoSize        =   -1  'True
               Caption         =   "측정 각도: -- [°]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   210
               Left            =   8520
               TabIndex        =   98
               Top             =   1155
               Width           =   1170
            End
            Begin VB.Label lblTheoryAngle 
               AutoSize        =   -1  'True
               Caption         =   "각도: -- [°]"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   210
               Left            =   2850
               TabIndex        =   97
               Top             =   945
               Visible         =   0   'False
               Width           =   765
            End
            Begin VB.Label lblSearchHeadAlignOffset_End 
               AutoSize        =   -1  'True
               Caption         =   "끝        점: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   8190
               TabIndex        =   96
               Top             =   1785
               Width           =   3555
            End
            Begin VB.Label lblCalcReviewOffset 
               AutoSize        =   -1  'True
               Caption         =   "리뷰옵셋: 0000.000[Xmm] / 0000.000[Ymm]"
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
               Height          =   225
               Left            =   3930
               TabIndex        =   95
               Top             =   1785
               Width           =   3690
            End
            Begin VB.Label lblSearchReviewOffset 
               AutoSize        =   -1  'True
               Caption         =   "관        측: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   3930
               TabIndex        =   94
               Top             =   1380
               Width           =   3555
            End
            Begin VB.Label lblSearchHeadAlignOffset_Start 
               AutoSize        =   -1  'True
               Caption         =   "시  작  점: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   8190
               TabIndex        =   93
               Top             =   1485
               Width           =   3555
            End
            Begin VB.Label lblStartPosXY 
               AutoSize        =   -1  'True
               Caption         =   "기준: 0000.000[Xmm] / 0000.000[Ymm]"
               Height          =   225
               Left            =   165
               TabIndex        =   92
               Top             =   1365
               Width           =   3195
            End
            Begin VB.Label lblReviewOffsetPrint 
               AutoSize        =   -1  'True
               Caption         =   "길이: 0000.000 [Distance mm]"
               Height          =   225
               Left            =   165
               TabIndex        =   91
               Top             =   1770
               Width           =   2475
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "옵셋 옵션"
               Height          =   225
               Left            =   2835
               TabIndex        =   84
               Top             =   450
               Width           =   765
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   ">>>>>>>>"
               Height          =   225
               Left            =   2820
               TabIndex        =   83
               Top             =   690
               Width           =   840
            End
         End
         Begin VB.Frame Frame18 
            Caption         =   "Image Angle Offset && Head Angle Offset"
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
            Left            =   2790
            TabIndex        =   49
            Top             =   270
            Width           =   4140
            Begin VB.TextBox txtHeadOffsetAngle 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   300
               Left            =   2670
               TabIndex        =   70
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
            Begin VB.TextBox txtImageOffsetAngle 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   300
               Left            =   765
               TabIndex        =   50
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               Caption         =   "Head"
               Height          =   225
               Left            =   2115
               TabIndex        =   72
               Top             =   390
               Width           =   450
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               Caption         =   "Image"
               Height          =   225
               Left            =   150
               TabIndex        =   71
               Top             =   375
               Width           =   525
            End
         End
         Begin VB.Frame Frame13 
            Caption         =   "Nozzle X-Pitch[um] / [°]"
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
            Left            =   120
            TabIndex        =   47
            Top             =   270
            Width           =   2610
            Begin VB.TextBox txtSaberAngle 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Index           =   1
               Left            =   1485
               Locked          =   -1  'True
               TabIndex        =   141
               Text            =   "0"
               Top             =   360
               Width           =   975
            End
            Begin VB.TextBox txtPrintXPitch_um 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Index           =   1
               Left            =   150
               TabIndex        =   48
               Text            =   "0"
               Top             =   360
               Width           =   975
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "/"
               Height          =   225
               Left            =   1275
               TabIndex        =   142
               Top             =   405
               Width           =   45
            End
         End
      End
      Begin VB.Frame Frame32 
         Caption         =   "샘플 Model 정보( 이미지 각도 )"
         Height          =   300
         Left            =   -59550
         TabIndex        =   26
         Top             =   305
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.Frame Frame12 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5370
         Left            =   105
         TabIndex        =   2
         Top             =   440
         Width           =   12060
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
            Left            =   3795
            TabIndex        =   183
            Top             =   2565
            Width           =   2205
            Begin VB.TextBox txtPrintSpeed_mmPs 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   480
               TabIndex        =   184
               Text            =   "0"
               Top             =   390
               Width           =   1170
            End
         End
         Begin Threed.SSPanel SSPanel2 
            Height          =   270
            Left            =   4830
            TabIndex        =   60
            Top             =   3615
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
            Left            =   6105
            TabIndex        =   35
            Top             =   2280
            Width           =   5865
            Begin VB.TextBox txtPrintOriginXDistance_Ymm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H0000FFFF&
               Enabled         =   0   'False
               Height          =   330
               Left            =   2595
               TabIndex        =   180
               Text            =   "0"
               Top             =   285
               Width           =   945
            End
            Begin VB.TextBox txtPrintOriginXDistance_Xmm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H0000FFFF&
               Enabled         =   0   'False
               Height          =   330
               Left            =   855
               TabIndex        =   179
               Text            =   "0"
               Top             =   285
               Width           =   945
            End
            Begin VB.CommandButton cmdMovePrintStartPos 
               Caption         =   "이동"
               Height          =   765
               Left            =   5235
               TabIndex        =   150
               Top             =   285
               Width           =   510
            End
            Begin VB.CommandButton cmdSetPrintOrigin 
               Caption         =   "시작위치 등록"
               Height          =   765
               Left            =   3630
               TabIndex        =   40
               Top             =   285
               Width           =   1545
            End
            Begin VB.TextBox txtPrintStart_Xmm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Left            =   855
               TabIndex        =   37
               Text            =   "0"
               Top             =   705
               Width           =   945
            End
            Begin VB.TextBox txtPrintStart_Ymm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Left            =   2595
               TabIndex        =   36
               Text            =   "0"
               Top             =   705
               Width           =   945
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "ΔY[mm]"
               Height          =   225
               Left            =   1890
               TabIndex        =   178
               Top             =   330
               Width           =   630
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               Caption         =   "ΔX[mm]"
               Height          =   225
               Left            =   180
               TabIndex        =   177
               Top             =   315
               Width           =   630
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "SX[mm]"
               Height          =   225
               Left            =   180
               TabIndex        =   39
               Top             =   735
               Width           =   645
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "SY[mm]"
               Height          =   225
               Left            =   1890
               TabIndex        =   38
               Top             =   750
               Width           =   645
            End
         End
         Begin VB.Frame Frame34 
            Height          =   1590
            Left            =   90
            TabIndex        =   28
            Top             =   3615
            Width           =   11880
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
               TabIndex        =   63
               Top             =   300
               Width           =   2535
               Begin VB.Label lblHeaterOn 
                  Caption         =   "Off"
                  Height          =   225
                  Index           =   1
                  Left            =   1860
                  TabIndex        =   67
                  Top             =   735
                  Width           =   330
               End
               Begin VB.Label lblHeaterOn 
                  Caption         =   "Off"
                  Height          =   225
                  Index           =   0
                  Left            =   1860
                  TabIndex        =   66
                  Top             =   345
                  Width           =   360
               End
               Begin VB.Label lblHeadTemp 
                  AutoSize        =   -1  'True
                  Caption         =   "Head: 00.0 °C"
                  BeginProperty Font 
                     Name            =   "굴림"
                     Size            =   9
                     Charset         =   129
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   180
                  Left            =   90
                  TabIndex        =   65
                  Top             =   390
                  Width           =   1140
               End
               Begin VB.Label lblReserviorTemp 
                  AutoSize        =   -1  'True
                  Caption         =   "Reservior: 00.0 °C"
                  BeginProperty Font 
                     Name            =   "굴림"
                     Size            =   9
                     Charset         =   129
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   180
                  Left            =   90
                  TabIndex        =   64
                  Top             =   780
                  Width           =   1500
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
               TabIndex        =   57
               Top             =   300
               Width           =   6615
               Begin VB.Label lblPrintFrequency_kHz 
                  AutoSize        =   -1  'True
                  Caption         =   "프린트 주파수: ----.-[kHz]"
                  Height          =   225
                  Left            =   4185
                  TabIndex        =   185
                  Top             =   795
                  Width           =   1950
               End
               Begin VB.Label lblUseSelectedNzlCnt 
                  AutoSize        =   -1  'True
                  Caption         =   "사용노즐개수: ---[cnt]"
                  Height          =   225
                  Left            =   2190
                  TabIndex        =   176
                  Top             =   795
                  Width           =   1680
               End
               Begin VB.Label lblHeadOffset_Angle 
                  AutoSize        =   -1  'True
                  Caption         =   "Head Angle Offset:--.-[°]"
                  Height          =   225
                  Left            =   4200
                  TabIndex        =   170
                  Top             =   390
                  Width           =   1920
               End
               Begin VB.Label lblOneScanWidth_mm 
                  AutoSize        =   -1  'True
                  Caption         =   "1-Path 폭: ----.---[mm]"
                  Height          =   225
                  Left            =   165
                  TabIndex        =   162
                  Top             =   795
                  Width           =   1740
               End
               Begin VB.Label lblLastBlockUseNzlCnt 
                  AutoSize        =   -1  'True
                  Caption         =   "짜투리 노즐개수: 0[cnt]"
                  Height          =   225
                  Left            =   2190
                  TabIndex        =   59
                  Top             =   390
                  Width           =   1830
               End
               Begin VB.Label lblTotalBlockScanCnt 
                  AutoSize        =   -1  'True
                  Caption         =   "Total Path 횟수: 0 / 0"
                  Height          =   225
                  Left            =   150
                  TabIndex        =   58
                  Top             =   390
                  Width           =   1665
               End
            End
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
               TabIndex        =   52
               Top             =   300
               Width           =   2145
               Begin VB.ComboBox cboEndNzlNo 
                  BackColor       =   &H80000000&
                  Enabled         =   0   'False
                  Height          =   345
                  Left            =   1095
                  TabIndex        =   54
                  Text            =   "256"
                  Top             =   735
                  Width           =   840
               End
               Begin VB.ComboBox cboStartNzlNo 
                  BackColor       =   &H80000000&
                  Enabled         =   0   'False
                  Height          =   345
                  Left            =   1095
                  TabIndex        =   53
                  Text            =   "1"
                  Top             =   330
                  Width           =   840
               End
               Begin VB.Label Label22 
                  Caption         =   "끝노즐"
                  Height          =   210
                  Left            =   315
                  TabIndex        =   56
                  Top             =   825
                  Width           =   840
               End
               Begin VB.Label Label10 
                  Caption         =   "시작노즐"
                  Height          =   240
                  Left            =   225
                  TabIndex        =   55
                  Top             =   420
                  Width           =   840
               End
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
            Left            =   90
            TabIndex        =   22
            Top             =   2565
            Width           =   3600
            Begin VB.TextBox txtPrintImageWidth_mm 
               Alignment       =   2  '가운데 맞춤
               Height          =   330
               Left            =   180
               TabIndex        =   23
               Text            =   "0000.000"
               Top             =   360
               Width           =   990
            End
            Begin VB.Label lblReturnImageYCnt 
               AutoSize        =   -1  'True
               Caption         =   "응답갯수(H): -----------[cnt]"
               Height          =   225
               Left            =   1350
               TabIndex        =   168
               Top             =   405
               Width           =   2055
            End
         End
         Begin VB.Frame frameNozzlePitch 
            Caption         =   "Nozzle Settign Pitch"
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
            Left            =   6105
            TabIndex        =   19
            Top             =   1065
            Width           =   5865
            Begin VB.Frame Frame21 
               Caption         =   "# (Nzl No)"
               Height          =   555
               Left            =   4275
               TabIndex        =   287
               Top             =   150
               Width           =   1545
               Begin VB.Label lblNzlNo 
                  AutoSize        =   -1  'True
                  Caption         =   "--"
                  Height          =   225
                  Left            =   90
                  TabIndex        =   288
                  Top             =   240
                  Width           =   120
               End
            End
            Begin VB.TextBox txtPrintYPitch_um 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Left            =   1335
               TabIndex        =   181
               Text            =   "0"
               Top             =   720
               Width           =   1005
            End
            Begin VB.TextBox txtSaberAngle 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   330
               Index           =   0
               Left            =   3420
               Locked          =   -1  'True
               TabIndex        =   24
               Text            =   "0"
               Top             =   345
               Width           =   780
            End
            Begin VB.TextBox txtPrintXPitch_um 
               Alignment       =   2  '가운데 맞춤
               Height          =   330
               Index           =   0
               Left            =   1335
               TabIndex        =   21
               Text            =   "0"
               Top             =   345
               Width           =   1005
            End
            Begin VB.Label Label18 
               AutoSize        =   -1  'True
               Caption         =   "Sys-Pitch[um]"
               Height          =   225
               Left            =   90
               TabIndex        =   182
               Top             =   735
               Width           =   1125
            End
            Begin VB.Label lblNozzlePitch_um 
               AutoSize        =   -1  'True
               Caption         =   "N-Pitch: ---.---[um]"
               Height          =   225
               Index           =   1
               Left            =   4035
               TabIndex        =   169
               Top             =   810
               Width           =   1455
            End
            Begin VB.Label lblMultipleValue 
               AutoSize        =   -1  'True
               Caption         =   "Pitch 배수: 1배수, "
               Height          =   225
               Left            =   2565
               TabIndex        =   51
               Top             =   810
               Width           =   1455
            End
            Begin VB.Label Label35 
               AutoSize        =   -1  'True
               Caption         =   "Saber Angle"
               Height          =   225
               Left            =   2400
               TabIndex        =   25
               Top             =   360
               Width           =   1005
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               Caption         =   "X-Pitch[um]"
               Height          =   225
               Left            =   90
               TabIndex        =   20
               Top             =   360
               Width           =   930
            End
         End
         Begin VB.Frame frameNozzleLive 
            Caption         =   "Live 노즐 && Delay"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   825
            Left            =   6090
            TabIndex        =   12
            Top             =   210
            Width           =   5880
            Begin MSComDlg.CommonDialog CommonDlg_LiveDelay 
               Left            =   5340
               Top             =   135
               _ExtentX        =   847
               _ExtentY        =   847
               _Version        =   393216
            End
            Begin VB.CommandButton cmdLoadNzlParamsForm 
               Caption         =   "Edit Nozzle Para"
               Height          =   345
               Index           =   0
               Left            =   4065
               TabIndex        =   15
               Top             =   330
               Width           =   1710
            End
            Begin VB.TextBox txtNozzleParamsFilePath 
               BackColor       =   &H80000000&
               Height          =   360
               Index           =   0
               Left            =   120
               TabIndex        =   14
               Text            =   "Nozzle Params Path"
               Top             =   345
               Width           =   3240
            End
            Begin VB.CommandButton cmdFindLiveDelay 
               Caption         =   "..."
               Height          =   345
               Index           =   0
               Left            =   3420
               TabIndex        =   13
               Top             =   345
               Width           =   465
            End
         End
         Begin VB.Frame framePrintImagPath 
            Caption         =   "Print Image Path"
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
            Left            =   90
            TabIndex        =   7
            Top             =   1065
            Width           =   5880
            Begin MSComDlg.CommonDialog CommonDlg_Img 
               Left            =   5325
               Top             =   105
               _ExtentX        =   847
               _ExtentY        =   847
               _Version        =   393216
            End
            Begin VB.TextBox txtPrintImageFilePath 
               BackColor       =   &H80000000&
               Height          =   360
               Left            =   150
               TabIndex        =   11
               Text            =   "Print Image Path"
               Top             =   450
               Width           =   3240
            End
            Begin VB.CommandButton cmdFindPrintImagePath 
               Caption         =   "..."
               Height          =   345
               Left            =   3420
               TabIndex        =   10
               Top             =   465
               Width           =   450
            End
            Begin VB.CommandButton cmdExeImageGen 
               Caption         =   "ImageGenerator"
               Height          =   345
               Left            =   3975
               TabIndex        =   9
               Top             =   255
               Width           =   1710
            End
            Begin VB.CommandButton cmdExeRawViewer 
               Caption         =   "RawViewer"
               Height          =   345
               Left            =   3975
               TabIndex        =   8
               Top             =   660
               Width           =   1710
            End
         End
         Begin VB.Frame frameMultiPulse 
            Caption         =   "Multi Pulse"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   825
            Left            =   90
            TabIndex        =   3
            Top             =   210
            Width           =   5880
            Begin MSComDlg.CommonDialog CommonDlg_MP 
               Left            =   5250
               Top             =   30
               _ExtentX        =   847
               _ExtentY        =   847
               _Version        =   393216
            End
            Begin VB.TextBox txtMultiPulseFilePath 
               BackColor       =   &H80000000&
               Height          =   360
               Left            =   165
               TabIndex        =   6
               Text            =   "Multi Pulse Path"
               Top             =   360
               Width           =   3240
            End
            Begin VB.CommandButton cmdFindMultiPulseFile 
               Caption         =   "..."
               Height          =   345
               Left            =   3435
               TabIndex        =   5
               Top             =   360
               Width           =   450
            End
            Begin VB.CommandButton cmdOpenMultiPulseForm 
               Caption         =   "Edit MultiPulse"
               Height          =   345
               Left            =   3960
               TabIndex        =   4
               Top             =   360
               Width           =   1710
            End
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "*프린트 이미지 폭은 X-Pitch의 정수배이어야 합니다."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808000&
            Height          =   210
            Left            =   135
            TabIndex        =   152
            Top             =   2310
            Width           =   4410
         End
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
         Left            =   12255
         TabIndex        =   1
         Top             =   440
         Width           =   4755
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
            TabIndex        =   61
            Top             =   1545
            Width           =   2160
            Begin VB.TextBox txtGlassThickness_mm 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   435
               TabIndex        =   62
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
            TabIndex        =   31
            Top             =   195
            Width           =   2160
            Begin VB.TextBox txtPrintAccDist_mm 
               Alignment       =   2  '가운데 맞춤
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               Height          =   300
               Left            =   495
               TabIndex        =   32
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
               TabIndex        =   140
               Top             =   285
               Width           =   1965
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
            TabIndex        =   29
            Top             =   1545
            Width           =   2160
            Begin VB.TextBox txtPrintHeight_mm 
               Alignment       =   2  '가운데 맞춤
               Height          =   300
               Left            =   270
               TabIndex        =   30
               Text            =   "0"
               Top             =   360
               Width           =   1170
            End
         End
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
            TabIndex        =   16
            Top             =   195
            Width           =   2145
            Begin VB.TextBox txtHeadTemp 
               Alignment       =   2  '가운데 맞춤
               Height          =   330
               Left            =   1260
               TabIndex        =   68
               Text            =   "25"
               Top             =   315
               Width           =   780
            End
            Begin VB.TextBox txtReserviorTemp 
               Alignment       =   2  '가운데 맞춤
               Height          =   330
               Left            =   1260
               TabIndex        =   17
               Text            =   "25"
               Top             =   735
               Width           =   780
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Reservior"
               Height          =   225
               Left            =   255
               TabIndex        =   69
               Top             =   810
               Width           =   795
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "Head"
               Height          =   225
               Left            =   375
               TabIndex        =   18
               Top             =   435
               Width           =   450
            End
         End
      End
      Begin VB.Label lblPrintSpeed_mmPs 
         AutoSize        =   -1  'True
         Caption         =   "프린트 속도: ----.-[mm/s]"
         Height          =   225
         Left            =   -60495
         TabIndex        =   278
         Top             =   4740
         Visible         =   0   'False
         Width           =   1950
      End
      Begin VB.Label lblPrintHeight_mm 
         AutoSize        =   -1  'True
         Caption         =   "높이: ----.---[mm]"
         Height          =   225
         Left            =   -60510
         TabIndex        =   277
         Top             =   5040
         Visible         =   0   'False
         Width           =   1335
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4815
      Top             =   4500
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "frmRunning"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim fl_Toggle As Boolean
Dim fl_txtHeadVoltage_GotFocus As Boolean
Dim UI_SelectHeadNo As Integer

Dim m_nMouseClicked(1) As PT
Dim m_objTimer As New clsTimer
Dim fbStopPurge As Boolean
Dim fbStopTimerJet As Boolean
Dim fbStopSupplySolvent As Boolean

Private Sub chkDisplayInkLevel_Click()
On Error GoTo sysErr:
    
    If chkDisplayInkLevel.Value = 1 Then
        gPrintPara.bADCViewVisible = True
        Call SaveSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_ENABLE", "1")
    Else
        gPrintPara.bADCViewVisible = False
        Call SaveSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_ENABLE", "0")
    End If
    
    MDI_Main.sspInkLevel.Visible = gPrintPara.bADCViewVisible
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub
Private Sub optDisplay_Click(Index As Integer)
On Error GoTo sysErr:

    If Index = 0 Then
        gPrintPara.nADCViewOption = CInt(GetSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_OPTION", "1"))
        MDI_Main.cwsInkLevel.Axis.Maximum = 100
        MDI_Main.cwsInkLevel.Axis.Ticks.MajorDivisions = 50
        MDI_Main.cwsInkLevel.Axis.Ticks.MajorUnitsBase = 100
    Else
        gPrintPara.nADCViewOption = CInt(GetSetting(App.Title, "PRINT_INFO", "INK_LEVEL_VIEW_OPTION", "0"))
        MDI_Main.cwsInkLevel.Axis.Maximum = 60
        MDI_Main.cwsInkLevel.Axis.Ticks.MajorDivisions = 30
        MDI_Main.cwsInkLevel.Axis.Ticks.MajorUnitsBase = 60
    End If
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub
Private Sub chkUVLamp_Click(Index As Integer)
On Error GoTo sysErr:
    If Index = 4 Then
        For i% = 0 To 3 Step 1
            nOutAddr% = oSg_Cliffer_UV_LIght_1_On + i%
            PComm32_DOUT nOutAddr%, chkUVLamp(Index).Value, PComm32_ClifferID
        Next i%
    Else
        nOutAddr% = oSg_Cliffer_UV_LIght_1_On + Index
        PComm32_DOUT nOutAddr%, chkUVLamp(Index).Value, PComm32_ClifferID
    End If
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdCheck_1st_Click()
On Error GoTo sysErr:

    Call PComm32_PositionReadAllAxis
    m_nMouseClicked(0).dXmm = PComm32_Position_mm(PComm32_XAxis)
    m_nMouseClicked(0).dYmm = PComm32_Position_mm(PComm32_YAxis)
    
    strMsg$ = "1st: " & Format(m_nMouseClicked(0).dXmm, "0.000") & "(xmm) / " & Format(m_nMouseClicked(0).dYmm, "0.000") & "(Ymm)"
    lblChecked_1st.Caption = strMsg$
    
Exit Sub
 
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdCheck_2nd_Click()
On Error GoTo sysErr:

    Call PComm32_PositionReadAllAxis
    m_nMouseClicked(1).dXmm = PComm32_Position_mm(PComm32_XAxis)
    m_nMouseClicked(1).dYmm = PComm32_Position_mm(PComm32_YAxis)
        
    strMsg$ = "2nd: " & Format(m_nMouseClicked(1).dXmm, "0.000") & "(xmm) / " & Format(m_nMouseClicked(1).dYmm, "0.000") & "(Ymm)"
    lblChecked_2nd.Caption = strMsg$
Exit Sub
 
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdMove_1st_Click()
On Error GoTo sysErr:
    Call MOVE_XY(m_nMouseClicked(0).dXmm, m_nMouseClicked(0).dYmm)
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdMove_2nd_Click()
On Error GoTo sysErr:
    Call MOVE_XY(m_nMouseClicked(1).dXmm, m_nMouseClicked(1).dYmm)
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdRotateStagTheta_Click()
On Error GoTo sysErr:
    
    Call PComm32_PositionReadAllAxis
    dCurStageTheta# = PComm32_Position_mm(PComm32_TAxis)
    dDeltaXmm# = (m_nMouseClicked(1).dXmm - m_nMouseClicked(0).dXmm)
    dDeltaYmm# = (m_nMouseClicked(1).dYmm - m_nMouseClicked(0).dYmm)
    
    If Abs(dDeltaXmm#) > Abs(dDeltaYmm#) Then
        strMsg$ = "수평방향축(X) 보정: "
        
        dDeltaXmm# = -1 * dDeltaXmm#
        dAlignAngle# = ArcTan(dDeltaYmm# / dDeltaXmm#)
    Else
        strMsg$ = "수직방향축(Y) 보정: "
        dAlignAngle# = ArcTan(dDeltaXmm# / dDeltaYmm#)
    End If
    
    dmovetheta# = dCurStageTheta# + dAlignAngle#
    
    Dim ptRot As PT
    dCXmm# = 1132.259 ' 1731.4 - (1195.452 / 2)
    dCYmm# = 1000.873 ' 404.09 + (1196.621 / 2)
    
    ptRot = Get_RotatePoint(dCXmm#, dCYmm#, m_nMouseClicked(0).dXmm, m_nMouseClicked(0).dYmm, dmovetheta#)
    'm_nMouseClicked(0).dXmm = ptRot.dXmm
    'm_nMouseClicked(0).dYmm = ptRot.dYmm
    dtmpXmm# = ptRot.dXmm
    dtmpymm# = ptRot.dYmm
    
    ptRot = Get_RotatePoint(dCYmm#, dCYmm#, m_nMouseClicked(1).dXmm, m_nMouseClicked(1).dYmm, dmovetheta#)
    'm_nMouseClicked(1).dXmm = ptRot.dXmm
    'm_nMouseClicked(1).dYmm = m_nMouseClicked(0).dYmm
    
    strMsg$ = "1st: " & Format(m_nMouseClicked(0).dXmm, "0.000") & "(xmm) / " & Format(m_nMouseClicked(0).dYmm, "0.000") & "(Ymm)"
    lblChecked_1st.Caption = strMsg$
    strMsg$ = "2nd: " & Format(m_nMouseClicked(1).dXmm, "0.000") & "(xmm) / " & Format(m_nMouseClicked(1).dYmm, "0.000") & "(Ymm)"
    lblChecked_2nd.Caption = strMsg$
      
    lblStageAlignResult.Caption = strMsg$ & Format(dmovetheta#, "0.000") & "(°)"
    
    If PComm32_Init_Flag = True Then
        dMoveSpd_mmPs# = 0.5
        
'        dtmpXmm# = m_nMouseClicked(0).dXmm
'        dtmpYmm# = m_nMouseClicked(0).dYmm

'        Call MOVE_XY(dtmpXmm#, dtmpymm#)
        
        PComm32_JogSpdAccScrvSET PComm32_TAxis, _
                                 dMoveSpd_mmPs#, _
                                 PComm32_Acc_ms(PComm32_TAxis), _
                                 PComm32_Scrv_ms(PComm32_TAxis)
        PComm32_AxisJogMotion_Absoute PComm32_TAxis, dmovetheta#
        
    Else
        MsgBox "uMac 초기화가 안되어 있습니다. 확인 부탁드립니다.", vbExclamation
    End If
    
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdFindLiveDelay_Click(Index As Integer)

On Error GoTo sysErr:

    Dim NzlLive(255) As Integer
    Dim ReArray As Variant

    Me.CommonDlg_LiveDelay.Filter = "Live Delay File(*.csv)|*.csv"
    Me.CommonDlg_LiveDelay.InitDir = gPrintPara.strNzlParamsFilePath  'gPrintPara.dSetDefaultRecipePath
    Me.CommonDlg_LiveDelay.ShowOpen
    
    file_name$ = Me.CommonDlg_LiveDelay.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    If (InStr(1, file_name$, ".csv") = 0) Then
        Exit Sub
    End If

    Open file_name$ For Input As #1
    iindex% = 0
    Do While Not EOF(1)
        Line Input #1, str_line$
        ReArray = Split(str_line$, ",", 4, vbTextCompare)
        If (iindex% >= 1) And UBound(ReArray) = 2 Then
            NzlLive(iindex% - 1) = ReArray(1)
            gPrintPara.nSetNzlLive(iindex% - 1) = ReArray(1)
            gPrintPara.nSetNzlDelay(iindex% - 1) = ReArray(2)
        End If

        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
            MsgBox "Nozzle Live중 Interface Error!", vbCritical
        End If
        
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Nozzle Delay중 Interface Error!", vbCritical
        End If
    End If
    
    gPrintPara.strNzlParamsFilePath = file_name$
    
    For i% = 0 To 1 Step 1
        Me.txtNozzleParamsFilePath(i%).ToolTipText = file_name$
        Me.txtNozzleParamsFilePath(i%).Text = GetNameToPath(file_name$)
    Next i%
    
    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PARAMS_FILEPATH", gPrintPara.strNzlParamsFilePath)
    
    Call Check_PrintNzlNo
    
Exit Sub
 
sysErr:
    Close #1
    MsgBox Err.Description
End Sub

Private Sub cmdLoadNzlParamsForm_Click(Index As Integer)
    Load frmNzlPara
    frmNzlPara.Show 0, MDI_Main
End Sub

Public Sub Move_CappingPos()

On Error GoTo sysErr:

    gPrintPara.dTeachCapping_Xmm = CDbl(Me.txtCapping_QHT_Xmm.Text)
    gPrintPara.dTeachCapping_Ymm = CDbl(Me.txtCapping_QHT_Ymm.Text)
    gPrintPara.dTeachCappingQHT_Degree = CDbl(Me.txtCapping_QHT_Degree.Text)

    '// 1. 안전위치 이동
    
    ctrlEnable False, frmVision
    ctrlEnable False, frmRunning
    ctrlEnable False, frmMotion
    
    dSaftyZPos# = 0
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             Cliffer_Speed_mms(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dSaftyZPos#, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            ctrlEnable True, frmVision
            ctrlEnable True, frmRunning
            ctrlEnable True, frmMotion
    
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until (Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    '// X,Y
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             USR_frmMotion_Speed(PComm32_XAxis), _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
'    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
'                             USR_frmMotion_Speed(PComm32_YAxis), _
'                             PComm32_Acc_ms(PComm32_YAxis), _
'                             PComm32_Scrv_ms(PComm32_YAxis)
                             
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, gPrintPara.dTeachCapping_Xmm
'    PComm32_AxisJogMotion_Absoute PComm32_YAxis, gPrintPara.dTeachCapping_Ymm
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "X Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            
            ctrlEnable True, frmVision
            ctrlEnable True, frmRunning
            ctrlEnable True, frmMotion
            
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1)) ' And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    '// head theta, height
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                             USR_frmMotion_Speed_Cliffer(Cliffer_HdtAxis), _
                             Cliffer_Acc_ms(Cliffer_HdtAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                             PComm32_ClifferID
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             USR_frmMotion_Speed_Cliffer(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, gPrintPara.dTeachCappingQHT_Degree, PComm32_ClifferID
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, gPrintPara.dTeachCapping_Zmm, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head and theta Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            
            ctrlEnable True, frmVision
            ctrlEnable True, frmRunning
            ctrlEnable True, frmMotion
            
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until ((Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1) And (Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    ctrlEnable True, frmVision
    ctrlEnable True, frmRunning
    ctrlEnable True, frmMotion
            
Exit Sub
sysErr:
    ctrlEnable True, frmVision
    ctrlEnable True, frmRunning
    ctrlEnable True, frmMotion

    MsgBox Err.Description
End Sub
Private Sub cmdMoveCappingPos_Click()
On Error GoTo sysErr:

    Call Move_CappingPos
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdMovePrintStartPos_Click()
On Error GoTo sysErr:
    
    If PComm32_Init_Flag = True Then
    
        gPrintPara.dPrintStart_Xmm = CDbl(Me.txtPrintStart_Xmm.Text)
        gPrintPara.dPrintStart_Ymm = CDbl(Me.txtPrintStart_Ymm.Text)
        
        Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_XMM", gPrintPara.dPrintStart_Xmm)
        Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_YMM", gPrintPara.dPrintStart_Ymm)
    
        dMoveSpd_mmPs# = 150
        PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                                 dMoveSpd_mmPs#, _
                                 PComm32_Acc_ms(PComm32_XAxis), _
                                 PComm32_Scrv_ms(PComm32_XAxis)
                                 
        PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                 dMoveSpd_mmPs#, _
                                 PComm32_Acc_ms(PComm32_YAxis), _
                                 PComm32_Scrv_ms(PComm32_YAxis)

        PComm32_AxisJogMotion_Absoute PComm32_XAxis, gPrintPara.dPrintStart_Xmm
        PComm32_AxisJogMotion_Absoute PComm32_YAxis, gPrintPara.dPrintStart_Ymm
    Else
        MsgBox "uMac 초기화가 안되어 있습니다. 확인 부탁드립니다.", vbExclamation
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdReadCappingPos_Click()
On Error GoTo sysErr:
    
    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
        Call PComm32_PositionReadAllAxis(PComm32_ClifferID)
        
        Me.txtCapping_QHT_Xmm.Text = Format(PComm32_Position_mm(PComm32_XAxis), "0.000")
        Me.txtCapping_QHT_Ymm.Text = Format(PComm32_Position_mm(PComm32_YAxis), "0.000")
        Me.txtCapping_QHT_Zmm.Text = Format(Cliffer_Position_mm(Cliffer_HdzAxis), "0.000")
        Me.txtCapping_QHT_Degree.Text = Format(Cliffer_Position_mm(Cliffer_HdtAxis), "0.000")
    Else
        MsgBox "uMac 초기화가 안되어 있습니다. 확인 부탁드립니다.", vbExclamation
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub


Private Sub cmdResetOffsetValues_Click(Index As Integer)
On Error GoTo sysErr:
    
    Select Case Index
        Case 0  '// reviewoffset
            strMsg$ = "ReviewOffset 데이타를 리셋하시겠습니까?"
        Case 1  '// head align offset
            strMsg$ = "Head Align Offset 데이타를 리셋하시겠습니까?"
        Case 2  '// image align offset
            strMsg$ = "Image Align Offset 데이타를 리셋하시겠습니까?"
    End Select
    
    If MsgBox(strMsg$, vbExclamation + vbOKCancel) = vbOK Then
        Select Case Index
            Case 0  '// reviewoffset
                gPrintPara.dReviewOffset_Xmm = 0
                gPrintPara.dReviewOffset_Ymm = 0

                Call SaveSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_XMM", Format(gPrintPara.dReviewOffset_Xmm, "0.000"))
                Call SaveSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_YMM", Format(gPrintPara.dReviewOffset_Ymm, "0.000"))
                
                strMsg$ = "리뷰옵셋:" & Format(gPrintPara.dReviewOffset_Xmm, "0.000") & "[dXmm] / " & Format(gPrintPara.dReviewOffset_Ymm, "0.000") & "[dYmm]"
                Me.lblCalcReviewOffset.Caption = strMsg$
                
            Case 1  '// head align offset
                gPrintPara.dCfgHeadThetaOffset_Degree = 0
                dPrintTheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
                
                Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_QHT_OFFSET_DEGREE", Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000"))
                Me.txtHeadOffsetAngle.Text = Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000")
                
                lblTheoryAngle.Caption = "이론 각도: " & Format(gPrintPara.dCfgSaberAngle_Degree, "0.000") & " [°]"
                lblMeasureAngle.Caption = "측정 각도: " & Format(dMeasureAngle#, "0.000") & " [°]"
                lblFixedHeadTheta.Caption = "보정 각도: " & Format(dPrintTheta#, "0.000") & " [°]"
            
            Case 2  '// image align offset
                gPrintPara.dCfgSaberAngleOffset_Degree = 0
                Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_SABERANGLE_OFFSET", Format(gPrintPara.dCfgSaberAngleOffset_Degree, "0.000"))
                Me.txtImageOffsetAngle.Text = Format(gPrintPara.dCfgSaberAngleOffset_Degree, "0.000")
                
        End Select
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdRunUV_Click()
On Error GoTo sysErr:

Call Move_Y(0, 1800)

Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveAccDistOffset_Click()
On Error GoTo sysErr:

If IsNumeric(txtPrintAccDistOffset_mm.Text) = False Then
    MsgBox "숫자형 데이타를 입력하여 주십시요.", vbExclamation
    txtPrintAccDistOffset_mm.Text = Format(gPrintPara.dSetPrintAccDistOffset_Ymm, "0.000")
    Exit Sub
End If

gPrintPara.dSetPrintAccDistOffset_Ymm = CDbl(txtPrintAccDistOffset_mm.Text)
Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_ACCDISTANCE_OFFSET_MM", Format(gPrintPara.dSetPrintAccDistOffset_Ymm, "0.000"))

Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveInkLevelValue_Click()
On Error GoTo sysErr:

If (IsNumeric(txtEmptyInk.Text) = False) Then
    MsgBox "숫자형 데이타를 입력하여 주십시요.", vbExclamation
    txtEmptyInk.Text = Format(gPrintPara.dADCEmptyValue, "0")
    Exit Sub
End If

If (IsNumeric(txtFullInk.Text) = False) Then
    MsgBox "숫자형 데이타를 입력하여 주십시요.", vbExclamation
    txtFullInk.Text = Format(gPrintPara.dADCFullValue, "0")
    Exit Sub
End If

gPrintPara.dADCEmptyValue = CDbl(txtEmptyInk.Text)
gPrintPara.dADCFullValue = CDbl(txtFullInk.Text)

Call SaveSetting(App.Title, "PRINT_INFO", "INK_EMPTY_VALUE", gPrintPara.dADCEmptyValue)
Call SaveSetting(App.Title, "PRINT_INFO", "INK_FULL_VALUE", gPrintPara.dADCFullValue)

Exit Sub
sysErr:
    MsgBox Err.Description
End Sub


Private Sub cmdSaveUVRunYSpeed_Click()
On Error GoTo sysErr:

If (IsNumeric(txtUVRunYSpeed_mmPs.Text) = False) Then
    MsgBox "숫자형 데이타를 입력하여 주십시요.", vbExclamation
    txtUVRunYSpeed_mmPs.Text = Format(g_dUVRunYSpeed_mmPs, "0.000")
    Exit Sub
End If

g_dUVRunYSpeed_mmPs = CDbl(txtUVRunYSpeed_mmPs.Text)

Call SaveSetting(App.Title, "PRINT_INFO", "UV_RUN_Y_MMPS", Format(g_dUVRunYSpeed_mmPs, "0.000"))

Exit Sub
sysErr:
    MsgBox Err.Description

End Sub

Private Sub cmdSaveXYMoveSpeed_mmPs_Click()
On Error GoTo sysErr:

If (IsNumeric(txtMoveX_mmPs.Text) = False) Or (IsNumeric(txtMoveY_mmPs.Text) = False) Then
    MsgBox "숫자형 데이타를 입력하여 주십시요.", vbExclamation
    txtMoveX_mmPs.Text = Format(gPrintPara.dSetMoveX_mmPs, "0.000")
    txtMoveY_mmPs.Text = Format(gPrintPara.dSetMoveY_mmPs, "0.000")
    Exit Sub
End If

gPrintPara.dSetMoveX_mmPs = CDbl(txtMoveX_mmPs.Text)
gPrintPara.dSetMoveY_mmPs = CDbl(txtMoveY_mmPs.Text)

Call SaveSetting(App.Title, "PRINT_INFO", "MOVE_X_MMPS", Format(gPrintPara.dSetMoveX_mmPs, "0.000"))
Call SaveSetting(App.Title, "PRINT_INFO", "MOVE_Y_MMPS", Format(gPrintPara.dSetMoveY_mmPs, "0.000"))

Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveNozzlePitchOffset_um_Click(Index As Integer)
On Error GoTo sysErr:
    gPrintPara.dPhysicNozzleOffset_um = CDbl(Me.txtNozzlePitchOffset_um.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PITCH_OFFSET_UM", gPrintPara.dPhysicNozzleOffset_um)
    
    Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                    NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                    gPrintPara.dChangedPhysicNozzlePitch_um, _
                                    gPrintPara.nSetMultiple_Value, _
                                    gPrintPara.dCfgSaberAngle_Degree)
    
    lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveQHT_ZeroDegree_Click()
On Error GoTo sysErr:
    gPrintPara.dTeachHeadZero_Degree = CDbl(Me.txtQHTZero_Angle.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_QHT_ZERO_DEGREE", Format(gPrintPara.dTeachHeadZero_Degree, "0.000"))
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveTeachingImageYDistance_mm_Click()
On Error GoTo sysErr:
        
    gPrintPara.dCfgTeachingImageLength_mm = CDbl(Me.txtTeachingImageYDistance_mm.Text)
    gPrintPara.dCfgTeachingImageDropPitch_mm = CDbl(Me.txtTeachingImageDropPitch_mm.Text)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACHING_IMAGE_LENGTH_MM", gPrintPara.dCfgTeachingImageLength_mm)
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACHING_IMAGE_DROP_PITCH_MM", gPrintPara.dCfgTeachingImageDropPitch_mm)
       
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSetPrintOrigin_Click()
On Error GoTo sysErr:
    
    Call PComm32_PositionReadAllAxis
    
    Me.txtPrintStart_Xmm.Text = Format(PComm32_Position_mm(PComm32_XAxis), "0.000")
    Me.txtPrintStart_Ymm.Text = Format(PComm32_Position_mm(PComm32_YAxis), "0.000")
        
    gPrintPara.dPrintStart_Xmm = CDbl(Me.txtPrintStart_Xmm.Text)
    gPrintPara.dPrintStart_Ymm = CDbl(Me.txtPrintStart_Ymm.Text)
        
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_XMM", gPrintPara.dPrintStart_Xmm)
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_YMM", gPrintPara.dPrintStart_Ymm)
       
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSolventSupply_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo sysErr:
    chkSolventSupplyTime.Caption = "Solvent 주입중"
    PComm32_DOUT oSg_Cliffer_SolventPump, 1, PComm32_ClifferID
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSolventSupply_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo sysErr:
    chkSolventSupplyTime.Caption = "Solvent 주입"
    PComm32_DOUT oSg_Cliffer_SolventPump, 0, PComm32_ClifferID
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdExeImageGen_Click()
On Error GoTo sysErr:
    Shell "D:\LHJ_Work\PI_Alpha_Sys\MainUI\Image Gen\ImgGenerator.exe"
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdExeRawViewer_Click()
On Error GoTo sysErr:
    Shell "D:\LHJ_Work\PI_Alpha_Sys\MainUI\Image Gen\RawViewer.exe"
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdFindMultiPulseFile_Click()

On Error GoTo sysErr:
    
    Dim ReArray As Variant

    Me.CommonDlg_MP.Filter = "Multi Pulse File(*.csv)|*.csv"
    Me.CommonDlg_MP.InitDir = gPrintPara.strMultiPulseFilePath 'gPrintPara.dSetDefaultRecipePath
    Me.CommonDlg_MP.ShowOpen
    
    file_name$ = Me.CommonDlg_MP.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    If (InStr(1, file_name$, ".csv") = 0) Then
        Exit Sub
    End If
    
    Open file_name$ For Input As #1
    iindex% = 0
    Do While Not EOF(1)
        Line Input #1, str_line$
        ReArray = Split(str_line$, ",", 3, vbTextCompare)
        If (UBound(ReArray) = 1) And (iindex% >= 1) Then
            gPrintPara.dSetMultiPulseVolt(iindex% - 1) = ReArray(1)
        End If
        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_VoltageSet(hh%, True, gPrintPara.dSetMultiPulseVolt) = False Then
            MsgBox "Multi Pulse Data 전송 실패!!", False
        End If
    End If
    
    gPrintPara.strMultiPulseFilePath = file_name$
    Me.txtMultiPulseFilePath.ToolTipText = file_name$
    Me.txtMultiPulseFilePath.Text = GetNameToPath(file_name$)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "MULTI_PULSE_FILEPATH", gPrintPara.strMultiPulseFilePath)

Exit Sub
 
sysErr:
    Close #1
    MsgBox Err.Description
 
End Sub

Private Sub cmdFindPrintImagePath_Click()
On Error GoTo sysErr:
    Const HEAD_1 As Integer = 0
    Const DIR_FORWARD As Integer = 0
    Const DIR_BACKWARD As Integer = 1
    
    Me.CommonDlg_Img.Filter = "Print Image File(*.bmp)|*.bmp"
    Me.CommonDlg_Img.InitDir = gPrintPara.strPrintImageFilePath  'gPrintPara.dSetDefaultRecipePath
    Me.CommonDlg_Img.ShowOpen
    
    file_name$ = Me.CommonDlg_Img.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    If (InStr(1, file_name$, ".bmp") = 0) Then
        Exit Sub
    End If
    
    If PI_HEAD_BootOK = True Then
    
        g_nDataLoadingType = 1
        
        Load frmWait
        frmWait.Show
    
        cur_org_img_pitch# = CDbl(txtOriginImagePitch_um.Text)
        start_nzl_no% = 1
        end_nzl_no% = 256
        use_nzl_qty% = (end_nzl_no% - start_nzl_no%) + 1
            
        '// 4.
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
            Exit Sub
        End If
    
        dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
        If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
            Unload frmWait
            MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
            Exit Sub
        End If
    
        If PI_HEAD_UploadImage(HEAD_1, _
                               DIR_FORWARD, _
                               cur_org_img_pitch#, _
                               start_nzl_no%, _
                               end_nzl_no%, _
                               use_nzl_qty%, _
                               file_name$, _
                               gPrintPara.lngRtnImageYCnt, _
                               True) = False Then
            Unload frmWait
            MsgBox "정방향 이미지 로딩에러 발생.", vbExclamation
            
        Else
'            If PI_HEAD_UploadImage(HEAD_1, _
'                                   DIR_BACKWARD, _
'                                   cur_org_img_pitch#, _
'                                   start_nzl_no%, _
'                                   end_nzl_no%, _
'                                   use_nzl_qty%, _
'                                   file_name$, _
'                                   gPrintPara.lngRtnImageYCnt, _
'                                   True) = False Then
'                Unload frmWait
'                MsgBox "역방향 이미지 로딩에러 발생.", vbExclamation
'                Exit Sub
'            End If
        End If
        
        lblReturnImageYCnt.Caption = "응답갯수(H): " & CStr(gPrintPara.lngRtnImageYCnt) & "[cnt]"

        If gPrintPara.lngRtnImageYCnt > 0 Then
            dPrintHeight_mm# = (gPrintPara.lngRtnImageYCnt - 1) * (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)
        Else
            dPrintHeight_mm# = 0
        End If
        lblPrintHeight_mm.Caption = "Height: " & Format(dPrintHeight_mm#, "0.000") & "[mm]"
        
        g_nDataLoadingType = 0
        
        Unload frmWait
        
    End If
    
    gPrintPara.strPrintImageFilePath = file_name$
    Me.txtPrintImageFilePath.ToolTipText = file_name$
    Me.txtPrintImageFilePath.Text = GetNameToPath(file_name$)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_IMAGE_FILEPATH", gPrintPara.strPrintImageFilePath)
    
Exit Sub
sysErr:
    Unload frmWait
    g_nDataLoadingType = 0
    MsgBox Err.Description
End Sub

Private Sub cmdOpenMultiPulseForm_Click()

On Error GoTo sysErr:
    Load frmMultiPulse
    frmMultiPulse.Show 0, MDI_Main
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdPrint_Click()
On Error GoTo sysErr:
    
    If (PI_HEAD_BootOK = False) Or (gPrintPara.lngRtnImageYCnt <= 0) Then
        If (PI_HEAD_BootOK = False) Then
            MsgBox "헤드 컨트롤러 부팅이 안되있습니다. 확인후 프린팅 시도를 해주십시요.", vbExclamation
            Exit Sub
        End If
        If (gPrintPara.lngRtnImageYCnt <= 0) Then
            MsgBox "프린팅 이미지를 전송하지 않으셨습니다. 확인 후 프린팅 시도를 해주십시요.", vbExclamation
            Exit Sub
        End If
    End If
    
    If g_bIsPrinting = True Then
        cmdPrint.Caption = "Print"
        g_bStopPrint = True
        g_bIsPrinting = False
    Else
        cmdPrint.Caption = "Print 정지"
        g_bStopPrint = False
        g_nRunSeqType = 10
        g_nPrintSeqNo = 1
        g_bIsPrinting = True
        Me.Timer_Main.Interval = 100
        Me.Timer_Main.Enabled = True
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub


Private Sub cmdPurgeOff_Click()

    If fl_PurgeRun = False Then Exit Sub

    INKS_PUGRE_OnOff 0
    Call INKS_Basic_Meniscus '<<bada 20110110
    fl_PurgeStop = True
    
End Sub

Private Sub cmdQHZ_Zero_Click()
On Error GoTo sysErr:
    gPrintPara.dTeachHeadHeight_Zero_Zmm = CDbl(Me.txtQHeadHeight_Zero_Zmm.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_QHEAD_HEIGHT_ZERO_ZMM", Format(gPrintPara.dTeachHeadHeight_Zero_Zmm, "0.000"))
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdReadZHeight_Click()
On Error GoTo sysErr:
    Call PComm32_PositionReadAllAxis(PComm32_ClifferID)
    Me.txtQHeadHeight_Zero_Zmm.Text = Format(Cliffer_Position_mm(Cliffer_HdzAxis), "0.000")
    DisplayPrintParams
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdReviewOffset_Click(Index As Integer)
On Error GoTo sysErr:
    
    Dim objTimer As New clsTimer

    Static lngRtnLineCount As Long
    
    Static dReview_SXmm(2) As Double
    Static dReview_SYmm(2) As Double
    Static dCheckedDrop_SXmm(3) As Double
    Static dCheckedDrop_SYmm(3) As Double
    
    Static dCheckedDrop_EXmm(3) As Double
    Static dCheckedDrop_EYmm(3) As Double
    
    Call PComm32_PositionReadAllAxis
    dAbsXmm# = PComm32_Position_mm(PComm32_XAxis)
    dAbsYmm# = PComm32_Position_mm(PComm32_YAxis)
    scan_dir% = 0 '// 정방향
            
    Select Case Index
        
        Case 0 '// 1.position 지정
                                    
            For i% = 0 To 3 Step 1
                dCheckedDrop_SXmm(i%) = 0
                dCheckedDrop_SYmm(i%) = 0
                dCheckedDrop_EXmm(i%) = 0
                dCheckedDrop_EYmm(i%) = 0
            Next i%
                                    
            dReview_SXmm(0) = dAbsXmm#
            dReview_SYmm(0) = dAbsYmm#
            gPrintPara.dTmpReviewOff_SXmm = dReview_SXmm(0) + gPrintPara.dReviewOffset_Xmm
            gPrintPara.dTmpReviewOff_SYmm = dReview_SYmm(0) + gPrintPara.dReviewOffset_Ymm
            
            strMsg$ = "기준: " & Format(dReview_SXmm(0), "0.000") & "[Xmm] / " & Format(dReview_SYmm(0), "0.000") & "[Ymm]"
            lblStartPosXY.Caption = strMsg$
            
        Case 1 '// 2.print
            
            If Print_ReviewOffset(gPrintPara.dTmpReviewOff_SXmm, _
                                  gPrintPara.dTmpReviewOff_SYmm, _
                                  dReview_SXmm(0), _
                                  dReview_SYmm(0)) = True Then
                MsgBox "ReviewOffset을 위한 프린팅완료. Drop 위치를 찾아보세요.", vbExclamation
            End If
            
        Case 2 '// 3.ReviewOffset을 위한 drop position 지정
            
            dCheckedDrop_SXmm(0) = dAbsXmm#
            dCheckedDrop_SYmm(0) = dAbsYmm#
            
            strMsg$ = "관        측: " & Format(dCheckedDrop_SXmm(0), "0.000") & "[Xmm] / " & Format(dCheckedDrop_SYmm(0), "0.000") & "[Ymm]"
            lblSearchReviewOffset.Caption = strMsg$
            
            cmdReviewOffset(3).Enabled = True
            
        Case 3 '// 4.review offset 계산
            
'            gPrintPara.dReviewOffset_Xmm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_XMM", "0"))
'            gPrintPara.dReviewOffset_Ymm = CDbl(GetSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_YMM", "0"))
            
            If (dCheckedDrop_SXmm(0) = 0) Or (dCheckedDrop_SYmm(0) = 0) Then 'Or (dReview_SXmm(0) = 0) Or (dReview_SYmm(0) = 0) Then
                MsgBox "프린트 시작위치와 Drop의 시작점을 확인하셔야 합니다.", vbExclamation
                Exit Sub
            End If
            
            gPrintPara.dReviewOffset_Xmm = gPrintPara.dReviewOffset_Xmm + (dReview_SXmm(0) - dCheckedDrop_SXmm(0))
            gPrintPara.dReviewOffset_Ymm = gPrintPara.dReviewOffset_Ymm + (dReview_SYmm(0) - dCheckedDrop_SYmm(0))

            Call SaveSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_XMM", Format(gPrintPara.dReviewOffset_Xmm, "0.000"))
            Call SaveSetting(App.Title, "PRINT_INFO", "POS_REVIEWOFFSET_YMM", Format(gPrintPara.dReviewOffset_Ymm, "0.000"))
            
'            dReview_SXmm(0) = 0
'            dReview_SYmm(0) = 0
            dCheckedDrop_SXmm(0) = 0
            dCheckedDrop_SYmm(0) = 0
            
            strMsg$ = "리뷰옵셋: " & Format(gPrintPara.dReviewOffset_Xmm, "0.000") & "[dXmm] / " & Format(gPrintPara.dReviewOffset_Ymm, "0.000") & "[dYmm]"
            lblCalcReviewOffset.Caption = strMsg$
            
            cmdReviewOffset(3).Enabled = False
            
        Case 4 '// 5.검증: 시작점 저장
        
            For i% = 0 To 3 Step 1
                dCheckedDrop_SXmm(i%) = 0
                dCheckedDrop_SYmm(i%) = 0
                dCheckedDrop_EXmm(i%) = 0
                dCheckedDrop_EYmm(i%) = 0
            Next i%
            
            dReview_SXmm(1) = dAbsXmm#
            dReview_SYmm(1) = dAbsYmm#

            strMsg$ = "기준: " & Format(dReview_SXmm(1), "0.000") & "[Xmm] / " & Format(dReview_SYmm(1), "0.000") & "[Ymm]"
            lblConfirmPrintPos.Caption = strMsg$
            
        Case 5 '// 6.print
        
            If Print_CheckingReviewOffset(dReview_SXmm(1), dReview_SYmm(1)) = True Then
                MsgBox "프린팅완료이 완료되었습니다. ReviewOffset이 맞는지 확인해 주십시요.", vbExclamation
            End If
                        
        Case 6 '// 이미지 옵셋 각도 및 헤드 옵셋 각도 계산.
                        
            If (dCheckedDrop_SXmm(2) = 0) Or (dCheckedDrop_SYmm(2) = 0) Or (dCheckedDrop_EXmm(2) = 0) Or (dCheckedDrop_EYmm(2) = 0) Then
                MsgBox "Drop의 시작점과 끝점을 확인하셔야 합니다.", vbExclamation
                Exit Sub
            End If
            
            dMeasuredelta_Xmm# = dCheckedDrop_SXmm(2) - dCheckedDrop_EXmm(2)
            dMeasureXPitch_um# = dMeasuredelta_Xmm# * 1000
                        
'            nPrintUseNzlCnt% = gPrintPara.nSetEndNzlNo - gPrintPara.nSetStartNzlNo
'            dSlant# = dMeasureXPitch_um# / (nPrintUseNzlCnt% * NOZZLE_PITCH_UM)

'            dTargetXPitch_um# = gPrintPara.dCfgXPitch_um * (NOZZLE_COUNT - 1)
'            dSlant# = dTargetXPitch_um# / ((NOZZLE_COUNT - 1) * NOZZLE_PITCH_UM)
'            dTheoryAngle# = ArcCos(dSlant#)

            Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                            NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                            gPrintPara.dChangedPhysicNozzlePitch_um, _
                                            gPrintPara.nSetMultiple_Value, _
                                            gPrintPara.dCfgSaberAngle_Degree)
            
            'nPrintUseNzlCnt% = Jet.Get_UseNozzleCnt(gPrintPara.nSetNzlLive, gPrintPara.nSetStartNzlNo)
            
            nStartNzlNo% = CInt(Me.cboNzlNo_1st.Text)
            nEndNzlNo% = CInt(Me.cboNzlNo_2nd.Text)
            nPrintUseNzlCnt% = Jet.Get_UseSelectNozzleCnt(gPrintPara.nSetNzlLive, nStartNzlNo%, nEndNzlNo%)
            
            dTheoryXPitch_um# = nPrintUseNzlCnt% * gPrintPara.dChangedPhysicNozzlePitch_um
                        
            dslant# = dMeasureXPitch_um# / dTheoryXPitch_um#
            
            If dslant# > 1 Then
                dDiff# = dMeasureXPitch_um# - dTheoryXPitch_um#
                dOnePitchOffset_Xum# = dDiff# / nPrintUseNzlCnt%
                
                strMsg$ = "측정값이 Nozzle Pitch값보다 큽니다. Image Angle Offset을 재측정 후 다시 시도하여 주십시요."
                MsgBox strMsg$, vbExclamation
                Exit Sub
                
'                strMsg$ = "측정값이 노즐 Pitch값보다 큽니다. 확인된 결과 노즐 1 Pitch의 값은 " & Format(dOnePitchOffset_Xum#, "0.000") & "[um] 입니다."
'                strMsg$ = strMsg$ & vbCrLf & "노즐 Pitch offset에 적용하시겠습니까?"
'
'                If MsgBox(strMsg$, vbOKCancel) = vbOK Then
'
'                    Me.txtNozzlePitchOffset_um.Text = Format(dOnePitchOffset_Xum#, "0.000")
'                    gPrintPara.dPhysicNozzleOffset_um = CDbl(Me.txtNozzlePitchOffset_um.Text)
'                    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PITCH_OFFSET_UM", gPrintPara.dPhysicNozzleOffset_um)
'
'                    Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
'                                                    NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
'                                                    gPrintPara.dChangedPhysicNozzlePitch_um, _
'                                                    gPrintPara.nSetMultiple_Value, _
'                                                    gPrintPara.dCfgSaberAngle_Degree)
'
'                    lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
'                    lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
'
'                    dTheoryXPitch_um# = nPrintUseNzlCnt% * gPrintPara.dChangedPhysicNozzlePitch_um
'
'                    dDiff# = dMeasureXPitch_um# - dTheoryXPitch_um#
'
'                    dslant# = dMeasureXPitch_um# / dTheoryXPitch_um#
'                Else
'                    Exit Sub
'                End If
                
'                Exit Sub
            End If
            
            dMeasureAngle# = ArcCos(dslant#)
            
            lblTheoryAngle.Caption = "이론 각도: " & Format(gPrintPara.dCfgSaberAngle_Degree, "0.000") & " [°]"
            lblMeasureAngle.Caption = "측정 각도: " & Format(dMeasureAngle#, "0.000") & " [°]"
            
            dDeltaOffsetTheta# = gPrintPara.dCfgSaberAngle_Degree - dMeasureAngle#
            
            gPrintPara.dCfgHeadThetaOffset_Degree = gPrintPara.dCfgHeadThetaOffset_Degree + dDeltaOffsetTheta#
            
            Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_QHT_OFFSET_DEGREE", Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000"))

            Me.txtHeadOffsetAngle.Text = Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000")
                        
            dPrintTheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
            lblFixedHeadTheta.Caption = "보정 각도: " & Format(dPrintTheta#, "0.000") & " [°]"
            
            dCheckedDrop_SXmm(2) = 0
            dCheckedDrop_SYmm(2) = 0
            dCheckedDrop_EXmm(2) = 0
            dCheckedDrop_EYmm(2) = 0
                        
            cmdReviewOffset(6).Enabled = False
            
        Case 7 '// Head Angle 시작점 티칭
            
            dCheckedDrop_SXmm(2) = dAbsXmm#
            dCheckedDrop_SYmm(2) = dAbsYmm#
            strMsg$ = "시   작   점: " & Format(dCheckedDrop_SXmm(2), "0.000") & "[Xmm] / " & Format(dCheckedDrop_SYmm(2), "0.000") & "[Ymm]"
            lblSearchHeadAlignOffset_Start.Caption = strMsg$
            
        Case 8 '// Head Angle 끝점 티칭
        
            dCheckedDrop_EXmm(2) = dAbsXmm#
            dCheckedDrop_EYmm(2) = dAbsYmm#
                                              
            strMsg$ = "끝        점: " & Format(dCheckedDrop_EXmm(2), "0.000") & "[Xmm] / " & Format(dCheckedDrop_EYmm(2), "0.000") & "[Ymm]"
            lblSearchHeadAlignOffset_End.Caption = strMsg$
            
            cmdReviewOffset(6).Enabled = True
        Case 9
        
            For i% = 0 To 3 Step 1
                dCheckedDrop_SXmm(i%) = 0
                dCheckedDrop_SYmm(i%) = 0
                dCheckedDrop_EXmm(i%) = 0
                dCheckedDrop_EYmm(i%) = 0
            Next i%
            
            dReview_SXmm(2) = dAbsXmm#
            dReview_SYmm(2) = dAbsYmm#
            gPrintPara.dTmpReviewOff_SXmm = dReview_SXmm(2) + gPrintPara.dReviewOffset_Xmm
            gPrintPara.dTmpReviewOff_SYmm = dReview_SYmm(2) + gPrintPara.dReviewOffset_Ymm
            
            strMsg$ = "기준: " & Format(dReview_SXmm(1), "0.000") & "[Xmm] / " & Format(dReview_SYmm(1), "0.000") & "[Ymm]"
            lblIPrintOriginImageAngle.Caption = strMsg$
            
        Case 10 '// Image AngleOffset Print
        
            If Print_ReviewOffset(gPrintPara.dTmpReviewOff_SXmm, _
                                  gPrintPara.dTmpReviewOff_SYmm, _
                                  dReview_SXmm(2), _
                                  dReview_SYmm(2)) = True Then
                MsgBox "Image AngleOffset을 위한 프린팅완료. Drop 위치를 찾아보세요.", vbExclamation
            End If
        
        Case 11
            dCheckedDrop_SXmm(3) = dAbsXmm#
            dCheckedDrop_SYmm(3) = dAbsYmm#
            strMsg$ = "시   작   점: " & Format(dCheckedDrop_SXmm(3), "0.000") & "[Xmm] / " & Format(dCheckedDrop_SYmm(3), "0.000") & "[Ymm]"
            lblImageAngleOffset_Start.Caption = strMsg$

        Case 12
            dCheckedDrop_EXmm(3) = dAbsXmm#
            dCheckedDrop_EYmm(3) = dAbsYmm#
            strMsg$ = "끝        점: " & Format(dCheckedDrop_EXmm(3), "0.000") & "[Xmm] / " & Format(dCheckedDrop_EYmm(3), "0.000") & "[Ymm]"
            lblImageAngleOffset_End.Caption = strMsg$
            
            cmdReviewOffset(13).Enabled = True
            
        Case 13
                    
            If (dCheckedDrop_SXmm(3) = 0) Or (dCheckedDrop_SYmm(3) = 0) Or (dCheckedDrop_EXmm(3) = 0) Or (dCheckedDrop_EYmm(3) = 0) Then
                MsgBox "Drop의 시작점과 끝점을 확인하셔야 합니다.", vbExclamation
                Exit Sub
            End If
            
            dMeasuredelta_Xmm# = dCheckedDrop_EXmm(3) - dCheckedDrop_SXmm(3)
            dMeasuredelta_Ymm# = dCheckedDrop_EYmm(3) - dCheckedDrop_SYmm(3)
            
            dslant# = dMeasuredelta_Ymm# / dMeasuredelta_Xmm# '((NOZZLE_COUNT - 1) * NOZZLE_PITCH_UM)
            dImageOffsetAngle# = ArcTan(dslant#)
            
            gPrintPara.dCfgSaberAngleOffset_Degree = gPrintPara.dCfgSaberAngleOffset_Degree + dImageOffsetAngle#
            
            Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_SABERANGLE_OFFSET", Format(gPrintPara.dCfgSaberAngleOffset_Degree, "0.000"))
            
            Me.txtImageOffsetAngle.Text = Format(gPrintPara.dCfgSaberAngleOffset_Degree, "0.000")
            
            '// Nozzle Pitch
            dMeasurePitch_mm# = Sqr((dMeasuredelta_Xmm# ^ 2) + (dMeasuredelta_Ymm# ^ 2))
            
            nStartNzlNo% = CInt(Me.cboNzlNo_1st.Text)
            nEndNzlNo% = CInt(Me.cboNzlNo_2nd.Text)
            nPrintUseNzlCnt% = Jet.Get_UseSelectNozzleCnt(gPrintPara.nSetNzlLive, nStartNzlNo%, nEndNzlNo%)
            
            dTheoryPitch_mm# = (nPrintUseNzlCnt% * gPrintPara.dCfgXPitch_um) / 1000
            
            dDiff# = dMeasurePitch_mm# - dTheoryPitch_mm#
            
            dNozzlePitch_um# = dDiff# / nPrintUseNzlCnt%
            Me.txtNozzlePitchOffset_um.Text = Format(dNozzlePitch_um#, "0.000")
            gPrintPara.dPhysicNozzleOffset_um = CDbl(Me.txtNozzlePitchOffset_um.Text)
            Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PITCH_OFFSET_UM", gPrintPara.dPhysicNozzleOffset_um)
            
            Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                gPrintPara.dChangedPhysicNozzlePitch_um, _
                                gPrintPara.nSetMultiple_Value, _
                                gPrintPara.dCfgSaberAngle_Degree)
                                                    
            lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
            lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
            
            dCheckedDrop_SXmm(3) = 0
            dCheckedDrop_SYmm(3) = 0
            dCheckedDrop_EXmm(3) = 0
            dCheckedDrop_EYmm(3) = 0
            
            cmdReviewOffset(13).Enabled = False
            
        Case 14
            Call MOVE_XY(dReview_SXmm(0), dReview_SYmm(0))
        Case 15
            Call MOVE_XY(dReview_SXmm(2), dReview_SYmm(2))
        Case 16
            Call MOVE_XY(dReview_SXmm(1), dReview_SYmm(1))
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveCappingPos_Click()
On Error GoTo sysErr:
    
    gPrintPara.dTeachCapping_Xmm = CDbl(Me.txtCapping_QHT_Xmm.Text)
    gPrintPara.dTeachCapping_Ymm = CDbl(Me.txtCapping_QHT_Ymm.Text)
    gPrintPara.dTeachCapping_Zmm = CDbl(Me.txtCapping_QHT_Zmm.Text)
    gPrintPara.dTeachCappingQHT_Degree = CDbl(Me.txtCapping_QHT_Degree.Text)

    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_XMM", Format(gPrintPara.dTeachCapping_Xmm, "0.000"))
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_YMM", Format(gPrintPara.dTeachCapping_Ymm, "0.000"))
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_ZMM", Format(gPrintPara.dTeachCapping_Zmm, "0.000"))
    Call SaveSetting(App.Title, "PRINT_INFO", "TEACH_CAPPING_QHT_DEGREE", Format(gPrintPara.dTeachCappingQHT_Degree, "0.000"))
    
    Exit Sub
sysErr:
    MsgBox Err.Description

End Sub

Private Sub cmdSaveLensOffset_Click()
On Error GoTo sysErr:
    
    gPrintPara.dSysLensOffsetx2x10_Xmm = CDbl(Me.txtLensOffset_Xmm.Text)
    gPrintPara.dSysLensOffsetx2x10_Ymm = CDbl(Me.txtLensOffset_Ymm.Text)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_X2X10_OFFSET_XMM", gPrintPara.dSysLensOffsetx2x10_Xmm)
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_X2X10_OFFSET_YMM", gPrintPara.dSysLensOffsetx2x10_Ymm)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdSavePrintInfo_Click()
On Error GoTo sysErr:
    Call Apply_PrintInfo
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdTimerJetContinue_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    cmdTimerJetContinue.Caption = "TimerJet 실행중"
    'freq# = CDbl(txtJetFrequency_khz.Text)
    freq# = gPrintPara.dCfgPrintFreq_kHz
    
    If PI_HEAD_TimerJetStart(0, freq#, True) = False Then
        MsgBox "Head Ctrl Interface ERROR!(PI_HEAD_TimerJetStart)", vbCritical
    End If
    
End Sub

Private Sub cmdTimerJetContinue_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    Dim objTimer As New clsTimer
    
    Call objTimer.DelayWait(0.5, True)
    cmdTimerJetContinue.Caption = "TimerJet"
    If PI_HEAD_JetStop(0, True) = False Then
        MsgBox "Head Ctrl Interface ERROR!(PI_HEAD_JetStop)", vbCritical
    End If
End Sub

Private Sub cmdPurgeContinue_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo sysErr:
    cmdPurgeContinue.Caption = "Purge 진행중"
    
    If Me.chkSupplySovent.Value = 1 Then
        PComm32_DOUT oSg_Cliffer_SolventPump, 1, PComm32_ClifferID
    End If
            
    Call INK_Supply.Purge
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub cmdPurgeContinue_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo sysErr:
    cmdPurgeContinue.Caption = "Purge"
    Call INK_Supply.Meniscus
    
    PComm32_DOUT oSg_Cliffer_SolventPump, 0, PComm32_ClifferID
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub Form_Load()

    'Me.mnuHeadCtl.Visible = False
'
'    For i% = 1 To 10
'        Me.MSFlexGrid1.TextMatrix(i%, 3) = "13~510"
'    Next i%

    txtSystemImagePitch_um.Text = CStr(SAVED_HEADIF_BOOT_System_Image_Pitch)
    
    Me.cmdReviewOffset(3).Enabled = False
    Me.cmdReviewOffset(6).Enabled = False
    Me.cmdReviewOffset(13).Enabled = False
    
    For i% = 1 To NOZZLE_COUNT Step 1
        cboNzlNo_1st.AddItem CStr(i%)
        cboNzlNo_2nd.AddItem CStr(i%)
    Next i%
    
    Call Init_LabelMsg
    
    
End Sub

Private Sub optPurge_Click(Index As Integer)

On Error GoTo sysErr:

    Select Case Index
        
        Case 0
        
            Dim objTimer As New clsTimer
            
            fbStopPurge = False
            'Frame29.Enabled = False
            txtPurgeTime_sec.Enabled = False
            dPurgeTime_sec# = CDbl(txtPurgeTime_sec.Text)
            
            If Me.chkSupplySovent.Value = 1 Then
                PComm32_DOUT oSg_Cliffer_SolventPump, 1, PComm32_ClifferID
            End If
            
            Call INK_Supply.Purge
                
            Call objTimer.DelayWait_TimeCheck(True)
            Do
                DoEvents
                
                If fbStopPurge = True Then
                    fbStopPurge = False
                    Exit Do
                End If
                
                curTime_sec# = objTimer.DelayWait_TimeCheck(False)
                lblPurgeTime_sec.Caption = Format(curTime_sec#, "0.0") & "[sec]"
            Loop Until curTime_sec# >= dPurgeTime_sec#
            Call objTimer.DelayWait_TimeCheck(True)
            
            Call INK_Supply.Meniscus
            
            PComm32_DOUT oSg_Cliffer_SolventPump, 0, PComm32_ClifferID
            
            lblPurgeTime_sec.Caption = "--"
            'Frame29.Enabled = True
            txtPurgeTime_sec.Enabled = True
            optPurge(1).Value = 1
            MDI_Main.optPurge(1).Value = 1
            
        Case 1
            fbStopPurge = True
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub optSupplySolvent_Click(Index As Integer)
On Error GoTo sysErr:

Select Case Index

    Case 0
        Dim objTimer As New clsTimer
        
        fbStopSupplySolvent = False
        dSupplyTime_sec# = CDbl(txtSupplySolventTime_sec.Text)
        txtSupplySolventTime_sec.Enabled = False
        PComm32_DOUT oSg_Cliffer_SolventPump, 1, PComm32_ClifferID
        Call objTimer.DelayWait_TimeCheck(True)
        Do
            DoEvents
            If fbStopSupplySolvent = True Then
                fbStopSupplySolvent = False
                Exit Do
            End If
            curTime_sec# = objTimer.DelayWait_TimeCheck(False)
            lblSupplyTime_sec.Caption = Format(curTime_sec#, "0.0") & "[sec]"
        Loop Until curTime_sec# >= dSupplyTime_sec#
        Call objTimer.DelayWait_TimeCheck(True)
        PComm32_DOUT oSg_Cliffer_SolventPump, 0, PComm32_ClifferID
        lblSupplyTime_sec.Caption = "--"
        optSupplySolvent(1).Value = 1
        txtSupplySolventTime_sec.Enabled = True
    Case 1
        fbStopSupplySolvent = True
End Select
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub optTimerJet_Click(Index As Integer)
On Error GoTo sysErr:

Select Case Index
    Case 0
    
        Dim objTimer As New clsTimer
        
        fbStopTimerJet = False
        
        'Frame38.Enabled = False
        txtTimerJet_DelayTime_sec.Enabled = False
        freq# = gPrintPara.dCfgPrintFreq_kHz
        time_sec# = CDbl(txtTimerJet_DelayTime_sec.Text)
        
        If PI_HEAD_TimerJetStart(0, freq#, True) = False Then
            MsgBox "Head Ctrl Interface ERROR!(PI_HEAD_TimerJetStart)", vbCritical
        End If
        
        Call objTimer.DelayWait_TimeCheck(True)
        Do
            DoEvents
            
            If fbStopTimerJet = True Then
                fbStopTimerJet = False
                Exit Do
            End If
            
            curTime_sec# = objTimer.DelayWait_TimeCheck(False)
            lblTime_sec.Caption = Format(curTime_sec#, "0.0") & "[sec]"
        Loop Until curTime_sec# >= time_sec#
        Call objTimer.DelayWait_TimeCheck(True)
        
        If PI_HEAD_JetStop(0, True) = False Then
            MsgBox "Head Ctrl Interface ERROR!(PI_HEAD_JetStop)", vbCritical
        End If
        
        lblTime_sec.Caption = "--"
        
        'Frame38.Enabled = True
        txtTimerJet_DelayTime_sec.Enabled = True
        optTimerJet(1).Value = 1
        MDI_Main.optTimerJet(1).Value = 1
    Case 1
        fbStopTimerJet = True
        
End Select
    
    Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub SSTab2_Click(PreviousTab As Integer)
On Error GoTo sysErr:

Exit Sub
sysErr:
    MsgBox Err.Description
    
End Sub

Private Sub Timer_Main_Timer()

    Select Case g_nRunSeqType
        
        Case 1
            '// idle
        Case 10
            Call PrintSeq(g_bStopPrint)
        Case 20
            Call CappingSeq
        
    End Select

End Sub

Private Sub PrintSeq(ByVal i_bStopPrint As Boolean)
    
    If i_bStopPrint = True Then
        g_nPrintSeqNo = -1
    End If
    
    Select Case g_nPrintSeqNo
            
        Case -1
            Call Move_AndPrintOrigin
            Call End_Printing
            
            g_nPrintSeqNo = 0
                        
        Case 1
            Call Start_Printing
            Call Display_ProcMsg("Print 시작")
            
            g_nPrintSeqNo = 10
            
        Case 2
            Call Move_AndPrintOrigin
            Call End_Printing
            Call Display_ProcMsg("Print 완료")
            
        Case 10
            
            If Check_BeforePrintStatus() = True Then
                g_nPrintSeqNo = 100
            Else
                g_nPrintSeqNo = 2
            End If
            
        Case 100
            If Send_PrintInfo() = True Then '// Live & Nozzle / Image data
                If Move_PrintStartPosition() = True Then '// 출발 바로 전 단계까지 위치이동 완료
                    g_nPrintSeqNo = 300
                Else
                    g_nPrintSeqNo = -1
                End If
            Else
                g_nPrintSeqNo = -1
            End If
            
        Case 200
            '// X,Y 이동하면서 Printing
            If Move_Printing(g_nScanCnt) = True Then
                g_nScanCnt = g_nScanCnt + 1
                
                strMsg$ = "총 Path 횟수: " & CStr(g_nScanCnt) & "/" & CStr(gPrintPara.lRtnTotalScanCnt)
                frmRunning.lblTotalBlockScanCnt.Caption = strMsg$
                Call Display_ProcMsg(strMsg$)
                g_nPrintSeqNo = 300
            Else
                g_nPrintSeqNo = -1
            End If
            
        Case 300
            If g_nScanCnt >= gPrintPara.lRtnTotalScanCnt Then
                g_nPrintSeqNo = 2
            Else
                If g_nScanCnt = (gPrintPara.lRtnTotalScanCnt - 1) Then
                    If gPrintPara.nRtnLastUseNozzleCnt > 0 Then
                        If Set_LastNozzle() = True Then
                            g_nPrintSeqNo = 200
                        Else
                            g_nPrintSeqNo = -1
                        End If
                        
                    End If
                End If
                g_nPrintSeqNo = 200
            End If
             
    End Select

End Sub

Private Function Set_LastNozzle() As Boolean
On Error GoTo sysErr:
    
    Dim bRtn As Boolean
    
    lblLastBlockUseNzlCnt.BackColor = vbRed
                                
    nStartNzlNo% = gPrintPara.nSetStartNzlNo - 1
    nEndNzlNo% = gPrintPara.nSetEndNzlNo - 1
    nMultiple_Value% = gPrintPara.nSetMultiple_Value
    
    nLastNzlNo% = nMultiple_Value% * gPrintPara.nRtnLastUseNozzleCnt
    
    For i% = 0 To (NOZZLE_COUNT - 1) Step 1
        g_nLastLiveNzl(i%) = 0
    Next i%
    
'    For i% = nStartNzlNo% To nLastNzlNo% Step 1
'        If ((i% - nStartNzlNo%) Mod nMultiple_Value%) = 0 Then
'            g_nLastLiveNzl(i%) = 1
'        Else
'            g_nLastLiveNzl(i%) = 0
'        End If
'    Next i%
            
    For i% = nStartNzlNo% To nLastNzlNo% Step 1
        g_nLastLiveNzl(i%) = gPrintPara.nSetNzlLive(i%)
    Next i%
    
    If PI_HEAD_LiveNozzle(0, True, g_nLastLiveNzl) = False Then
        bRtn = False
        MsgBox "Error PI_HEAD_LiveNozzle!", vbExclamation
    Else
        bRtn = True
    End If
    
    strMsg$ = "마지막 Scan ---> 짜투리 노즐수는 " & CStr(gPrintPara.nRtnLastUseNozzleCnt)
    Call Display_ProcMsg(strMsg$)
                        
    Set_LastNozzle = bRtn
Exit Function
sysErr:
    Set_LastNozzle = False
    MsgBox Err.Description
End Function
Private Sub CappingSeq(Optional ipStopCapping As Boolean = False)


End Sub

Private Sub cmdBootHeadCtrl_Click()

    If PI_HEAD_IF_Init = True Then
        
        If PI_HEAD_IF_Boot(True) = True Then
            MsgBox "Success booting.", vbExclamation
        Else
            MsgBox "Fail booting.", vbExclamation
        End If
    Else
        MsgBox "Fail Initialize for booting.", vbExclamation
    End If
            
End Sub

Private Sub cmdUploadPrintImage_Click()
    
    Const HEAD_1 As Integer = 0
    Const DIR_FORWARD As Integer = 0
    Const DIR_BACKWARD As Integer = 1
    
    cur_org_img_pitch# = CDbl(txtOriginImagePitch_um.Text)
    start_nzl_no% = 1
    end_nzl_no% = 256
    use_nzl_qty% = (end_nzl_no% - start_nzl_no%) + 1
    dn_file$ = Me.txtPrintImagePath.Text
    
    If PI_HEAD_UploadImage(HEAD_1, DIR_FORWARD, cur_org_img_pitch#, start_nzl_no%, end_nzl_no%, use_nzl_qty%, dn_file$, LineCount_50Pro, True) = False Then
        MsgBox "정방향 이미지 로딩에러 발생.", vbExclamation
    Else
        MsgBox "Return Y Image count: " & CStr(LineCount_50Pro)
    End If
    
'    DelayWait 0.5, True
'    '역방향 Image Upload 첫번째 헤드
'    If PI_HEAD_UploadImage(HEAD_1, DIR_BACKWARD, cur_org_img_pitch#, start_nzl_no%, end_nzl_no%, use_nzl_qty%, dn_file$, LineCount_50Pro, True) = False Then
'        MsgBox "기본 20000 Drop Image Download중 Error!", vbCritical
'    End If
    
End Sub

Private Sub txtPrintFreq_kHz_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:

'    If (KeyCode <> 13) Then Exit Sub
'
'    gPrintPara.dCfgPrintFreq_kHz = CDbl(Me.txtPrintFreq_kHz.Text)
'    gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
'    gPrintPara.dPrintAccDist_mm = ((PComm32_Acc_ms(PComm32_YAxis) / 1000) * gPrintPara.dSetPrintSpeed_mmPs) + dSetPrintAccDistOffset_Ymm
'
'    lblPrintSpeed_mmPs.Caption = "프린트 속도: " & Format(gPrintPara.dSetPrintSpeed_mmPs, "0.0") & "[mm/s]"
'    Me.txtPrintAccDist_mm.Text = Format(gPrintPara.dPrintAccDist_mm, "0.000")
'
'    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_FREQUENCY_KHZ", gPrintPara.dCfgPrintFreq_kHz)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintFreq_kHz_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintImageWidth_mm_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:

    If (KeyCode <> 13) Then Exit Sub
              
    gPrintPara.dCfgPrintWidth_mm = CDbl(Me.txtPrintImageWidth_mm.Text)
    gPrintPara.dCfgPrintWidth_mm = Get_FitImageWidth_mm(gPrintPara.dCfgPrintWidth_mm, gPrintPara.dCfgXPitch_um)
    Me.txtPrintImageWidth_mm.Text = Format(gPrintPara.dCfgPrintWidth_mm, "0.000")
    
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_WIDTH_XMM", gPrintPara.dCfgPrintWidth_mm)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintImageWidth_mm_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintSpeed_mmPs_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:

    If (KeyCode <> 13) Then Exit Sub
    
    If IsNumeric(Me.txtPrintSpeed_mmPs.Text) = False Then
        MsgBox "숫자를 입력해 주세요.", vbExclamation
        Exit Sub
    End If
    
    gPrintPara.dCfgPrintSpeed_mmPs = CDbl(Me.txtPrintSpeed_mmPs.Text)
    gPrintPara.dCfgPrintFreq_kHz = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    lblPrintFrequency_kHz.Caption = "프린트 주파수: " & Format(gPrintPara.dCfgPrintFreq_kHz, "0.0") & "[kHz]"
    
    txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
    
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_SPEED_MMPS", gPrintPara.dCfgPrintSpeed_mmPs)
            
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintSpeed_mmPs_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintXPitch_um_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:

    If (KeyCode <> 13) Then Exit Sub
    
    Select Case Index
        Case 0
            
            If (IsNumeric(Me.txtPrintXPitch_um(0).Text) = False) Then
                Me.txtPrintXPitch_um(0).Text = Format(gPrintPara.dCfgXPitch_um, "0")
                Call MsgBox("숫자형 데이타를 입력해 주십시요.", vbExclamation)
                Exit Sub
            End If
    
            dNewXPitch_um# = CDbl(Me.txtPrintXPitch_um(0).Text)
    
            If dNewXPitch_um# <> gPrintPara.dCfgXPitch_um Then
                strMsg$ = "X Pitch(System Pitch) 값이 이전과 다른 값으로 변경되었습니다."
                strMsg$ = strMsg$ & " ( " & CStr(gPrintPara.dCfgXPitch_um) & "[um] -> " & CStr(dNewXPitch_um#) & "[um] )"
                strMsg$ = strMsg$ & vbCrLf & vbCrLf & "X Pitch(X축 가로방향 Drop) 값이 변경될 경우 프린트 이미지를 새로 다운로딩이 됩니다."
                strMsg$ = strMsg$ & vbCrLf & "만일 프린트 이미지를 새로 다운로딩이 안해 주시면, 이전에 세팅 각도만큼 기울어진 프린팅 이미지로 출력이 될 것 입니다."
                strMsg$ = strMsg$ & vbCrLf & vbCrLf & "변경하시겠습니까?"
                
                If MsgBox(strMsg$, vbExclamation + vbOKCancel) = vbCancel Then
                    Me.txtPrintXPitch_um(0).Text = Format(gPrintPara.dCfgXPitch_um, "0.0")
                    Exit Sub
                End If
            End If
            
            gPrintPara.dCfgXPitch_um = CDbl(Me.txtPrintXPitch_um(0).Text)
                                   
            gPrintPara.dCfgPrintWidth_mm = Get_FitImageWidth_mm(gPrintPara.dCfgPrintWidth_mm, gPrintPara.dCfgXPitch_um)
            Me.txtPrintImageWidth_mm.Text = Format(gPrintPara.dCfgPrintWidth_mm, "0.000")
                        
            Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                            NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                            gPrintPara.dChangedPhysicNozzlePitch_um, _
                                            gPrintPara.nSetMultiple_Value, _
                                            gPrintPara.dCfgSaberAngle_Degree)
            
            lblMultipleValue.Caption = "Pitch 배수: " & CStr(gPrintPara.nSetMultiple_Value) & "배수, "
            lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
            lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    
            Me.txtSaberAngle(0).Text = Format(gPrintPara.dCfgSaberAngle_Degree, "0.000")
            Me.txtSaberAngle(1).Text = Format(gPrintPara.dCfgSaberAngle_Degree, "0.000")
            
            Me.txtPrintXPitch_um(1).Text = Me.txtPrintXPitch_um(0).Text
            Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_X_PITCH_UM", gPrintPara.dCfgXPitch_um)
            
            Call Set_PrintImage
            
        Case 1
        
    End Select
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintXPitch_um_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo sysErr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintYPitch_um_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:

    If (KeyCode <> 13) Then Exit Sub
    
'    gPrintPara.dCfgDropPitch_um = CDbl(Me.txtPrintYPitch_um.Text)
'
'    gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
'    gPrintPara.dPrintAccDist_mm = ((PComm32_Acc_ms(PComm32_YAxis) / 1000) * gPrintPara.dSetPrintSpeed_mmPs) + dSetPrintAccDistOffset_Ymm
'
'    lblPrintSpeed_mmPs.Caption = "프린트 속도: " & Format(gPrintPara.dSetPrintSpeed_mmPs, "0.0") & "[mm/s]"
'    Me.txtPrintAccDist_mm.Text = Format(gPrintPara.dPrintAccDist_mm, "0.000")
'
'    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_DROP_PITCH_UM", gPrintPara.dCfgDropPitch_um)
    
    If (IsNumeric(Me.txtPrintYPitch_um.Text) = False) Then
        Me.txtPrintYPitch_um.Text = Format(SAVED_HEADIF_BOOT_System_Image_Pitch, "0")
        Call MsgBox("숫자형 데이타를 입력해 주십시요.", vbExclamation)
        Exit Sub
    End If
    
    'SAVED_HEADIF_BOOT_System_Image_Pitch = CDbl(Me.txtPrintYPitch_um.Text)
    dNewSystemPitch_um# = CDbl(Me.txtPrintYPitch_um.Text)
    
    If dNewSystemPitch_um# <> SAVED_HEADIF_BOOT_System_Image_Pitch Then
        strMsg$ = "Y Pitch(System Pitch) 값이 이전과 다른 값으로 변경되었습니다."
        strMsg$ = strMsg$ & " ( " & CStr(SAVED_HEADIF_BOOT_System_Image_Pitch) & "[um] -> " & CStr(dNewSystemPitch_um#) & "[um] )"
        strMsg$ = strMsg$ & vbCrLf & "Y Pitch(System Pitch) 값이 변경될 경우 프린트 이미지를 새로 다운로딩이 됩니다."
        strMsg$ = strMsg$ & vbCrLf & "만일 프린트 이미지를 새로 다운로딩이 안해 주시면, 원하는 프린팅 길이로 출력해 볼 수가 없습니다."
        strMsg$ = strMsg$ & vbCrLf & vbCrLf & "변경하시겠습니까?"
        
        If MsgBox(strMsg$, vbExclamation + vbOKCancel) = vbCancel Then
            Me.txtPrintYPitch_um.Text = Format(SAVED_HEADIF_BOOT_System_Image_Pitch, "0.0")
            Exit Sub
        End If
    End If
    
    SAVED_HEADIF_BOOT_System_Image_Pitch = dNewSystemPitch_um#
    
    gPrintPara.dCfgPrintFreq_kHz = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    Me.lblPrintFrequency_kHz.Caption = "프린트 주파수: " & Format(gPrintPara.dCfgPrintFreq_kHz, "0.0") & "[kHz]"
    
    txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
    
    Call Set_SystemPitch(SAVED_HEADIF_BOOT_System_Image_Pitch)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPrintYPitch_um_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:
    
    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtTimerJet_DelayTime_sec_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo sysErr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtTimerJet_DelayTime_sec.Text) = False) Then
        Me.txtTimerJet_DelayTime_sec.Text = "5"
        Exit Sub
    End If
    
    gPrintPara.dSysTimerJetTime_sec = CDbl(Me.txtTimerJet_DelayTime_sec.Text)
    
    MDI_Main.txtTimerJet_DelayTime_sec.Text = Me.txtTimerJet_DelayTime_sec.Text
    
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_TIMERJETTIME_SEC", gPrintPara.dSysTimerJetTime_sec)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtTimerJet_DelayTime_sec_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPurgeTime_sec_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtPurgeTime_sec.Text) = False) Then
        Me.txtPurgeTime_sec.Text = "5"
        Exit Sub
    End If
    
    gPrintPara.dSysPurgeTime_sec = CDbl(Me.txtPurgeTime_sec.Text)
    
    MDI_Main.txtPurgeTime_sec.Text = Me.txtPurgeTime_sec.Text
    
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_PURGETIME_SEC", gPrintPara.dSysPurgeTime_sec)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtPurgeTime_sec_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub


Private Sub txtSupplySolventTime_sec_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo sysErr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtSupplySolventTime_sec.Text) = False) Then
        Me.txtSupplySolventTime_sec.Text = "5"
        Exit Sub
    End If
    
    gPrintPara.dSysSupplySolventTime_sec = CDbl(Me.txtSupplySolventTime_sec.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_SUPPLYSOLVENT_TIME_SEC", gPrintPara.dSysSupplySolventTime_sec)
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Private Sub txtSupplySolventTime_sec_KeyPress(KeyAscii As Integer)
On Error GoTo sysErr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case Asc(".")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Set_Head12_Offset()
On Error GoTo sysErr:

    If PI_HEAD_BootOK = True Then
        If PI_HEAD_12_Offset(0, 0, True) = False Then
            MsgBox "Error PI_HEAD_12_Offset!", vbExclamation
        End If
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Set_NozzleParams()

On Error GoTo sysErr:

    file_name$ = gPrintPara.strNzlParamsFilePath
    If dir(file_name$) = "" Then
        MsgBox "Nozzle Parameter 파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    Open file_name$ For Input As #1
    iindex% = 0
    Do While Not EOF(1)
        Line Input #1, str_line$
        ReArray = Split(str_line$, ",", 3, vbTextCompare)
        If (UBound(ReArray) = 2) And (iindex% >= 1) Then
            gPrintPara.nSetNzlLive(iindex% - 1) = ReArray(1)
            gPrintPara.nSetNzlDelay(iindex% - 1) = ReArray(2)
        End If
        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
            MsgBox "Nozzle Live중 Interface Error!", vbCritical
        End If
        
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Nozzle Delay중 Interface Error!", vbCritical
        End If
    End If

Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Set_SystemPitch(ByVal i_dSystemPitch_um As Double)
On Error GoTo sysErr:
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_Set_SystemPitch(i_dSystemPitch_um, True) = False Then
            MsgBox "System Pitch 전송 실패!!", False
        End If
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Set_MultiPulse()
On Error GoTo sysErr:
    
    file_name$ = gPrintPara.strMultiPulseFilePath
    
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    Open file_name$ For Input As #1
    iindex% = 0
    nMaxSplitCnt% = (MAX_WAVEFORM_DIVIDE_CNT / WAVEFORM_SPLIT_CNT)
    
    Do While Not EOF(1)
        
        If iindex% > nMaxSplitCnt% Then
            Exit Do
        End If
        
        Line Input #1, str_line$
        
        ReArray = Split(str_line$, ",", 3, vbTextCompare)
        
        
        If (UBound(ReArray) = 1) And (iindex% >= 1) Then
            gPrintPara.dSetMultiPulseVolt(iindex% - 1) = ReArray(1)
        End If
        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_VoltageSet(hh%, True, gPrintPara.dSetMultiPulseVolt) = False Then
            MsgBox "Multi Pulse Data 전송 실패!!", False
        End If
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Set_PrintImage()
On Error GoTo sysErr:
        
    file_name$ = gPrintPara.strPrintImageFilePath
    If dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    If PI_HEAD_BootOK = True Then
    
        g_nDataLoadingType = 1
        
        Load frmWait
        frmWait.Show
        
        cur_org_img_pitch# = CDbl(txtOriginImagePitch_um.Text)
        start_nzl_no% = 1
        end_nzl_no% = 256
        use_nzl_qty% = (end_nzl_no% - start_nzl_no%) + 1
        dn_file$ = gPrintPara.strPrintImageFilePath
        
        '// 4.
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
            Exit Sub
        End If
        
        dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
        If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
            Unload frmWait
            MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
            Exit Sub
        End If
    
        If PI_HEAD_UploadImage(0, _
                               0, _
                               cur_org_img_pitch#, _
                               start_nzl_no%, _
                               end_nzl_no%, _
                               use_nzl_qty%, _
                               dn_file$, _
                               gPrintPara.lngRtnImageYCnt, _
                               True) = False Then
            Unload frmWait
            MsgBox "정방향 이미지 로딩에러 발생.", vbExclamation
        Else
'            If PI_HEAD_UploadImage(0, _
'                                   1, _
'                                   cur_org_img_pitch#, _
'                                   start_nzl_no%, _
'                                   end_nzl_no%, _
'                                   use_nzl_qty%, _
'                                   dn_file$, _
'                                   gPrintPara.lngRtnImageYCnt, _
'                                   True) = False Then
'                Unload frmWait
'                MsgBox "역방향 이미지 로딩에러 발생.", vbExclamation
'            End If
        End If
        
        g_nDataLoadingType = 0
        Unload frmWait
        
        lblReturnImageYCnt.Caption = "응답갯수(H): " & CStr(gPrintPara.lngRtnImageYCnt) & "[cnt]"
        
        If gPrintPara.lngRtnImageYCnt > 0 Then
            dPrintHeight_mm# = (gPrintPara.lngRtnImageYCnt - 1) * (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)
        Else
            dPrintHeight_mm# = 0
        End If
        lblPrintHeight_mm.Caption = "Height: " & Format(dPrintHeight_mm#, "0.000") & "[mm]"
        
    End If

Exit Sub
sysErr:
    Unload frmWait
    MsgBox Err.Description
End Sub
Public Sub DisplayPrintParams()
On Error GoTo sysErr:
    
    Me.txtMultiPulseFilePath.ToolTipText = gPrintPara.strMultiPulseFilePath
    Me.txtMultiPulseFilePath.Text = GetNameToPath(gPrintPara.strMultiPulseFilePath)
    
    For i% = 0 To 1 Step 1
        Me.txtNozzleParamsFilePath(i%).ToolTipText = gPrintPara.strNzlParamsFilePath
        Me.txtNozzleParamsFilePath(i%).Text = GetNameToPath(gPrintPara.strNzlParamsFilePath)
    Next i%
    
    Me.txtPrintImageFilePath.ToolTipText = gPrintPara.strPrintImageFilePath
    Me.txtPrintImageFilePath.Text = GetNameToPath(gPrintPara.strPrintImageFilePath)
    
    Me.txtPrintStart_Xmm.Text = Format(gPrintPara.dPrintStart_Xmm, "0.000")
    Me.txtPrintStart_Ymm.Text = Format(gPrintPara.dPrintStart_Ymm, "0.000")
    Me.txtPrintHeight_mm.Text = Format(gPrintPara.dPrintHeight_mm, "0.000")
    'Me.txtPrintAccDist_mm.Text = Format(gPrintPara.dPrintAccDist_mm, "0.000")
    
    
    'gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
    Me.txtPrintSpeed_mmPs.Text = Format(gPrintPara.dCfgPrintSpeed_mmPs, "0.0")
    gPrintPara.dCfgPrintFreq_kHz = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    lblPrintFrequency_kHz.Caption = "프린트 주파수: " & Format(gPrintPara.dCfgPrintFreq_kHz, "0.0") & "[kHz]"
    txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
        
    gPrintPara.dPrintAccDist_mm = ((PComm32_Acc_ms(PComm32_YAxis) / 1000) * gPrintPara.dCfgPrintSpeed_mmPs) + gPrintPara.dSetPrintAccDistOffset_Ymm
    Me.txtPrintAccDist_mm.Text = Format(gPrintPara.dPrintAccDist_mm, "0.000")
        
    'Me.txtPrintFreq_kHz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
    'Me.txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
    Me.txtPrintXPitch_um(0).Text = Format(gPrintPara.dCfgXPitch_um, "0.000")
    Me.txtPrintXPitch_um(1).Text = Format(gPrintPara.dCfgXPitch_um, "0.000")
    
    'Me.txtPrintYPitch_um.Text = Format(gPrintPara.dCfgDropPitch_um, "0.000")
    Me.txtPrintYPitch_um.Text = Format(SAVED_HEADIF_BOOT_System_Image_Pitch, "0")
    
    gPrintPara.dCfgPrintWidth_mm = Get_FitImageWidth_mm(gPrintPara.dCfgPrintWidth_mm, gPrintPara.dCfgXPitch_um)
    Me.txtPrintImageWidth_mm.Text = Format(gPrintPara.dCfgPrintWidth_mm, "0.000")
    
    Me.txtPrintImageWidth_mm.Text = Format(gPrintPara.dCfgPrintWidth_mm, "0.000")
    Me.txtReserviorTemp.Text = Format(gPrintPara.dSysReserviorTemperature, "0.0")
    Me.txtHeadTemp.Text = Format(gPrintPara.dSysHeadTemperature, "0.0")
        
    Me.txtSupplySolventTime_sec.Text = Format(gPrintPara.dSysSupplySolventTime_sec, "0")
    Me.txtPurgeTime_sec.Text = Format(gPrintPara.dSysPurgeTime_sec, "0")
    Me.txtTimerJet_DelayTime_sec.Text = Format(gPrintPara.dSysTimerJetTime_sec, "0")
    
    MDI_Main.txtPurgeTime_sec.Text = Format(gPrintPara.dSysPurgeTime_sec, "0")
    MDI_Main.txtTimerJet_DelayTime_sec.Text = Format(gPrintPara.dSysTimerJetTime_sec, "0")
    
    Me.txtCapping_QHT_Xmm.Text = Format(gPrintPara.dTeachCapping_Xmm, "0.000")
    Me.txtCapping_QHT_Ymm.Text = Format(gPrintPara.dTeachCapping_Ymm, "0.000")
    Me.txtCapping_QHT_Zmm.Text = Format(gPrintPara.dTeachCapping_Zmm, "0.000")
    Me.txtCapping_QHT_Degree.Text = Format(gPrintPara.dTeachCappingQHT_Degree, "0.000")
    
    Me.txtLensOffset_Xmm.Text = Format(gPrintPara.dSysLensOffsetx2x10_Xmm, "0.000")
    Me.txtLensOffset_Ymm.Text = Format(gPrintPara.dSysLensOffsetx2x10_Ymm, "0.000")
    Me.txtQHTZero_Angle.Text = Format(gPrintPara.dTeachHeadZero_Degree, "0.0")
    
    Me.txtQHeadHeight_Zero_Zmm.Text = Format(gPrintPara.dTeachHeadHeight_Zero_Zmm, "0.000")
    Me.txtGlassThickness_mm.Text = Format(gPrintPara.dPrintThickness_mm, "0.000")
    
    Me.txtImageOffsetAngle.Text = Format(gPrintPara.dCfgSaberAngleOffset_Degree, "0.000")
    Me.txtHeadOffsetAngle.Text = Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000")
    
    strMsg$ = "리뷰옵셋: " & Format(gPrintPara.dReviewOffset_Xmm, "0.000") & "[dXmm] / " & Format(gPrintPara.dReviewOffset_Ymm, "0.000") & "[dYmm]"
    lblCalcReviewOffset.Caption = strMsg$
    
    txtTeachingImageYDistance_mm.Text = Format(gPrintPara.dCfgTeachingImageLength_mm, "0.000")
    txtTeachingImageDropPitch_mm.Text = Format(gPrintPara.dCfgTeachingImageDropPitch_mm, "0.000")
    
    txtPrintAccDistOffset_mm.Text = Format(gPrintPara.dSetPrintAccDistOffset_Ymm, "0.000")
    txtMoveX_mmPs.Text = Format(gPrintPara.dSetMoveX_mmPs, "0")
    txtMoveY_mmPs.Text = Format(gPrintPara.dSetMoveY_mmPs, "0")
    
    Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                    NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                    gPrintPara.dChangedPhysicNozzlePitch_um, _
                                    gPrintPara.nSetMultiple_Value, _
                                    gPrintPara.dCfgSaberAngle_Degree)
                        
    Me.txtSaberAngle(0).Text = Format(gPrintPara.dCfgSaberAngle_Degree, "0.000")
    Me.txtSaberAngle(1).Text = Format(gPrintPara.dCfgSaberAngle_Degree, "0.000")
    Me.txtNozzlePitchOffset_um.Text = Format(gPrintPara.dPhysicNozzleOffset_um, "0.000")
    
    dPrintTheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
    lblFixedHeadTheta.Caption = "보정 각도: " & Format(dPrintTheta#, "0.000") & " [°]"
        
    lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    
    lblHeadOffset_Angle.Caption = "Head Offset Angle: " & Format(gPrintPara.dCfgHeadThetaOffset_Degree, "0.000") & "[°]"
    
    Me.cboNzlNo_1st.Text = CStr(gPrintPara.nSetStartNzlNo)
    Me.cboNzlNo_2nd.Text = CStr(gPrintPara.nSetEndNzlNo)
    
    nPrintUseNzlCnt% = Jet.Get_UseSelectNozzleCnt(gPrintPara.nSetNzlLive, gPrintPara.nSetStartNzlNo, gPrintPara.nSetEndNzlNo)
    lblUseSelectedNzlCnt.Caption = "선택노즐개수: " & CStr(nPrintUseNzlCnt% + 1)
            
    g_dUVRunYSpeed_mmPs = CDbl(GetSetting(App.Title, "PRINT_INFO", "UV_RUN_Y_MMPS", "100"))
    
    txtUVRunYSpeed_mmPs.Text = Format(g_dUVRunYSpeed_mmPs, "0.000")
    
    txtEmptyInk.Text = Format(gPrintPara.dADCEmptyValue, "0")
    txtFullInk.Text = Format(gPrintPara.dADCFullValue, "0")

    If gPrintPara.bADCViewVisible = True Then
        Me.chkDisplayInkLevel.Value = 1
    Else
        Me.chkDisplayInkLevel.Value = 0
    End If
    MDI_Main.sspInkLevel.Visible = gPrintPara.bADCViewVisible
    
    If gPrintPara.nADCViewOption = 1 Then
        Me.optDisplay(0).Value = True
        MDI_Main.cwsInkLevel.Axis.Maximum = 100
    Else
        Me.optDisplay(1).Value = True
        MDI_Main.cwsInkLevel.Axis.Maximum = 60
    End If
        
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Function Print_ReviewOffset(ByVal i_dPrint_SXmm As Double, _
                            ByVal i_dPrint_SYmm As Double, _
                            ByVal i_dReview_SXmm As Double, _
                            ByVal i_dReview_SYmm As Double) As Boolean
On Error GoTo sysErr:

Dim lngRtnLineCount As Long

' 1. HD12_Offset Zero
            ' 2. Slant Angle 전송
            ' 3. Image DownLoad
            ' 4. Nozzle Delay
            ' 5. Nozzle Live
            ' 6. Frequency 전송
            ' 7. Trigger jet start
            
            ' 8. Motion Run
            
            ' 9. 끝나면 Trigger jet Stop
            
            If gPrintPara.dCfgTeachingImageLength_mm <= 0 Then
                MsgBox "Teaching 이미지 거리가 0이거나 작습니다. 확인 후 다시 시도해 주십시요.", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            If gPrintPara.dCfgTeachingImageDropPitch_mm <= 0 Then
                MsgBox "Teaching Drop Pitch 거리가 0이거나 작습니다. 확인 후 다시 시도해 주십시요.", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
                        
            dSystemPitch_mm# = SAVED_HEADIF_BOOT_System_Image_Pitch / 1000
            dDropPitch_mm# = gPrintPara.dCfgTeachingImageDropPitch_mm   '/0.25 'gPrintPara.dCfgDropPitch_um / 1000
            dImageLength_mm# = gPrintPara.dCfgTeachingImageLength_mm
            
            nStartNzlNo% = 1
            nEndNzlNo% = 256
            nUseNzlCnt% = 256
            scan_dir% = 0
            
            
            '// 1/
            If PI_HEAD_12_Offset(0, 0, True) = False Then
                MsgBox "Error PI_HEAD_12_Offset!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            '// 4.
            If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
                MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            '// 5.
            If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
                MsgBox "Error PI_HEAD_LiveNozzle!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            '// 2.
            dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
            If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
                MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            '// 3.
            If PI_HEAD_TeachingImage(0, scan_dir%, dSystemPitch_mm#, dDropPitch_mm#, dImageLength_mm#, nStartNzlNo%, nEndNzlNo%, nUseNzlCnt%, lngRtnLineCount, True) = False Then
                MsgBox "Error PI_HEAD_TeachingImage!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            

            
            '// 6. ?? Frequency
            
            '// 7.
            
            'SAVED_HEADIF_BOOT_System_Image_Pitch = 2 '* 8 'um
            dPrintImageLength_mm# = (lngRtnLineCount - 1) * dSystemPitch_mm# 'mm

            lblReviewOffsetPrint.Caption = "길이: " & Format(dPrintImageLength_mm#, "0.000") & "[Distance mm]"
           
'            rtn_TrigStartY_um = (i_dPrint_SYmm + gPrintPara.dReviewOffset_Ymm) * 1000
'            rtn_TrigEndY_um = rtn_TrigStartY_um + (dPrintImageLength_mm# * 1000)
    
            rtn_TrigStartY_um = i_dPrint_SYmm * 1000
            rtn_TrigEndY_um = rtn_TrigStartY_um + (dPrintImageLength_mm# * 1000)
            
            dMove_SYmm# = (rtn_TrigStartY_um / 1000) - (gPrintPara.dPrintAccDist_mm)
            dMove_EYmm# = (rtn_TrigEndY_um / 1000) + (gPrintPara.dPrintAccDist_mm * 2)
                        
            strMsg$ = "SY: " & Format(rtn_TrigStartY_um / 1000, "0.000") & "[Xmm] / EY: " & Format(rtn_TrigEndY_um / 1000, "0.000") & "[Ymm]"
            
            lblTriggerPosInfo.Caption = strMsg$
            
            '// 8.
            
            dPrintRotAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
            
            
            PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                                     100, _
                                     PComm32_Acc_ms(PComm32_XAxis), _
                                     PComm32_Scrv_ms(PComm32_XAxis)
                                     
            PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                     100, _
                                     PComm32_Acc_ms(PComm32_YAxis), _
                                     PComm32_Scrv_ms(PComm32_YAxis)
            
            PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                                     Cliffer_Speed_mms(Cliffer_HdtAxis), _
                                     Cliffer_Acc_ms(Cliffer_HdtAxis), _
                                     Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                                     PComm32_ClifferID
            
            PComm32_AxisJogMotion_Absoute PComm32_XAxis, i_dPrint_SXmm
            PComm32_AxisJogMotion_Absoute PComm32_YAxis, dMove_SYmm#
            PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, dPrintRotAngle#, PComm32_ClifferID
            
            cu_time# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 600 Then
                    MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
                    cu_time# = PubTimeCheck(True)
                    Print_ReviewOffset = False
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
                Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
            Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1) And (Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1))
            cu_time# = PubTimeCheck(True)
            
            dPrintHeight# = gPrintPara.dTeachHeadHeight_Zero_Zmm - (gPrintPara.dPrintHeight_mm + gPrintPara.dPrintThickness_mm)
            
            PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                                     Cliffer_Speed_mms(Cliffer_HdzAxis), _
                                     Cliffer_Acc_ms(Cliffer_HdzAxis), _
                                     Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                                     PComm32_ClifferID
                                     
            PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dPrintHeight#, PComm32_ClifferID
            
            cu_time# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 60 Then
                    MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
                    cu_time# = PubTimeCheck(True)
                    
                    Print_ReviewOffset = False
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
            Loop Until (Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1)
            cu_time# = PubTimeCheck(True)
            
            'gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
            
            If gPrintPara.dCfgPrintSpeed_mmPs <= 0 Then
                MsgBox "프린트 속도가 0 입니다. 속도값을 확인 후 다시 프린트를 해주십시요.", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            If PI_HEAD_EncJetStart(0, scan_dir%, gPrintPara.dPrintAccDist_mm, rtn_TrigStartY_um, rtn_TrigEndY_um, True) = False Then
                MsgBox "Error PI_HEAD_EncJetStart!", vbExclamation
                Print_ReviewOffset = False
                Exit Function
            End If
            
            PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                     gPrintPara.dCfgPrintSpeed_mmPs, _
                                     PComm32_Acc_ms(PComm32_YAxis), _
                                     PComm32_Scrv_ms(PComm32_YAxis)
                                     
            PComm32_AxisJogMotion_Absoute PComm32_YAxis, dMove_EYmm#
            
            cu_time# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 600 Then
                    MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
                    cu_time# = PubTimeCheck(True)
                    
                    If PI_HEAD_JetStop(0, True) = False Then
                        MsgBox "Error PI_HEAD_JetStop!", vbExclamation
                    End If
                    
                    Print_ReviewOffset = False
                    Exit Function
                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
            cu_time# = PubTimeCheck(True)
            
            '// 9
            If PI_HEAD_JetStop(0, True) = False Then
                MsgBox "Error PI_HEAD_JetStop!", vbExclamation
            End If
            
             PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                                     100, _
                                     PComm32_Acc_ms(PComm32_XAxis), _
                                     PComm32_Scrv_ms(PComm32_XAxis)
                                     
            PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                     100, _
                                     PComm32_Acc_ms(PComm32_YAxis), _
                                     PComm32_Scrv_ms(PComm32_YAxis)
            
            PComm32_AxisJogMotion_Absoute PComm32_XAxis, i_dReview_SXmm
            PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dReview_SYmm
                        
            cu_time# = PubTimeCheck(True)
            Do
                DoEvents
                If PubTimeCheck(False) > 600 Then
                    MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
                    cu_time# = PubTimeCheck(True)
                    
                    Print_ReviewOffset = False
                    Exit Function

                End If
                Call PComm32_AxisStatusCheckSimple
            Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
            cu_time# = PubTimeCheck(True)


    Print_ReviewOffset = True

Exit Function
sysErr:
    Print_ReviewOffset = False
    MsgBox Err.Description
End Function

Function Send_PrintInfo() As Boolean

On Error GoTo sysErr:

'    If PI_HEAD_12_Offset(0, 0, True) = False Then
'        Send_PrintInfo = False
'        MsgBox "Error PI_HEAD_12_Offset!", vbExclamation
'        Exit Function
'    End If
'
'    '// 4.
'    If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
'        Send_PrintInfo = False
'        MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
'        Exit Function
'    End If
'
'    '// 5.
    If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
        Send_PrintInfo = False
        MsgBox "Error PI_HEAD_LiveNozzle!", vbExclamation
        Exit Function
    End If
'
'    '// 2.
'    dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
'    If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
'        Send_PrintInfo = False
'        MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
'        Exit Function
'    End If
'
'    '// 3.
'    dJetDir% = 0 ' 정방향
'    cur_org_img_pitch# = SAVED_HEADIF_BOOT_System_Image_Pitch
'    start_nzl_no% = 1
'    end_nzl_no% = 256
'    use_nzl_qty% = (end_nzl_no% - start_nzl_no%) + 1
'    dn_file$ = gPrintPara.strPrintImageFilePath
'
'    If PI_HEAD_UploadImage(0, _
'                           dJetDir%, _
'                           cur_org_img_pitch#, _
'                           start_nzl_no%, _
'                           end_nzl_no%, _
'                           use_nzl_qty%, _
'                           dn_file$, _
'                           gPrintPara.lngRtnImageYCnt, _
'                           True) = False Then
'        Send_PrintInfo = False
'        MsgBox "Fail image upload", vbExclamation
'        Exit Function
'    End If
   
    Send_PrintInfo = True
Exit Function
sysErr:
    Send_PrintInfo = False
    MsgBox Err.Description
    
End Function

Function Move_PrintStartPosition() As Boolean
On Error GoTo sysErr:
        
    '// 1. X,Y 이동
    dMoveXSpeed_mmPs# = gPrintPara.dSetMoveX_mmPs
    dMoveYSpeed_mmPs# = gPrintPara.dSetMoveY_mmPs
    
    dPrint_SXmm# = gPrintPara.dPrintStart_Xmm + gPrintPara.dReviewOffset_Xmm
    dPrint_SYmm# = gPrintPara.dPrintStart_Ymm + gPrintPara.dReviewOffset_Ymm - gPrintPara.dPrintAccDist_mm
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             dMoveXSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
                             
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             dMoveYSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, dPrint_SXmm#
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dPrint_SYmm#
    
    Call Display_ProcMsg("Review 시작점으로 이동")
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        
        If Get_StopPrinting() = True Then
            Move_PrintStartPosition = False
            Exit Function
        End If
        
        If PubTimeCheck(False) > 600 Then
            MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Move_PrintStartPosition = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
        
    '// 2. Head theta & Z축 이동
    dmovetheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
    dPrintHeight# = gPrintPara.dTeachHeadHeight_Zero_Zmm - (gPrintPara.dPrintHeight_mm + gPrintPara.dPrintThickness_mm)
    
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                             Cliffer_Speed_mms(Cliffer_HdtAxis), _
                             Cliffer_Acc_ms(Cliffer_HdtAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                             PComm32_ClifferID
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             Cliffer_Speed_mms(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, dmovetheta#, PComm32_ClifferID
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dPrintHeight#, PComm32_ClifferID
    
    Call Display_ProcMsg("Print 높이 및 각도 확인 후 이동")
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        
        If Get_StopPrinting() = True Then
            Move_PrintStartPosition = False
            Exit Function
        End If
        
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Move_PrintStartPosition = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until ((Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1) And (Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    Move_PrintStartPosition = True
    
Exit Function
sysErr:
    Move_PrintStartPosition = False
    MsgBox Err.Description
End Function

Function Move_Printing(ByVal nScanCnt As Integer) As Boolean

On Error GoTo sysErr:
    
    If nScanCnt = 0 Then
        Call Display_ProcMsg("Start Tack Time!")
        Call m_objTimer.DelayWait_TimeCheck(True)
        Call m_objTimer.DelayWait_TimeCheck(False)
    End If
    
    scan_dir% = 0 '// 정방향
    dMoveXSpeed_mmPs# = gPrintPara.dSetMoveX_mmPs
    dMoveYSpeed_mmPs# = gPrintPara.dSetMoveY_mmPs
    
    dPrintImageLength_mm# = (gPrintPara.lngRtnImageYCnt * SAVED_HEADIF_BOOT_System_Image_Pitch) / 1000  'mm
    'gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
    
    If gPrintPara.dCfgPrintSpeed_mmPs <= 0 Then
        MsgBox "프린트 속도가 0 입니다. 속도값을 확인 후 다시 프린트를 해주십시요.", vbExclamation
        Move_Printing = False
        Exit Function
    End If
    
    nNzlCnt% = Jet.Get_UseSelectNozzleCnt(gPrintPara.nSetNzlLive, gPrintPara.nSetStartNzlNo, gPrintPara.nSetEndNzlNo) + 1
    
    'nNzlCnt% = (gPrintPara.nSetEndNzlNo - gPrintPara.nSetStartNzlNo + 1) / gPrintPara.nSetMultiple_Value
    d1ScanWidth_mm# = (gPrintPara.dCfgXPitch_um * nNzlCnt%) / 1000
        
    rtn_TrigStartY_um = (gPrintPara.dPrintStart_Ymm + gPrintPara.dReviewOffset_Ymm) * 1000
    rtn_TrigEndY_um = rtn_TrigStartY_um + (dPrintImageLength_mm# * 1000)
            
    dMove_SXmm# = gPrintPara.dPrintStart_Xmm + gPrintPara.dReviewOffset_Xmm - (nScanCnt * d1ScanWidth_mm#)
    dMove_SYmm# = (rtn_TrigStartY_um / 1000) - gPrintPara.dPrintAccDist_mm
    dMove_EYmm# = (rtn_TrigEndY_um / 1000) + (gPrintPara.dPrintAccDist_mm * 2)
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             dMoveXSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
                             
    
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             dMoveYSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)

    PComm32_AxisJogMotion_Absoute PComm32_XAxis, dMove_SXmm#
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dMove_SYmm#
    
    Call Display_ProcMsg("Print 시작점으로 이동")
    strMsg$ = "X Shift거리: " & Format(d1ScanWidth_mm#, "0.000") & "[mm]"
    Call Display_ProcMsg(strMsg$)
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        
        If Get_StopPrinting() = True Then
            Move_Printing = False
            Exit Function
        End If
        
        If PubTimeCheck(False) > 600 Then
            MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Move_Printing = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    If PI_HEAD_EncJetStart(0, scan_dir%, gPrintPara.dPrintAccDist_mm, rtn_TrigStartY_um, rtn_TrigEndY_um, True) = False Then
        MsgBox "Error PI_HEAD_EncJetStart!", vbExclamation
        Move_Printing = False
        Exit Function
    End If
    
    strMsg$ = "Start Trigger"
    Call Display_ProcMsg(strMsg$)

    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             gPrintPara.dCfgPrintSpeed_mmPs, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    
    'Call DelayWait(3, True)
    
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dMove_EYmm#
    
    strMsg$ = "Print Y이송 거리: " & Format(dMove_EYmm# - dMove_SYmm#, "0.000") & "[mm]"
    Call Display_ProcMsg(strMsg$)
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        
        If Get_StopPrinting() = True Then
            Move_Printing = False
            
            If PI_HEAD_JetStop(0, True) = False Then
                Move_Printing = False
                MsgBox "Error PI_HEAD_JetStop!", vbExclamation
                Exit Function
            End If
    
            Exit Function
        End If
        
        If PubTimeCheck(False) > 600 Then
            MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Move_Printing = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    'Call DelayWait(3, True)
    
    If PI_HEAD_JetStop(0, True) = False Then
        Move_Printing = False
        MsgBox "Error PI_HEAD_JetStop!", vbExclamation
        Exit Function
    End If
    
    strMsg$ = "Stop Trigger"
    Call Display_ProcMsg(strMsg$)
    
    dTackTime_sec# = m_objTimer.DelayWait_TimeCheck(False)
    strMsg$ = CStr(g_nScanCnt + 1) & " Scan time: " & Format(dTackTime_sec#, "0.000") & "[sec]"
    Call Display_ProcMsg(strMsg$)
    
    If g_nScanCnt = (gPrintPara.lRtnTotalScanCnt - 1) Then
        strMsg$ = "End Tack time: " & Format(dTackTime_sec#, "0.000") & "[sec]"
        Call Display_ProcMsg(strMsg$)
    End If
    
    Move_Printing = True
    
Exit Function
sysErr:
    Move_Printing = False
    MsgBox Err.Description
End Function

Function Get_StopPrinting() As Boolean
On Error GoTo sysErr:
    StopPrinting = g_bStopPrint
Exit Function
sysErr:
    StopPrinting = g_bStopPrint
    MsgBox Err.Description
End Function

Function Move_AndPrintOrigin() As Boolean
On Error GoTo sysErr:
    
    dMoveXSpeed_mmPs# = gPrintPara.dSetMoveX_mmPs
    dMoveYSpeed_mmPs# = gPrintPara.dSetMoveY_mmPs
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             dMoveXSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
                             
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             dMoveYSpeed_mmPs#, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, gPrintPara.dPrintStart_Xmm
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, gPrintPara.dPrintStart_Ymm
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        
        If Get_StopPrinting() = True Then
            Move_AndPrintOrigin = False
            Exit Function
        End If
        
        If PubTimeCheck(False) > 600 Then
            MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Move_AndPrintOrigin = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
Exit Function
sysErr:
    MsgBox Err.Description
End Function

Function Print_CheckingReviewOffset(ByVal i_dPrint_SXmm As Double, ByVal i_dPrint_SYmm As Double) As Boolean
On Error GoTo sysErr:

Dim lngRtnLineCount As Long

    If PI_HEAD_12_Offset(0, 0, True) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_12_Offset!", vbExclamation
        Exit Function
    End If
    
    '// 4.
    If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
        Exit Function
    End If
    
    '// 5.
    If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_LiveNozzle!", vbExclamation
        Exit Function
    End If
    
    '// 2.
    dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
    If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
        Exit Function
    End If
    
    '// 3.
    If PI_HEAD_TeachingImage(0, scan_dir%, 0.002, 0.05, 50, 1, 256, 256, lngRtnLineCount, True) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_TeachingImage!", vbExclamation
        Exit Function
    End If
        
    dPrintHeight# = gPrintPara.dTeachHeadHeight_Zero_Zmm - (gPrintPara.dPrintHeight_mm + gPrintPara.dPrintThickness_mm)
    
    Call PComm32_PositionReadAllAxis(1)
    dCurThetaDegree# = Cliffer_Position_mm(Cliffer_HdtAxis)
    
    'dMoveTheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
    dmovetheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree
    
    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                             Cliffer_Speed_mms(Cliffer_HdtAxis), _
                             Cliffer_Acc_ms(Cliffer_HdtAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, dmovetheta#, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Print_CheckingReviewOffset = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until (Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    
    PComm32_JogSpdAccScrvSET Cliffer_HdzAxis, _
                             Cliffer_Speed_mms(Cliffer_HdzAxis), _
                             Cliffer_Acc_ms(Cliffer_HdzAxis), _
                             Cliffer_Scrv_ms(Cliffer_HdzAxis), _
                             PComm32_ClifferID
                             
    PComm32_AxisJogMotion_Absoute Cliffer_HdzAxis, dPrintHeight#, PComm32_ClifferID
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 60 Then
            MsgBox "Q Head Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Print_CheckingReviewOffset = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
    Loop Until (Cliffer_AxisStatBit_InPos(Cliffer_HdzAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    'gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
    
    If gPrintPara.dCfgPrintSpeed_mmPs <= 0 Then
        MsgBox "프린트 속도가 0 입니다. 속도값을 확인 후 다시 프린트를 해주십시요.", vbExclamation
        Print_CheckingReviewOffset = False
        Exit Function
    End If
        
    dPrintImageLength_mm# = (lngRtnLineCount * SAVED_HEADIF_BOOT_System_Image_Pitch) / 1000 'mm
        
    rtn_TrigStartY_um = (i_dPrint_SYmm + gPrintPara.dReviewOffset_Ymm) * 1000
    rtn_TrigEndY_um = rtn_TrigStartY_um + (dPrintImageLength_mm# * 1000)
    
    dPrint_SXmm# = i_dPrint_SXmm + gPrintPara.dReviewOffset_Xmm
    dPrint_SYmm# = (rtn_TrigStartY_um / 1000) - gPrintPara.dPrintAccDist_mm
    dPrint_EYmm# = (rtn_TrigEndY_um / 1000) + (gPrintPara.dPrintAccDist_mm * 2)

    If PI_HEAD_EncJetStart(0, scan_dir%, gPrintPara.dPrintAccDist_mm, rtn_TrigStartY_um, rtn_TrigEndY_um, True) = False Then
        MsgBox "Error PI_HEAD_EncJetStart!", vbExclamation
        Print_CheckingReviewOffset = False
        Exit Function
    End If
                    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             100, _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
                             
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             100, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, dPrint_SXmm#
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dPrint_SYmm#
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 600 Then
            MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Print_CheckingReviewOffset = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)
    
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             gPrintPara.dCfgPrintSpeed_mmPs, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dPrint_EYmm#
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 600 Then
            MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            
            If PI_HEAD_JetStop(0, True) = False Then
                MsgBox "Error PI_HEAD_JetStop!", vbExclamation
            End If
            Print_CheckingReviewOffset = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
    cu_time# = PubTimeCheck(True)
    
    '// 9
    If PI_HEAD_JetStop(0, True) = False Then
        Print_CheckingReviewOffset = False
        MsgBox "Error PI_HEAD_JetStop!", vbExclamation
    End If
    
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                             100, _
                             PComm32_Acc_ms(PComm32_XAxis), _
                             PComm32_Scrv_ms(PComm32_XAxis)
                             
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             100, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)
    
    PComm32_AxisJogMotion_Absoute PComm32_XAxis, i_dPrint_SXmm
    PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dPrint_SYmm
    
    cu_time# = PubTimeCheck(True)
    Do
        DoEvents
        If PubTimeCheck(False) > 600 Then
            MsgBox "XY Axis 이동완료 OverTime!!", vbExclamation
            cu_time# = PubTimeCheck(True)
            Print_CheckingReviewOffset = False
            Exit Function
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until ((PComm32_AxisStatBit_InPos(PComm32_XAxis) = 1) And (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1))
    cu_time# = PubTimeCheck(True)

    Print_CheckingReviewOffset = True
Exit Function
sysErr:
    Print_CheckingReviewOffset = False
    MsgBox Err.Description
End Function

Sub Apply_PrintInfo()

On Error GoTo sysErr:
        
    Call SaveSetting(App.Title, "PRINT_INFO", "MULTI_PULSE_FILEPATH", gPrintPara.strMultiPulseFilePath)
    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PARAMS_FILEPATH", gPrintPara.strNzlParamsFilePath)
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_IMAGE_FILEPATH", gPrintPara.strPrintImageFilePath)
        
    gPrintPara.dPrintStart_Xmm = CDbl(Me.txtPrintStart_Xmm.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_XMM", gPrintPara.dPrintStart_Xmm)
    
    gPrintPara.dPrintStart_Ymm = CDbl(Me.txtPrintStart_Ymm.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_START_YMM", gPrintPara.dPrintStart_Ymm)
    
    gPrintPara.dPrintHeight_mm = CDbl(Me.txtPrintHeight_mm.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "POS_HEIGHT_MM", gPrintPara.dPrintHeight_mm)
    
    'gPrintPara.dPrintAccDist_mm = CDbl(Me.txtPrintAccDist_mm.Text)
    'Call SaveSetting(App.Title, "PRINT_INFO", "POS_ACCDIST_MM", gPrintPara.dPrintAccDist_mm)
    'gPrintPara.dSetPrintSpeed_mmPs = (gPrintPara.dCfgPrintFreq_kHz * 1000) * (gPrintPara.dCfgDropPitch_um / 1000)
    
    gPrintPara.dCfgPrintSpeed_mmPs = CDbl(Me.txtPrintSpeed_mmPs.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_SPEED_MMPS", gPrintPara.dCfgPrintSpeed_mmPs)
    
    SAVED_HEADIF_BOOT_System_Image_Pitch = CDbl(Me.txtPrintYPitch_um.Text)
    gPrintPara.dCfgPrintFreq_kHz = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    lblPrintFrequency_kHz.Caption = "프린트 주파수: " & Format(gPrintPara.dCfgPrintFreq_kHz, "0.0") & "[kHz]"
    txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
        
    gPrintPara.dPrintAccDist_mm = ((PComm32_Acc_ms(PComm32_YAxis) / 1000) * gPrintPara.dCfgPrintSpeed_mmPs) + dSetPrintAccDistOffset_Ymm
    
    'gPrintPara.dCfgPrintFreq_kHz = CDbl(Me.txtPrintFreq_kHz.Text)
    'Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_FREQUENCY_KHZ", gPrintPara.dCfgPrintFreq_kHz)
    
    gPrintPara.dCfgXPitch_um = CDbl(Me.txtPrintXPitch_um(0).Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_X_PITCH_UM", gPrintPara.dCfgXPitch_um)
        
    gPrintPara.dCfgPrintWidth_mm = CDbl(Me.txtPrintImageWidth_mm.Text)
    gPrintPara.dCfgPrintWidth_mm = Get_FitImageWidth_mm(gPrintPara.dCfgPrintWidth_mm, gPrintPara.dCfgXPitch_um)
            
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_WIDTH_XMM", gPrintPara.dCfgPrintWidth_mm)
    
    gPrintPara.dSysReserviorTemperature = CDbl(Me.txtReserviorTemp.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_RESERVIOR_TEMPERATURE", gPrintPara.dSysReserviorTemperature)
    
    gPrintPara.dSysHeadTemperature = CDbl(Me.txtHeadTemp.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_HEAD_TEMPERATURE", gPrintPara.dSysHeadTemperature)
    
    gPrintPara.dPrintThickness_mm = CDbl(Me.txtGlassThickness_mm.Text)
    Call SaveSetting(App.Title, "PRINT_INFO", "PRINT_GLASS_THICKNESS_MM", gPrintPara.dPrintThickness_mm)
    
    '// Unit setting
    If (gPrintPara.dSysHeadTemperature > MAX_RESERVIOR_TEMPERATURE) Then
        gPrintPara.dSysHeadTemperature = MAX_RESERVIOR_TEMPERATURE
        Me.txtHeadTemp.Text = Format(gPrintPara.dSysHeadTemperature, "0.0")
    End If
    
    If (gPrintPara.dSysReserviorTemperature > MAX_RESERVIOR_TEMPERATURE) Then
        gPrintPara.dSysReserviorTemperature = MAX_RESERVIOR_TEMPERATURE
        Me.txtReserviorTemp.Text = Format(gPrintPara.dSysReserviorTemperature, "0.0")
    End If
    
    If MDI_Main.MSComm_NX4.PortOpen = True Then
        Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 1, 1, 301, gPrintPara.dSysHeadTemperature)
        Call NX4.Send_DWR(MDI_Main.MSComm_NX4, 2, 1, 301, gPrintPara.dSysReserviorTemperature)
    End If
        
    Call Set_Head12_Offset
    Call Set_NozzleParams
    Call Set_MultiPulse
    
    '//Call Set_PrintImage
    
'    gPrintPara.stJetInfo = Get_BlockScanInfo(gPrintPara.nSetStartNzlNo, _
'                                             gPrintPara.nSetEndNzlNo, _
'                                             gPrintPara.dCfgXPitch_um, _
'                                             gPrintPara.dCfgPrintWidth_mm)
'    Me.lblOneBlockScanCnt.Caption = "1Block Path 횟수: " & CStr(gPrintPara.stJetInfo.lngOneBlockTotalScanCnt)
'    Me.lblOneBlockUseNzlCnt.Caption = "1Block 짜투리 개수: " & CStr(gPrintPara.stJetInfo.lngOneBlockLastUseNzlCnt)

    Call Get_BlockScanSimpleInfo(gPrintPara.nSetStartNzlNo, _
                                 gPrintPara.nSetEndNzlNo, _
                                 gPrintPara.dCfgXPitch_um, _
                                 gPrintPara.dCfgPrintWidth_mm, _
                                 gPrintPara.lRtnTotalScanCnt, _
                                 gPrintPara.nRtnLastUseNozzleCnt)
                                             
    Me.lblTotalBlockScanCnt.Caption = "총 Path 횟수: " & CStr("0") & "/" & CStr(gPrintPara.lRtnTotalScanCnt)
    Me.lblLastBlockUseNzlCnt.Caption = "짜투리 노즐개수: " & CStr(gPrintPara.nRtnLastUseNozzleCnt + 1) ' & " / " & CStr(gPrintPara.stJetInfo.lngLastBlockTotalScanCnt)
        
    If gPrintPara.lngRtnImageYCnt > 0 Then
        dPrintHeight_mm# = (gPrintPara.lngRtnImageYCnt - 1) * (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)
        lblPrintHeight_mm.Caption = "Height: " & Format(dPrintHeight_mm#, "0.000") & "[mm]"
    End If
        
    lblPrintSpeed_mmPs.Caption = "프린트 속도: " & Format(gPrintPara.dCfgPrintSpeed_mmPs, "0.0") & "[mm/s]"
   
    Call Jet.Get_ModifiedXPitchPara(gPrintPara.dCfgXPitch_um, _
                                    NOZZLE_PITCH_UM + gPrintPara.dPhysicNozzleOffset_um, _
                                    gPrintPara.dChangedPhysicNozzlePitch_um, _
                                    gPrintPara.nSetMultiple_Value, _
                                    gPrintPara.dCfgSaberAngle_Degree)
    
    lblMultipleValue.Caption = "Pitch 배수: " & CStr(gPrintPara.nSetMultiple_Value) & "배수, "
    
    dOneScanWidth_mm# = (gPrintPara.nSetEndNzlNo - gPrintPara.nSetStartNzlNo) * (gPrintPara.dCfgXPitch_um / 1000)
    dOneScanWidth_mm# = dOneScanWidth_mm# / gPrintPara.nSetMultiple_Value
    lblOneScanWidth_mm.Caption = "1-Path 폭: " & Format(dOneScanWidth_mm#, "0.000") & "[mm]"

    lblNozzlePitch_um(0).Caption = "Nozzle Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
    lblNozzlePitch_um(1).Caption = "N-Pitch: " & Format(gPrintPara.dChangedPhysicNozzlePitch_um, "0.000") & "[um]"
        
    Call DisplayPrintParams
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Start_Printing()
On Error GoTo sysErr:
                
    '// 프린트전 확인할 아이템들 체크한다.( 예: 온도, 프린팅 거리 확인 후 스트로크(X,Y) 나오는지 확인 ... )-
    'ctrlEnable False, frmRunning
    cmdPrint.Enabled = True
    Timer_Main.Enabled = True
    g_nBlockCnt = 0
    g_nScanCnt = 0
    g_nTotalBlockCnt = 0
    
    g_bIsPrinting = True
    g_bStopPrint = False
    
    frameMultiPulse.Enabled = False
    framePrintImagPath.Enabled = False
    
    frameNozzleLive.Enabled = False
    frameNozzlePitch.Enabled = False
    framePrintPosition.Enabled = False
    cmdSavePrintInfo.Enabled = False
    cmdRunUV.Enabled = False
    frameOffsetTeaching.Enabled = False

    ctrlEnable False, frmVision
    ctrlEnable False, frmMotion
    
Exit Sub
sysErr:
End Sub

Sub End_Printing()
On Error GoTo sysErr:
    
    g_nPrintSeqNo = 0
    g_nRunSeqType = 1
    ctrlEnable True, frmRunning
    Timer_Main.Enabled = False
    frmRunning.cmdPrint.Caption = "Print"
    g_bIsPrinting = False
    g_bStopPrint = False
    
    lblLastBlockUseNzlCnt.BackColor = &H8000000F
    
    frameMultiPulse.Enabled = True
    framePrintImagPath.Enabled = True
    
    frameNozzleLive.Enabled = True
    frameNozzlePitch.Enabled = True
    framePrintPosition.Enabled = True
    cmdSavePrintInfo.Enabled = True
    cmdRunUV.Enabled = True
    frameOffsetTeaching.Enabled = True
    
    ctrlEnable True, frmVision
    ctrlEnable True, frmMotion
    
Exit Sub
sysErr:
End Sub

Sub Init_LabelMsg()
On Error GoTo sysErr:
    strMsg$ = "관        측: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblSearchReviewOffset.Caption = strMsg$
    
    strMsg$ = "기준: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblStartPosXY.Caption = strMsg$
    
    lblReviewOffsetPrint.Caption = "길이: ---.--" & "[Distance mm]"
    
    strMsg$ = "관        측: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblSearchReviewOffset.Caption = strMsg$

            
    strMsg$ = "리뷰옵셋: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblCalcReviewOffset.Caption = strMsg$
    
    strMsg$ = "시   작   점: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblSearchHeadAlignOffset_Start.Caption = strMsg$
    
    strMsg$ = "끝        점: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblSearchHeadAlignOffset_End.Caption = strMsg$
    
    strMsg$ = "기준: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblIPrintOriginImageAngle = strMsg$
    
    strMsg$ = "시   작   점: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblImageAngleOffset_Start.Caption = strMsg$
    
    strMsg$ = "끝        점: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblImageAngleOffset_End.Caption = strMsg$
       
    strMsg$ = "기준: ---.--" & "[Xmm] / ---.--" & "[Ymm]"
    lblConfirmPrintPos = strMsg$
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub MOVE_XY(ByVal i_dMoveXmm As Double, ByVal i_dMoveYmm As Double)
On Error GoTo sysErr:
    
    If PComm32_Init_Flag = True Then
        dMoveSpd_mmPs# = 150
        PComm32_JogSpdAccScrvSET PComm32_XAxis, _
                                 dMoveSpd_mmPs#, _
                                 PComm32_Acc_ms(PComm32_XAxis), _
                                 PComm32_Scrv_ms(PComm32_XAxis)
                                 
        PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                 dMoveSpd_mmPs#, _
                                 PComm32_Acc_ms(PComm32_YAxis), _
                                 PComm32_Scrv_ms(PComm32_YAxis)

        PComm32_AxisJogMotion_Absoute PComm32_XAxis, i_dMoveXmm
        PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dMoveYmm
    Else
        MsgBox "uMac 초기화가 안되어 있습니다. 확인 부탁드립니다.", vbExclamation
    End If
    
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Sub Move_Y(ByVal i_dStartPosY_mm As Double, ByVal i_dEndY_mm As Double)
On Error GoTo sysErr:
    
    Dim objTimer As New clsTimer
    
    If PComm32_Init_Flag = True Then
                                 
        PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                 gPrintPara.dSetMoveY_mmPs, _
                                 PComm32_Acc_ms(PComm32_YAxis), _
                                 PComm32_Scrv_ms(PComm32_YAxis)

        PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dStartPosY_mm
        
        Call objTimer.DelayWait_TimeCheck(True)
        Call objTimer.DelayWait_TimeCheck(False)
        
        Do
            DoEvents
            If objTimer.DelayWait_TimeCheck(False) > 600 Then
                MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
                Call objTimer.DelayWait_TimeCheck(False)
                Exit Sub
            End If
            Call PComm32_AxisStatusCheckSimple
        Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
        
        Call objTimer.DelayWait_TimeCheck(True)
        Call objTimer.DelayWait_TimeCheck(False)
        
        PComm32_DOUT oSg_Cliffer_UV_LIght_1_On, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_UV_LIght_2_On, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_UV_LIght_3_On, 1, PComm32_ClifferID
        PComm32_DOUT oSg_Cliffer_UV_LIght_4_On, 1, PComm32_ClifferID

        PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                                 g_dUVRunYSpeed_mmPs, _
                                 PComm32_Acc_ms(PComm32_YAxis), _
                                 PComm32_Scrv_ms(PComm32_YAxis)

        PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dEndY_mm
        
        Do
            DoEvents
            If objTimer.DelayWait_TimeCheck(False) > 600 Then
                MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
                Call objTimer.DelayWait_TimeCheck(False)
                Exit Sub
            End If
            
            If objTimer.DelayWait_TimeCheck(False) > 30 Then
                PComm32_DOUT oSg_Cliffer_UV_LIght_1_On, 0, PComm32_ClifferID
                PComm32_DOUT oSg_Cliffer_UV_LIght_2_On, 0, PComm32_ClifferID
                PComm32_DOUT oSg_Cliffer_UV_LIght_3_On, 0, PComm32_ClifferID
                PComm32_DOUT oSg_Cliffer_UV_LIght_4_On, 0, PComm32_ClifferID
            End If
                
            Call PComm32_AxisStatusCheckSimple
        Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
        Call objTimer.DelayWait_TimeCheck(True)
    Else
        MsgBox "uMac 초기화가 안되어 있습니다. 확인 부탁드립니다.", vbExclamation
    End If
    
    PComm32_DOUT oSg_Cliffer_UV_LIght_1_On, 0, PComm32_ClifferID
    PComm32_DOUT oSg_Cliffer_UV_LIght_2_On, 0, PComm32_ClifferID
    PComm32_DOUT oSg_Cliffer_UV_LIght_3_On, 0, PComm32_ClifferID
    PComm32_DOUT oSg_Cliffer_UV_LIght_4_On, 0, PComm32_ClifferID
    
    PComm32_JogSpdAccScrvSET PComm32_YAxis, _
                             gPrintPara.dSetMoveY_mmPs, _
                             PComm32_Acc_ms(PComm32_YAxis), _
                             PComm32_Scrv_ms(PComm32_YAxis)

    PComm32_AxisJogMotion_Absoute PComm32_YAxis, i_dStartPosY_mm
    
    Call objTimer.DelayWait_TimeCheck(True)
    Call objTimer.DelayWait_TimeCheck(False)
    
    Do
        DoEvents
        If objTimer.DelayWait_TimeCheck(False) > 600 Then
            MsgBox "Y Axis 이동완료 OverTime!!", vbExclamation
            Call objTimer.DelayWait_TimeCheck(False)
            Exit Sub
        End If
        Call PComm32_AxisStatusCheckSimple
    Loop Until (PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1)
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Function Get_FitImageWidth_mm(ByVal i_dPrintWidth_mm As Double, _
                              ByVal i_dSetXPitch_um As Double) As Double
On Error GoTo sysErr:
    
    nNzlCnt% = Jet.Get_UseSelectNozzleCnt(gPrintPara.nSetNzlLive, gPrintPara.nSetStartNzlNo, gPrintPara.nSetEndNzlNo) + 1
    d1ScanWidth_mm# = (i_dSetXPitch_um * nNzlCnt%) / 1000
    
    nScanTotalCnt% = i_dPrintWidth_mm / d1ScanWidth_mm#
    dLastPrevWidth_mm# = d1ScanWidth_mm# * nScanTotalCnt%
    dDiff_mm# = i_dPrintWidth_mm - dLastPrevWidth_mm#
    nLastNzlCnt% = dDiff_mm# / (i_dSetXPitch_um / 1000)
        
    dCalcFitImageWidth_mm# = dLastPrevWidth_mm# + (nLastNzlCnt% * (i_dSetXPitch_um / 1000))
    
    Get_FitImageWidth_mm = dCalcFitImageWidth_mm#
    
Exit Function
sysErr:
    Get_FitImageWidth_mm = 0
    MsgBox Err.Description
End Function

Sub Display_ProcMsg(ByVal i_strMsg As String)
On Error GoTo sysErr:
    
    If Me.List_PrintInfo.ListCount > 200 Then
        Me.List_PrintInfo.Clear
    End If
    
    Me.List_PrintInfo.AddItem i_strMsg
    List_PrintInfo.ListIndex = Me.List_PrintInfo.ListCount - 1
Exit Sub
sysErr:
    MsgBox Err.Description
End Sub

Function Check_BeforePrintStatus() As Boolean
On Error GoTo sysErr:
    
    If gPrintPara.dCfgPrintSpeed_mmPs <= 0 Then
        MsgBox "프린트 속도가 0 입니다. 속도값을 확인 후 다시 프린트를 해주십시요.", vbExclamation
        Check_BeforePrintStatus = False
        Exit Function
    End If
    
    If gPrintPara.dCfgPrintSpeed_mmPs > 499 Then
        MsgBox "프린트 속도가 499[mm/s] 입니다. 속도값을 확인 후 다시 프린트를 해주십시요.", vbExclamation
        Check_BeforePrintStatus = False
        Exit Function
    End If
    
    dPrintFreq_kHz# = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    
    If dPrintFreq_kHz# > MAX_PRINT_FREQ_KHZ Then
        strMsg$ = "현재 세팅 주파수는 " & Format(dPrintFreq_kHz#, "0.0") & "[kHz]입니다." & vbCrLf
        strMsg$ = strMsg$ & "Q Head의 Maximum 프린트 주파수는 " & CStr(MAX_PRINT_FREQ_KHZ) & "입니다. 속도 혹은 Y-Pitch값을 확인해 주십시요." & vbCrLf
        strMsg$ = strMsg$ & "그래도 프린트 진행을 하시겠습니까?"
         
        If MsgBox(strMsg$, vbExclamation + vbOKCancel) = vbOK Then
            Check_BeforePrintStatus = True
        Else
            Check_BeforePrintStatus = False
        End If
        Exit Function
    End If
    
    dPrintImageLength_mm# = (gPrintPara.lngRtnImageYCnt * SAVED_HEADIF_BOOT_System_Image_Pitch) / 1000  'mm
    rtn_TrigStartY_um# = (gPrintPara.dPrintStart_Ymm + gPrintPara.dReviewOffset_Ymm) * 1000
    rtn_TrigEndY_um# = rtn_TrigStartY_um# + (dPrintImageLength_mm# * 1000)
    
    dMove_SYmm# = (rtn_TrigStartY_um / 1000) - gPrintPara.dPrintAccDist_mm
    dMove_EYmm# = (rtn_TrigEndY_um / 1000) + (gPrintPara.dPrintAccDist_mm * 2)
    
    If (dMove_SYmm# < STAGE_Y_NEGATIVE_MM) Then
        
        dDiff_Ymm# = Abs(STAGE_Y_NEGATIVE_MM - dMove_SYmm#)
        
        strMsg$ = "프린트 Y 시작점이 스테이지 (-) Limit을 벗어난 위치를 가리키고 있습니다."
        strMsg$ = strMsg$ & vbCrLf & "현재 (-) Limit은 " & Format(STAGE_Y_NEGATIVE_MM, "0.000") & "[mm]이고, 프린트 시작위치는 " & Format(dMove_SYmm#, "0.000") & "[mm]입니다."
        strMsg$ = strMsg$ & vbCrLf & vbCrLf & "스테이지 Y축 시작위치를 " & Format(dDiff_Ymm#, "0.000") & "[mm] 보다 위쪽으로 새로 잡고 시도해 주십시요."
        
        Call MsgBox(strMsg$, vbExclamation)
        
        Check_BeforePrintStatus = False
        Exit Function
        
    End If
    
    If (dMove_EYmm# > STAGE_Y_POSITIVE_MM) Then

        dDiff_Ymm# = Abs(STAGE_Y_POSITIVE_MM - dMove_EYmm#)
        
        strMsg$ = "프린트 Y 종료위치가 스테이지 (+) Limit을 벗어난 위치를 가리키고 있습니다."
        strMsg$ = strMsg$ & vbCrLf & "현재 (+) Limit은 " & Format(STAGE_Y_POSITIVE_MM, "0.000") & "[mm]이고, 프린트 종료위치는 " & Format(dMove_EYmm#, "0.000") & "[mm]입니다."
        strMsg$ = strMsg$ & vbCrLf & vbCrLf & "스테이지 Y축 종료위치를 " & Format(dDiff_Ymm#, "0.000") & "[mm] 보다 아래쪽으로 새로 잡고 시도해 주십시요."
        
        Call MsgBox(strMsg$, vbExclamation)
        
        Check_BeforePrintStatus = False
        Exit Function
    End If
       
    Check_BeforePrintStatus = True

Exit Function
sysErr:
    Check_BeforePrintStatus = False
    MsgBox Err.Description
End Function

Private Sub cmdInterfaceTest_Click()
On Error Resume Next

Load frmInterfaceTest

frmInterfaceTest.Show 0, Me

End Sub



















