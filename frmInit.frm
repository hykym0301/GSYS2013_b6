VERSION 5.00
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Begin VB.Form frmInit 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Initialize"
   ClientHeight    =   9615
   ClientLeft      =   5745
   ClientTop       =   1455
   ClientWidth     =   6315
   Icon            =   "frmInit.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9615
   ScaleWidth      =   6315
   StartUpPosition =   2  '화면 가운데
   Begin VB.CheckBox chkInitSeqSel 
      Caption         =   "Electrical Balance Initialize"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   4
      Left            =   6510
      TabIndex        =   45
      Top             =   4515
      Value           =   1  '확인
      Width           =   4500
   End
   Begin VB.CheckBox chkInitSeqSel 
      Caption         =   "Vision PC Interface Initialize[TCP/IP]"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   5
      Left            =   6510
      TabIndex        =   44
      Top             =   4125
      Width           =   4500
   End
   Begin VB.CheckBox chkInitSeqSel 
      Caption         =   "Device Net Initialize"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   6510
      TabIndex        =   43
      Top             =   3735
      Width           =   3120
   End
   Begin VB.Timer TimerInit 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   3780
      Top             =   6855
   End
   Begin VB.Frame Frame_Motion2 
      Caption         =   "        XY Stage Origin/Mapping"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1320
      Left            =   75
      TabIndex        =   33
      Top             =   5370
      Width           =   6180
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Head Ctrl' Mapping SET"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   270
         Index           =   15
         Left            =   2370
         TabIndex        =   40
         Top             =   615
         Value           =   1  '확인
         Width           =   2145
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Head Ctrl' Mapping Mearsure"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   14
         Left            =   165
         TabIndex        =   38
         Top             =   915
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Stage X Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   12
         Left            =   165
         TabIndex        =   35
         Top             =   315
         Value           =   1  '확인
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Stage Y Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   13
         Left            =   165
         TabIndex        =   34
         Top             =   615
         Value           =   1  '확인
         Width           =   4500
      End
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   12
         Left            =   4725
         TabIndex        =   37
         Top             =   315
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         style_8         =   494
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   13
         Left            =   4725
         TabIndex        =   36
         Top             =   600
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   14
         Left            =   4725
         TabIndex        =   39
         Top             =   900
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   15
         Left            =   1680
         TabIndex        =   41
         Top             =   1545
         Visible         =   0   'False
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin VB.Image Image1 
         Height          =   240
         Index           =   3
         Left            =   165
         Picture         =   "frmInit.frx":058A
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "        Maintenance Units Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1755
      Left            =   6435
      TabIndex        =   24
      Top             =   4875
      Width           =   6180
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Capping Z-Y Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   8
         Left            =   165
         TabIndex        =   28
         Top             =   375
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Up/Down Cyclinder Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   9
         Left            =   165
         TabIndex        =   27
         Top             =   660
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Wiping X Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   10
         Left            =   165
         TabIndex        =   26
         Top             =   945
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Balance XY Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   11
         Left            =   165
         TabIndex        =   25
         Top             =   1230
         Width           =   4500
      End
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   8
         Left            =   4725
         TabIndex        =   32
         Top             =   375
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   9
         Left            =   4725
         TabIndex        =   31
         Top             =   660
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   10
         Left            =   4725
         TabIndex        =   30
         Top             =   945
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   11
         Left            =   4725
         TabIndex        =   29
         Top             =   1230
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin VB.Image Image1 
         Height          =   240
         Index           =   2
         Left            =   165
         Picture         =   "frmInit.frx":0B14
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.Frame Frame_Motion1 
      Caption         =   "        Z Axis Origin && Theta"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3285
      Left            =   75
      TabIndex        =   21
      Top             =   2010
      Width           =   6180
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "KM Head Z Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   18
         Left            =   120
         TabIndex        =   60
         Top             =   1650
         Value           =   1  '확인
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "KM(1) Head X Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   19
         Left            =   120
         TabIndex        =   59
         Top             =   1965
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "KM(1) Head T Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   20
         Left            =   120
         TabIndex        =   58
         Top             =   2280
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "KM(2) Head T Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   21
         Left            =   120
         TabIndex        =   57
         Top             =   2595
         Value           =   1  '확인
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Dropwatcher Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   22
         Left            =   120
         TabIndex        =   56
         Top             =   2910
         Value           =   1  '확인
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "교세라 Head Z Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   6
         Left            =   135
         TabIndex        =   53
         Top             =   360
         Value           =   1  '확인
         Width           =   4500
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Q_Head Theta Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   17
         Left            =   135
         TabIndex        =   50
         Top             =   1320
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Q_Head Z Axis Origin"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   16
         Left            =   135
         TabIndex        =   49
         Top             =   1005
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Command2"
         Height          =   420
         Left            =   3960
         TabIndex        =   42
         Top             =   1200
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Review Z Axis Origin"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   7
         Left            =   135
         TabIndex        =   22
         Top             =   690
         Value           =   1  '확인
         Width           =   4500
      End
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   7
         Left            =   4725
         TabIndex        =   23
         Top             =   630
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   16
         Left            =   4725
         TabIndex        =   51
         Top             =   945
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   17
         Left            =   4725
         TabIndex        =   52
         Top             =   1260
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   6
         Left            =   4725
         TabIndex        =   54
         Top             =   315
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   18
         Left            =   4710
         TabIndex        =   61
         Top             =   1590
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   19
         Left            =   4710
         TabIndex        =   62
         Top             =   1905
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   20
         Left            =   4710
         TabIndex        =   63
         Top             =   2220
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   21
         Left            =   4710
         TabIndex        =   64
         Top             =   2535
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   22
         Left            =   4710
         TabIndex        =   65
         Top             =   2865
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin VB.Image Image1 
         Height          =   240
         Index           =   1
         Left            =   165
         Picture         =   "frmInit.frx":1416
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "        Device Initialize"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1905
      Left            =   75
      TabIndex        =   13
      Top             =   45
      Width           =   6180
      Begin VB.CheckBox chkPowerReset 
         Caption         =   "Motor POWER Reset"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   150
         TabIndex        =   20
         Top             =   1515
         Width           =   2310
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "INK Supply Initialize"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   3
         Left            =   150
         TabIndex        =   14
         Top             =   960
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "Peri Board Initialize"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   2
         Left            =   150
         TabIndex        =   15
         Top             =   660
         Value           =   1  '확인
         Width           =   3120
      End
      Begin VB.CheckBox chkInitSeqSel 
         Caption         =   "UMac Initialize"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   0
         Left            =   150
         TabIndex        =   16
         Top             =   360
         Value           =   1  '확인
         Width           =   3120
      End
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   3
         Left            =   4725
         TabIndex        =   17
         Top             =   915
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   2
         Left            =   4725
         TabIndex        =   18
         Top             =   630
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   345
         Index           =   0
         Left            =   4725
         TabIndex        =   19
         Top             =   330
         Width           =   1305
         _Version        =   393218
         _ExtentX        =   2302
         _ExtentY        =   609
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.76
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
         Actual_14.r     =   87
         Actual_14.b     =   23
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
         Actual_15.r     =   84
         Actual_15.b     =   20
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
         Actual_24.r     =   87
         Actual_24.b     =   23
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
         Actual_25.b     =   20
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
      Begin VB.Image Image1 
         Height          =   240
         Index           =   0
         Left            =   165
         Picture         =   "frmInit.frx":19A0
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.CommandButton cmdStartAutoSeq 
      Caption         =   "Start"
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
      Left            =   345
      Picture         =   "frmInit.frx":1F2A
      Style           =   1  '그래픽
      TabIndex        =   12
      Top             =   9015
      Width           =   1860
   End
   Begin VB.CommandButton cmdPauseAutoSeq 
      Caption         =   "Stop"
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
      Height          =   540
      Left            =   2235
      Picture         =   "frmInit.frx":24B4
      Style           =   1  '그래픽
      TabIndex        =   11
      Top             =   9015
      Width           =   1860
   End
   Begin VB.CommandButton cmdStopAutoSeq 
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
      Left            =   4110
      Picture         =   "frmInit.frx":2A3E
      Style           =   1  '그래픽
      TabIndex        =   10
      Top             =   9015
      Width           =   1860
   End
   Begin VB.TextBox txtInitLog 
      BackColor       =   &H00404040&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1560
      Left            =   60
      MultiLine       =   -1  'True
      ScrollBars      =   2  '수직
      TabIndex        =   9
      Top             =   7320
      Width           =   6195
   End
   Begin VB.CheckBox chk_SelAll 
      Caption         =   "Select ALL"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   240
      TabIndex        =   8
      Top             =   6990
      Width           =   4500
   End
   Begin VB.CommandButton cmdDeviceNetInit 
      Caption         =   "DeviceNet Init"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   6
      Top             =   570
      Width           =   4815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cleanig Y Axis Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   5
      Top             =   3030
      Width           =   4815
   End
   Begin VB.CommandButton cmdRvZOrg 
      Caption         =   "Reviw Z Axis Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   4
      Top             =   1545
      Width           =   4815
   End
   Begin VB.CommandButton cmdHdZOrg 
      Caption         =   "Head Z Axis Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   3
      Top             =   1050
      Width           =   4815
   End
   Begin VB.CommandButton cmdCUnit 
      Caption         =   "Cleanig Z Axis Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   2
      Top             =   2040
      Width           =   4815
   End
   Begin VB.CommandButton cmdXYTOrg 
      Caption         =   "XYT Axis Origin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   1
      Top             =   2535
      Width           =   4815
   End
   Begin VB.CommandButton cmdUMacInit 
      Caption         =   "UMac Init"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   10380
      TabIndex        =   0
      Top             =   90
      Width           =   4815
   End
   Begin CWUIControlsLib.CWButton CWB_Stat 
      Height          =   345
      Index           =   1
      Left            =   11010
      TabIndex        =   46
      Top             =   3690
      Width           =   1305
      _Version        =   393218
      _ExtentX        =   2302
      _ExtentY        =   609
      _StockProps     =   68
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.76
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
      Actual_14.r     =   87
      Actual_14.b     =   23
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
      Actual_15.r     =   84
      Actual_15.b     =   20
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
      Actual_24.r     =   87
      Actual_24.b     =   23
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
      Actual_25.b     =   20
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
   Begin CWUIControlsLib.CWButton CWB_Stat 
      Height          =   345
      Index           =   5
      Left            =   11010
      TabIndex        =   47
      Top             =   4110
      Width           =   1305
      _Version        =   393218
      _ExtentX        =   2302
      _ExtentY        =   609
      _StockProps     =   68
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.76
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
      Actual_14.r     =   87
      Actual_14.b     =   23
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
      Actual_15.r     =   84
      Actual_15.b     =   20
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
      Actual_24.r     =   87
      Actual_24.b     =   23
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
      Actual_25.b     =   20
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
   Begin CWUIControlsLib.CWButton CWB_Stat 
      Height          =   345
      Index           =   4
      Left            =   11025
      TabIndex        =   48
      Top             =   4515
      Width           =   1305
      _Version        =   393218
      _ExtentX        =   2302
      _ExtentY        =   609
      _StockProps     =   68
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.76
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
      Actual_14.r     =   87
      Actual_14.b     =   23
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
      Actual_15.r     =   84
      Actual_15.b     =   20
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
      Actual_24.r     =   87
      Actual_24.b     =   23
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
      Actual_25.b     =   20
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
   Begin VB.Label lblPosY 
      AutoSize        =   -1  'True
      Caption         =   "[--]"
      Height          =   180
      Left            =   195
      TabIndex        =   55
      Top             =   6765
      Width           =   360
   End
   Begin VB.Label Label1 
      BackColor       =   &H005D5D5D&
      Caption         =   "Label1"
      Height          =   435
      Left            =   13215
      TabIndex        =   7
      Top             =   3960
      Width           =   960
   End
