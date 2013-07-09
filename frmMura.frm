VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmMura 
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   5310
   ClientLeft      =   135
   ClientTop       =   9915
   ClientWidth     =   17040
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5310
   ScaleWidth      =   17040
   ShowInTaskbar   =   0   'False
   Begin MSFlexGridLib.MSFlexGrid MSFG_BlockData_Comp 
      Height          =   3015
      Left            =   8745
      TabIndex        =   131
      Top             =   5610
      Width           =   4500
      _ExtentX        =   7938
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   17
      Cols            =   6
      BackColorBkg    =   -2147483633
      GridColor       =   0
      Appearance      =   0
      FormatString    =   $"frmMura.frx":0000
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
   Begin VB.CheckBox chkAbAutoFile 
      Caption         =   "File이름 자동 : ""BSAB"" + 사용INK名 + 날짜 + 시간.csv"
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
      Left            =   9345
      TabIndex        =   93
      Top             =   8460
      Width           =   4950
   End
   Begin Threed.SSPanel SSPanel7 
      Height          =   5355
      Left            =   15
      TabIndex        =   0
      Top             =   15
      Width           =   17010
      _Version        =   65536
      _ExtentX        =   30004
      _ExtentY        =   9446
      _StockProps     =   15
      BackColor       =   12632256
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
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   45
         Top             =   45
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton cmdOpenAB 
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
         Left            =   13350
         Picture         =   "frmMura.frx":011F
         Style           =   1  '그래픽
         TabIndex        =   3
         Top             =   75
         Width           =   345
      End
      Begin VB.TextBox txtBasicAB_FileName 
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
         Left            =   1350
         TabIndex        =   2
         Text            =   "C:\Unnamed.ab"
         Top             =   45
         Width           =   11970
      End
      Begin VB.TextBox txtInkName 
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
         Left            =   14565
         TabIndex        =   1
         Text            =   "--"
         Top             =   45
         Width           =   2250
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   4875
         Left            =   60
         TabIndex        =   4
         Top             =   405
         Width           =   16845
         _ExtentX        =   29713
         _ExtentY        =   8599
         _Version        =   393216
         TabHeight       =   520
         BackColor       =   12632256
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "● Basic a/b 자동조정"
         TabPicture(0)   =   "frmMura.frx":06A9
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Shape4"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Label51"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "lbl_abCount"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Label31"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).Control(4)=   "Label30"
         Tab(0).Control(4).Enabled=   0   'False
         Tab(0).Control(5)=   "Label22"
         Tab(0).Control(5).Enabled=   0   'False
         Tab(0).Control(6)=   "Label23"
         Tab(0).Control(6).Enabled=   0   'False
         Tab(0).Control(7)=   "Label24"
         Tab(0).Control(7).Enabled=   0   'False
         Tab(0).Control(8)=   "Label25"
         Tab(0).Control(8).Enabled=   0   'False
         Tab(0).Control(9)=   "Label27"
         Tab(0).Control(9).Enabled=   0   'False
         Tab(0).Control(10)=   "Label28"
         Tab(0).Control(10).Enabled=   0   'False
         Tab(0).Control(11)=   "Label1"
         Tab(0).Control(11).Enabled=   0   'False
         Tab(0).Control(12)=   "Label2"
         Tab(0).Control(12).Enabled=   0   'False
         Tab(0).Control(13)=   "Label4"
         Tab(0).Control(13).Enabled=   0   'False
         Tab(0).Control(14)=   "lbl_BabKHz"
         Tab(0).Control(14).Enabled=   0   'False
         Tab(0).Control(15)=   "SSPanel9"
         Tab(0).Control(15).Enabled=   0   'False
         Tab(0).Control(16)=   "SSPanel8"
         Tab(0).Control(16).Enabled=   0   'False
         Tab(0).Control(17)=   "Frame10"
         Tab(0).Control(17).Enabled=   0   'False
         Tab(0).Control(18)=   "Frame8"
         Tab(0).Control(18).Enabled=   0   'False
         Tab(0).Control(19)=   "MSFlexGrid3"
         Tab(0).Control(19).Enabled=   0   'False
         Tab(0).Control(20)=   "txtRepAB"
         Tab(0).Control(20).Enabled=   0   'False
         Tab(0).Control(21)=   "cmdAbStop"
         Tab(0).Control(21).Enabled=   0   'False
         Tab(0).Control(22)=   "cmdAbPause"
         Tab(0).Control(22).Enabled=   0   'False
         Tab(0).Control(23)=   "cmdAbStart"
         Tab(0).Control(23).Enabled=   0   'False
         Tab(0).Control(24)=   "txtABfileName"
         Tab(0).Control(24).Enabled=   0   'False
         Tab(0).Control(25)=   "cboModuleSel"
         Tab(0).Control(25).Enabled=   0   'False
         Tab(0).Control(26)=   "cmdTargetVApply"
         Tab(0).Control(26).Enabled=   0   'False
         Tab(0).Control(27)=   "txtA_Low"
         Tab(0).Control(27).Enabled=   0   'False
         Tab(0).Control(28)=   "txtA_Upp"
         Tab(0).Control(28).Enabled=   0   'False
         Tab(0).Control(29)=   "txtB_Low"
         Tab(0).Control(29).Enabled=   0   'False
         Tab(0).Control(30)=   "txtB_Upp"
         Tab(0).Control(30).Enabled=   0   'False
         Tab(0).Control(31)=   "txtMassV_Low"
         Tab(0).Control(31).Enabled=   0   'False
         Tab(0).Control(32)=   "txtMassV_Upp"
         Tab(0).Control(32).Enabled=   0   'False
         Tab(0).Control(33)=   "cmdSaveRecipe"
         Tab(0).Control(33).Enabled=   0   'False
         Tab(0).Control(34)=   "Timer_ab"
         Tab(0).Control(34).Enabled=   0   'False
         Tab(0).Control(35)=   "CWB_abStatus"
         Tab(0).Control(35).Enabled=   0   'False
         Tab(0).Control(36)=   "chk_ab_Head(0)"
         Tab(0).Control(36).Enabled=   0   'False
         Tab(0).Control(37)=   "chk_ab_Head(1)"
         Tab(0).Control(37).Enabled=   0   'False
         Tab(0).Control(38)=   "chk_ab_Head(2)"
         Tab(0).Control(38).Enabled=   0   'False
         Tab(0).Control(39)=   "chk_ab_Head(3)"
         Tab(0).Control(39).Enabled=   0   'False
         Tab(0).Control(40)=   "chk_ab_Head(4)"
         Tab(0).Control(40).Enabled=   0   'False
         Tab(0).Control(41)=   "chkOneHead"
         Tab(0).Control(41).Enabled=   0   'False
         Tab(0).Control(42)=   "cmdabSave"
         Tab(0).Control(42).Enabled=   0   'False
         Tab(0).Control(43)=   "txtTargetAbMass"
         Tab(0).Control(43).Enabled=   0   'False
         Tab(0).Control(44)=   "txtBaSpeed"
         Tab(0).Control(44).Enabled=   0   'False
         Tab(0).Control(45)=   "Frame2"
         Tab(0).Control(45).Enabled=   0   'False
         Tab(0).ControlCount=   46
         TabCaption(1)   =   "● Head inside MURA 측정"
         TabPicture(1)   =   "frmMura.frx":06C5
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "chkHdInPrg"
         Tab(1).Control(1)=   "txtHdInTimerSec"
         Tab(1).Control(2)=   "chkHdInOpt"
         Tab(1).Control(3)=   "chkAllHead"
         Tab(1).Control(4)=   "txtBlkComp"
         Tab(1).Control(5)=   "chkBlkComp"
         Tab(1).Control(6)=   "Timer_Basic"
         Tab(1).Control(7)=   "cmdBlockClear"
         Tab(1).Control(8)=   "cmdBlockSave"
         Tab(1).Control(9)=   "txtBInsdSpeed"
         Tab(1).Control(10)=   "txtHdInLog"
         Tab(1).Control(11)=   "cmdHdInsdOpen"
         Tab(1).Control(12)=   "chkBInAutoApply"
         Tab(1).Control(13)=   "CWGraph1"
         Tab(1).Control(14)=   "OptBInsideMdSel(4)"
         Tab(1).Control(15)=   "OptBInsideMdSel(3)"
         Tab(1).Control(16)=   "OptBInsideMdSel(2)"
         Tab(1).Control(17)=   "OptBInsideMdSel(1)"
         Tab(1).Control(18)=   "OptBInsideMdSel(0)"
         Tab(1).Control(19)=   "txtTargetGramLow"
         Tab(1).Control(20)=   "txtTargetGramUpp"
         Tab(1).Control(21)=   "cmdBInStart"
         Tab(1).Control(22)=   "cmdBInPause"
         Tab(1).Control(23)=   "txtBinSideRstFile"
         Tab(1).Control(24)=   "txtBasicInsideRepCount"
         Tab(1).Control(25)=   "MSFG_Module(0)"
         Tab(1).Control(26)=   "CWB_BasicStatus"
         Tab(1).Control(27)=   "cmdBInStop"
         Tab(1).Control(28)=   "MSFG_BlockData"
         Tab(1).Control(29)=   "Label12"
         Tab(1).Control(30)=   "lbl_BinKHz"
         Tab(1).Control(31)=   "Label3"
         Tab(1).Control(32)=   "Shape2"
         Tab(1).Control(33)=   "Shape1"
         Tab(1).Control(34)=   "lbl_InsideMovDis"
         Tab(1).Control(35)=   "Label33"
         Tab(1).Control(36)=   "Label34"
         Tab(1).Control(37)=   "lbl_SleRow(0)"
         Tab(1).Control(38)=   "lbl_SleRow(1)"
         Tab(1).Control(39)=   "lbl_SleRow(2)"
         Tab(1).Control(40)=   "lbl_SleRow(3)"
         Tab(1).Control(41)=   "lbl_SleRow(4)"
         Tab(1).Control(42)=   "Label32"
         Tab(1).Control(43)=   "Label40"
         Tab(1).Control(44)=   "lbl_BasicCount"
         Tab(1).ControlCount=   45
         TabCaption(2)   =   "● Head간 MURA 측정"
         TabPicture(2)   =   "frmMura.frx":06E1
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame3"
         Tab(2).Control(1)=   "Frame1"
         Tab(2).Control(2)=   "cmdabOpen"
         Tab(2).Control(3)=   "ChkHeadMura_SelMd(4)"
         Tab(2).Control(4)=   "ChkHeadMura_SelMd(3)"
         Tab(2).Control(5)=   "ChkHeadMura_SelMd(2)"
         Tab(2).Control(6)=   "ChkHeadMura_SelMd(1)"
         Tab(2).Control(7)=   "ChkHeadMura_SelMd(0)"
         Tab(2).Control(8)=   "txtHeadScanSpeed"
         Tab(2).Control(9)=   "txtHdToHdTargetDiv"
         Tab(2).Control(10)=   "txtHdToHdTarget"
         Tab(2).Control(11)=   "cmdHdToHdSave"
         Tab(2).Control(12)=   "cmdHeadStop"
         Tab(2).Control(13)=   "cmdHeadPause"
         Tab(2).Control(14)=   "cmdHeadStart"
         Tab(2).Control(15)=   "cmdTagApplyHeadBtw"
         Tab(2).Control(16)=   "Command12"
         Tab(2).Control(17)=   "txtHeadRepCount"
         Tab(2).Control(18)=   "txtHdbtwRst"
         Tab(2).Control(19)=   "MSFG_Head"
         Tab(2).Control(20)=   "CWGraph2"
         Tab(2).Control(21)=   "CWB_Head"
         Tab(2).Control(22)=   "TimerHead"
         Tab(2).Control(23)=   "txtHeadBtwLog"
         Tab(2).Control(24)=   "lbl_HeadSpec"
         Tab(2).Control(25)=   "Label6"
         Tab(2).Control(26)=   "lblHeadScanFreq"
         Tab(2).Control(27)=   "Label37"
         Tab(2).Control(28)=   "Label38"
         Tab(2).Control(29)=   "Label43"
         Tab(2).Control(30)=   "Label41"
         Tab(2).Control(31)=   "Label46"
         Tab(2).Control(32)=   "Label47"
         Tab(2).ControlCount=   33
         Begin VB.CheckBox chkHdInPrg 
            Caption         =   "Head간 퍼지"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   450
            Left            =   -61920
            TabIndex        =   150
            Top             =   4080
            Width           =   1035
         End
         Begin VB.TextBox txtHdInTimerSec 
            Alignment       =   2  '가운데 맞춤
            Height          =   285
            Left            =   -63315
            TabIndex        =   148
            Text            =   "5"
            Top             =   4500
            Width           =   675
         End
         Begin VB.CheckBox chkHdInOpt 
            Caption         =   "Head간 Timer Jetting"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   450
            Left            =   -63615
            TabIndex        =   147
            Top             =   4080
            Width           =   1620
         End
         Begin VB.Frame Frame3 
            Caption         =   "Maint Option"
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
            Left            =   -70575
            TabIndex        =   137
            Top             =   3315
            Width           =   6135
            Begin VB.CheckBox chkBtwOption 
               Caption         =   "Use"
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
               Left            =   195
               TabIndex        =   146
               Top             =   420
               Width           =   705
            End
            Begin VB.TextBox txtTPP2 
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
               Left            =   5550
               TabIndex        =   145
               Text            =   "0.5"
               Top             =   525
               Width           =   540
            End
            Begin VB.TextBox txtGP2 
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
               Left            =   5550
               TabIndex        =   143
               Text            =   "2"
               Top             =   180
               Width           =   540
            End
            Begin VB.TextBox txtTPP1 
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
               Left            =   3045
               TabIndex        =   141
               Text            =   "0.5"
               Top             =   510
               Width           =   540
            End
            Begin VB.TextBox txtGP1 
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
               Left            =   3045
               TabIndex        =   139
               Text            =   "5"
               Top             =   165
               Width           =   540
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "4.Two Part Purge[sec]"
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
               Left            =   3630
               TabIndex        =   144
               Top             =   555
               Width           =   1905
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "3.Gravity Priming[sec]"
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
               Left            =   3630
               TabIndex        =   142
               Top             =   210
               Width           =   1875
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "2.Two Part Purge[sec]"
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
               Left            =   1125
               TabIndex        =   140
               Top             =   540
               Width           =   1905
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "1.Gravity Priming[sec]"
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
               Left            =   1125
               TabIndex        =   138
               Top             =   195
               Width           =   1875
            End
         End
         Begin VB.Frame Frame2 
            Caption         =   "Dummy Jetting Option"
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
            Left            =   3810
            TabIndex        =   133
            Top             =   1335
            Width           =   2205
            Begin CWUIControlsLib.CWNumEdit CWN_AB_DmyJetTime 
               Height          =   300
               Left            =   1095
               TabIndex        =   136
               Top             =   690
               Width           =   915
               _Version        =   393218
               _ExtentX        =   1614
               _ExtentY        =   529
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Reset_0         =   0   'False
               CompatibleVers_0=   393218
               NumEdit_0       =   1
               ClassName_1     =   "CCWNumEdit"
               opts_1          =   196670
               BorderStyle_1   =   1
               TextAlignment_1 =   2
               format_1        =   2
               ClassName_2     =   "CCWFormat"
               scale_1         =   3
               ClassName_3     =   "CCWScale"
               opts_3          =   65536
               dMax_3          =   10
               discInterval_3  =   1
               ValueVarType_1  =   5
               Value_Val_1     =   5
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   60
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin VB.CheckBox chkDmyAB 
               Caption         =   "Dummy Jet Use"
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
               Left            =   255
               TabIndex        =   134
               Top             =   315
               Width           =   1740
            End
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "Time[sec]"
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
               Left            =   165
               TabIndex        =   135
               Top             =   705
               Width           =   855
            End
         End
         Begin VB.CheckBox chkAllHead 
            Caption         =   "All Head"
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
            Left            =   -74775
            TabIndex        =   132
            Top             =   705
            Width           =   1050
         End
         Begin VB.TextBox txtBlkComp 
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
            Left            =   -64095
            TabIndex        =   130
            Text            =   "0.00"
            Top             =   720
            Width           =   1455
         End
         Begin VB.CheckBox chkBlkComp 
            Caption         =   "First && Last Block Comp(%)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   -66915
            TabIndex        =   129
            Top             =   735
            Width           =   2775
         End
         Begin VB.Timer Timer_Basic 
            Enabled         =   0   'False
            Interval        =   50
            Left            =   -58725
            Top             =   4305
         End
         Begin VB.Frame Frame1 
            Caption         =   "계산값"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1005
            Left            =   -69750
            TabIndex        =   120
            Top             =   450
            Width           =   5160
            Begin VB.Label lblJetDrop 
               Alignment       =   2  '가운데 맞춤
               BackStyle       =   0  '투명
               Caption         =   "75"
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
               Left            =   1770
               TabIndex        =   128
               Top             =   675
               Width           =   645
            End
            Begin VB.Label lblJetVolt 
               Alignment       =   2  '가운데 맞춤
               BackStyle       =   0  '투명
               Caption         =   "100"
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
               Left            =   4455
               TabIndex        =   127
               Top             =   675
               Width           =   435
            End
            Begin VB.Label lblDropCnt 
               Alignment       =   2  '가운데 맞춤
               BackStyle       =   0  '투명
               Caption         =   "20000"
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
               Left            =   3990
               TabIndex        =   126
               Top             =   300
               Width           =   855
            End
            Begin VB.Label lbl_HeadNo 
               Alignment       =   2  '가운데 맞춤
               BackStyle       =   0  '투명
               Caption         =   "1"
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
               Left            =   1125
               TabIndex        =   125
               Top             =   300
               Width           =   420
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "● Jetting 전압 [v] :"
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
               Index           =   3
               Left            =   2835
               TabIndex        =   124
               Top             =   675
               Width           =   1515
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "● Jetting 1Drop [ng] :"
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
               Index           =   2
               Left            =   75
               TabIndex        =   123
               Top             =   675
               Width           =   1755
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "● Drop 갯수 :"
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
               Left            =   2835
               TabIndex        =   122
               Top             =   300
               Width           =   1080
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  '투명
               Caption         =   "● Head No :"
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
               Left            =   90
               TabIndex        =   121
               Top             =   300
               Width           =   945
            End
         End
         Begin VB.CommandButton cmdBlockClear 
            Caption         =   "Block Clear"
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
            Left            =   -66330
            Picture         =   "frmMura.frx":06FD
            Style           =   1  '그래픽
            TabIndex        =   119
            Top             =   4170
            Width           =   1320
         End
         Begin VB.CommandButton cmdabOpen 
            Caption         =   "a/b Open"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   570
            Left            =   -67695
            Picture         =   "frmMura.frx":0C87
            Style           =   1  '그래픽
            TabIndex        =   118
            Top             =   4245
            Width           =   1605
         End
         Begin VB.CheckBox ChkHeadMura_SelMd 
            Height          =   195
            Index           =   4
            Left            =   -73920
            TabIndex        =   114
            Top             =   3030
            Value           =   1  '확인
            Width           =   195
         End
         Begin VB.CheckBox ChkHeadMura_SelMd 
            Height          =   195
            Index           =   3
            Left            =   -73920
            TabIndex        =   113
            Top             =   2760
            Value           =   1  '확인
            Width           =   195
         End
         Begin VB.CheckBox ChkHeadMura_SelMd 
            Height          =   195
            Index           =   2
            Left            =   -73920
            TabIndex        =   112
            Top             =   2490
            Value           =   1  '확인
            Width           =   195
         End
         Begin VB.CheckBox ChkHeadMura_SelMd 
            Height          =   195
            Index           =   1
            Left            =   -73920
            TabIndex        =   111
            Top             =   2220
            Value           =   1  '확인
            Width           =   195
         End
         Begin VB.CheckBox ChkHeadMura_SelMd 
            Height          =   195
            Index           =   0
            Left            =   -73920
            TabIndex        =   110
            Top             =   1950
            Value           =   1  '확인
            Width           =   195
         End
         Begin VB.TextBox txtHeadScanSpeed 
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
            Left            =   -73095
            TabIndex        =   107
            Text            =   "200"
            Top             =   765
            Width           =   900
         End
         Begin VB.CommandButton cmdBlockSave 
            Caption         =   "Block Save"
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
            Left            =   -64965
            Picture         =   "frmMura.frx":1211
            Style           =   1  '그래픽
            TabIndex        =   106
            Top             =   4155
            Width           =   1320
         End
         Begin VB.TextBox txtBaSpeed 
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
            Left            =   2100
            TabIndex        =   103
            Text            =   "200"
            Top             =   3810
            Width           =   900
         End
         Begin VB.TextBox txtBInsdSpeed 
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
            Left            =   -69345
            TabIndex        =   100
            Text            =   "270"
            Top             =   360
            Width           =   900
         End
         Begin VB.TextBox txtTargetAbMass 
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
            Left            =   1440
            TabIndex        =   97
            Text            =   "80"
            Top             =   2475
            Width           =   885
         End
         Begin VB.TextBox txtHdInLog 
            BorderStyle     =   0  '없음
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   705
            Left            =   -60810
            MultiLine       =   -1  'True
            ScrollBars      =   2  '수직
            TabIndex        =   95
            Text            =   "frmMura.frx":179B
            Top             =   4080
            Width           =   2580
         End
         Begin VB.CommandButton cmdHdInsdOpen 
            Caption         =   "Open"
            Height          =   540
            Left            =   -66330
            TabIndex        =   96
            Top             =   4170
            Visible         =   0   'False
            Width           =   1035
         End
         Begin VB.CommandButton cmdabSave 
            Caption         =   "a/b Save"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   585
            Left            =   10995
            Picture         =   "frmMura.frx":17A4
            Style           =   1  '그래픽
            TabIndex        =   92
            Top             =   4185
            Width           =   1725
         End
         Begin VB.CheckBox chkBInAutoApply 
            Caption         =   "자동적용"
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
            Left            =   -71445
            TabIndex        =   86
            Top             =   4155
            Width           =   1080
         End
         Begin CWUIControlsLib.CWGraph CWGraph1 
            Height          =   2985
            Left            =   -66855
            TabIndex        =   85
            Top             =   1080
            Width           =   8580
            _Version        =   393218
            _ExtentX        =   15134
            _ExtentY        =   5265
            _StockProps     =   71
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Reset_0         =   0   'False
            CompatibleVers_0=   393218
            Graph_0         =   1
            ClassName_1     =   "CCWGraphFrame"
            opts_1          =   62
            C[0]_1          =   0
            Event_1         =   2
            ClassName_2     =   "CCWGFPlotEvent"
            Owner_2         =   1
            Plots_1         =   3
            ClassName_3     =   "CCWDataPlots"
            Array_3         =   1
            Editor_3        =   4
            ClassName_4     =   "CCWGFPlotArrayEditor"
            Owner_4         =   1
            Array[0]_3      =   5
            ClassName_5     =   "CCWDataPlot"
            opts_5          =   4194367
            Name_5          =   "Plot-1"
            C[0]_5          =   65535
            C[1]_5          =   65535
            C[2]_5          =   16711680
            C[3]_5          =   16776960
            Event_5         =   2
            X_5             =   6
            ClassName_6     =   "CCWAxis"
            opts_6          =   575
            Name_6          =   "XAxis"
            C[3]_6          =   16777215
            Orientation_6   =   2816
            format_6        =   7
            ClassName_7     =   "CCWFormat"
            Scale_6         =   8
            ClassName_8     =   "CCWScale"
            opts_8          =   24576
            rMin_8          =   47
            rMax_8          =   567
            dMax_8          =   512
            discInterval_8  =   1
            Radial_6        =   0
            Enum_6          =   9
            ClassName_9     =   "CCWEnum"
            Editor_9        =   10
            ClassName_10    =   "CCWEnumArrayEditor"
            Owner_10        =   6
            Font_6          =   0
            tickopts_6      =   1703
            major_6         =   16
            Caption_6       =   11
            ClassName_11    =   "CCWDrawObj"
            opts_11         =   62
            C[0]_11         =   -2147483640
            Image_11        =   12
            ClassName_12    =   "CCWTextImage"
            szText_12       =   "32 Nozzle Divide"
            font_12         =   0
            Animator_11     =   0
            Blinker_11      =   0
            Y_5             =   13
            ClassName_13    =   "CCWAxis"
            opts_13         =   575
            Name_13         =   "YAxis-1"
            C[3]_13         =   16777215
            Orientation_13  =   2067
            format_13       =   14
            ClassName_14    =   "CCWFormat"
            Scale_13        =   15
            ClassName_15    =   "CCWScale"
            opts_15         =   122880
            rMin_15         =   10
            rMax_15         =   188
            dMax_15         =   0.25
            discInterval_15 =   1
            Radial_13       =   0
            Enum_13         =   16
            ClassName_16    =   "CCWEnum"
            Editor_16       =   17
            ClassName_17    =   "CCWEnumArrayEditor"
            Owner_17        =   13
            Font_13         =   0
            tickopts_13     =   2743
            major_13        =   0.05
            minor_13        =   0.025
            Caption_13      =   18
            ClassName_18    =   "CCWDrawObj"
            opts_18         =   62
            C[0]_18         =   -2147483640
            Image_18        =   19
            ClassName_19    =   "CCWTextImage"
            szText_19       =   "Whight[g]"
            style_19        =   15
            font_19         =   0
            Animator_18     =   0
            Blinker_18      =   0
            PointStyle_5    =   9
            LineStyle_5     =   1
            LineWidth_5     =   1
            BasePlot_5      =   0
            DefaultXInc_5   =   1
            DefaultPlotPerRow_5=   -1  'True
            Axes_1          =   20
            ClassName_20    =   "CCWAxes"
            Array_20        =   2
            Editor_20       =   21
            ClassName_21    =   "CCWGFAxisArrayEditor"
            Owner_21        =   1
            Array[0]_20     =   6
            Array[1]_20     =   13
            DefaultPlot_1   =   22
            ClassName_22    =   "CCWDataPlot"
            opts_22         =   4194367
            Name_22         =   "[Template]"
            C[0]_22         =   65280
            C[1]_22         =   255
            C[2]_22         =   16711680
            C[3]_22         =   16776960
            Event_22        =   2
            X_22            =   6
            Y_22            =   13
            LineStyle_22    =   1
            LineWidth_22    =   1
            BasePlot_22     =   0
            DefaultXInc_22  =   1
            DefaultPlotPerRow_22=   -1  'True
            Cursors_1       =   23
            ClassName_23    =   "CCWCursors"
            Editor_23       =   24
            ClassName_24    =   "CCWGFCursorArrayEditor"
            Owner_24        =   1
            TrackMode_1     =   2
            GraphBackground_1=   0
            GraphFrame_1    =   25
            ClassName_25    =   "CCWDrawObj"
            opts_25         =   62
            Image_25        =   26
            ClassName_26    =   "CCWPictImage"
            opts_26         =   1280
            Rows_26         =   1
            Cols_26         =   1
            F_26            =   -2147483633
            B_26            =   -2147483633
            ColorReplaceWith_26=   8421504
            ColorReplace_26 =   8421504
            Tolerance_26    =   2
            Animator_25     =   0
            Blinker_25      =   0
            PlotFrame_1     =   27
            ClassName_27    =   "CCWDrawObj"
            opts_27         =   62
            C[1]_27         =   0
            Image_27        =   28
            ClassName_28    =   "CCWPictImage"
            opts_28         =   1280
            Rows_28         =   1
            Cols_28         =   1
            Pict_28         =   1
            F_28            =   -2147483633
            B_28            =   0
            ColorReplaceWith_28=   8421504
            ColorReplace_28 =   8421504
            Tolerance_28    =   2
            Animator_27     =   0
            Blinker_27      =   0
            Caption_1       =   29
            ClassName_29    =   "CCWDrawObj"
            opts_29         =   62
            C[0]_29         =   -2147483640
            Image_29        =   30
            ClassName_30    =   "CCWTextImage"
            font_30         =   0
            Animator_29     =   0
            Blinker_29      =   0
            DefaultXInc_1   =   1
            DefaultPlotPerRow_1=   -1  'True
            Bindings_1      =   31
            ClassName_31    =   "CCWBindingHolderArray"
            Editor_31       =   32
            ClassName_32    =   "CCWBindingHolderArrayEditor"
            Owner_32        =   1
            Annotations_1   =   33
            ClassName_33    =   "CCWAnnotations"
            Editor_33       =   34
            ClassName_34    =   "CCWAnnotationArrayEditor"
            Owner_34        =   1
            AnnotationTemplate_1=   35
            ClassName_35    =   "CCWAnnotation"
            opts_35         =   63
            Name_35         =   "[Template]"
            Plot_35         =   22
            Text_35         =   "[Template]"
            TextXPoint_35   =   6.7
            TextYPoint_35   =   6.7
            TextColor_35    =   16777215
            TextFont_35     =   36
            ClassName_36    =   "CCWFont"
            bFont_36        =   -1  'True
            BeginProperty Font_36 {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ShapeXPoints_35 =   37
            ClassName_37    =   "CDataBuffer"
            Type_37         =   5
            m_cDims;_37     =   1
            m_cElts_37      =   1
            Element[0]_37   =   3.3
            ShapeYPoints_35 =   38
            ClassName_38    =   "CDataBuffer"
            Type_38         =   5
            m_cDims;_38     =   1
            m_cElts_38      =   1
            Element[0]_38   =   3.3
            ShapeFillColor_35=   16777215
            ShapeLineColor_35=   16777215
            ShapeLineWidth_35=   1
            ShapeLineStyle_35=   1
            ShapePointStyle_35=   10
            ShapeImage_35   =   39
            ClassName_39    =   "CCWDrawObj"
            opts_39         =   62
            Image_39        =   40
            ClassName_40    =   "CCWPictImage"
            opts_40         =   1280
            Rows_40         =   1
            Cols_40         =   1
            Pict_40         =   7
            F_40            =   -2147483633
            B_40            =   -2147483633
            ColorReplaceWith_40=   8421504
            ColorReplace_40 =   8421504
            Tolerance_40    =   2
            Animator_39     =   0
            Blinker_39      =   0
            ArrowVisible_35 =   -1  'True
            ArrowColor_35   =   16777215
            ArrowWidth_35   =   1
            ArrowLineStyle_35=   1
            ArrowHeadStyle_35=   1
         End
         Begin VB.OptionButton OptBInsideMdSel 
            Caption         =   "Head 5."
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
            Index           =   4
            Left            =   -68775
            TabIndex        =   84
            Top             =   750
            Width           =   1215
         End
         Begin VB.OptionButton OptBInsideMdSel 
            Caption         =   "Head 4."
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
            Index           =   3
            Left            =   -69975
            TabIndex        =   83
            Top             =   750
            Width           =   1215
         End
         Begin VB.OptionButton OptBInsideMdSel 
            Caption         =   "Head 3."
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
            Index           =   2
            Left            =   -71145
            TabIndex        =   82
            Top             =   750
            Width           =   1215
         End
         Begin VB.OptionButton OptBInsideMdSel 
            Caption         =   "Head 2."
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
            Left            =   -72345
            TabIndex        =   81
            Top             =   750
            Width           =   1215
         End
         Begin VB.OptionButton OptBInsideMdSel 
            Caption         =   "Head 1."
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
            Left            =   -73575
            TabIndex        =   80
            Top             =   750
            Value           =   -1  'True
            Width           =   1215
         End
         Begin VB.CheckBox chkOneHead 
            Caption         =   "One Head Only"
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
            Left            =   4335
            TabIndex        =   78
            Top             =   990
            Visible         =   0   'False
            Width           =   1620
         End
         Begin VB.CheckBox chk_ab_Head 
            Caption         =   "Head 5"
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
            Height          =   225
            Index           =   4
            Left            =   4560
            TabIndex        =   77
            Top             =   1950
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.CheckBox chk_ab_Head 
            Caption         =   "Head 4"
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
            Height          =   225
            Index           =   3
            Left            =   4560
            TabIndex        =   76
            Top             =   2100
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.CheckBox chk_ab_Head 
            Caption         =   "Head 3"
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
            Height          =   225
            Index           =   2
            Left            =   4620
            TabIndex        =   75
            Top             =   2250
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.CheckBox chk_ab_Head 
            Caption         =   "Head 2"
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
            Height          =   225
            Index           =   1
            Left            =   4650
            TabIndex        =   74
            Top             =   2430
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.CheckBox chk_ab_Head 
            Caption         =   "Head 1"
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
            Height          =   225
            Index           =   0
            Left            =   4635
            TabIndex        =   73
            Top             =   2670
            Visible         =   0   'False
            Width           =   930
         End
         Begin CWUIControlsLib.CWButton CWB_abStatus 
            Height          =   600
            Left            =   120
            TabIndex        =   72
            Top             =   4200
            Width           =   3075
            _Version        =   393218
            _ExtentX        =   5424
            _ExtentY        =   1058
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   17.99
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
            style_6         =   -578
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
            szText_8        =   "Measuring"
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
            szText_10       =   "Measuring"
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
            Actual_14.r     =   205
            Actual_14.b     =   40
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
            Actual_15.r     =   202
            Actual_15.b     =   37
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
            Actual_24.r     =   205
            Actual_24.b     =   40
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
            Actual_25.r     =   202
            Actual_25.b     =   37
            Picc_25         =   441
            Color_25        =   65380
            Name_25         =   "Light"
            AllowSetColor_25=   -1  'True
            Animator_21     =   0
            Blinker_21      =   26
            ClassName_26    =   "CCWBlinker"
            Interval_26     =   300
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
         Begin VB.Timer Timer_ab 
            Enabled         =   0   'False
            Interval        =   100
            Left            =   120
            Top             =   3225
         End
         Begin VB.TextBox txtTargetGramLow 
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
            Left            =   -73785
            TabIndex        =   36
            Text            =   "0.00"
            Top             =   360
            Width           =   1125
         End
         Begin VB.TextBox txtTargetGramUpp 
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
            Left            =   -72360
            TabIndex        =   35
            Text            =   "1"
            Top             =   360
            Width           =   1125
         End
         Begin VB.CommandButton cmdBInStart 
            Caption         =   "측정 Start"
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
            Left            =   -70335
            Picture         =   "frmMura.frx":1D2E
            Style           =   1  '그래픽
            TabIndex        =   34
            Top             =   4170
            Width           =   1275
         End
         Begin VB.CommandButton cmdBInPause 
            Caption         =   "Pause"
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
            Left            =   -69000
            Picture         =   "frmMura.frx":22B8
            Style           =   1  '그래픽
            TabIndex        =   33
            Top             =   4170
            Width           =   1275
         End
         Begin VB.TextBox txtBinSideRstFile 
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
            Left            =   -65235
            TabIndex        =   31
            Text            =   "Unnamed.csv"
            Top             =   360
            Width           =   2625
         End
         Begin VB.TextBox txtHdToHdTargetDiv 
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
            Left            =   -72735
            TabIndex        =   30
            Text            =   "1"
            Top             =   435
            Width           =   855
         End
         Begin VB.TextBox txtHdToHdTarget 
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
            Left            =   -73800
            TabIndex        =   29
            Text            =   "75"
            Top             =   435
            Width           =   855
         End
         Begin VB.CommandButton cmdHdToHdSave 
            Caption         =   "Save"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   735
            Left            =   -61125
            Picture         =   "frmMura.frx":2842
            Style           =   1  '그래픽
            TabIndex        =   28
            Top             =   1665
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.CommandButton cmdHeadStop 
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
            Height          =   735
            Left            =   -72030
            Picture         =   "frmMura.frx":2DCC
            Style           =   1  '그래픽
            TabIndex        =   27
            Top             =   3435
            Width           =   1380
         End
         Begin VB.CommandButton cmdHeadPause 
            Caption         =   "Pause"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   735
            Left            =   -73455
            Picture         =   "frmMura.frx":3356
            Style           =   1  '그래픽
            TabIndex        =   26
            Top             =   3435
            Width           =   1380
         End
         Begin VB.CommandButton cmdHeadStart 
            Caption         =   "측정 Start"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   735
            Left            =   -74880
            Picture         =   "frmMura.frx":38E0
            Style           =   1  '그래픽
            TabIndex        =   25
            Top             =   3435
            Width           =   1380
         End
         Begin VB.CommandButton cmdTagApplyHeadBtw 
            Caption         =   "최종전압 저장"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   570
            Left            =   -66060
            Picture         =   "frmMura.frx":3E6A
            Style           =   1  '그래픽
            TabIndex        =   24
            Top             =   4245
            Visible         =   0   'False
            Width           =   1605
         End
         Begin VB.CommandButton Command12 
            Caption         =   "Test"
            Height          =   345
            Left            =   -61110
            TabIndex        =   23
            Top             =   1320
            Visible         =   0   'False
            Width           =   1125
         End
         Begin VB.TextBox txtBasicInsideRepCount 
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
            Left            =   -73350
            TabIndex        =   22
            Text            =   "2"
            Top             =   4290
            Width           =   795
         End
         Begin VB.TextBox txtHeadRepCount 
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
            Left            =   -73095
            TabIndex        =   21
            Text            =   "1"
            Top             =   1125
            Width           =   900
         End
         Begin VB.CommandButton cmdSaveRecipe 
            Caption         =   "Save"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   585
            Left            =   4620
            Picture         =   "frmMura.frx":43F4
            Style           =   1  '그래픽
            TabIndex        =   20
            Top             =   3030
            Width           =   1365
         End
         Begin VB.TextBox txtMassV_Upp 
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
            Left            =   2805
            TabIndex        =   19
            Text            =   "100"
            Top             =   2130
            Width           =   885
         End
         Begin VB.TextBox txtMassV_Low 
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
            Left            =   1440
            TabIndex        =   18
            Text            =   "80"
            Top             =   2130
            Width           =   885
         End
         Begin VB.TextBox txtB_Upp 
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
            Left            =   2805
            TabIndex        =   17
            Text            =   "00.00"
            Top             =   1800
            Width           =   885
         End
         Begin VB.TextBox txtB_Low 
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
            Left            =   1440
            TabIndex        =   16
            Text            =   "00.00"
            Top             =   1800
            Width           =   885
         End
         Begin VB.TextBox txtA_Upp 
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
            Left            =   2805
            TabIndex        =   15
            Text            =   "00.00"
            Top             =   1455
            Width           =   900
         End
         Begin VB.TextBox txtA_Low 
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
            Left            =   1440
            TabIndex        =   14
            Text            =   "00.00"
            Top             =   1440
            Width           =   885
         End
         Begin VB.CommandButton cmdTargetVApply 
            Caption         =   "Target 전압 적용"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   585
            Left            =   9255
            Picture         =   "frmMura.frx":497E
            Style           =   1  '그래픽
            TabIndex        =   12
            Top             =   4185
            Width           =   1725
         End
         Begin VB.TextBox txtHdbtwRst 
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
            Left            =   -73290
            TabIndex        =   11
            Text            =   "Unnamed.csv"
            Top             =   4380
            Width           =   5445
         End
         Begin VB.ComboBox cboModuleSel 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   15.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   480
            ItemData        =   "frmMura.frx":4F08
            Left            =   2025
            List            =   "frmMura.frx":4F1E
            TabIndex        =   10
            Text            =   "ALL"
            Top             =   825
            Width           =   2235
         End
         Begin VB.TextBox txtABfileName 
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
            Left            =   11445
            TabIndex        =   9
            Text            =   "Unnamed.csv"
            Top             =   3735
            Width           =   4995
         End
         Begin VB.CommandButton cmdAbStart 
            Caption         =   "측정 Start"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   570
            Left            =   4110
            Picture         =   "frmMura.frx":4F4A
            Style           =   1  '그래픽
            TabIndex        =   8
            Top             =   4200
            Width           =   1680
         End
         Begin VB.CommandButton cmdAbPause 
            Caption         =   "Pause"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   570
            Left            =   5820
            Picture         =   "frmMura.frx":54D4
            Style           =   1  '그래픽
            TabIndex        =   7
            Top             =   4200
            Width           =   1680
         End
         Begin VB.CommandButton cmdAbStop 
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
            Height          =   570
            Left            =   7515
            Picture         =   "frmMura.frx":5A5E
            Style           =   1  '그래픽
            TabIndex        =   6
            Top             =   4200
            Width           =   1725
         End
         Begin VB.TextBox txtRepAB 
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
            Left            =   7875
            TabIndex        =   5
            Text            =   "1"
            Top             =   3780
            Width           =   1635
         End
         Begin MSFlexGridLib.MSFlexGrid MSFG_Module 
            Height          =   3015
            Index           =   0
            Left            =   -74925
            TabIndex        =   41
            Top             =   1065
            Width           =   3345
            _ExtentX        =   5900
            _ExtentY        =   5318
            _Version        =   393216
            Rows            =   17
            Cols            =   5
            BackColorBkg    =   -2147483633
            GridColor       =   0
            ScrollBars      =   2
            Appearance      =   0
            FormatString    =   $"frmMura.frx":5FE8
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
         Begin MSFlexGridLib.MSFlexGrid MSFG_Head 
            Height          =   1710
            Left            =   -74895
            TabIndex        =   42
            Top             =   1605
            Width           =   10485
            _ExtentX        =   18494
            _ExtentY        =   3016
            _Version        =   393216
            Rows            =   6
            Cols            =   9
            BackColorBkg    =   -2147483633
            GridColor       =   0
            ScrollBars      =   0
            MergeCells      =   1
            Appearance      =   0
            FormatString    =   $"frmMura.frx":603F
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
         Begin MSFlexGridLib.MSFlexGrid MSFlexGrid3 
            Height          =   2985
            Left            =   6165
            TabIndex        =   13
            Top             =   735
            Width           =   10605
            _ExtentX        =   18706
            _ExtentY        =   5265
            _Version        =   393216
            Cols            =   9
            BackColorBkg    =   -2147483633
            GridColor       =   0
            ScrollBars      =   0
            Appearance      =   0
            FormatString    =   "MdNo |   측정치 a               |측정치 b               |Target전압[V]|측정전압1[V]|측정전압2[V]|측정무게1[g]|측정무게2[g]|판정"
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
         Begin VB.Frame Frame8 
            Height          =   2160
            Left            =   8580
            TabIndex        =   40
            Top             =   1335
            Width           =   5745
         End
         Begin VB.Frame Frame10 
            Height          =   630
            Left            =   13050
            TabIndex        =   37
            Top             =   2265
            Width           =   1230
         End
         Begin Threed.SSPanel SSPanel8 
            Height          =   300
            Left            =   8580
            TabIndex        =   39
            Top             =   1050
            Width           =   3315
            _Version        =   65536
            _ExtentX        =   5847
            _ExtentY        =   529
            _StockProps     =   15
            Caption         =   "       Recipe 설정.........................................."
            BackColor       =   14215660
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Outline         =   -1  'True
            Alignment       =   1
            Begin VB.Image Image1 
               Height          =   240
               Index           =   6
               Left            =   45
               Picture         =   "frmMura.frx":6115
               Top             =   30
               Width           =   240
            End
         End
         Begin Threed.SSPanel SSPanel9 
            Height          =   300
            Left            =   6840
            TabIndex        =   38
            Top             =   2085
            Width           =   3315
            _Version        =   65536
            _ExtentX        =   5847
            _ExtentY        =   529
            _StockProps     =   15
            Caption         =   "       측정 선택..............................................."
            BackColor       =   14215660
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Outline         =   -1  'True
            Alignment       =   1
            Begin VB.Image Image1 
               Height          =   240
               Index           =   7
               Left            =   45
               Picture         =   "frmMura.frx":669F
               Top             =   30
               Width           =   240
            End
         End
         Begin CWUIControlsLib.CWButton CWB_BasicStatus 
            Height          =   690
            Left            =   -62550
            TabIndex        =   79
            Top             =   345
            Width           =   4275
            _Version        =   393218
            _ExtentX        =   7541
            _ExtentY        =   1217
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   18
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
            style_6         =   539898912
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
            szText_8        =   "Measuring"
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
            szText_10       =   "Measuring"
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
            Actual_14.r     =   285
            Actual_14.b     =   46
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
            Actual_15.r     =   282
            Actual_15.b     =   43
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
            Actual_24.r     =   285
            Actual_24.b     =   46
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
            Actual_25.r     =   282
            Actual_25.b     =   43
            Picc_25         =   441
            Color_25        =   65380
            Name_25         =   "Light"
            AllowSetColor_25=   -1  'True
            Animator_21     =   0
            Blinker_21      =   26
            ClassName_26    =   "CCWBlinker"
            Interval_26     =   300
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
         Begin VB.CommandButton cmdBInStop 
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
            Left            =   -67680
            Picture         =   "frmMura.frx":6C29
            Style           =   1  '그래픽
            TabIndex        =   32
            Top             =   4170
            Width           =   1320
         End
         Begin MSFlexGridLib.MSFlexGrid MSFG_BlockData 
            Height          =   3015
            Left            =   -71565
            TabIndex        =   94
            Top             =   1065
            Width           =   4500
            _ExtentX        =   7938
            _ExtentY        =   5318
            _Version        =   393216
            Rows            =   17
            Cols            =   6
            BackColorBkg    =   -2147483633
            GridColor       =   0
            Appearance      =   0
            FormatString    =   $"frmMura.frx":71B3
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
         Begin CWUIControlsLib.CWGraph CWGraph2 
            Height          =   3000
            Left            =   -64380
            TabIndex        =   115
            Top             =   1170
            Width           =   6105
            _Version        =   393218
            _ExtentX        =   10769
            _ExtentY        =   5292
            _StockProps     =   71
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Reset_0         =   0   'False
            CompatibleVers_0=   393218
            Graph_0         =   1
            ClassName_1     =   "CCWGraphFrame"
            opts_1          =   62
            C[0]_1          =   0
            Event_1         =   2
            ClassName_2     =   "CCWGFPlotEvent"
            Owner_2         =   1
            Plots_1         =   3
            ClassName_3     =   "CCWDataPlots"
            Array_3         =   1
            Editor_3        =   4
            ClassName_4     =   "CCWGFPlotArrayEditor"
            Owner_4         =   1
            Array[0]_3      =   5
            ClassName_5     =   "CCWDataPlot"
            opts_5          =   4194367
            Name_5          =   "Plot-1"
            C[0]_5          =   65535
            C[1]_5          =   65535
            C[2]_5          =   16711680
            C[3]_5          =   16776960
            Event_5         =   2
            X_5             =   6
            ClassName_6     =   "CCWAxis"
            opts_6          =   575
            Name_6          =   "XAxis"
            C[3]_6          =   16777215
            Orientation_6   =   2816
            format_6        =   7
            ClassName_7     =   "CCWFormat"
            Scale_6         =   8
            ClassName_8     =   "CCWScale"
            opts_8          =   24576
            rMin_8          =   41
            rMax_8          =   402
            dMin_8          =   -1
            dMax_8          =   6
            discInterval_8  =   1
            Radial_6        =   0
            Enum_6          =   9
            ClassName_9     =   "CCWEnum"
            Editor_9        =   10
            ClassName_10    =   "CCWEnumArrayEditor"
            Owner_10        =   6
            Font_6          =   0
            tickopts_6      =   1703
            major_6         =   7
            Caption_6       =   11
            ClassName_11    =   "CCWDrawObj"
            opts_11         =   62
            C[0]_11         =   -2147483640
            Image_11        =   12
            ClassName_12    =   "CCWTextImage"
            szText_12       =   "32 Nozzle Divide"
            font_12         =   0
            Animator_11     =   0
            Blinker_11      =   0
            Y_5             =   13
            ClassName_13    =   "CCWAxis"
            opts_13         =   575
            Name_13         =   "YAxis-1"
            C[3]_13         =   16777215
            Orientation_13  =   2067
            format_13       =   14
            ClassName_14    =   "CCWFormat"
            Scale_13        =   15
            ClassName_15    =   "CCWScale"
            opts_15         =   122880
            rMin_15         =   10
            rMax_15         =   189
            dMax_15         =   1
            discInterval_15 =   1
            Radial_13       =   0
            Enum_13         =   16
            ClassName_16    =   "CCWEnum"
            Editor_16       =   17
            ClassName_17    =   "CCWEnumArrayEditor"
            Owner_17        =   13
            Font_13         =   0
            tickopts_13     =   2743
            major_13        =   0.2
            minor_13        =   0.1
            Caption_13      =   18
            ClassName_18    =   "CCWDrawObj"
            opts_18         =   62
            C[0]_18         =   -2147483640
            Image_18        =   19
            ClassName_19    =   "CCWTextImage"
            szText_19       =   "Weight [g]"
            style_19        =   15
            font_19         =   0
            Animator_18     =   0
            Blinker_18      =   0
            PointStyle_5    =   9
            LineStyle_5     =   1
            LineWidth_5     =   1
            BasePlot_5      =   0
            DefaultXInc_5   =   1
            DefaultPlotPerRow_5=   -1  'True
            Axes_1          =   20
            ClassName_20    =   "CCWAxes"
            Array_20        =   2
            Editor_20       =   21
            ClassName_21    =   "CCWGFAxisArrayEditor"
            Owner_21        =   1
            Array[0]_20     =   6
            Array[1]_20     =   13
            DefaultPlot_1   =   22
            ClassName_22    =   "CCWDataPlot"
            opts_22         =   4194367
            Name_22         =   "[Template]"
            C[0]_22         =   65280
            C[1]_22         =   255
            C[2]_22         =   16711680
            C[3]_22         =   16776960
            Event_22        =   2
            X_22            =   6
            Y_22            =   13
            LineStyle_22    =   1
            LineWidth_22    =   1
            BasePlot_22     =   0
            DefaultXInc_22  =   1
            DefaultPlotPerRow_22=   -1  'True
            Cursors_1       =   23
            ClassName_23    =   "CCWCursors"
            Editor_23       =   24
            ClassName_24    =   "CCWGFCursorArrayEditor"
            Owner_24        =   1
            TrackMode_1     =   2
            GraphBackground_1=   0
            GraphFrame_1    =   25
            ClassName_25    =   "CCWDrawObj"
            opts_25         =   62
            Image_25        =   26
            ClassName_26    =   "CCWPictImage"
            opts_26         =   1280
            Rows_26         =   1
            Cols_26         =   1
            F_26            =   -2147483633
            B_26            =   -2147483633
            ColorReplaceWith_26=   8421504
            ColorReplace_26 =   8421504
            Tolerance_26    =   2
            Animator_25     =   0
            Blinker_25      =   0
            PlotFrame_1     =   27
            ClassName_27    =   "CCWDrawObj"
            opts_27         =   62
            C[1]_27         =   0
            Image_27        =   28
            ClassName_28    =   "CCWPictImage"
            opts_28         =   1280
            Rows_28         =   1
            Cols_28         =   1
            Pict_28         =   1
            F_28            =   -2147483633
            B_28            =   0
            ColorReplaceWith_28=   8421504
            ColorReplace_28 =   8421504
            Tolerance_28    =   2
            Animator_27     =   0
            Blinker_27      =   0
            Caption_1       =   29
            ClassName_29    =   "CCWDrawObj"
            opts_29         =   62
            C[0]_29         =   -2147483640
            Image_29        =   30
            ClassName_30    =   "CCWTextImage"
            font_30         =   0
            Animator_29     =   0
            Blinker_29      =   0
            DefaultXInc_1   =   1
            DefaultPlotPerRow_1=   -1  'True
            Bindings_1      =   31
            ClassName_31    =   "CCWBindingHolderArray"
            Editor_31       =   32
            ClassName_32    =   "CCWBindingHolderArrayEditor"
            Owner_32        =   1
            Annotations_1   =   33
            ClassName_33    =   "CCWAnnotations"
            Editor_33       =   34
            ClassName_34    =   "CCWAnnotationArrayEditor"
            Owner_34        =   1
            AnnotationTemplate_1=   35
            ClassName_35    =   "CCWAnnotation"
            opts_35         =   63
            Name_35         =   "[Template]"
            Plot_35         =   22
            Text_35         =   "[Template]"
            TextXPoint_35   =   6.7
            TextYPoint_35   =   6.7
            TextColor_35    =   16777215
            TextFont_35     =   36
            ClassName_36    =   "CCWFont"
            bFont_36        =   -1  'True
            BeginProperty Font_36 {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "굴림"
               Size            =   9
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ShapeXPoints_35 =   37
            ClassName_37    =   "CDataBuffer"
            Type_37         =   5
            m_cDims;_37     =   1
            m_cElts_37      =   1
            Element[0]_37   =   3.3
            ShapeYPoints_35 =   38
            ClassName_38    =   "CDataBuffer"
            Type_38         =   5
            m_cDims;_38     =   1
            m_cElts_38      =   1
            Element[0]_38   =   3.3
            ShapeFillColor_35=   16777215
            ShapeLineColor_35=   16777215
            ShapeLineWidth_35=   1
            ShapeLineStyle_35=   1
            ShapePointStyle_35=   10
            ShapeImage_35   =   39
            ClassName_39    =   "CCWDrawObj"
            opts_39         =   62
            Image_39        =   40
            ClassName_40    =   "CCWPictImage"
            opts_40         =   1280
            Rows_40         =   1
            Cols_40         =   1
            Pict_40         =   7
            F_40            =   -2147483633
            B_40            =   -2147483633
            ColorReplaceWith_40=   8421504
            ColorReplace_40 =   8421504
            Tolerance_40    =   2
            Animator_39     =   0
            Blinker_39      =   0
            ArrowVisible_35 =   -1  'True
            ArrowColor_35   =   16777215
            ArrowWidth_35   =   1
            ArrowLineStyle_35=   1
            ArrowHeadStyle_35=   1
         End
         Begin CWUIControlsLib.CWButton CWB_Head 
            Height          =   810
            Left            =   -64395
            TabIndex        =   116
            Top             =   330
            Width           =   6120
            _Version        =   393218
            _ExtentX        =   10795
            _ExtentY        =   1429
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   18
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
            style_6         =   539898912
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
            szText_8        =   "Measuring"
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
            szText_10       =   "Measuring"
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
            Actual_14.r     =   408
            Actual_14.b     =   54
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
            Actual_15.r     =   405
            Actual_15.b     =   51
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
            Actual_24.r     =   408
            Actual_24.b     =   54
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
            Actual_25.r     =   405
            Actual_25.b     =   51
            Picc_25         =   441
            Color_25        =   65380
            Name_25         =   "Light"
            AllowSetColor_25=   -1  'True
            Animator_21     =   0
            Blinker_21      =   26
            ClassName_26    =   "CCWBlinker"
            Interval_26     =   300
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
         Begin VB.Timer TimerHead 
            Enabled         =   0   'False
            Interval        =   50
            Left            =   -58995
            Top             =   4305
         End
         Begin VB.TextBox txtHeadBtwLog 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   585
            Left            =   -64380
            MultiLine       =   -1  'True
            ScrollBars      =   2  '수직
            TabIndex        =   43
            Text            =   "frmMura.frx":72D2
            Top             =   4185
            Width           =   6120
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "sec"
            Height          =   180
            Left            =   -62445
            TabIndex        =   149
            Top             =   4605
            Width           =   315
         End
         Begin VB.Label lbl_HeadSpec 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "000.00g~000.00g"
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
            Left            =   -71475
            TabIndex        =   117
            Top             =   510
            Width           =   1455
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Scan Speed[mm/s]"
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
            Left            =   -74880
            TabIndex        =   109
            Top             =   810
            Width           =   1770
         End
         Begin VB.Label lblHeadScanFreq 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00.00KHz"
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
            Left            =   -72120
            TabIndex        =   108
            Top             =   810
            Width           =   795
         End
         Begin VB.Label lbl_BabKHz 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00.00KHz"
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
            Left            =   3060
            TabIndex        =   105
            Top             =   3855
            Width           =   795
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Scan Speed[mm/s]"
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
            Left            =   255
            TabIndex        =   104
            Top             =   3855
            Width           =   1770
         End
         Begin VB.Label lbl_BinKHz 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00.00KHz"
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
            Left            =   -68370
            TabIndex        =   102
            Top             =   405
            Width           =   795
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Scan Speed[mm/s]"
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
            Left            =   -71130
            TabIndex        =   101
            Top             =   405
            Width           =   1770
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "ng"
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
            Left            =   2355
            TabIndex        =   99
            Top             =   2535
            Width           =   210
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Target Mass "
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
            Left            =   195
            TabIndex        =   98
            Top             =   2505
            Width           =   1260
         End
         Begin VB.Shape Shape2 
            Height          =   3015
            Left            =   -66870
            Top             =   1050
            Width           =   8625
         End
         Begin VB.Shape Shape1 
            Height          =   750
            Left            =   -60840
            Top             =   4065
            Width           =   2610
         End
         Begin VB.Label lbl_InsideMovDis 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Move Distance=000.0000mm"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0C0C0&
            Height          =   225
            Left            =   -74895
            TabIndex        =   87
            Top             =   4050
            Width           =   2460
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Target[%]"
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
            Left            =   -74775
            TabIndex        =   69
            Top             =   405
            Width           =   960
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "~"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   -72615
            TabIndex        =   68
            Top             =   315
            Width           =   210
         End
         Begin VB.Label lbl_SleRow 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "0"
            ForeColor       =   &H00C0C0C0&
            Height          =   180
            Index           =   0
            Left            =   -70695
            TabIndex        =   67
            Top             =   4635
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl_SleRow 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "0"
            ForeColor       =   &H00C0C0C0&
            Height          =   180
            Index           =   1
            Left            =   -71520
            TabIndex        =   66
            Top             =   4065
            Visible         =   0   'False
            Width           =   105
         End
         Begin VB.Label lbl_SleRow 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "0"
            ForeColor       =   &H00C0C0C0&
            Height          =   180
            Index           =   2
            Left            =   -64515
            TabIndex        =   65
            Top             =   4065
            Visible         =   0   'False
            Width           =   105
         End
         Begin VB.Label lbl_SleRow 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "0"
            ForeColor       =   &H00C0C0C0&
            Height          =   180
            Index           =   3
            Left            =   -64845
            TabIndex        =   64
            Top             =   4065
            Visible         =   0   'False
            Width           =   105
         End
         Begin VB.Label lbl_SleRow 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "0"
            ForeColor       =   &H00C0C0C0&
            Height          =   180
            Index           =   4
            Left            =   -61515
            TabIndex        =   63
            Top             =   4065
            Visible         =   0   'False
            Width           =   105
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Result File Name"
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
            Left            =   -66945
            TabIndex        =   62
            Top             =   405
            Width           =   1560
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "±"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   -72885
            TabIndex        =   61
            Top             =   450
            Width           =   135
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Target[ng]"
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
            Left            =   -74880
            TabIndex        =   60
            Top             =   465
            Width           =   1035
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● 측정반복 횟수"
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
            Left            =   -74775
            TabIndex        =   59
            Top             =   4335
            Width           =   1365
         End
         Begin VB.Label lbl_BasicCount 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   36
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   825
            Left            =   -72345
            TabIndex        =   58
            Top             =   4035
            Width           =   720
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● 측정반복 횟수"
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
            Left            =   -74880
            TabIndex        =   57
            Top             =   1170
            Width           =   1365
         End
         Begin VB.Label Label41 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   20.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   -72045
            TabIndex        =   56
            Top             =   1065
            Width           =   420
         End
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "→"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   2370
            TabIndex        =   55
            Top             =   2070
            Width           =   360
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● 측정전압[V]"
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
            Left            =   195
            TabIndex        =   54
            Top             =   2190
            Width           =   1170
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "~"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   2445
            TabIndex        =   53
            Top             =   1740
            Width           =   210
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● b 범위"
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
            Left            =   195
            TabIndex        =   52
            Top             =   1860
            Width           =   690
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "~"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   2445
            TabIndex        =   51
            Top             =   1395
            Width           =   210
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● a 범위"
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
            Left            =   195
            TabIndex        =   50
            Top             =   1515
            Width           =   690
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "%"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   -71850
            TabIndex        =   49
            Top             =   495
            Width           =   240
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Result File Name"
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
            Left            =   -74865
            TabIndex        =   48
            Top             =   4425
            Width           =   1560
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● 측정 Module 선택"
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
            Left            =   195
            TabIndex        =   47
            Top             =   945
            Width           =   1635
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● Result File Name"
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
            Left            =   9600
            TabIndex        =   46
            Top             =   3795
            Width           =   1560
         End
         Begin VB.Label lbl_abCount 
            Alignment       =   2  '가운데 맞춤
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "00"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   36
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   825
            Left            =   3285
            TabIndex        =   45
            Top             =   4065
            Width           =   720
         End
         Begin VB.Label Label51 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "● 측정반복 횟수"
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
            Left            =   6435
            TabIndex        =   44
            Top             =   3825
            Width           =   1365
         End
         Begin VB.Shape Shape4 
            Height          =   2985
            Left            =   75
            Top             =   735
            Width           =   6060
         End
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "● Recipe File"
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
         Left            =   225
         TabIndex        =   71
         Top             =   105
         Width           =   1065
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "● 사용INK"
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
         Left            =   13710
         TabIndex        =   70
         Top             =   105
         Width           =   825
      End
   End
   Begin MSFlexGridLib.MSFlexGrid MSFG_Module 
      Height          =   3015
      Index           =   1
      Left            =   1245
      TabIndex        =   88
      ToolTipText     =   "전헤드 선택은 더블클릭 입니다.(전부해제는 한번 더 더블클릭)"
      Top             =   8790
      Width           =   3345
      _ExtentX        =   5900
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   17
      Cols            =   5
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   $"frmMura.frx":72DB
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
   Begin MSFlexGridLib.MSFlexGrid MSFG_Module 
      Height          =   3015
      Index           =   2
      Left            =   4575
      TabIndex        =   89
      ToolTipText     =   "전헤드 선택은 더블클릭 입니다.(전부해제는 한번 더 더블클릭)"
      Top             =   8790
      Width           =   3345
      _ExtentX        =   5900
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   17
      Cols            =   5
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   $"frmMura.frx":7332
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
   Begin MSFlexGridLib.MSFlexGrid MSFG_Module 
      Height          =   3015
      Index           =   3
      Left            =   7905
      TabIndex        =   90
      ToolTipText     =   "전헤드 선택은 더블클릭 입니다.(전부해제는 한번 더 더블클릭)"
      Top             =   8790
      Width           =   3345
      _ExtentX        =   5900
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   17
      Cols            =   5
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   $"frmMura.frx":7389
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
   Begin MSFlexGridLib.MSFlexGrid MSFG_Module 
      Height          =   3015
      Index           =   4
      Left            =   11235
      TabIndex        =   91
      ToolTipText     =   "전헤드 선택은 더블클릭 입니다.(전부해제는 한번 더 더블클릭)"
      Top             =   8790
      Width           =   3345
      _ExtentX        =   5900
      _ExtentY        =   5318
      _Version        =   393216
      Rows            =   17
      Cols            =   5
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   $"frmMura.frx":73E0
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
Attribute VB_Name = "frmMura"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
