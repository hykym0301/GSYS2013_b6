VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Begin VB.Form frmBalUnitMov 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Balancer Unit Control"
   ClientHeight    =   5880
   ClientLeft      =   4815
   ClientTop       =   5925
   ClientWidth     =   6570
   Icon            =   "frmBalUnitMov.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5880
   ScaleWidth      =   6570
   Begin VB.CommandButton cmdWipeUp 
      Caption         =   "Cyl'상승"
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
      Left            =   9345
      Picture         =   "frmBalUnitMov.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   21
      Top             =   915
      Width           =   930
   End
   Begin VB.CommandButton cmdWipeDwn 
      Caption         =   "Cyl'하강"
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
      Left            =   9345
      Picture         =   "frmBalUnitMov.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   20
      Top             =   1485
      Width           =   930
   End
   Begin Threed.SSPanel SSPanel3 
      Height          =   300
      Left            =   165
      TabIndex        =   19
      Top             =   15
      Width           =   5370
      _Version        =   65536
      _ExtentX        =   9472
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Balancer Motor Unit Axis Control................................."
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
         Picture         =   "frmBalUnitMov.frx":109E
         Top             =   30
         Width           =   240
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   4515
      Top             =   2730
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
      Left            =   1785
      Picture         =   "frmBalUnitMov.frx":1628
      Style           =   1  '그래픽
      TabIndex        =   18
      Top             =   5025
      Width           =   3045
   End
   Begin VB.Frame Frame1 
      Height          =   2235
      Left            =   105
      TabIndex        =   0
      Top             =   45
      Width           =   6345
      Begin VB.CommandButton cmdRefreshCoord 
         Caption         =   "Position Refresh"
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
         Left            =   1305
         TabIndex        =   39
         Top             =   1590
         Width           =   2580
      End
      Begin VB.CheckBox chkCoordMon 
         Height          =   180
         Left            =   5790
         TabIndex        =   38
         Top             =   1860
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.CommandButton cmdYNeg 
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
         Left            =   4755
         Picture         =   "frmBalUnitMov.frx":1BB2
         Style           =   1  '그래픽
         TabIndex        =   17
         Top             =   1200
         Width           =   705
      End
      Begin VB.CommandButton cmdYPos 
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
         Left            =   4755
         Picture         =   "frmBalUnitMov.frx":213C
         Style           =   1  '그래픽
         TabIndex        =   16
         Top             =   435
         Width           =   705
      End
      Begin VB.CommandButton cmdXNeg 
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
         Left            =   5490
         Picture         =   "frmBalUnitMov.frx":26C6
         Style           =   1  '그래픽
         TabIndex        =   15
         Top             =   795
         Width           =   705
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
         TabIndex        =   7
         Top             =   930
         Width           =   1245
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
         TabIndex        =   6
         Top             =   660
         Width           =   1245
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
         TabIndex        =   5
         Top             =   405
         Value           =   -1  'True
         Width           =   705
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
         TabIndex        =   4
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
         TabIndex        =   3
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
         TabIndex        =   2
         Text            =   "0"
         Top             =   585
         Width           =   1275
      End
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
         TabIndex        =   1
         Text            =   "0"
         Top             =   885
         Width           =   1275
      End
      Begin CWUIControlsLib.CWNumEdit CWNumCyMoveSpd 
         Height          =   270
         Left            =   2610
         TabIndex        =   8
         Top             =   1260
         Width           =   1275
         _Version        =   393218
         _ExtentX        =   2249
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
         Value_Val_1     =   500
         IncValueVarType_1=   5
         IncValue_Val_1  =   1
         AccelIncVarType_1=   5
         AccelInc_Val_1  =   5
         RangeMinVarType_1=   5
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   5000
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin VB.CommandButton cmdXPos 
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
         Left            =   4020
         Picture         =   "frmBalUnitMov.frx":2C50
         Style           =   1  '그래픽
         TabIndex        =   14
         Top             =   780
         Width           =   705
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Speed[Pulse] :"
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
         Left            =   1320
         TabIndex        =   13
         Top             =   1320
         Width           =   1260
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
         TabIndex        =   12
         Top             =   1335
         Width           =   720
      End
      Begin VB.Label Label1 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "전/후진"
         Height          =   180
         Left            =   1665
         TabIndex        =   11
         Top             =   360
         Width           =   630
      End
      Begin VB.Label Label3 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         Caption         =   " 좌/우측"
         Height          =   180
         Left            =   2895
         TabIndex        =   10
         Top             =   390
         Width           =   690
      End
      Begin VB.Label lblBalCoord 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "X:000.000mm,Y:000.000mm"
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
         TabIndex        =   9
         Top             =   1875
         Width           =   2370
      End
   End
   Begin CWUIControlsLib.CWButton CWB_DI 
      Height          =   330
      Index           =   30
      Left            =   9285
      TabIndex        =   22
      Top             =   615
      Width           =   1035
      _Version        =   393218
      _ExtentX        =   1826
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
      Actual_14.r     =   69
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
      Actual_15.r     =   66
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
      Actual_24.r     =   69
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
      Actual_25.r     =   66
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
   Begin CWUIControlsLib.CWButton CWB_DI 
      Height          =   330
      Index           =   31
      Left            =   9300
      TabIndex        =   23
      Top             =   930
      Width           =   1035
      _Version        =   393218
      _ExtentX        =   1826
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
      Actual_14.r     =   69
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
      Actual_15.r     =   66
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
      Actual_24.r     =   69
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
      Actual_25.r     =   66
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
   Begin Threed.SSPanel SSPanel1 
      Height          =   300
      Left            =   165
      TabIndex        =   27
      Top             =   2340
      Width           =   5370
      _Version        =   65536
      _ExtentX        =   9472
      _ExtentY        =   529
      _StockProps     =   15
      Caption         =   "     Balancer Cyl' Unit Axis Control...................................."
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
         Picture         =   "frmBalUnitMov.frx":31DA
         Top             =   30
         Width           =   240
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2490
      Left            =   105
      TabIndex        =   24
      Top             =   2370
      Width           =   6360
      Begin VB.CommandButton cmdBodyUp 
         Caption         =   "Body 상승"
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
         Left            =   3615
         Picture         =   "frmBalUnitMov.frx":3764
         Style           =   1  '그래픽
         TabIndex        =   35
         Top             =   825
         Width           =   1260
      End
      Begin VB.CommandButton cmdBodyDw 
         Caption         =   "Body 하강"
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
         Left            =   3615
         Picture         =   "frmBalUnitMov.frx":3CEE
         Style           =   1  '그래픽
         TabIndex        =   34
         Top             =   1380
         Width           =   1260
      End
      Begin VB.CommandButton cmdCoverUp 
         Caption         =   "Cover 상승"
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
         Left            =   6015
         Picture         =   "frmBalUnitMov.frx":4278
         Style           =   1  '그래픽
         TabIndex        =   31
         Top             =   2235
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.CommandButton cmdCoverDw 
         Caption         =   "Cover 하상"
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
         Left            =   6015
         Picture         =   "frmBalUnitMov.frx":4802
         Style           =   1  '그래픽
         TabIndex        =   30
         Top             =   2790
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.CommandButton cmdCoverFwd 
         Caption         =   "Cover 열기"
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
         Left            =   1350
         Picture         =   "frmBalUnitMov.frx":4D8C
         Style           =   1  '그래픽
         TabIndex        =   26
         Top             =   825
         Width           =   1395
      End
      Begin VB.CommandButton cmdCoverBwd 
         Caption         =   "Cover 닫기"
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
         Left            =   1350
         Picture         =   "frmBalUnitMov.frx":5316
         Style           =   1  '그래픽
         TabIndex        =   25
         Top             =   1380
         Width           =   1395
      End
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   28
         Left            =   1320
         TabIndex        =   28
         Top             =   480
         Width           =   735
         _Version        =   393218
         _ExtentX        =   1296
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
         szText_8        =   "Fwd"
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
         szText_10       =   "Fwd"
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
         Actual_14.r     =   49
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
         Actual_15.r     =   46
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
         Actual_24.r     =   49
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
         Actual_25.r     =   46
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
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   29
         Left            =   1335
         TabIndex        =   29
         Top             =   1920
         Width           =   720
         _Version        =   393218
         _ExtentX        =   1270
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
         szText_8        =   "Bwd"
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
         szText_10       =   "Bwd"
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
         Actual_14.r     =   48
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
         Actual_15.r     =   45
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
         Actual_24.r     =   48
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
         Actual_25.r     =   45
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
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   26
         Left            =   2055
         TabIndex        =   32
         Top             =   480
         Width           =   735
         _Version        =   393218
         _ExtentX        =   1296
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
         szText_8        =   "cvUP"
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
         szText_10       =   "cvUP"
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
         Actual_14.r     =   49
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
         Actual_15.r     =   46
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
         Actual_24.r     =   49
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
         Actual_25.r     =   46
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
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   27
         Left            =   2070
         TabIndex        =   33
         Top             =   1920
         Width           =   720
         _Version        =   393218
         _ExtentX        =   1270
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
         szText_8        =   "cvDW"
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
         szText_10       =   "cvDW"
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
         Actual_14.r     =   48
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
         Actual_15.r     =   45
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
         Actual_24.r     =   48
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
         Actual_25.r     =   45
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
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   24
         Left            =   3585
         TabIndex        =   36
         Top             =   480
         Width           =   1320
         _Version        =   393218
         _ExtentX        =   2328
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
         szText_8        =   "bdUP"
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
         szText_10       =   "bdUP"
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
         Actual_14.r     =   88
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
         Actual_15.r     =   85
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
         Actual_24.r     =   88
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
         Actual_25.r     =   85
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
      Begin CWUIControlsLib.CWButton CWB_DI 
         Height          =   330
         Index           =   25
         Left            =   3615
         TabIndex        =   37
         Top             =   1935
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
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
         szText_8        =   "bdDW"
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
         szText_10       =   "bdDW"
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
         Actual_14.r     =   87
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
         Actual_15.r     =   84
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
         Actual_24.r     =   87
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
         Actual_25.r     =   84
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
   End