End
Attribute VB_Name = "frmInit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const State_Index_Skip As Integer = 0
Const State_Index_Init As Integer = 1
Const State_Index_Success As Integer = 2
Const State_Index_Fail As Integer = 3
Const State_Index_Stby As Integer = 4
Dim fl_InitStart As Boolean
Dim fl_InitStop As Boolean
Dim StepNoInit As Double
Sub InitLogDis(Indata As String, ipClear As Boolean)
    
    Static aa As Integer
    
    If ipClear = True Then
        aa = 0
        Me.txtInitLog.Text = ""
        
    End If
    
    If aa > 255 Then
        aa = 0
        Me.txtInitLog.Text = ""
    End If
    
    Me.txtInitLog.SelLength = Len(Me.txtInitLog.Text)
    If InStr(1, Indata, vbCrLf) <> 0 Then
        Me.txtInitLog.SelText = Indata
    Else
        Me.txtInitLog.SelText = Indata & vbCrLf
    End If
    aa = aa + 1
    
End Sub
Sub StepInit_OKNG_Display(ipIndex As Integer, ipInitializing_OkNg As Integer, ipFlagReset As Boolean)
    
    If ipFlagReset = True Then
        Me.CWB_Stat(ipIndex).Value = False
        Me.CWB_Stat(ipIndex).OnColor = vbYellow
        Me.CWB_Stat(ipIndex).OnText = "Init"
        Me.CWB_Stat(ipIndex).OffColor = &H5D5D5D
        Me.CWB_Stat(ipIndex).OffText = "StandBy"
        Exit Sub
    End If
    
    If ipInitializing_OkNg = 1 Then 'Init중...
        Me.CWB_Stat(ipIndex).OnColor = vbYellow
        Me.CWB_Stat(ipIndex).OnText = "Init"
        Me.CWB_Stat(ipIndex).Value = True
    ElseIf ipInitializing_OkNg = 2 Then 'OK
        Me.CWB_Stat(ipIndex).OffColor = vbGreen
        Me.CWB_Stat(ipIndex).OffText = "Success"
        Me.CWB_Stat(ipIndex).Value = False
    ElseIf ipInitializing_OkNg = 3 Then 'NG
        Me.CWB_Stat(ipIndex).OffColor = vbRed
        Me.CWB_Stat(ipIndex).OffText = "Fail!"
        Me.CWB_Stat(ipIndex).Value = False
    Else
        Me.CWB_Stat(ipIndex).Value = False
        Me.CWB_Stat(ipIndex).OnColor = vbYellow
        Me.CWB_Stat(ipIndex).OnText = "Init"
        Me.CWB_Stat(ipIndex).OffColor = &H5D5D5D
        Me.CWB_Stat(ipIndex).OffText = "Skip"
    End If
    
