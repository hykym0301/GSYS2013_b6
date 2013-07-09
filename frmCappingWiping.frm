VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Begin VB.Form frmCappingWiping 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Capping/Wiping Unit Control"
   ClientHeight    =   5250
   ClientLeft      =   6660
   ClientTop       =   3885
   ClientWidth     =   5730
   Icon            =   "frmCappingWiping.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5250
   ScaleWidth      =   5730
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   4950
      Top             =   4590
   End
   Begin VB.CommandButton cmdAllAxisStop 
      BackColor       =   &H0080C0FF&
      Caption         =   "All Axis Stop"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1343
      Picture         =   "frmCappingWiping.frx":0286
      Style           =   1  '그래픽
      TabIndex        =   35
      Top             =   4530
      Width           =   3045
   End
   Begin Threed.SSPanel SSPanel1 
      Height          =   300
      Left            =   150
      TabIndex        =   1
      Top             =   45
      Width           =   5370
      _Version        =   65536
      _ExtentX        =   9472
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Capping Unit Axis Control............................................"
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
         Picture         =   "frmCappingWiping.frx":0810
         Top             =   30
         Width           =   240
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2235
      Left            =   45
      TabIndex        =   0
      Top             =   105
      Width           =   5685
      Begin VB.TextBox txt_CzSTP 
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
         Left            =   2610
         TabIndex        =   15
         Text            =   "0"
         Top             =   885
         Width           =   1275
      End
      Begin VB.TextBox txt_CzABS 
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
         Left            =   2610
         TabIndex        =   14
         Text            =   "0"
         Top             =   585
         Width           =   1275
      End
      Begin VB.TextBox txt_CySTP 
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
         Left            =   1335
         TabIndex        =   10
         Text            =   "0"
         Top             =   885
         Width           =   1275
      End
      Begin VB.TextBox txt_CyABS 
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
         Left            =   1335
         TabIndex        =   9
         Text            =   "0"
         Top             =   585
         Width           =   1275
      End
      Begin VB.OptionButton Opt_CpMotionMode 
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
         Left            =   90
         TabIndex        =   8
         Top             =   405
         Value           =   -1  'True
         Width           =   705
      End
      Begin VB.OptionButton Opt_CpMotionMode 
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
         Left            =   90
         TabIndex        =   7
         Top             =   660
         Width           =   1245
      End
      Begin VB.OptionButton Opt_CpMotionMode 
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
         Left            =   90
         TabIndex        =   6
         Top             =   930
         Width           =   1245
      End
      Begin VB.CommandButton cmdDown 
         Caption         =   "하강"
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
         Left            =   4770
         Picture         =   "frmCappingWiping.frx":0D9A
         Style           =   1  '그래픽
         TabIndex        =   5
         Top             =   1305
         Width           =   705
      End
      Begin VB.CommandButton cmdUp 
         Caption         =   "상승"
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
         Left            =   4770
         Picture         =   "frmCappingWiping.frx":1324
         Style           =   1  '그래픽
         TabIndex        =   4
         Top             =   525
         Width           =   705
      End
      Begin VB.CommandButton cmdCapBwd 
         Caption         =   "후진"
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
         Left            =   3975
         Picture         =   "frmCappingWiping.frx":18AE
         Style           =   1  '그래픽
         TabIndex        =   3
         Top             =   1305
         Width           =   705
      End
      Begin VB.CommandButton cmdCapFwd 
         Caption         =   "전진"
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
         Left            =   3975
         Picture         =   "frmCappingWiping.frx":1E38
         Style           =   1  '그래픽
         TabIndex        =   2
         Top             =   525
         Width           =   705
      End
      Begin CWUIControlsLib.CWNumEdit CWNumCyMoveSpd 
         Height          =   270
         Left            =   1860
         TabIndex        =   11
         Top             =   1260
         Width           =   735
         _Version        =   393218
         _ExtentX        =   1296
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
         opts_1          =   458814
         BorderStyle_1   =   1
         ButtonPosition_1=   1
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
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   20
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin CWUIControlsLib.CWNumEdit CWNumCzMoveSpd 
         Height          =   270
         Left            =   3135
         TabIndex        =   16
         Top             =   1245
         Width           =   735
         _Version        =   393218
         _ExtentX        =   1296
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
         opts_1          =   458814
         BorderStyle_1   =   1
         ButtonPosition_1=   1
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
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   5
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin VB.Label lblCapCoord 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Cy:000.000mm,Cz:000.000mm"
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
         Left            =   1305
         TabIndex        =   38
         Top             =   1875
         Width           =   2565
      End
      Begin VB.Label Label3 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         Caption         =   "상승/하강"
         Height          =   180
         Left            =   2835
         TabIndex        =   19
         Top             =   390
         Width           =   810
      End
      Begin VB.Label Label1 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "전/후진"
         Height          =   180
         Left            =   1665
         TabIndex        =   18
         Top             =   360
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Speed :"
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
         Left            =   2625
         TabIndex        =   17
         Top             =   1305
         Width           =   630
      End
      Begin VB.Label lblCpRunMode 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Jog"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   540
         Left            =   315
         TabIndex        =   13
         Top             =   1335
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Speed :"
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
         Left            =   1350
         TabIndex        =   12
         Top             =   1320
         Width           =   630
      End
   End
   Begin Threed.SSPanel SSPanel2 
      Height          =   300
      Left            =   165
      TabIndex        =   34
      Top             =   2445
      Width           =   5370
      _Version        =   65536
      _ExtentX        =   9472
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Wiping Unit Axis Cotrol................................................"
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
         Picture         =   "frmCappingWiping.frx":23C2
         Top             =   30
         Width           =   240
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame1"
      Height          =   2040
      Left            =   45
      TabIndex        =   20
      Top             =   2445
      Width           =   5685
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   30
         Left            =   3930
         TabIndex        =   36
         Top             =   360
         Width           =   810
         _Version        =   393218
         _ExtentX        =   1429
         _ExtentY        =   582
         _StockProps     =   68
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
         Boolean_0       =   1
         ClassName_1     =   "CCWBoolean"
         opts_1          =   2606
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
         szText_8        =   "UP Sen"
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
         szText_10       =   "UP Sen"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   4013373
         C[1]_11         =   4013373
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   4013373
         B_12            =   4013373
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
         Actual_14.r     =   54
         Actual_14.b     =   22
         Picc_14         =   412
         Color_14        =   4013373
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
         Actual_15.r     =   51
         Actual_15.b     =   19
         Picc_15         =   441
         Color_15        =   4013373
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
         Actual_24.r     =   54
         Actual_24.b     =   22
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
         Actual_25.r     =   51
         Actual_25.b     =   19
         Picc_25         =   441
         Color_25        =   65380
         Name_25         =   "Light"
         AllowSetColor_25=   -1  'True
         Animator_21     =   0
         Blinker_21      =   0
         varVarType_16   =   5
         Bindings_1      =   26
         ClassName_26    =   "CCWBindingHolderArray"
         Editor_26       =   27
         ClassName_27    =   "CCWBindingHolderArrayEditor"
         Owner_27        =   1
         Style_1         =   17
         mechAction_1    =   1
         BGImg_1         =   28
         ClassName_28    =   "CCWDrawObj"
         opts_28         =   62
         Image_28        =   29
         ClassName_29    =   "CCWPictImage"
         opts_29         =   1280
         Rows_29         =   1
         Cols_29         =   1
         Pict_29         =   286
         F_29            =   -2147483633
         B_29            =   -2147483633
         ColorReplaceWith_29=   8421504
         ColorReplace_29 =   8421504
         Tolerance_29    =   2
         Animator_28     =   0
         Blinker_28      =   0
         Array_1         =   6
         Editor_1        =   0
         Array[0]_1      =   11
         Array[1]_1      =   21
         Array[2]_1      =   0
         Array[3]_1      =   0
         Array[4]_1      =   30
         ClassName_30    =   "CCWDrawObj"
         opts_30         =   62
         Image_30        =   8
         Animator_30     =   0
         Blinker_30      =   0
         Array[5]_1      =   31
         ClassName_31    =   "CCWDrawObj"
         opts_31         =   62
         Image_31        =   10
         Animator_31     =   0
         Blinker_31      =   0
         Label_1         =   32
         ClassName_32    =   "CCWDrawObj"
         opts_32         =   62
         C[0]_32         =   -2147483640
         Image_32        =   6
         Animator_32     =   0
         Blinker_32      =   0
      End
      Begin VB.CommandButton cmdWipeLeft 
         Caption         =   "Left"
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
         Left            =   3210
         Picture         =   "frmCappingWiping.frx":294C
         Style           =   1  '그래픽
         TabIndex        =   29
         Top             =   765
         Width           =   705
      End
      Begin VB.CommandButton cmdWipeRight 
         Caption         =   "Right"
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
         Left            =   3960
         Picture         =   "frmCappingWiping.frx":2ED6
         Style           =   1  '그래픽
         TabIndex        =   28
         Top             =   765
         Width           =   705
      End
      Begin VB.CommandButton cmdWipeUp 
         Caption         =   "상승"
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
         Left            =   4755
         Picture         =   "frmCappingWiping.frx":3460
         Style           =   1  '그래픽
         TabIndex        =   27
         Top             =   375
         Width           =   705
      End
      Begin VB.CommandButton cmdWipeDwn 
         Caption         =   "하강"
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
         Left            =   4755
         Picture         =   "frmCappingWiping.frx":39EA
         Style           =   1  '그래픽
         TabIndex        =   26
         Top             =   1155
         Width           =   705
      End
      Begin VB.OptionButton Opt_WpMotionMode 
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
         Left            =   90
         TabIndex        =   25
         Top             =   930
         Width           =   1245
      End
      Begin VB.OptionButton Opt_WpMotionMode 
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
         Left            =   90
         TabIndex        =   24
         Top             =   660
         Width           =   1245
      End
      Begin VB.OptionButton Opt_WpMotionMode 
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
         Left            =   90
         TabIndex        =   23
         Top             =   405
         Value           =   -1  'True
         Width           =   705
      End
      Begin VB.TextBox txt_WpABS 
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
         Left            =   1335
         TabIndex        =   22
         Text            =   "0"
         Top             =   585
         Width           =   1275
      End
      Begin VB.TextBox txt_WpSTP 
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
         Left            =   1335
         TabIndex        =   21
         Text            =   "0"
         Top             =   885
         Width           =   1275
      End
      Begin CWUIControlsLib.CWNumEdit CWNumWpMoveSpd 
         Height          =   270
         Left            =   1860
         TabIndex        =   30
         Top             =   1260
         Width           =   735
         _Version        =   393218
         _ExtentX        =   1296
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
         opts_1          =   458814
         BorderStyle_1   =   1
         ButtonPosition_1=   1
         format_1        =   2
         ClassName_2     =   "CCWFormat"
         scale_1         =   3
         ClassName_3     =   "CCWScale"
         opts_3          =   65536
         dMax_3          =   10
         discInterval_3  =   1
         ValueVarType_1  =   5
         Value_Val_1     =   50
         IncValueVarType_1=   5
         IncValue_Val_1  =   1
         AccelIncVarType_1=   5
         AccelInc_Val_1  =   5
         RangeMinVarType_1=   5
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   150
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   31
         Left            =   3930
         TabIndex        =   37
         Top             =   1620
         Width           =   810
         _Version        =   393218
         _ExtentX        =   1429
         _ExtentY        =   582
         _StockProps     =   68
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
         Boolean_0       =   1
         ClassName_1     =   "CCWBoolean"
         opts_1          =   2606
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
         szText_8        =   "Dw Sen"
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
         szText_10       =   "Dw Sen"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   4013373
         C[1]_11         =   4013373
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   4013373
         B_12            =   4013373
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
         Actual_14.r     =   54
         Actual_14.b     =   22
         Picc_14         =   412
         Color_14        =   4013373
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
         Actual_15.r     =   51
         Actual_15.b     =   19
         Picc_15         =   441
         Color_15        =   4013373
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
         Actual_24.r     =   54
         Actual_24.b     =   22
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
         Actual_25.r     =   51
         Actual_25.b     =   19
         Picc_25         =   441
         Color_25        =   65380
         Name_25         =   "Light"
         AllowSetColor_25=   -1  'True
         Animator_21     =   0
         Blinker_21      =   0
         varVarType_16   =   5
         Bindings_1      =   26
         ClassName_26    =   "CCWBindingHolderArray"
         Editor_26       =   27
         ClassName_27    =   "CCWBindingHolderArrayEditor"
         Owner_27        =   1
         Style_1         =   17
         drawState_1     =   1
         mechAction_1    =   1
         BGImg_1         =   28
         ClassName_28    =   "CCWDrawObj"
         opts_28         =   62
         Image_28        =   29
         ClassName_29    =   "CCWPictImage"
         opts_29         =   1280
         Rows_29         =   1
         Cols_29         =   1
         Pict_29         =   286
         F_29            =   -2147483633
         B_29            =   -2147483633
         ColorReplaceWith_29=   8421504
         ColorReplace_29 =   8421504
         Tolerance_29    =   2
         Animator_28     =   0
         Blinker_28      =   0
         Array_1         =   6
         Editor_1        =   0
         Array[0]_1      =   11
         Array[1]_1      =   21
         Array[2]_1      =   0
         Array[3]_1      =   0
         Array[4]_1      =   30
         ClassName_30    =   "CCWDrawObj"
         opts_30         =   62
         Image_30        =   8
         Animator_30     =   0
         Blinker_30      =   0
         Array[5]_1      =   31
         ClassName_31    =   "CCWDrawObj"
         opts_31         =   62
         Image_31        =   10
         Animator_31     =   0
         Blinker_31      =   0
         Label_1         =   32
         ClassName_32    =   "CCWDrawObj"
         opts_32         =   62
         C[0]_32         =   -2147483640
         Image_32        =   6
         Animator_32     =   0
         Blinker_32      =   0
      End
      Begin VB.Label lblWpCoord 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "WpX:000.000"
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
         Left            =   1335
         TabIndex        =   39
         Top             =   1695
         Width           =   1125
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Speed :"
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
         Left            =   1350
         TabIndex        =   33
         Top             =   1320
         Width           =   630
      End
      Begin VB.Label lblWpRunMode 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Jog"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   540
         Left            =   315
         TabIndex        =   32
         Top             =   1335
         Width           =   720
      End
      Begin VB.Label Label5 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Left/Right"
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
         Left            =   1530
         TabIndex        =   31
         Top             =   390
         Width           =   870
      End
   End