End
Attribute VB_Name = "frmBalUnitMov"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function CoverTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            CoverTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        CoverTimeCheck = 0
    End If

End Function
Private Sub cmdAllAxisStop_Click()

    D212_Commander MDI_Main.MSComm_Srukawa, "Stop 0", rtndata$, False

End Sub

Private Sub cmdBodyDw_Click()

'    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
'        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
'        Exit Sub
'    End If
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 0

End Sub

Private Sub cmdBodyUp_Click()
'
'    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
'        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
'        Exit Sub
'    End If
'
'    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_BodyUpDownSol_20, 1
    ctrlEnable False, Me
    If Balancer_BodyUp(rtn_MSG$) <> 0 Then
        MsgBox rtn_MSG$, vbCritical
    End If
    ctrlEnable True, Me

End Sub

Private Sub cmdCoverBwd_Click()

'''''    If PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True Then
'''''        MsgBox "위험합니다!! Cover를 Down 시킨 후 구동 하십시오.", vbCritical
'''''        Exit Sub
'''''    End If
'''''    'SAVED_Balacer_ITRK_StageXPos = 420
'''''    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
'''''        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
'''''        Exit Sub
'''''    End If
'''''
'''''
'''''    'Cover Close
'''''
'''''    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
'''''        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
'''''        Exit Sub
'''''    End If
'''''
'''''    ctrlEnable False, Me
'''''    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
'''''    cur_time# = CoverTimeCheck(True)
'''''    Do
'''''        DoEvents
'''''        If CoverTimeCheck(False) > 5 Then
'''''            cur_time# = CoverTimeCheck(True)
'''''            MsgBox "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26가 감지 되지 않습니다."
'''''            ctrlEnable True, Me
'''''            Exit Sub
'''''        End If
'''''    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
'''''    Sleep 500
'''''
'''''    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 1  '0이 전진임.
'''''    cur_time# = CoverTimeCheck(True)
'''''    Do
'''''        DoEvents
'''''        If CoverTimeCheck(False) > 5 Then
'''''            cur_time# = CoverTimeCheck(True)
'''''            MsgBox "AD7230_DI_전자저울_Cover_전진_Check_Sensor_28 감지 되지 않습니다."
'''''            ctrlEnable True, Me
'''''            Exit Sub
'''''        End If
'''''    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_전진_Check_Sensor_28) = True
'''''    ctrlEnable True, Me
    
    
    ctrlEnable False, Me
    If Balacer_Cover_Close(rtn_MSG$) <> 0 Then
        MsgBox rtn_MSG$, vbCritical
    End If
    ctrlEnable True, Me