End Sub
Function InitTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            InitTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        InitTimeCheck = 0
    End If

End Function
Private Sub chk_SelAll_Click()

'    For i% = 0 To Me.chkInitSeqSel.Count - 1
'        Me.chkInitSeqSel(i%).Value = Me.chk_SelAll.Value
'        StepInit_OKNG_Display i%, 0, True
'    Next i%
   
    Me.chkInitSeqSel(0).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 0, 0, True
    
    Me.chkInitSeqSel(2).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 2, 0, True
    
    Me.chkInitSeqSel(3).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 3, 0, True
    
    Me.chkInitSeqSel(6).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 6, 0, True
    
    Me.chkInitSeqSel(7).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 7, 0, True
    
    Me.chkInitSeqSel(12).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 12, 0, True
    
    Me.chkInitSeqSel(13).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 13, 0, True
    
    Me.chkInitSeqSel(14).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 14, 0, True
    
    Me.chkInitSeqSel(15).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 15, 0, True
    
    Me.chkInitSeqSel(16).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 16, 0, True
    
    Me.chkInitSeqSel(17).Value = Me.chk_SelAll.Value
    StepInit_OKNG_Display 17, 0, True
    
    For i% = 18 To 22 Step 1
        Me.chkInitSeqSel(i%).Value = Me.chk_SelAll.Value
        StepInit_OKNG_Display i%, 0, True
    Next i%
        
End Sub

Private Sub chkInitSeqSel_Click(Index As Integer)

    If Index = 0 Then
        'Frame_Motion1.Enabled = chkInitSeqSel(0).Value
        'Frame_Motion2.Enabled = chkInitSeqSel(0).Value
    End If

End Sub

Private Sub chkPowerReset_Click()

    If Me.chkPowerReset.Value = 1 Then
        Me.chkPowerReset.ForeColor = vbRed

        For i% = 0 To Me.chkInitSeqSel.count - 1
            Me.chkInitSeqSel(i%).Value = Me.chk_SelAll.Value
            StepInit_OKNG_Display i%, 0, True
        Next i%
        Me.chkInitSeqSel(2).Value = 0
        StepInit_OKNG_Display 2, 0, True
        Me.chkInitSeqSel(3).Value = 0
        StepInit_OKNG_Display 3, 0, True
        Me.chkInitSeqSel(4).Value = 0
        StepInit_OKNG_Display 4, 0, True
        Me.chkInitSeqSel(5).Value = 0
        StepInit_OKNG_Display 5, 0, True
        Me.chkInitSeqSel(11).Value = 0
        StepInit_OKNG_Display 11, 0, True
    Else
        Me.chkPowerReset.ForeColor = vbBlack
        For i% = 0 To Me.chkInitSeqSel.count - 1
            Me.chkInitSeqSel(i%).Value = 0
            StepInit_OKNG_Display i%, 0, False
        Next i%
        Me.chkInitSeqSel(2).Value = 1
        StepInit_OKNG_Display 2, 0, True
        Me.chkInitSeqSel(3).Value = 1
        StepInit_OKNG_Display 3, 0, True
        Me.chkInitSeqSel(4).Value = 1
        StepInit_OKNG_Display 4, 0, True
        Me.chkInitSeqSel(5).Value = 1
        StepInit_OKNG_Display 5, 0, True
        Me.chkInitSeqSel(11).Value = 1
        StepInit_OKNG_Display 11, 0, True
    End If

End Sub

Private Sub cmdHdZOrg_Click()

    PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 0
    PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 0
    PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 0

    PComm32_OriginRunning PComm32_HdZAxis

End Sub

Private Sub cmdPauseAutoSeq_Click()

    fl_InitStop = True
'    Me.cmdPauseAutoSeq.Enabled = False 'Stop
'    Me.cmdStartAutoSeq.Enabled = True 'Start
'    Me.cmdStopAutoSeq.Enabled = True 'Close
    
End Sub

Private Sub cmdStartAutoSeq_Click()

    fl_InitStart = True
    Me.cmdPauseAutoSeq.Enabled = True 'Stop
    Me.cmdStartAutoSeq.Enabled = False 'Start
    Me.cmdStopAutoSeq.Enabled = False 'Close
    
End Sub

Private Sub cmdStopAutoSeq_Click()

    Unload Me

End Sub

Private Sub cmdUMacInit_Click()

    If PComm32_Init(False, False) = False Then
        MsgBox "UMac Init Fail!!", vbCritical
    Else
        MsgBox "UMac Init Success!", vbInformation
    End If

End Sub

Private Sub cmdXYTOrg_Click()

    PComm32_OriginRunning PComm32_XAxis
    PComm32_OriginRunning PComm32_YAxis
    'PComm32_OriginRunning PComm32_TAxis

End Sub

Private Sub Command2_Click()

    If DN_HomeCommand2("H1Z") = True Then
        MsgBox "ReviewZ Origin END"
    End If

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    For i% = 0 To Me.chkInitSeqSel.count - 1
        StepInit_OKNG_Display i%, 0, True
    Next i%
 chkInitSeqSel(7).Enabled = True
    Me.TimerInit.Enabled = True
End Sub


Private Sub Form_Unload(Cancel As Integer)
    Me.TimerInit.Enabled = False
End Sub

Private Sub Label2_Click()

End Sub

Private Sub TimerInit_Timer()

    Static StepIndex As Integer
    Dim rtn_Flag As Boolean
    
    Dim UMac_MoPowerReset As Boolean
    Static ErrMap_Divide_diatance_mm As Double
    Static ErrorMap_Gatther_Cnt As Integer
    
    Static rtn_Org(8) As Boolean
    Static rtn_XYTOrg(2) As Boolean
    Static rtn_Inpos_QHT As Boolean
    
    'StepNoInit = 0
    'fl_InitStart = False