End
Attribute VB_Name = "frmCappingWiping"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAllAxisStop_Click()

    

    PComm32_AxisJogStop 0, True

End Sub

Private Sub cmdCapBwd_Click()

    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If

    If Me.Opt_CpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_CpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CyAxis, CDbl(Me.txt_CyABS.Text)
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
        PComm32_AxisJogMotion_Step PComm32_CyAxis, CDbl(Me.txt_CySTP.Text), -1
    End If
    
End Sub

Private Sub cmdCapBwd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
    
    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
    PComm32_AxisJogMove PComm32_CyAxis, -1
    
End Sub

Private Sub cmdCapBwd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_CyAxis, False
    
End Sub

Private Sub cmdCapFwd_Click()

    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If

    If Me.Opt_CpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_CpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CyAxis, CDbl(Me.txt_CyABS.Text)
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
        PComm32_AxisJogMotion_Step PComm32_CyAxis, CDbl(Me.txt_CySTP.Text), 1
    End If
    
End Sub

Private Sub cmdCapFwd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If PComm32_Position_mm(PComm32_CzAxis) > SAVED_CapZAxis_ITRK_Pos_Upp Then
        Exit Sub
    End If
    
    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_JogSpdAccScrvSET PComm32_CyAxis, USR_frmMotion_Speed(PComm32_CyAxis), PComm32_Acc_ms(PComm32_CyAxis), PComm32_Scrv_ms(PComm32_CyAxis)
    PComm32_AxisJogMove PComm32_CyAxis, 1
    