End Sub

Private Sub cmdCoverDw_Click()

    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
        Exit Sub
    End If
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0

End Sub

Private Sub cmdCoverFwd_Click()
'''''
'''''    'Cover Open
'''''
'''''    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
'''''        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
'''''        Exit Sub
'''''    End If
'''''
'''''    ctrlEnable False, Me
'''''    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1 'UP
'''''    cur_time# = CoverTimeCheck(True)
'''''    Do
'''''        DoEvents
'''''        If CoverTimeCheck(False) > 5 Then
'''''            cur_time# = CoverTimeCheck(True)
'''''            MsgBox "AD7230_DI_전자저울_Cover_UP_Check_Sensor_26가 감지 되지 않습니다."
'''''            ctrlEnable True, Me
'''''            Exit Sub
'''''        End If
'''''    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_UP_Check_Sensor_26) = True
'''''
'''''    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_Cover전후진Sol_22, 0  '0이 전진임.
'''''    cur_time# = CoverTimeCheck(True)
'''''    Do
'''''        DoEvents
'''''        If CoverTimeCheck(False) > 5 Then
'''''            cur_time# = CoverTimeCheck(True)
'''''            MsgBox "AD7230_DI_전자저울_Cover_전진_Check_Sensor_28 감지 되지 않습니다."
'''''            ctrlEnable True, Me
'''''            Exit Sub
'''''        End If
'''''    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_전진_Check_Sensor_28) = True
'''''    Sleep 500
'''''
'''''    ctrlEnable False, Me
'''''    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 0 'Down
'''''    cur_time# = CoverTimeCheck(True)
'''''    Do
'''''        DoEvents
'''''        If CoverTimeCheck(False) > 5 Then
'''''            cur_time# = CoverTimeCheck(True)
'''''            MsgBox "AD7230_DI_전자저울_Cover_Down_Check_Sensor_27 감지 되지 않습니다."
'''''            ctrlEnable True, Me
'''''            Exit Sub
'''''        End If
'''''    Loop Until PCI7230_InSignal_Card2QTY(AD7230_DI_전자저울_Cover_Down_Check_Sensor_27) = True
    
    ctrlEnable False, Me
    If Balacer_Cover_Open(rtn_MSG$) <> 0 Then
        MsgBox rtn_MSG$, vbCritical
    End If
    ctrlEnable True, Me
    