ReCycle:
    
    If fl_InitStop = True Then
        fl_InitStop = False
        If PComm32_Init_Flag = True Then
            PComm32_AxisJogStop 0, True 'All Axis Stop
        End If
        If DeviceNet_INIT_All(1) = True Then
            DN_JogEmgStopCommand "H1Z"
        End If
        StepNoInit = 0
        InitLogDis "------------------------------Init Process Forces STOP!------------------------------", False
        Me.cmdPauseAutoSeq.Enabled = False 'Stop
        Me.cmdStartAutoSeq.Enabled = True 'Start
        Me.cmdStopAutoSeq.Enabled = True 'Close
        Exit Sub
    End If
    
    Select Case StepNoInit
        Case 0
            If fl_InitStart = True Then
                fl_InitStart = False
                InitLogDis "", True
                tmp_dbl# = InitTimeCheck(True)
                For i% = 0 To Me.chkInitSeqSel.count - 1
                    StepInit_OKNG_Display i%, 0, True
                Next i%
                
                StepIndex = 0
                
                For i% = 0 To 8 Step 1
                    rtn_Org(i%) = False
                Next i%
                For i% = 0 To 2 Step 1
                    rtn_XYTOrg(i%) = False
                Next i%
                rtn_Inpos_QHT = False
               
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                StepNoInit = 10 'UMac INIT Seq
            Else
                Me.cmdPauseAutoSeq.Enabled = False 'Stop
                Me.cmdStartAutoSeq.Enabled = True 'Start
                Me.cmdStopAutoSeq.Enabled = True 'Close
            End If
        Case 10 'UMac INIT Seq
            If chkInitSeqSel(0).Value = 1 Then
                InitLogDis "UMac Initializing...", False
                
                If Me.chkPowerReset.Value = 1 Then
                    UMac_MoPowerReset = True
                Else
                    UMac_MoPowerReset = False
                End If
                
                If PComm32_Init(False, UMac_MoPowerReset) = False Then
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    InitLogDis "UMac Initializing...Fail!", False
                    StepNoInit = 0 '100 'DeviceNetInit
                Else
                    PComm32_Init False, UMac_MoPowerReset '한번더...??!! 걍 되니깐.
                    
                    Call Init_SylinderPos
                    
                    StepIndex = 0
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "UMac Initializing...Complete", False
                    'StepNoInit = 100 'DeviceNetInit
                    StepNoInit = 200 'PeriBD
                End If
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                '//StepNoInit = 100 'DeviceNetInit
                StepNoInit = 200 'PeriBD
            End If
        
        Case 200 'PeriBD Init ,ㅡ
            If chkInitSeqSel(2).Value = 1 Then
                StepIndex = 2
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Peri B/D Initializing...", False
                StepNoInit = 210
            Else
                StepIndex = 2
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                StepNoInit = 300 'Ink Supply Init
            End If
        Case 210
            If PI_HEAD_IF_Init = True Then
                StepNoInit = 230
            Else
                StepIndex = 2
                StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                InitLogDis "DeviceNet Initializing...Fail!", False
                StepNoInit = 0 '300 'PeriBD Init
            End If
        Case 230
            If PI_HEAD_IF_Boot(True) = True Then
                If Config_HeadController() = True Then
                    tmp_dbl# = InitTimeCheck(True)
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Peri B/D Initializing...Complete", False
                    StepNoInit = 300 '500 'Vision IF Init
                Else
                    StepIndex = 2
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    InitLogDis "Peri B/D Initializing...Fail!", False
                    StepNoInit = 0 '300 'PeriBD Init
                End If
            Else
                StepIndex = 2
                StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                InitLogDis "Peri B/D Initializing...Fail!", False
                StepNoInit = 0 '300 'PeriBD Init
            End If
'        Case 240
'            If PI_HEAD_IF_ResOK_Check = 2 Then
'                StepInit_OKNG_Display StepIndex, State_Index_Success, False
'                InitLogDis "Peri B/D Initializing...Complete", False
'                StepNoInit = 300 '500 'Vision IF Init
'            Else
'                'OVT Check
'                If InitTimeCheck(False) > 60 Then
'                    tmp_dbl# = InitTimeCheck(True)
'                    InitLogDis "Peri B/D Initializing Over Time 60sec!", False
'                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
'                    StepNoInit = 0
'                End If
'            End If
        Case 300 'Ink Supply Init
            If chkInitSeqSel(3).Value = 1 Then
                StepIndex = 3
                StepNoInit = 310
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "INK Supply Initializing...", False
            Else
                StepIndex = 3
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                'StepNoInit = 400 '전자저울 Init
                'StepNoInit = 600 'Origin Head Z
                StepNoInit = 1800 'Z & theta initialize
                
            End If
        Case 310