End Sub

Private Sub cmdCapFwd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_CyAxis, False
    
End Sub

Private Sub cmdDown_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_CpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, CDbl(Me.txt_CzABS.Text)
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Step PComm32_CzAxis, CDbl(Me.txt_CzSTP.Text), -1
    End If
    
End Sub

Private Sub cmdDown_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
    PComm32_AxisJogMove PComm32_CzAxis, -1
           
End Sub

Private Sub cmdDown_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_CzAxis, False
    
End Sub

Private Sub cmdUp_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_CpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Absoute PComm32_CzAxis, CDbl(Me.txt_CzABS.Text)
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
        PComm32_AxisJogMotion_Step PComm32_CzAxis, CDbl(Me.txt_CzSTP.Text), 1
    End If
    
End Sub

Private Sub cmdUp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_JogSpdAccScrvSET PComm32_CzAxis, USR_frmMotion_Speed(PComm32_CzAxis), PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
    PComm32_AxisJogMove PComm32_CzAxis, 1
        
End Sub

Private Sub cmdUp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog모드아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    
    PComm32_AxisJogStop PComm32_CzAxis, False
    
End Sub

Private Sub cmdWipeDwn_Click()

    PCI7230_OutSignal_Card2QTY DO_WipingBodyUpDownCYL_23, 0