End Sub


Private Sub cmdCoverUp_Click()

    If PComm32_Position_mm(PComm32_XAxis) < SAVED_Balacer_ITRK_StageXPos Then
        MsgBox "위험합니다!! X축을 안전위치로 이동 시킨 후 구동 하십시오.", vbCritical
        Exit Sub
    End If
    
    PCI7230_OutSignal_Card2QTY AD7230_DO_전자저울_CoverUpDownSol_21, 1

End Sub

Private Sub cmdRefreshCoord_Click()

    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    
End Sub

Private Sub cmdXNeg_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then Exit Sub 'Jog이면 빠져나간다.
    
    ctrlEnable False, Me
    If Me.Opt_CpMotionMode(1).Value = True Then 'Abs
        If D212_ABSMoveX(MDI_Main.MSComm_Srukawa, CDbl(Me.txt_CzABS.Text), 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        If D212_STPMove(MDI_Main.MSComm_Srukawa, D212_Axis_X, CDbl(Me.txt_CzSTP.Text), -1, 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    End If
    
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdXNeg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_AxisMove MDI_Main.MSComm_Srukawa, D212_Axis_X, 300, 200, Me.CWNumCyMoveSpd.Value, "CCW", 1

End Sub

Private Sub cmdXNeg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_Commander MDI_Main.MSComm_Srukawa, "Stop 0", rtndata$, False
    
    ctrlEnable False, Me
    DelayWait 0.2, True
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdXPos_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then Exit Sub 'Jog이면 빠져나간다.
    
    ctrlEnable False, Me
    If Me.Opt_CpMotionMode(1).Value = True Then 'Abs
        If D212_ABSMoveX(MDI_Main.MSComm_Srukawa, CDbl(Me.txt_CzABS.Text), 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        If D212_STPMove(MDI_Main.MSComm_Srukawa, D212_Axis_X, CDbl(Me.txt_CzSTP.Text), 1, 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    End If
    
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdXPos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_AxisMove MDI_Main.MSComm_Srukawa, D212_Axis_X, 300, 200, Me.CWNumCyMoveSpd.Value, "CW", 1

End Sub

Private Sub cmdXPos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_Commander MDI_Main.MSComm_Srukawa, "Stop 0", rtndata$, False
    
    ctrlEnable False, Me
    DelayWait 0.2, True
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdYNeg_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then Exit Sub 'Jog이면 빠져나간다.
    
    ctrlEnable False, Me
    If Me.Opt_CpMotionMode(1).Value = True Then 'Abs
        If D212_ABSMoveY(MDI_Main.MSComm_Srukawa, CDbl(Me.txt_CyABS.Text), 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        If D212_STPMove(MDI_Main.MSComm_Srukawa, D212_Axis_Y, CDbl(Me.txt_CySTP.Text), -1, 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    End If
    
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdYNeg_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_AxisMove MDI_Main.MSComm_Srukawa, D212_Axis_Y, 300, 200, Me.CWNumCyMoveSpd.Value, "CCW", 1

End Sub

Private Sub cmdYNeg_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_Commander MDI_Main.MSComm_Srukawa, "Stop 0", rtndata$, False
    
    ctrlEnable False, Me
    DelayWait 0.2, True
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdYPos_Click()

    If Me.Opt_CpMotionMode(0).Value = True Then Exit Sub 'Jog이면 빠져나간다.
    
    ctrlEnable False, Me
    If Me.Opt_CpMotionMode(1).Value = True Then 'Abs
        If D212_ABSMoveY(MDI_Main.MSComm_Srukawa, CDbl(Me.txt_CyABS.Text), 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    ElseIf Me.Opt_CpMotionMode(2).Value = True Then 'stp
        If D212_STPMove(MDI_Main.MSComm_Srukawa, D212_Axis_Y, CDbl(Me.txt_CySTP.Text), 1, 300, 200, Me.CWNumCyMoveSpd.Value, True) = False Then
            MsgBox "Motion Over Time!!", vbCritical
        End If
    End If
    
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
End Sub

Private Sub cmdYPos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_AxisMove MDI_Main.MSComm_Srukawa, D212_Axis_Y, 300, 200, Me.CWNumCyMoveSpd.Value, "CW", 1

End Sub

Private Sub cmdYPos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Me.Opt_CpMotionMode(0).Value = False Then Exit Sub 'Jog아니면 빠져나간다.
    If Button <> 1 Then Exit Sub
    D212_Commander MDI_Main.MSComm_Srukawa, "Stop 0", rtndata$, False
    
    ctrlEnable False, Me
    DelayWait 0.2, True
    D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
    Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    ctrlEnable True, Me
    
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

Private Sub Timer1_Timer()

    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis
    End If

    If ((SAVED_StageYAxis_ITRK_Pos_LOW < PComm32_Position_mm(PComm32_YAxis)) And _
                    (SAVED_StageYAxis_ITRK_Pos_UPP > PComm32_Position_mm(PComm32_YAxis))) Then
        Me.cmdXPos.Enabled = False
        Me.cmdXNeg.Enabled = False
    Else
        Me.cmdXPos.Enabled = True
        Me.cmdXNeg.Enabled = True
    End If

    For i% = 24 To 29
        Me.CWB_DI(i%).Value = PCI7230_InSignal_Card2QTY(i%)
    Next i%
    
    If Me.chkCoordMon.Value = 1 Then
        D212_PositionReadAllaxis MDI_Main.MSComm_Srukawa, rtn_xxx#, rtn_yyy#
        Me.lblBalCoord.Caption = "X:" & Format(rtn_xxx#, "0.0###") & ",Y:" & Format(rtn_yyy#, "0.0###")
    End If
    
End Sub