'''            '기본 Maiscus 상태
'''            InitLogDis "INK Supply Initializing...Maniscus Stat Set", False
'''            PCI7230_OutSignal_Card2QTY DO_InkTankVaccOnOffSOL_03, 0
'''            PCI7230_OutSignal_Card2QTY DO_ByPassOnOffSOL_04, 0
'''            PCI7230_OutSignal_Card2QTY DO_InkPurgeOnOffSOL_05, 0
'''            PCI7230_OutSignal_Card2QTY DO_MeniscusEjectorSOL_26, 1
            
            'Call INKS_Basic_Meniscus
            Call INK_Supply.Meniscus
            
            StepInit_OKNG_Display StepIndex, State_Index_Success, False
            InitLogDis "INK Supply Initializing...Complete", False
            'StepNoInit = 400 '전자저울 Init
            'StepNoInit = 600 'Origin Head Z
            StepNoInit = 1800 'Z & theta initialize
                        
                    
                    
        Case 600 'Head Z Origin
            If chkInitSeqSel(6).Value = 1 Then
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#11j/#12j/#20j/") 'Head Z Axis Servo ON
                StepIndex = 6
                StepNoInit = 610
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Head Z Axis Origin...", False
            Else
                StepIndex = 6
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                StepNoInit = 700 'Review Z Origin
            End If
        Case 610
            'PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 1 'Braek OFF
            'PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 1
            'PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 1
            'PComm32_DOUT oSm_CameraUpDn_Mtr_Break, 1
            InitLogDis "Head Z Axis Origin...Break Release", False
            PComm32_OriginRunning PComm32_HdZAxis
            tmp_dbl# = InitTimeCheck(True)
            StepNoInit = 620
        Case 620
            Dim rtn_Bool As Boolean
            PComm32_OriginConfirm PComm32_HdZAxis, rtn_Bool
            If rtn_Bool = True Then
                'InitLogDis "Head Z Axis Origin...Breaked", False
                'PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 0 'Braek On
                'PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 0
                'PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 0
                'PComm32_DOUT oSm_CameraUpDn_Mtr_Break, 0
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Head Z Axis Origin...Complete", False
                StepNoInit = 700 'Review Z Origin
            Else
                If InitTimeCheck(False) > 60 Then
                    'PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 0 'Braek On
                    'PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 0
                    'PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 0
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Head Z Axis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0 '1200 '700 'Review Z Origin
                End If
            End If
        Case 700 'Review Z Origin
            StepIndex = 7
            If chkInitSeqSel(7).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Review Z Axis Origin...", False
                tmp_dbl# = InitTimeCheck(True)
                PComm32_OriginRunning PComm32_RvZAxis
                StepNoInit = 710
            Else
                StepNoInit = 1600
            End If
            
        Case 710
            StepIndex = 7
            PComm32_OriginConfirm PComm32_RvZAxis, rtn_Bool
            If rtn_Bool = True Then
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Review Z Axis Origin...Complete", False
                tmp_dbl# = InitTimeCheck(True)
                StepNoInit = 1600
            Else
                If InitTimeCheck(False) > 60 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Review Z Axis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0
                End If
            End If
            
        Case 1600 'Q_Head Z
            StepIndex = 16
            If chkInitSeqSel(16).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Q_Head Z Axis Origin...", False
                tmp_dbl# = InitTimeCheck(True)
                PComm32_OriginRunning Cliffer_HdzAxis, PComm32_ClifferID
                StepNoInit = 1610
            Else
                StepNoInit = 1700
            End If
            
        Case 1610
            StepIndex = 16
            PComm32_OriginConfirm Cliffer_HdzAxis, rtn_Bool, PComm32_ClifferID
            If rtn_Bool = True Then
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Q_Head Z Axis Origin...Complete", False
                tmp_dbl# = InitTimeCheck(True)
                StepNoInit = 1700
            Else
                If InitTimeCheck(False) > 60 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Q_Head Z Axis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0
                End If
            End If
            
            
        Case 1700 'Q_Head Theta
            StepIndex = 17
            If chkInitSeqSel(17).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Q_Head Theta Axis Origin...", False
                tmp_dbl# = InitTimeCheck(True)
                PComm32_OriginRunning Cliffer_HdtAxis, PComm32_ClifferID
                StepNoInit = 1710
            Else
                StepNoInit = 1200
            End If
            
        Case 1710
            StepIndex = 17
            PComm32_OriginConfirm Cliffer_HdtAxis, rtn_Bool, PComm32_ClifferID
            If rtn_Bool = True Then
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Q_Head Theta Axis Origin...Complete", False
                tmp_dbl# = InitTimeCheck(True)
                StepNoInit = 1200
            Else
                If InitTimeCheck(False) > 60 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Q_Head ThetaAxis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0 '1200 '700 'Review Z Origin
                End If
            End If
        
        
        Case 1200
            If chkInitSeqSel(12).Value = 1 Then
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#1J/")
                StepIndex = 12
                StepNoInit = 1210
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "X Stage Axis Origin...", False
                
                If StageX_Move_Interlock_Check(True) = False Then '인터록위치로...
                    InitLogDis "X Axis Origin...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepIndex = 12
                    StepNoInit = 0 '1300
                End If
                
            Else
                StepIndex = 12
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                StepNoInit = 1300
            End If
        Case 1210
            PComm32_OriginRunning PComm32_XAxis
            tmp_dbl# = InitTimeCheck(True)
            StepNoInit = 1220
        Case 1220
            PComm32_OriginConfirm PComm32_XAxis, rtn_Flag
            If rtn_Flag = True Then
                tmp_dbl# = InitTimeCheck(True)
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                PComm32_JogSpdAccScrvSET PComm32_CzAxis, 50, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
                PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
                PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
                PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_CappingStageX
                InitLogDis "X Stage Axis Origin...Complete", False
                StepNoInit = 1300
            Else
                'Over Time Check
                If InitTimeCheck(False) > 180 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "X Stage Axis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0
                End If
            End If
        
        Case 1300
            If chkInitSeqSel(13).Value = 1 Then
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#2J/") 'Head Z Axis Servo ON
                StepIndex = 13
                StepNoInit = 1305
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Y Stage Axis Origin...", False
                
                If StageY_Move_Interlock_Check(True) = False Then '인터록위치로...
                    InitLogDis "Y Axis Origin...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepIndex = 13
                    StepNoInit = 0
                End If
                                
            Else
                StepIndex = 13
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                StepNoInit = 0
            End If
        Case 1305
            PComm32_OriginRunning PComm32_YAxis
            tmp_dbl# = InitTimeCheck(True)
            StepNoInit = 1310
        Case 1310
            PComm32_OriginConfirm PComm32_YAxis, rtn_Flag
            If rtn_Flag = True Then
                tmp_dbl# = InitTimeCheck(True)
                'StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Y Stage Axis Origin...Complete", False
                If Me.chkInitSeqSel(15).Value = 1 Then
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(RESET_TRIGGERPOS))
                End If
                StepNoInit = 1320 '1400 'END
            Else
                'Over Time Check
                If InitTimeCheck(False) > 180 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Y Stage Axis Origin Over Time 60sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0
                End If
            End If
            
            
        Case 1320 'Srage T축 원점
            PComm32_OriginRunning PComm32_TAxis
            tmp_dbl# = InitTimeCheck(True)
            StepNoInit = 1330
        Case 1330
            PComm32_OriginConfirm PComm32_TAxis, rtn_Flag
            If rtn_Flag = True Then
                tmp_dbl# = InitTimeCheck(True)
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Stage T Axis Origin...Complete", False
                StepNoInit = 1400 'END
            Else
                'Over Time Check
                If InitTimeCheck(False) > 180 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "T Stage Axis Origin Over Time 180sec!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 0
                End If
            End If
            
        Case 1400 'Error Mapping Data Gathering
            
            If Me.chkInitSeqSel(14).Value = 1 Then
                If chkInitSeqSel(13).Value <> 1 Then
                    MsgBox "Error Map Data 측정은 YAxis Origin완료 후 가능합니다.", vbInformation
                    StepIndex = 14
                    InitLogDis "Can't Error Map Data Gathering>>>>>Please INIT to UMac or Head Ctrl...", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 1500
                    Exit Sub
                End If
                If ((PComm32_Init_Flag = True) And (PI_HEAD_BootOK = True)) Then
                    StepIndex = 14
                    StepNoInit = 1410
                    ErrorMap_Gatther_Cnt = 0
                    StepInit_OKNG_Display StepIndex, State_Index_Init, False
                    InitLogDis "Error Map Data Gathering Start...", False
                    tmp_dbl# = InitTimeCheck(True)
                Else
                    StepIndex = 14
                    InitLogDis "Can't Error Map Data Gathering>>>>>Please INIT to UMac or Head Ctrl...", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepNoInit = 1500
                End If
            Else
                StepIndex = 14
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
                StepNoInit = 1500
            End If
        Case 1410
            tmp_dis$ = 100 'InputBox("Y Axis의 전체 Stroke는 약 2000mm 입니다. 측정간격(mm)를 입력해 주세요.(전체 Stroke / 측정간격 은 256개를 넘게될경우 오류가 발생합니다)", App.Title)
            If tmp_dis$ = "" Then
                DelayWait 5, True
                GoTo ReCycle
            Else
            
                For i% = 0 To 255
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP_" & CStr(ErrorMap_Gatther_Cnt), "")
                Next i%
            
                ErrMap_Divide_diatance_mm = CDbl(tmp_dis$)
                MsgBox "Stage Y Axis를 0mm위치로 이송합니다.(200mm/s) 위험요소 확인 후 '확인' 버튼을 눌러 주세요.", vbi
                PComm32_JogSpdAccScrvSET PComm32_XAxis, 200#, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
                PComm32_AxisJogMotion_Absoute PComm32_YAxis, 0#
                DelayWait PComm32_Acc_ms(PComm32_YAxis) / 1000, True
                StepNoInit = 1420
            End If
            
        Case 1420
            Call PComm32_AxisStatusCheckSimple
            Call PComm32_PositionReadAllAxis
            If PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1 Then 'PComm32_Axis_InPosGain(PComm32_YAxis)
                If ((PComm32_Position_mm(PComm32_YAxis) > (PComm32_Axis_InPosGain(PComm32_YAxis) * -1)) And _
                                    (PComm32_Position_mm(PComm32_YAxis) <= PComm32_Axis_InPosGain(PComm32_YAxis))) Then
                    
                    If PI_HEAD_ZeroSetEncCounter = True Then 'HEAD Ctrl Error Map Encoder Zero
                        tmp_dbl# = InitTimeCheck(True)
                        StepNoInit = 1430
                    Else
                        tmp_dbl# = InitTimeCheck(True)
                        InitLogDis "Can't Error Map Data Gathering...Fail!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                        StepIndex = 14
                        StepNoInit = 1500
                    End If
                    
                Else
                    If InitTimeCheck(False) > 20 Then
                        tmp_dbl# = InitTimeCheck(True)
                        InitLogDis "Can't Error Map Data Gathering...Fail!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                        StepIndex = 14
                        StepNoInit = 1500
                    End If
                End If
            Else 'tmp_dbl# = InitTimeCheck(True)
                If InitTimeCheck(False) > 20 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Can't Error Map Data Gathering...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepIndex = 14
                    StepNoInit = 1500
                End If
            End If
        Case 1430
        
            'ErrorMap_Gatther_Cnt
            
            tmp# = 1800 / ErrMap_Divide_diatance_mm
            tmpp# = Format(tmp#, "0")
            
            If ErrorMap_Gatther_Cnt > tmpp# Then
                ErrorMap_Gatther_Cnt = 0
                tmp_dbl# = InitTimeCheck(True)
                StepInit_OKNG_Display StepIndex, State_Index_Success, False
                InitLogDis "Error Map Data Gathering......Complete", False
                StepNoInit = 1500 'END
                Exit Sub
            End If
        
            If PI_HEAD_GetEncCounter(rtn_val#) = True Then
            
                Call PComm32_PositionReadAllAxis
                            
                lblPosY.Caption = "ErrMap: " & CStr(rtn_val#) & "Count:" & CStr(ErrorMap_Gatther_Cnt) & " - " & Format(PComm32_Position_mm(PComm32_YAxis), "0.000") & "mm"
            
                'ErrorMap_Gatther_Cnt
                If ErrorMap_Gatther_Cnt = 0 Then
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP_" & CStr(ErrorMap_Gatther_Cnt), "0")
                Else
                    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "ERR_MAP_" & CStr(ErrorMap_Gatther_Cnt), CStr(rtn_val#))
                End If
                
                PComm32_JogSpdAccScrvSET PComm32_YAxis, 200, PComm32_Acc_ms(PComm32_YAxis), PComm32_Scrv_ms(PComm32_YAxis)
                PComm32_AxisJogMotion_Step PComm32_YAxis, ErrMap_Divide_diatance_mm, 1
                DelayWait PComm32_Acc_ms(PComm32_YAxis) / 1000, True
                
                tmp_dbl# = InitTimeCheck(True)
                StepNoInit = 1440
            Else
                tmp_dbl# = InitTimeCheck(True)
                InitLogDis "Can't Error Map Data Gathering...Fail!", False
                StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                StepIndex = 14
                StepNoInit = 1500
            End If
        Case 1440
            Call PComm32_AxisStatusCheckSimple
            If PComm32_AxisStatBit_InPos(PComm32_YAxis) = 1 Then
                DelayWait 2, True
                ErrorMap_Gatther_Cnt = ErrorMap_Gatther_Cnt + 1
                StepNoInit = 1430
            Else 'tmp_dbl# = InitTimeCheck(True)
                If InitTimeCheck(False) > 20 Then
                    tmp_dbl# = InitTimeCheck(True)
                    InitLogDis "Can't Error Map Data Gathering...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    StepIndex = 14
                    StepNoInit = 1500
                End If
            End If
        Case 1500
            StepNoInit = 0

            
        Case 1800
            
            StepIndex = 6
            If chkInitSeqSel(6).Value = 1 Then
                'PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#11j/#12j/#20j/") 'Head Z Axis Servo ON
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#11j/#12j/")
                InitLogDis "Head Z Axis Origin...Break Release", False
                
                Call DelayWait(2, True)
                
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Head Z Axis Origin...", False
                PComm32_OriginRunning PComm32_HdZAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
        
            StepIndex = 7
            If chkInitSeqSel(7).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Review Z Axis Origin...", False
                PComm32_OriginRunning PComm32_RvZAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 16
            If chkInitSeqSel(16).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Q_Head Z Axis Origin...", False
                PComm32_OriginRunning Cliffer_HdzAxis, PComm32_ClifferID
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 17
            If chkInitSeqSel(17).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Q_Head Theta Axis Origin...", False
                PComm32_OriginRunning Cliffer_HdtAxis, PComm32_ClifferID
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            
            '// 추가된 모터 원점
            
            StepIndex = 18
            If chkInitSeqSel(StepIndex).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "KM Head Z Axis Origin...", False
                PComm32_OriginRunning PComm32_HdZAxis_km
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 19
            If chkInitSeqSel(StepIndex).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "KM Head X Axis Origin...", False
                PComm32_OriginRunning PComm32_km1_XAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 20
            If chkInitSeqSel(StepIndex).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "KM Head T(1) Axis Origin...", False
                PComm32_OriginRunning PComm32_km1_TAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 21
            If chkInitSeqSel(StepIndex).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "KM Head T(2) Axis Origin...", False
                PComm32_OriginRunning PComm32_km2_TAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            StepIndex = 22
            If chkInitSeqSel(StepIndex).Value = 1 Then
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Dropwatcher Axis Origin...", False
                PComm32_OriginRunning PComm32_DW_YAxis
            Else
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
            
            tmp_dbl# = InitTimeCheck(True)
            
            If (chkInitSeqSel(6).Value = 1) Or _
               (chkInitSeqSel(7).Value = 1) Or _
               (chkInitSeqSel(16).Value = 1) Or _
               (chkInitSeqSel(17).Value = 1) Or _
               (chkInitSeqSel(18).Value = 1) Or _
               (chkInitSeqSel(19).Value = 1) Or _
               (chkInitSeqSel(20).Value = 1) Or _
               (chkInitSeqSel(21).Value = 1) Or _
               (chkInitSeqSel(22).Value = 1) Then
                StepNoInit = 1810
            Else
                StepNoInit = 1200
            End If
        
        Case 1810
              
            StepIndex = 6
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(0) = False) Then
                PComm32_OriginConfirm PComm32_HdZAxis, rtn_Org(0)
                If rtn_Org(0) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Head Z Axis Origin...Complete", False
                End If
            Else
                rtn_Org(0) = True
            End If
            StepIndex = 7
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(1) = False) Then
                PComm32_OriginConfirm PComm32_RvZAxis, rtn_Org(1)
                If rtn_Org(1) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Review Z Axis Origin...Complete", False
                End If
            Else
                rtn_Org(1) = True
            End If
            StepIndex = 16
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(2) = False) Then
                PComm32_OriginConfirm Cliffer_HdzAxis, rtn_Org(2), PComm32_ClifferID
                If rtn_Org(2) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Q_Head Z Axis Origin...Complete", False
                End If
            Else
                rtn_Org(2) = True
            End If
            StepIndex = 17
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(3) = False) Then
                PComm32_OriginConfirm Cliffer_HdtAxis, rtn_Org(3), PComm32_ClifferID
                If rtn_Org(3) = True Then
                    
                    Dim objTimer As New clsTimer
                    
                    dmovetheta# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgHeadThetaOffset_Degree  '// 마지막 사용했던 각도로 이동
                    
                    PComm32_JogSpdAccScrvSET Cliffer_HdtAxis, _
                                             Cliffer_Speed_mms(Cliffer_HdtAxis), _
                                             Cliffer_Acc_ms(Cliffer_HdtAxis), _
                                             Cliffer_Scrv_ms(Cliffer_HdtAxis), _
                                             PComm32_ClifferID
                                             
                    PComm32_AxisJogMotion_Absoute Cliffer_HdtAxis, dmovetheta#, PComm32_ClifferID
                    
                    Call objTimer.DelayWait_TimeCheck(True)
                    Do
                        DoEvents
                        If objTimer.DelayWait_TimeCheck(False) > 60 Then
                            MsgBox "Head theta Axis 이동완료 OverTime!!", vbExclamation
                            Call objTimer.DelayWait_TimeCheck(True)
                            Exit Do
                        End If
                        Call PComm32_AxisStatusCheckSimple(PComm32_ClifferID)
                    Loop Until Cliffer_AxisStatBit_InPos(Cliffer_HdtAxis) = 1
                    
                    cu_time# = objTimer.DelayWait_TimeCheck(True)
                                        
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Q_Head Theta Axis Origin...Complete", False
                End If
            Else
                rtn_Org(3) = True
            End If
            
            
            '// 추가된 모터
            StepIndex = 18
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(4) = False) Then
                PComm32_OriginConfirm PComm32_HdZAxis_km, rtn_Org(4)
                If rtn_Org(4) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "KM Head Z Axis Origin...Complete", False
                End If
            Else
                rtn_Org(4) = True
            End If
            
            StepIndex = 19
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(5) = False) Then
                PComm32_OriginConfirm PComm32_km1_XAxis, rtn_Org(5)
                If rtn_Org(5) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "KM Head X Axis Origin...Complete", False
                End If
            Else
                rtn_Org(5) = True
            End If
                        
            StepIndex = 20
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(6) = False) Then
                PComm32_OriginConfirm PComm32_km1_TAxis, rtn_Org(6)
                If rtn_Org(6) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "KM Head T(1) Axis Origin...Complete", False
                End If
            Else
                rtn_Org(6) = True
            End If
                        
            StepIndex = 21
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(7) = False) Then
                PComm32_OriginConfirm PComm32_km2_TAxis, rtn_Org(7)
                If rtn_Org(7) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "KM Head T(2) Axis Origin...Complete", False
                End If
            Else
                rtn_Org(7) = True
            End If
                        
            StepIndex = 22
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(8) = False) Then
                PComm32_OriginConfirm PComm32_DW_YAxis, rtn_Org(8)
                If rtn_Org(8) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Dropwatcher Axis Origin...Complete", False
                End If
            Else
                rtn_Org(8) = True
            End If
                                    
            If (rtn_Org(0) = True) And _
               (rtn_Org(1) = True) And _
               (rtn_Org(2) = True) And _
               (rtn_Org(3) = True) And _
               (rtn_Org(4) = True) And _
               (rtn_Org(5) = True) And _
               (rtn_Org(6) = True) And _
               (rtn_Org(7) = True) And _
               (rtn_Org(8) = True) Then
                StepNoInit = 1900
            Else
                If InitTimeCheck(False) <= 600 Then
                    StepNoInit = 1810
                Else
                    tmp_dbl# = InitTimeCheck(True)
                    
                    StepIndex = 6
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(0) = False) Then
                        InitLogDis "Head Z Axis Origin Over Time 60sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    StepIndex = 7
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(1) = False) Then
                        InitLogDis "Review Z Axis Origin Over Time 60sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    StepIndex = 16
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(2) = False) Then
                        InitLogDis "Q_Head Z Axis Origin Over Time 60sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    StepIndex = 17
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_Org(3) = False) Then
                        InitLogDis "Q_Head ThetaAxis Origin Over Time 60sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    StepNoInit = 0
                End If
            End If
            
        Case 1900
            
            Dim bInterLockGood(1) As Boolean
            
            StepIndex = 12
            If chkInitSeqSel(StepIndex).Value = 1 Then
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#1J/")
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "X Stage Axis Origin...", False
                bInterLockGood(0) = StageX_Move_Interlock_Check(True)
                
                If bInterLockGood(0) = True Then  '인터록위치로...
                    PComm32_OriginRunning PComm32_XAxis
                Else
                    InitLogDis "X Axis Origin...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                End If
            Else
                bInterLockGood(0) = False
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
                        
            StepIndex = 13
            If chkInitSeqSel(StepIndex).Value = 1 Then
                PComm32_ReturnErrCode = PmacGetResponseA(PComm32_DeviceID, PComm32_Response, 255, "#2J/") 'Head Z Axis Servo ON
                StepInit_OKNG_Display StepIndex, State_Index_Init, False
                InitLogDis "Y Stage Axis Origin...", False
                bInterLockGood(1) = StageY_Move_Interlock_Check(True)
                
                If bInterLockGood(1) = True Then '인터록위치로...
                    PComm32_OriginRunning PComm32_YAxis
                    PComm32_OriginRunning PComm32_TAxis
                Else
                    InitLogDis "Y Axis Origin...Fail!", False
                    StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                End If
            Else
                bInterLockGood(1) = False
                StepInit_OKNG_Display StepIndex, State_Index_Skip, False
            End If
    
            tmp_dbl# = InitTimeCheck(True)
            
            If (chkInitSeqSel(12).Value = 1) Or (chkInitSeqSel(13).Value = 1) Then
                StepNoInit = 1910
            Else
                StepNoInit = 0
            End If
           
        Case 1910
            
            StepIndex = 12
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(0) = False) Then
                PComm32_OriginConfirm PComm32_XAxis, rtn_XYTOrg(0)
                If rtn_XYTOrg(0) = True Then
                    PComm32_JogSpdAccScrvSET PComm32_CzAxis, 50, PComm32_Acc_ms(PComm32_CzAxis), PComm32_Scrv_ms(PComm32_CzAxis)
                    PComm32_AxisJogMotion_Absoute PComm32_CzAxis, SAVED_CapZAxis_ITRK_Pos_Upp - 1
                    PComm32_JogSpdAccScrvSET PComm32_XAxis, 200, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
                    PComm32_AxisJogMotion_Absoute PComm32_XAxis, SAVED_POS_CappingStageX
                    
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "X Stage Axis Origin...Complete", False
                End If
            Else
                rtn_XYTOrg(0) = True
            End If
            
            StepIndex = 13
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(1) = False) Then
                PComm32_OriginConfirm PComm32_YAxis, rtn_XYTOrg(1)
                If rtn_XYTOrg(1) = True Then
                    InitLogDis "Y Stage Axis Origin...Complete", False
                    If Me.chkInitSeqSel(15).Value = 1 Then
                        Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", CStr(RESET_TRIGGERPOS))
                    End If
                End If
            Else
                rtn_XYTOrg(1) = True
            End If
            
            StepIndex = 13
            If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(2) = False) Then
                PComm32_OriginConfirm PComm32_TAxis, rtn_XYTOrg(2)
                If rtn_XYTOrg(2) = True Then
                    StepInit_OKNG_Display StepIndex, State_Index_Success, False
                    InitLogDis "Stage T Axis Origin...Complete", False
                End If
            Else
                rtn_XYTOrg(2) = True
            End If
            
            If (rtn_XYTOrg(0) = True) And (rtn_XYTOrg(1) = True) And (rtn_XYTOrg(2) = True) Then
                If (chkInitSeqSel(13).Value = 1) Then
                    StepNoInit = 1400
                Else
                    StepNoInit = 0
                End If
            Else
                If InitTimeCheck(False) <= 180 Then
                    StepNoInit = 1910
                Else
                    tmp_dbl# = InitTimeCheck(True)
                    
                    StepIndex = 12
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(0) = False) Then
                        InitLogDis "X Stage Axis Origin Over Time 180sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                   
                    StepIndex = 13
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(1) = False) Then
                        InitLogDis "Y Stage Axis Origin Over Time 180sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    
                    StepIndex = 13
                    If (chkInitSeqSel(StepIndex).Value = 1) And (rtn_XYTOrg(2) = False) Then
                        InitLogDis "T Stage Axis Origin Over Time 180sec!", False
                        StepInit_OKNG_Display StepIndex, State_Index_Fail, False
                    End If
                    StepNoInit = 0
                End If
            End If
    End Select