End Sub

Private Sub cmdWipeLeft_Click()

    If Me.Opt_WpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_WpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
        PComm32_AxisJogMotion_Absoute PComm32_ClngXAxis, CDbl(Me.txt_WpABS.Text)
    ElseIf Me.Opt_WpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
        PComm32_AxisJogMotion_Step PComm32_ClngXAxis, CDbl(Me.txt_WpSTP.Text), 1
    End If
    
End Sub

Private Sub cmdWipeLeft_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_WpMotionMode(0).Value = False Then Exit Sub 'Jog모드 아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
    PComm32_AxisJogMove PComm32_ClngXAxis, 1
    
End Sub

Private Sub cmdWipeLeft_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_WpMotionMode(0).Value = False Then Exit Sub 'Jog모드 아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    PComm32_AxisJogStop PComm32_ClngXAxis, False
    
End Sub

Private Sub cmdWipeRight_Click()

    If Me.Opt_WpMotionMode(0).Value = True Then
        Exit Sub 'Jog모드면 빠져나간다
    
    ElseIf Me.Opt_WpMotionMode(1).Value = True Then 'abs
        PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
        PComm32_AxisJogMotion_Absoute PComm32_ClngXAxis, CDbl(Me.txt_WpABS.Text)
    ElseIf Me.Opt_WpMotionMode(2).Value = True Then 'stp
        PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
        PComm32_AxisJogMotion_Step PComm32_ClngXAxis, CDbl(Me.txt_WpSTP.Text), -1
    End If
    