End Sub

Function Config_HeadController() As Boolean

On Error GoTo syserr:

    If PI_HEAD_BootOK = True Then
    
        g_nDataLoadingType = 1
        
        Load frmWait
        frmWait.Show
        
        If PI_HEAD_12_Offset(0, 0, True) = False Then
            Config_HeadController = False
            MsgBox "Error PI_HEAD_12_Offset!", vbExclamation
            Exit Function
        End If
        
        file_name$ = gPrintPara.strNzlParamsFilePath
        
        If dir(file_name$) = "" Then
            MsgBox "노즐 Live & Delay 파일을 열 수 없습니다!", vbCritical
        End If
    
        Open file_name$ For Input As #1
        iindex% = 0
        Do While Not EOF(1)
            Line Input #1, str_line$
            ReArray = Split(str_line$, ",", 4, vbTextCompare)
            If (iindex% >= 1) And UBound(ReArray) = 2 Then
                gPrintPara.nSetNzlLive(iindex% - 1) = ReArray(1)
                gPrintPara.nSetNzlDelay(iindex% - 1) = ReArray(2)
            End If
            str_line$ = ""
            iindex% = iindex% + 1
        Loop
        Close #1
    
        '// 4.
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            Config_HeadController = False
            MsgBox "Error PI_HEAD_DelayNozzle!", vbExclamation
            Exit Function
        End If
    
        '// 5.
        If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
            Config_HeadController = False
            MsgBox "Error PI_HEAD_LiveNozzle!", vbExclamation
            Exit Function
        End If
    
        '// 2.
        dImageOffsetAngle# = gPrintPara.dCfgSaberAngle_Degree + gPrintPara.dCfgSaberAngleOffset_Degree
        If PI_HEAD_SlantAngle(0, dImageOffsetAngle#, True) = False Then
            Config_HeadController = False
            MsgBox "Error PI_HEAD_SlantAngle!", vbExclamation
            Exit Function
        End If
    
        '// 3.
        dJetDir% = 0 ' 정방향
        cur_org_img_pitch# = SAVED_HEADIF_BOOT_System_Image_Pitch
        start_nzl_no% = 1
        end_nzl_no% = 256
        use_nzl_qty% = (end_nzl_no% - start_nzl_no%) + 1
        dn_file$ = gPrintPara.strPrintImageFilePath
    
        If PI_HEAD_UploadImage(0, _
                               dJetDir%, _
                               cur_org_img_pitch#, _
                               start_nzl_no%, _
                               end_nzl_no%, _
                               use_nzl_qty%, _
                               dn_file$, _
                               gPrintPara.lngRtnImageYCnt, _
                               True) = False Then
            Config_HeadController = False
            MsgBox "Fail image upload", vbExclamation
            Exit Function
        End If
        
        frmRunning.lblReturnImageYCnt.Caption = "응답갯수(H): " & CStr(gPrintPara.lngRtnImageYCnt) & "[cnt]"
        If gPrintPara.lngRtnImageYCnt > 0 Then
            dPrintHeight_mm# = (gPrintPara.lngRtnImageYCnt - 1) * (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)
            frmRunning.lblPrintHeight_mm.Caption = "Height: " & Format(dPrintHeight_mm#, "0.000") & "[mm]"
        End If
       
         Unload frmWait
    End If
    
    Config_HeadController = True
Exit Function
syserr:
    Unload frmWait
    Config_HeadController = False
    MsgBox Err.Description
End Function