End Sub

Private Sub cmdWipeRight_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_WpMotionMode(0).Value = False Then Exit Sub 'Jog모드 아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    PComm32_JogSpdAccScrvSET PComm32_ClngXAxis, USR_frmMotion_Speed(PComm32_ClngXAxis), PComm32_Acc_ms(PComm32_ClngXAxis), PComm32_Scrv_ms(PComm32_ClngXAxis)
    PComm32_AxisJogMove PComm32_ClngXAxis, -1
    
End Sub

Private Sub cmdWipeRight_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_WpMotionMode(0).Value = False Then Exit Sub 'Jog모드 아니면 빠져나간다
    If Button <> 1 Then Exit Sub
    PComm32_AxisJogStop PComm32_ClngXAxis, False
    
End Sub

Private Sub cmdWipeUp_Click()

    PCI7230_OutSignal_Card2QTY DO_WipingBodyUpDownCYL_23, 1

End Sub

Private Sub CWNumCyMoveSpd_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)

    USR_frmMotion_Speed(PComm32_CyAxis) = Format(Value, "0.##")

End Sub

Private Sub CWNumCzMoveSpd_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)

    USR_frmMotion_Speed(PComm32_CzAxis) = Format(Value, "0.##")

End Sub

Private Sub CWNumWpMoveSpd_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)

    USR_frmMotion_Speed(PComm32_ClngXAxis) = Format(Value, "0.##")

End Sub

Private Sub CWNumWpMoveSpd_ValueChanging(NewValue As Variant, AttemptedValue As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    
    USR_frmMotion_Speed(PComm32_ClngXAxis) = Format(Me.CWNumWpMoveSpd.Value, "0.##")

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()
    Me.Timer1.Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Me.Timer1.Enabled = False
End Sub

Private Sub Opt_CpMotionMode_Click(Index As Integer)

    Select Case Index
        Case 0
            Me.lblCpRunMode.Caption = "Jog"
        Case 1
            Me.lblCpRunMode.Caption = "Abs"
        Case 2
            Me.lblCpRunMode.Caption = "Rel"
    End Select
    
End Sub

Private Sub Opt_WpMotionMode_Click(Index As Integer)

    Select Case Index
        Case 0
            Me.lblWpRunMode.Caption = "Jog"
        Case 1
            Me.lblWpRunMode.Caption = "Abs"
        Case 2
            Me.lblWpRunMode.Caption = "Rel"
    End Select
    
End Sub

Private Sub Timer1_Timer()

    If PCI7230_InSignal_Card2QTY(DI_WipingBodyUpSensing_30) = True Then
        Me.CWB_DI(DI_WipingBodyUpSensing_30).Value = True
        Me.CWB_DI(DI_WipingBodyDownSensing_31).Value = False
    ElseIf PCI7230_InSignal_Card2QTY(DI_WipingBodyDownSensing_31) = True Then
        Me.CWB_DI(DI_WipingBodyDownSensing_31).Value = True
        Me.CWB_DI(DI_WipingBodyUpSensing_30).Value = False
    Else
        Me.CWB_DI(DI_WipingBodyUpSensing_30).Value = False
        Me.CWB_DI(DI_WipingBodyDownSensing_31).Value = False
    End If

    Me.lblCapCoord.Caption = "Cy:" & Format(PComm32_Position_mm(PComm32_CyAxis), "0.####") & "mm,Cz:" & _
                                     Format(PComm32_Position_mm(PComm32_CzAxis), "0.####") & "mm"
    Me.lblWpCoord.Caption = "WpX:" & Format(PComm32_Position_mm(PComm32_ClngXAxis), "0.####") & "mm"
    
End Sub
