VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "Mscomm32.ocx"
Object = "{E7BC3920-33D4-11D0-8B73-0020AF31CEF9}#1.4#0"; "cwanalysis.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.MDIForm MDI_Main 
   BackColor       =   &H00D8E9EC&
   Caption         =   "LG PRI - 2013 G System"
   ClientHeight    =   15135
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   16875
   Icon            =   "MDI_Main.frx":0000
   LinkTopic       =   "MDIForm1"
   LockControls    =   -1  'True
   ScrollBars      =   0   'False
   StartUpPosition =   2  '화면 가운데
   Begin MSCommLib.MSComm MSComm_LED 
      Left            =   960
      Top             =   3360
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      CommPort        =   5
      DTREnable       =   -1  'True
      BaudRate        =   4800
      InputMode       =   1
   End
   Begin MSWinsockLib.Winsock WinsockTrig 
      Left            =   510
      Top             =   3465
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSCommLib.MSComm MSComm_NX4 
      Left            =   2115
      Top             =   2145
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin MSCommLib.MSComm MSComm_Parker 
      Left            =   1530
      Top             =   2130
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin CWAnalysisControlsLib.CWStat CWStat1 
      Left            =   1680
      Top             =   1215
      _Version        =   65540
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
   End
   Begin CWAnalysisControlsLib.CWArray CWArray1 
      Left            =   1170
      Top             =   1215
      _Version        =   65540
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
   End
   Begin MSCommLib.MSComm MSComm_Srukawa 
      Left            =   930
      Top             =   2115
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin MSCommLib.MSComm MSComm_Balancer 
      Left            =   345
      Top             =   2115
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      RThreshold      =   1
   End
   Begin VB.Timer TimerStatus 
      Interval        =   100
      Left            =   750
      Top             =   1200
   End
   Begin Threed.SSPanel SSPanel1 
      Align           =   1  '위 맞춤
      Height          =   630
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   16875
      _Version        =   65536
      _ExtentX        =   29766
      _ExtentY        =   1111
      _StockProps     =   15
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin Threed.SSPanel SSPanel4 
         Height          =   495
         Left            =   7440
         TabIndex        =   8
         Top             =   75
         Width           =   11700
         _Version        =   65536
         _ExtentX        =   20637
         _ExtentY        =   873
         _StockProps     =   15
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
         Begin CWUIControlsLib.CWButton CWButton2 
            Height          =   240
            Left            =   5940
            TabIndex        =   18
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   56278728
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
            style_8         =   56924120
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
            style_10        =   268435456
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton1 
            Height          =   240
            Left            =   4410
            TabIndex        =   17
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   56293688
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
            style_10        =   21
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWB_TaxisStat 
            Height          =   240
            Left            =   2955
            TabIndex        =   16
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWB_YaxisStat 
            Height          =   240
            Left            =   1515
            TabIndex        =   15
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1072693248
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
            style_8         =   34079066
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
            style_10        =   34079138
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWB_XaxisStat 
            Height          =   240
            Left            =   30
            TabIndex        =   14
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_8         =   17301802
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWB_QHeadZStat 
            Height          =   240
            Left            =   30
            TabIndex        =   32
            Top             =   270
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWB_QHeadTStat 
            Height          =   240
            Left            =   1515
            TabIndex        =   34
            Top             =   270
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton3 
            Height          =   240
            Left            =   7425
            TabIndex        =   58
            Top             =   15
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   56278728
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
            style_8         =   56924120
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
            style_10        =   268435456
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton4 
            Height          =   240
            Left            =   2955
            TabIndex        =   60
            Top             =   270
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   56278728
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
            style_8         =   56924120
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
            style_10        =   268435456
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton5 
            Height          =   240
            Left            =   4410
            TabIndex        =   61
            Top             =   270
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton6 
            Height          =   240
            Left            =   5940
            TabIndex        =   63
            Top             =   270
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin CWUIControlsLib.CWButton CWButton7 
            Height          =   240
            Left            =   7440
            TabIndex        =   65
            Top             =   255
            Width           =   240
            _Version        =   393218
            _ExtentX        =   423
            _ExtentY        =   423
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   15.74
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
            style_6         =   1583926344
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
            style_8         =   56356672
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
            style_10        =   17301860
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
            ClassName_13    =   "CPiccListRoundLED"
            count_13        =   2
            list[2]_13      =   14
            ClassName_14    =   "CCWPicc"
            opts_14         =   62
            Image_14        =   0
            Animator_14     =   0
            Blinker_14      =   0
            Size_14.cx      =   21
            Size_14.cy      =   21
            Model_14.r      =   21
            Model_14.b      =   21
            Actual_14.r     =   16
            Actual_14.b     =   16
            Picc_14         =   411
            Color_14        =   19230
            Name_14         =   "Divot"
            list[1]_13      =   15
            ClassName_15    =   "CCWPicc"
            opts_15         =   62
            Image_15        =   0
            Animator_15     =   0
            Blinker_15      =   0
            Size_15.cx      =   21
            Size_15.cy      =   21
            Model_15.l      =   2
            Model_15.t      =   2
            Model_15.r      =   19
            Model_15.b      =   19
            Actual_15.l     =   1
            Actual_15.t     =   1
            Actual_15.r     =   14
            Actual_15.b     =   14
            Picc_15         =   404
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
            C[0]_21         =   255
            C[1]_21         =   255
            Image_21        =   22
            ClassName_22    =   "CCWPiccListImage"
            opts_22         =   1280
            Rows_22         =   1
            Cols_22         =   1
            F_22            =   255
            B_22            =   255
            ColorReplaceWith_22=   8421504
            ColorReplace_22 =   8421504
            Tolerance_22    =   2
            UsePiccList_22  =   -1  'True
            PiccList_22     =   23
            ClassName_23    =   "CPiccListRoundLED"
            count_23        =   2
            list[2]_23      =   24
            ClassName_24    =   "CCWPicc"
            opts_24         =   62
            Image_24        =   0
            Animator_24     =   0
            Blinker_24      =   0
            Size_24.cx      =   21
            Size_24.cy      =   21
            Model_24.r      =   21
            Model_24.b      =   21
            Actual_24.r     =   16
            Actual_24.b     =   16
            Picc_24         =   411
            Color_24        =   255
            Name_24         =   "Divot"
            list[1]_23      =   25
            ClassName_25    =   "CCWPicc"
            opts_25         =   62
            Image_25        =   0
            Animator_25     =   0
            Blinker_25      =   0
            Size_25.cx      =   21
            Size_25.cy      =   21
            Model_25.l      =   2
            Model_25.t      =   2
            Model_25.r      =   19
            Model_25.b      =   19
            Actual_25.l     =   1
            Actual_25.t     =   1
            Actual_25.r     =   14
            Actual_25.b     =   14
            Picc_25         =   404
            Color_25        =   255
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
            Style_1         =   18
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
         Begin VB.Label lbl_KMXPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "KMX=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00505256&
            Height          =   225
            Left            =   7695
            TabIndex        =   66
            Top             =   255
            Width           =   1170
         End
         Begin VB.Label lblKMT2Pos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "KMT2=000.00°"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00505256&
            Height          =   225
            Left            =   6195
            TabIndex        =   64
            Top             =   270
            Width           =   1230
         End
         Begin VB.Label lblKMT1Pos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "KMT1=000.00°"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00505256&
            Height          =   225
            Left            =   4665
            TabIndex        =   62
            Top             =   270
            Width           =   1230
         End
         Begin VB.Label lbl_DWPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "DWy=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H005D5D5D&
            Height          =   225
            Left            =   3225
            TabIndex        =   59
            Top             =   270
            Width           =   1170
         End
         Begin VB.Label lbl_KMZPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "KMZ=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H005D5D5D&
            Height          =   225
            Left            =   7710
            TabIndex        =   57
            Top             =   30
            Width           =   1155
         End
         Begin VB.Label lblQHeadT_Pos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "QHT=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H005D5D5D&
            Height          =   225
            Left            =   1770
            TabIndex        =   33
            Top             =   270
            Width           =   1140
         End
         Begin VB.Label lblQHeadZ_Pos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "QHZ=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H005D5D5D&
            Height          =   225
            Left            =   285
            TabIndex        =   31
            Top             =   270
            Width           =   1140
         End
         Begin VB.Label lblDate 
            Alignment       =   2  '가운데 맞춤
            Appearance      =   0  '평면
            BackColor       =   &H00C0FFFF&
            BorderStyle     =   1  '단일 고정
            Caption         =   "2009-09-28 오후12:00:00"
            BeginProperty Font 
               Name            =   "굴림"
               Size            =   9.75
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   405
            Left            =   9840
            TabIndex        =   30
            Top             =   60
            Width           =   1845
         End
         Begin VB.Label lbl_RvZPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "RvZ=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00757575&
            Height          =   225
            Left            =   6195
            TabIndex        =   13
            Top             =   15
            Width           =   1095
         End
         Begin VB.Label lbl_HdZPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "KYZ=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H005D5D5D&
            Height          =   225
            Left            =   4695
            TabIndex        =   12
            Top             =   15
            Width           =   1110
         End
         Begin VB.Label lbl_TPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "T=000.0000°"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00505256&
            Height          =   225
            Left            =   3210
            TabIndex        =   11
            Top             =   15
            Width           =   1065
         End
         Begin VB.Label lbl_YPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Y=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0043464B&
            Height          =   225
            Left            =   1800
            TabIndex        =   10
            Top             =   15
            Width           =   885
         End
         Begin VB.Label lbl_XPos 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "X=000.000"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0043464B&
            Height          =   225
            Left            =   300
            TabIndex        =   9
            Top             =   15
            Width           =   900
         End
      End
      Begin VB.CommandButton cmdRecipeSave 
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
         Left            =   20175
         Picture         =   "MDI_Main.frx":058A
         Style           =   1  '그래픽
         TabIndex        =   19
         Top             =   135
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   11340
         TabIndex        =   6
         Text            =   "C:\Unnamed.rcp"
         Top             =   315
         Visible         =   0   'False
         Width           =   7065
      End
      Begin VB.CommandButton cmdRecipe 
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
         Left            =   19620
         Picture         =   "MDI_Main.frx":0B14
         Style           =   1  '그래픽
         TabIndex        =   4
         Top             =   195
         Visible         =   0   'False
         Width           =   345
      End
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   570
         Index           =   0
         Left            =   30
         TabIndex        =   1
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   15.75
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
         style_6         =   -1
         font_6          =   0
         Animator_5      =   0
         Blinker_5       =   0
         list[3]_4       =   7
         ClassName_7     =   "CCWDrawObj"
         opts_7          =   60
         C[0]_7          =   65535
         C[1]_7          =   65535
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "UMac"
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   65535
         C[1]_9          =   65535
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "UMac"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   255
         C[1]_11         =   255
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   255
         B_12            =   255
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   255
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   255
         Name_15         =   "Light"
         AllowSetColor_15=   -1  'True
         Animator_11     =   0
         Blinker_11      =   16
         ClassName_16    =   "CCWBlinker"
         Interval_16     =   600
         Enable_16       =   -1  'True
         EventID_16      =   7
         Obj_16          =   11
         varVarType_3    =   5
         Array[1]_2      =   17
         ClassName_17    =   "CCWEnumElt"
         opts_17         =   1
         Name_17         =   "On"
         frame_17        =   286
         DrawList_17     =   18
         ClassName_18    =   "CDrawList"
         count_18        =   4
         list[4]_18      =   19
         ClassName_19    =   "CCWDrawObj"
         opts_19         =   62
         C[0]_19         =   -2147483640
         C[1]_19         =   -2147483640
         Image_19        =   6
         Animator_19     =   0
         Blinker_19      =   0
         list[3]_18      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   62
         C[0]_20         =   65535
         C[1]_20         =   65535
         Image_20        =   8
         Animator_20     =   0
         Blinker_20      =   0
         list[2]_18      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   60
         C[0]_21         =   65535
         C[1]_21         =   65535
         Image_21        =   10
         Animator_21     =   0
         Blinker_21      =   0
         list[1]_18      =   22
         ClassName_22    =   "CCWDrawObj"
         opts_22         =   62
         C[0]_22         =   32768
         C[1]_22         =   32768
         Image_22        =   23
         ClassName_23    =   "CCWPiccListImage"
         opts_23         =   1280
         Rows_23         =   1
         Cols_23         =   1
         F_23            =   32768
         B_23            =   32768
         ColorReplaceWith_23=   8421504
         ColorReplace_23 =   8421504
         Tolerance_23    =   2
         UsePiccList_23  =   -1  'True
         PiccList_23     =   24
         ClassName_24    =   "CPiccListSquareLED"
         count_24        =   2
         list[2]_24      =   25
         ClassName_25    =   "CCWPicc"
         opts_25         =   62
         Image_25        =   0
         Animator_25     =   0
         Blinker_25      =   0
         Size_25.cx      =   30
         Size_25.cy      =   14
         Model_25.r      =   30
         Model_25.b      =   14
         Actual_25.r     =   82
         Actual_25.b     =   38
         Picc_25         =   412
         Color_25        =   32768
         Name_25         =   "Divot"
         list[1]_24      =   26
         ClassName_26    =   "CCWPicc"
         opts_26         =   62
         Image_26        =   0
         Animator_26     =   0
         Blinker_26      =   0
         Size_26.cx      =   30
         Size_26.cy      =   14
         Model_26.l      =   3
         Model_26.t      =   3
         Model_26.r      =   27
         Model_26.b      =   11
         Actual_26.l     =   3
         Actual_26.t     =   3
         Actual_26.r     =   79
         Actual_26.b     =   35
         Picc_26         =   441
         Color_26        =   32768
         Name_26         =   "Light"
         AllowSetColor_26=   -1  'True
         Animator_22     =   0
         Blinker_22      =   0
         varVarType_17   =   5
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
         Array[1]_1      =   22
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   570
         Index           =   4
         Left            =   6165
         TabIndex        =   7
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
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
         style_6         =   6
         font_6          =   0
         Animator_5      =   0
         Blinker_5       =   0
         list[3]_4       =   7
         ClassName_7     =   "CCWDrawObj"
         opts_7          =   60
         C[0]_7          =   32768
         C[1]_7          =   32768
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "MENISCUS"
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   8421504
         C[1]_9          =   8421504
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "MENISCUS"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   5987163
         C[1]_11         =   5987163
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   5987163
         B_12            =   5987163
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   5987163
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   5987163
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
         C[0]_19         =   32768
         C[1]_19         =   32768
         Image_19        =   8
         Animator_19     =   0
         Blinker_19      =   0
         list[2]_17      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   60
         C[0]_20         =   8421504
         C[1]_20         =   8421504
         Image_20        =   10
         Animator_20     =   0
         Blinker_20      =   0
         list[1]_17      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   62
         C[0]_21         =   65280
         C[1]_21         =   65280
         Image_21        =   22
         ClassName_22    =   "CCWPiccListImage"
         opts_22         =   1280
         Rows_22         =   1
         Cols_22         =   1
         F_22            =   65280
         B_22            =   65280
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
         Actual_24.r     =   82
         Actual_24.b     =   38
         Picc_24         =   412
         Color_24        =   65280
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
         Actual_25.r     =   79
         Actual_25.b     =   35
         Picc_25         =   441
         Color_25        =   65280
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
         mechAction_1    =   3
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
         Height          =   570
         Index           =   2
         Left            =   2520
         TabIndex        =   3
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   15.75
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
         style_6         =   17301851
         font_6          =   0
         Animator_5      =   0
         Blinker_5       =   0
         list[3]_4       =   7
         ClassName_7     =   "CCWDrawObj"
         opts_7          =   60
         C[0]_7          =   65535
         C[1]_7          =   65535
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "DIO"
         style_8         =   68
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   65535
         C[1]_9          =   65535
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "DIO"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   255
         C[1]_11         =   255
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   255
         B_12            =   255
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   255
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   255
         Name_15         =   "Light"
         AllowSetColor_15=   -1  'True
         Animator_11     =   0
         Blinker_11      =   16
         ClassName_16    =   "CCWBlinker"
         Interval_16     =   600
         Enable_16       =   -1  'True
         EventID_16      =   7
         Obj_16          =   11
         varVarType_3    =   5
         Array[1]_2      =   17
         ClassName_17    =   "CCWEnumElt"
         opts_17         =   1
         Name_17         =   "On"
         frame_17        =   286
         DrawList_17     =   18
         ClassName_18    =   "CDrawList"
         count_18        =   4
         list[4]_18      =   19
         ClassName_19    =   "CCWDrawObj"
         opts_19         =   62
         C[0]_19         =   -2147483640
         C[1]_19         =   -2147483640
         Image_19        =   6
         Animator_19     =   0
         Blinker_19      =   0
         list[3]_18      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   62
         C[0]_20         =   65535
         C[1]_20         =   65535
         Image_20        =   8
         Animator_20     =   0
         Blinker_20      =   0
         list[2]_18      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   60
         C[0]_21         =   65535
         C[1]_21         =   65535
         Image_21        =   10
         Animator_21     =   0
         Blinker_21      =   0
         list[1]_18      =   22
         ClassName_22    =   "CCWDrawObj"
         opts_22         =   62
         C[0]_22         =   32768
         C[1]_22         =   32768
         Image_22        =   23
         ClassName_23    =   "CCWPiccListImage"
         opts_23         =   1280
         Rows_23         =   1
         Cols_23         =   1
         F_23            =   32768
         B_23            =   32768
         ColorReplaceWith_23=   8421504
         ColorReplace_23 =   8421504
         Tolerance_23    =   2
         UsePiccList_23  =   -1  'True
         PiccList_23     =   24
         ClassName_24    =   "CPiccListSquareLED"
         count_24        =   2
         list[2]_24      =   25
         ClassName_25    =   "CCWPicc"
         opts_25         =   62
         Image_25        =   0
         Animator_25     =   0
         Blinker_25      =   0
         Size_25.cx      =   30
         Size_25.cy      =   14
         Model_25.r      =   30
         Model_25.b      =   14
         Actual_25.r     =   82
         Actual_25.b     =   38
         Picc_25         =   412
         Color_25        =   32768
         Name_25         =   "Divot"
         list[1]_24      =   26
         ClassName_26    =   "CCWPicc"
         opts_26         =   62
         Image_26        =   0
         Animator_26     =   0
         Blinker_26      =   0
         Size_26.cx      =   30
         Size_26.cy      =   14
         Model_26.l      =   3
         Model_26.t      =   3
         Model_26.r      =   27
         Model_26.b      =   11
         Actual_26.l     =   3
         Actual_26.t     =   3
         Actual_26.r     =   79
         Actual_26.b     =   35
         Picc_26         =   441
         Color_26        =   32768
         Name_26         =   "Light"
         AllowSetColor_26=   -1  'True
         Animator_22     =   0
         Blinker_22      =   0
         varVarType_17   =   5
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
         Array[1]_1      =   22
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
      Begin CWUIControlsLib.CWButton CWB_Stat 
         Height          =   570
         Index           =   1
         Left            =   1275
         TabIndex        =   2
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   15.75
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
         C[0]_7          =   65535
         C[1]_7          =   65535
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "HEAD"
         style_8         =   24
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   65535
         C[1]_9          =   65535
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "HEAD"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   255
         C[1]_11         =   255
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   255
         B_12            =   255
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   255
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   255
         Name_15         =   "Light"
         AllowSetColor_15=   -1  'True
         Animator_11     =   0
         Blinker_11      =   16
         ClassName_16    =   "CCWBlinker"
         Interval_16     =   600
         Enable_16       =   -1  'True
         EventID_16      =   7
         Obj_16          =   11
         varVarType_3    =   5
         Array[1]_2      =   17
         ClassName_17    =   "CCWEnumElt"
         opts_17         =   1
         Name_17         =   "On"
         frame_17        =   286
         DrawList_17     =   18
         ClassName_18    =   "CDrawList"
         count_18        =   4
         list[4]_18      =   19
         ClassName_19    =   "CCWDrawObj"
         opts_19         =   62
         C[0]_19         =   -2147483640
         C[1]_19         =   -2147483640
         Image_19        =   6
         Animator_19     =   0
         Blinker_19      =   0
         list[3]_18      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   62
         C[0]_20         =   65535
         C[1]_20         =   65535
         Image_20        =   8
         Animator_20     =   0
         Blinker_20      =   0
         list[2]_18      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   60
         C[0]_21         =   65535
         C[1]_21         =   65535
         Image_21        =   10
         Animator_21     =   0
         Blinker_21      =   0
         list[1]_18      =   22
         ClassName_22    =   "CCWDrawObj"
         opts_22         =   62
         C[0]_22         =   32768
         C[1]_22         =   32768
         Image_22        =   23
         ClassName_23    =   "CCWPiccListImage"
         opts_23         =   1280
         Rows_23         =   1
         Cols_23         =   1
         F_23            =   32768
         B_23            =   32768
         ColorReplaceWith_23=   8421504
         ColorReplace_23 =   8421504
         Tolerance_23    =   2
         UsePiccList_23  =   -1  'True
         PiccList_23     =   24
         ClassName_24    =   "CPiccListSquareLED"
         count_24        =   2
         list[2]_24      =   25
         ClassName_25    =   "CCWPicc"
         opts_25         =   62
         Image_25        =   0
         Animator_25     =   0
         Blinker_25      =   0
         Size_25.cx      =   30
         Size_25.cy      =   14
         Model_25.r      =   30
         Model_25.b      =   14
         Actual_25.r     =   82
         Actual_25.b     =   38
         Picc_25         =   412
         Color_25        =   32768
         Name_25         =   "Divot"
         list[1]_24      =   26
         ClassName_26    =   "CCWPicc"
         opts_26         =   62
         Image_26        =   0
         Animator_26     =   0
         Blinker_26      =   0
         Size_26.cx      =   30
         Size_26.cy      =   14
         Model_26.l      =   3
         Model_26.t      =   3
         Model_26.r      =   27
         Model_26.b      =   11
         Actual_26.l     =   3
         Actual_26.t     =   3
         Actual_26.r     =   79
         Actual_26.b     =   35
         Picc_26         =   441
         Color_26        =   32768
         Name_26         =   "Light"
         AllowSetColor_26=   -1  'True
         Animator_22     =   0
         Blinker_22      =   0
         varVarType_17   =   5
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
         Array[1]_1      =   22
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
      Begin CWUIControlsLib.CWButton CWB_Jetting 
         Height          =   570
         Left            =   4965
         TabIndex        =   35
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
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
         style_6         =   6
         font_6          =   0
         Animator_5      =   0
         Blinker_5       =   0
         list[3]_4       =   7
         ClassName_7     =   "CCWDrawObj"
         opts_7          =   60
         C[0]_7          =   32768
         C[1]_7          =   32768
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "JETING"
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   8421504
         C[1]_9          =   8421504
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "JETTING"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   5987163
         C[1]_11         =   5987163
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   5987163
         B_12            =   5987163
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   5987163
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   5987163
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
         C[0]_19         =   32768
         C[1]_19         =   32768
         Image_19        =   8
         Animator_19     =   0
         Blinker_19      =   0
         list[2]_17      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   60
         C[0]_20         =   8421504
         C[1]_20         =   8421504
         Image_20        =   10
         Animator_20     =   0
         Blinker_20      =   0
         list[1]_17      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   62
         C[0]_21         =   65280
         C[1]_21         =   65280
         Image_21        =   22
         ClassName_22    =   "CCWPiccListImage"
         opts_22         =   1280
         Rows_22         =   1
         Cols_22         =   1
         F_22            =   65280
         B_22            =   65280
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
         Actual_24.r     =   82
         Actual_24.b     =   38
         Picc_24         =   412
         Color_24        =   65280
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
         Actual_25.r     =   79
         Actual_25.b     =   35
         Picc_25         =   441
         Color_25        =   65280
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
         mechAction_1    =   3
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
         Height          =   570
         Index           =   3
         Left            =   3750
         TabIndex        =   56
         Top             =   30
         Width           =   1230
         _Version        =   393218
         _ExtentX        =   2170
         _ExtentY        =   1005
         _StockProps     =   68
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   15.75
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
         style_6         =   17301851
         font_6          =   0
         Animator_5      =   0
         Blinker_5       =   0
         list[3]_4       =   7
         ClassName_7     =   "CCWDrawObj"
         opts_7          =   60
         C[0]_7          =   65535
         C[1]_7          =   65535
         Image_7         =   8
         ClassName_8     =   "CCWTextImage"
         szText_8        =   "TRIG"
         style_8         =   68
         font_8          =   0
         Animator_7      =   0
         Blinker_7       =   0
         list[2]_4       =   9
         ClassName_9     =   "CCWDrawObj"
         opts_9          =   62
         C[0]_9          =   65535
         C[1]_9          =   65535
         Image_9         =   10
         ClassName_10    =   "CCWTextImage"
         szText_10       =   "TRIG"
         font_10         =   0
         Animator_9      =   0
         Blinker_9       =   0
         list[1]_4       =   11
         ClassName_11    =   "CCWDrawObj"
         opts_11         =   62
         C[0]_11         =   255
         C[1]_11         =   255
         Image_11        =   12
         ClassName_12    =   "CCWPiccListImage"
         opts_12         =   1280
         Rows_12         =   1
         Cols_12         =   1
         F_12            =   255
         B_12            =   255
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
         Actual_14.r     =   82
         Actual_14.b     =   38
         Picc_14         =   412
         Color_14        =   255
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
         Actual_15.r     =   79
         Actual_15.b     =   35
         Picc_15         =   441
         Color_15        =   255
         Name_15         =   "Light"
         AllowSetColor_15=   -1  'True
         Animator_11     =   0
         Blinker_11      =   16
         ClassName_16    =   "CCWBlinker"
         Interval_16     =   600
         Enable_16       =   -1  'True
         EventID_16      =   7
         Obj_16          =   11
         varVarType_3    =   5
         Array[1]_2      =   17
         ClassName_17    =   "CCWEnumElt"
         opts_17         =   1
         Name_17         =   "On"
         frame_17        =   286
         DrawList_17     =   18
         ClassName_18    =   "CDrawList"
         count_18        =   4
         list[4]_18      =   19
         ClassName_19    =   "CCWDrawObj"
         opts_19         =   62
         C[0]_19         =   -2147483640
         C[1]_19         =   -2147483640
         Image_19        =   6
         Animator_19     =   0
         Blinker_19      =   0
         list[3]_18      =   20
         ClassName_20    =   "CCWDrawObj"
         opts_20         =   62
         C[0]_20         =   65535
         C[1]_20         =   65535
         Image_20        =   8
         Animator_20     =   0
         Blinker_20      =   0
         list[2]_18      =   21
         ClassName_21    =   "CCWDrawObj"
         opts_21         =   60
         C[0]_21         =   65535
         C[1]_21         =   65535
         Image_21        =   10
         Animator_21     =   0
         Blinker_21      =   0
         list[1]_18      =   22
         ClassName_22    =   "CCWDrawObj"
         opts_22         =   62
         C[0]_22         =   32768
         C[1]_22         =   32768
         Image_22        =   23
         ClassName_23    =   "CCWPiccListImage"
         opts_23         =   1280
         Rows_23         =   1
         Cols_23         =   1
         F_23            =   32768
         B_23            =   32768
         ColorReplaceWith_23=   8421504
         ColorReplace_23 =   8421504
         Tolerance_23    =   2
         UsePiccList_23  =   -1  'True
         PiccList_23     =   24
         ClassName_24    =   "CPiccListSquareLED"
         count_24        =   2
         list[2]_24      =   25
         ClassName_25    =   "CCWPicc"
         opts_25         =   62
         Image_25        =   0
         Animator_25     =   0
         Blinker_25      =   0
         Size_25.cx      =   30
         Size_25.cy      =   14
         Model_25.r      =   30
         Model_25.b      =   14
         Actual_25.r     =   82
         Actual_25.b     =   38
         Picc_25         =   412
         Color_25        =   32768
         Name_25         =   "Divot"
         list[1]_24      =   26
         ClassName_26    =   "CCWPicc"
         opts_26         =   62
         Image_26        =   0
         Animator_26     =   0
         Blinker_26      =   0
         Size_26.cx      =   30
         Size_26.cy      =   14
         Model_26.l      =   3
         Model_26.t      =   3
         Model_26.r      =   27
         Model_26.b      =   11
         Actual_26.l     =   3
         Actual_26.t     =   3
         Actual_26.r     =   79
         Actual_26.b     =   35
         Picc_26         =   441
         Color_26        =   32768
         Name_26         =   "Light"
         AllowSetColor_26=   -1  'True
         Animator_22     =   0
         Blinker_22      =   0
         varVarType_17   =   5
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
         Array[1]_1      =   22
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
      Begin VB.Label Label3 
         Caption         =   "Recipe File :"
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
         Left            =   10290
         TabIndex        =   5
         Top             =   330
         Visible         =   0   'False
         Width           =   1680
      End
   End
   Begin Threed.SSPanel SSPanel2 
      Align           =   4  '오른쪽 맞춤
      Height          =   14505
      Left            =   14925
      TabIndex        =   20
      Top             =   630
      Width           =   1950
      _Version        =   65536
      _ExtentX        =   3440
      _ExtentY        =   25585
      _StockProps     =   15
      BackColor       =   -2147483648
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton cmdFunc 
         Caption         =   "LineScan검사"
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
         Index           =   5
         Left            =   75
         Picture         =   "MDI_Main.frx":109E
         Style           =   1  '그래픽
         TabIndex        =   68
         Top             =   3690
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "DropWatcher"
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
         Index           =   4
         Left            =   75
         Picture         =   "MDI_Main.frx":1628
         Style           =   1  '그래픽
         TabIndex        =   67
         Top             =   3075
         Width           =   1845
      End
      Begin VB.CommandButton cmdAllAxisStop 
         BackColor       =   &H0080C0FF&
         Caption         =   "Motion ALL Stop"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   810
         Left            =   75
         Picture         =   "MDI_Main.frx":1BB2
         Style           =   1  '그래픽
         TabIndex        =   29
         Top             =   4275
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Head Zero Align"
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
         Index           =   8
         Left            =   75
         Picture         =   "MDI_Main.frx":213C
         Style           =   1  '그래픽
         TabIndex        =   28
         Top             =   2475
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "초기화"
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
         Index           =   0
         Left            =   60
         Picture         =   "MDI_Main.frx":26C6
         Style           =   1  '그래픽
         TabIndex        =   27
         Top             =   75
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "장비설정"
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
         Index           =   1
         Left            =   60
         Picture         =   "MDI_Main.frx":2C50
         Style           =   1  '그래픽
         TabIndex        =   26
         Top             =   675
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         BackColor       =   &H00C0C0FF&
         Caption         =   "Program Quit"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   780
         Index           =   2
         Left            =   60
         TabIndex        =   25
         Top             =   13545
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "I/O 조작"
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
         Index           =   3
         Left            =   60
         Picture         =   "MDI_Main.frx":3552
         Style           =   1  '그래픽
         TabIndex        =   24
         Top             =   1875
         Width           =   1845
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Teaching Pandant"
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
         Index           =   6
         Left            =   60
         Picture         =   "MDI_Main.frx":3ADC
         Style           =   1  '그래픽
         TabIndex        =   23
         Top             =   1275
         Width           =   1845
      End
      Begin Threed.SSPanel sspInkLevel 
         Height          =   1935
         Left            =   45
         TabIndex        =   21
         Top             =   11235
         Width           =   1830
         _Version        =   65536
         _ExtentX        =   3228
         _ExtentY        =   3413
         _StockProps     =   15
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
         Begin CWUIControlsLib.CWSlide cwsInkLevel 
            Height          =   1140
            Left            =   75
            TabIndex        =   54
            Top             =   465
            Width           =   1710
            _Version        =   393218
            _ExtentX        =   3016
            _ExtentY        =   2011
            _StockProps     =   68
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Reset_0         =   0   'False
            CompatibleVers_0=   393218
            Slider_0        =   1
            ClassName_1     =   "CCWSlider"
            opts_1          =   2094
            C[0]_1          =   -2147483643
            BGImg_1         =   2
            ClassName_2     =   "CCWDrawObj"
            opts_2          =   62
            Image_2         =   3
            ClassName_3     =   "CCWPictImage"
            opts_3          =   1280
            Rows_3          =   1
            Cols_3          =   1
            Pict_3          =   286
            F_3             =   -2147483633
            B_3             =   -2147483633
            ColorReplaceWith_3=   8421504
            ColorReplace_3  =   8421504
            Tolerance_3     =   2
            Animator_2      =   0
            Blinker_2       =   0
            BFImg_1         =   4
            ClassName_4     =   "CCWDrawObj"
            opts_4          =   62
            C[0]_4          =   13349801
            Image_4         =   5
            ClassName_5     =   "CCWPictImage"
            opts_5          =   1280
            Rows_5          =   1
            Cols_5          =   1
            Pict_5          =   420
            F_5             =   13349801
            B_5             =   -2147483633
            ColorReplaceWith_5=   8421504
            ColorReplace_5  =   8421504
            Tolerance_5     =   2
            Animator_4      =   0
            Blinker_4       =   0
            style_1         =   10
            Label_1         =   6
            ClassName_6     =   "CCWDrawObj"
            opts_6          =   62
            C[0]_6          =   -2147483640
            Image_6         =   7
            ClassName_7     =   "CCWTextImage"
            style_7         =   1
            font_7          =   0
            Animator_6      =   0
            Blinker_6       =   0
            Border_1        =   8
            ClassName_8     =   "CCWDrawObj"
            opts_8          =   60
            Image_8         =   9
            ClassName_9     =   "CCWPictImage"
            opts_9          =   1280
            Rows_9          =   1
            Cols_9          =   1
            Pict_9          =   25
            F_9             =   -2147483633
            B_9             =   -2147483633
            ColorReplaceWith_9=   8421504
            ColorReplace_9  =   8421504
            Tolerance_9     =   2
            Animator_8      =   0
            Blinker_8       =   0
            FillBound_1     =   10
            ClassName_10    =   "CCWGuiObject"
            opts_10         =   60
            FillTok_1       =   11
            ClassName_11    =   "CCWGuiObject"
            opts_11         =   62
            Axis_1          =   12
            ClassName_12    =   "CCWAxis"
            opts_12         =   575
            Name_12         =   "Axis"
            Orientation_12  =   2451
            format_12       =   13
            ClassName_13    =   "CCWFormat"
            Scale_12        =   14
            ClassName_14    =   "CCWScale"
            opts_14         =   122880
            rMin_14         =   8
            rMax_14         =   67
            dMax_14         =   100
            discInterval_14 =   1
            Radial_12       =   0
            Enum_12         =   15
            ClassName_15    =   "CCWEnum"
            Editor_15       =   16
            ClassName_16    =   "CCWEnumArrayEditor"
            Owner_16        =   12
            Font_12         =   0
            tickopts_12     =   2702
            major_12        =   100
            minor_12        =   50
            Caption_12      =   17
            ClassName_17    =   "CCWDrawObj"
            opts_17         =   62
            C[0]_17         =   -2147483640
            Image_17        =   18
            ClassName_18    =   "CCWTextImage"
            style_18        =   1
            font_18         =   0
            Animator_17     =   0
            Blinker_17      =   0
            DrawLst_1       =   19
            ClassName_19    =   "CDrawList"
            count_19        =   10
            list[10]_19     =   8
            list[9]_19      =   20
            ClassName_20    =   "CCWThumb"
            opts_20         =   1048639
            Name_20         =   "Pointer-1"
            C[0]_20         =   16448250
            C[2]_20         =   14434560
            Image_20        =   21
            ClassName_21    =   "CCWPictImage"
            opts_21         =   1280
            Rows_21         =   1
            Cols_21         =   1
            Pict_21         =   286
            F_21            =   16448250
            B_21            =   -2147483633
            ColorReplaceWith_21=   8421504
            ColorReplace_21 =   8421504
            Tolerance_21    =   2
            Animator_20     =   0
            Blinker_20      =   0
            Value_20        =   1
            FillStyle_20    =   1
            Fill_20         =   22
            ClassName_22    =   "CCWDrawObj"
            opts_22         =   62
            C[0]_22         =   14434560
            Image_22        =   23
            ClassName_23    =   "CCWPictImage"
            opts_23         =   1280
            Rows_23         =   1
            Cols_23         =   1
            Pict_23         =   420
            F_23            =   14434560
            B_23            =   -2147483633
            ColorReplaceWith_23=   8421504
            ColorReplace_23 =   8421504
            Tolerance_23    =   2
            Animator_22     =   0
            Blinker_22      =   0
            list[8]_19      =   12
            list[7]_19      =   6
            list[6]_19      =   11
            list[5]_19      =   4
            list[4]_19      =   24
            ClassName_24    =   "CCWDrawObj"
            opts_24         =   60
            Image_24        =   25
            ClassName_25    =   "CCWPictImage"
            opts_25         =   1280
            Rows_25         =   1
            Cols_25         =   1
            Pict_25         =   286
            F_25            =   -2147483633
            B_25            =   -2147483633
            ColorReplaceWith_25=   8421504
            ColorReplace_25 =   8421504
            Tolerance_25    =   2
            Animator_24     =   0
            Blinker_24      =   0
            list[3]_19      =   26
            ClassName_26    =   "CCWDrawObj"
            opts_26         =   60
            Image_26        =   27
            ClassName_27    =   "CCWPictImage"
            opts_27         =   1280
            Rows_27         =   1
            Cols_27         =   1
            Pict_27         =   286
            F_27            =   -2147483633
            B_27            =   -2147483633
            ColorReplaceWith_27=   8421504
            ColorReplace_27 =   8421504
            Tolerance_27    =   2
            Animator_26     =   0
            Blinker_26      =   0
            list[2]_19      =   28
            ClassName_28    =   "CCWDrawObj"
            opts_28         =   62
            Image_28        =   29
            ClassName_29    =   "CCWPictImage"
            opts_29         =   1280
            Rows_29         =   1
            Cols_29         =   1
            Pict_29         =   412
            F_29            =   -2147483633
            B_29            =   -2147483633
            ColorReplaceWith_29=   8421504
            ColorReplace_29 =   8421504
            Tolerance_29    =   2
            Animator_28     =   0
            Blinker_28      =   0
            list[1]_19      =   2
            Ptrs_1          =   30
            ClassName_30    =   "CCWPointerArray"
            Array_30        =   1
            Editor_30       =   31
            ClassName_31    =   "CCWPointerArrayEditor"
            Owner_31        =   1
            Array[0]_30     =   20
            Bindings_1      =   32
            ClassName_32    =   "CCWBindingHolderArray"
            Editor_32       =   33
            ClassName_33    =   "CCWBindingHolderArrayEditor"
            Owner_33        =   1
            Stats_1         =   34
            ClassName_34    =   "CCWStats"
            doInc_1         =   24
            doDec_1         =   26
            doFrame_1       =   28
         End
         Begin VB.Label lblInkLevel 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Level: --%"
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
            Left            =   615
            TabIndex        =   55
            Top             =   1605
            Width           =   810
         End
         Begin VB.Image Image1 
            Height          =   240
            Left            =   45
            Picture         =   "MDI_Main.frx":4066
            Top             =   30
            Width           =   240
         End
         Begin VB.Label lbl_DI_Title 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "INK Tank Level"
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
            Left            =   420
            TabIndex        =   22
            Top             =   30
            Width           =   1245
         End
      End
      Begin Threed.SSPanel SSPanel6 
         Height          =   2505
         Left            =   60
         TabIndex        =   36
         Top             =   7695
         Width           =   1830
         _Version        =   65536
         _ExtentX        =   3228
         _ExtentY        =   4419
         _StockProps     =   15
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
         Begin VB.CommandButton cmdTimerJetContinue 
            Caption         =   "TimerJet"
            Height          =   435
            Left            =   120
            TabIndex        =   52
            Top             =   1980
            Width           =   1620
         End
         Begin VB.TextBox txtTimerJet_DelayTime_sec 
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
            Left            =   105
            TabIndex        =   40
            Text            =   "0.0"
            Top             =   435
            Width           =   780
         End
         Begin VB.OptionButton optTimerJet 
            Caption         =   "Start"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Index           =   0
            Left            =   105
            Style           =   1  '그래픽
            TabIndex        =   39
            Top             =   885
            Width           =   1620
         End
         Begin VB.OptionButton optTimerJet 
            Caption         =   "Stop"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Index           =   1
            Left            =   120
            Style           =   1  '그래픽
            TabIndex        =   38
            Top             =   1380
            Value           =   -1  'True
            Width           =   1620
         End
         Begin VB.Label lblTime_sec 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "--[s]"
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
            Left            =   975
            TabIndex        =   41
            Top             =   480
            Width           =   315
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Timer Jetting"
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
            Left            =   420
            TabIndex        =   37
            Top             =   30
            Width           =   1125
         End
         Begin VB.Image Image2 
            Height          =   240
            Left            =   45
            Picture         =   "MDI_Main.frx":45F0
            Top             =   30
            Width           =   240
         End
      End
      Begin Threed.SSPanel SSPanel7 
         Height          =   2550
         Left            =   60
         TabIndex        =   42
         Top             =   5115
         Width           =   1830
         _Version        =   65536
         _ExtentX        =   3228
         _ExtentY        =   4498
         _StockProps     =   15
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
         Begin VB.CheckBox chkSupplySovent 
            BackColor       =   &H00D8E9EC&
            Caption         =   "Solvent 주입"
            Height          =   180
            Left            =   105
            TabIndex        =   53
            Top             =   345
            Width           =   1575
         End
         Begin VB.CommandButton cmdPurgeContinue 
            Caption         =   "Purge"
            Height          =   435
            Left            =   105
            TabIndex        =   51
            Top             =   1980
            Width           =   1620
         End
         Begin VB.OptionButton optPurge 
            Caption         =   "Stop"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Index           =   1
            Left            =   120
            Style           =   1  '그래픽
            TabIndex        =   47
            Top             =   1440
            Value           =   -1  'True
            Width           =   1620
         End
         Begin VB.OptionButton optPurge 
            Caption         =   "Start"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Index           =   0
            Left            =   105
            Style           =   1  '그래픽
            TabIndex        =   46
            Top             =   945
            Width           =   1620
         End
         Begin VB.TextBox txtPurgeTime_sec 
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
            Left            =   105
            TabIndex        =   44
            Text            =   "0.0"
            Top             =   615
            Width           =   780
         End
         Begin VB.Label lblPurgeTime_sec 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "--[s]"
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
            Left            =   975
            TabIndex        =   45
            Top             =   660
            Width           =   315
         End
         Begin VB.Image Image3 
            Height          =   240
            Left            =   45
            Picture         =   "MDI_Main.frx":4B7A
            Top             =   30
            Width           =   240
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Purge"
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
            Left            =   420
            TabIndex        =   43
            Top             =   30
            Width           =   510
         End
      End
      Begin Threed.SSPanel SSPanel3 
         Height          =   975
         Left            =   60
         TabIndex        =   48
         Top             =   10230
         Width           =   1830
         _Version        =   65536
         _ExtentX        =   3228
         _ExtentY        =   1720
         _StockProps     =   15
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
         Begin VB.CommandButton cmdMoveCappingPos 
            Caption         =   "이동"
            Height          =   435
            Left            =   120
            TabIndex        =   50
            Top             =   435
            Width           =   1620
         End
         Begin VB.Image Image4 
            Height          =   240
            Left            =   45
            Picture         =   "MDI_Main.frx":5104
            Top             =   30
            Width           =   240
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  '투명
            Caption         =   "Move Capping"
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
            Left            =   420
            TabIndex        =   49
            Top             =   30
            Width           =   1185
         End
      End
   End
   Begin VB.Menu mnuPopUp 
      Caption         =   "PupUp_0"
      Visible         =   0   'False
      WindowList      =   -1  'True
      Begin VB.Menu mnuSubMenu_0 
         Caption         =   "a"
      End
      Begin VB.Menu mnuSubMenu_1 
         Caption         =   "Menu_1"
      End
      Begin VB.Menu mnuSubMenu_2 
         Caption         =   "Menu_2"
      End
      Begin VB.Menu mnuSubMenu_3 
         Caption         =   "Menu_3"
      End
      Begin VB.Menu mnuSubMenu_4 
         Caption         =   "Menu_4"
      End
      Begin VB.Menu mnuSubMenu_5 
         Caption         =   "Menu_5"
      End
   End
End
Attribute VB_Name = "MDI_Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim fbStopPurge As Boolean
Dim fbStopTimerJet As Boolean

Private Sub cmdAllAxisStop_Click()

    PComm32_AxisJogStop 0, True

End Sub



Private Sub cmdFunc_Click(Index As Integer)

    Select Case Index
        Case 0
            Load frmInit
            frmInit.Show
        Case 1
            User_PopUpMenu frmMotion, frmMotion.mnuSysMenu, Me.cmdFunc(1)
        Case 2
            
            If MsgBox("Program을 종료 하시겠습니까?", vbQuestion + vbYesNo) = vbNo Then
                Exit Sub
            End If
            
            Call Init_SylinderPos
            
            Load frmEnding
            frmEnding.Show
            
'''''            If PComm32_Init_Flag = True Then
'''''                If MsgBox("Head Unit을 Capping Position으로 보내시겠습니까?", vbYesNo + vbQuestion) = vbYes Then
'''''                    Call MoveCappingPos
'''''                End If
'''''
'''''                PComm32_DOUT oSm_HeadUpDn_Mtr1_Break, 0 'Breaking On
'''''                PComm32_DOUT oSm_HeadUpDn_Mtr2_Break, 0
'''''                PComm32_DOUT oSm_HeadUpDn_Mtr3_Break, 0
'''''                PComm32_DOUT oSm_CameraUpDn_Mtr_Break, 0
'''''                PComm32_DOUT oSm_CapCLnZAxisBrkRelease, 1: OutputDebugString "Z Axis All Beake LOCKed"
'''''            End If
            
            ClosePmacDevice PComm32_DeviceID: OutputDebugString "PComm32 Close"
            ClosePmacDevice PComm32_ClifferID: OutputDebugString "Cliffer Close"
            
            Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SEND", "CMD_NO", "EXE_CLOSE")
            DelayWait 3, True
            KillPID HEADIF_APP_ProcID '
            OutputDebugString "Program 종료"
            Unload frmEnding
            'Change_Resolution 1600, 1200: OutputDebugString "화면 해상도변경1600x1200"
            End
            
        Case 3
            Load frmIO
            frmIO.Show
        Case 4
            Load frmDropWatcher
            frmDropWatcher.Show
        Case 5
            Load frmLineScan
            frmLineScan.Show
        Case 6
            User_PopUpMenu frmMotion, frmMotion.mnuMotionPandant, Me.cmdFunc(6)
        Case 7
            AD4212_ZeroSet MDI_Main.MSComm_Balancer
            MsgBox "Complete!!", vbInformation
        Case 8
            Load frmHeadAlign
            frmHeadAlign.Show
    End Select

End Sub

Private Sub cmdMoveCappingPos_Click()
    
    Call frmRunning.Move_CappingPos
    
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
On Error GoTo syserr:
    cmdPurgeContinue.Caption = "Purge 진행중"
    
    If Me.chkSupplySovent.Value = 1 Then
        PComm32_DOUT oSg_Cliffer_SolventPump, 1, PComm32_ClifferID
    End If
            
    Call INK_Supply.Purge
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdPurgeContinue_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo syserr:
    cmdPurgeContinue.Caption = "Purge"
    Call INK_Supply.Meniscus
    
    PComm32_DOUT oSg_Cliffer_SolventPump, 0, PComm32_ClifferID
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub MDIForm_Load()

    Me.Left = 0
    Me.Top = 0
    Me.Width = 19300 '19200 '1280
    Me.Height = 15400 '15360 '1024

End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
On Error GoTo syserr:
    PComm32_DOUT oSg_Cliffer_Reservior_Heater, 0, PComm32_ClifferID
    PComm32_DOUT oSg_Cliffer_Head_Heater, 0, PComm32_ClifferID
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optPurge_Click(Index As Integer)

On Error GoTo syserr:

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
            frmRunning.optPurge(1).Value = 1
        Case 1
            fbStopPurge = True
    End Select
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optTimerJet_Click(Index As Integer)
On Error GoTo syserr:

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
        frmRunning.optTimerJet(1).Value = 1
    Case 1
        fbStopTimerJet = True
        
End Select
    
    Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Sub TimerStatus_Timer()
Static bINK As Boolean

    'D212_PLSperMM(0) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(0)", "0.004") '0.0001
    'D212_PLSperMM(1) = GetSetting("SRUKAWA,D212", "UNIT", "D212_PlsPerMM(1)", "0.004")
    'frmRunning.MSFlexGridVolt.Visible = True
    
    'ctrlEnable True, frmRunning
    
    Me.lblDate.Caption = Now

    Me.CWB_Stat(0).Value = PComm32_Init_Flag
    Me.CWB_Stat(1).Value = PI_HEAD_BootOK
    Me.CWB_Stat(2).Value = PCI7230_Init_OK
    Me.CWB_Stat(3).Value = Trig_Connected

    'ctrlEnable True, frmRunning
    'PComm32_Init_Flag = True
    
'    If (gPrintPara.dADCFullValue > 0) And (gPrintPara.dADCEmptyValue >= 0) Then
'        gPrintPara.dGet_ADCValue(0) = 512
'        Me.cwsInkLevel.Value = (gPrintPara.dGet_ADCValue(0) / (gPrintPara.dADCFullValue - gPrintPara.dADCEmptyValue)) * 100
'        lblInkLevel.Caption = "Level= " & Format(Me.cwsInkLevel.Value, "0") & "%"
'    End If
        
    If PComm32_Init_Flag = True Then
        Call PComm32_PositionReadAllAxis(PComm32_DeviceID)
        Call PComm32_PositionReadAllAxis(PComm32_ClifferID)
        Call Get_ADCVAlue(PComm32_ClifferID)
        
        Me.lbl_XPos.Caption = "X=" & Format(PComm32_Position_mm(0), "0.000") & "mm"
        Me.lbl_YPos.Caption = "Y=" & Format(PComm32_Position_mm(1), "0.000") & "mm"
        Me.lbl_TPos.Caption = "T=" & Format(PComm32_Position_mm(2), "0.000") & "°"
        Me.lbl_HdZPos.Caption = "HdZ=" & Format(PComm32_Position_mm(3), "0.000") & "mm"
        Me.lbl_RvZPos.Caption = "RvZ=" & Format(PComm32_Position_mm(7), "0.000") & "mm"
        
        Me.lbl_KMZPos.Caption = "KMZ=" & Format(PComm32_Position_mm(8), "0.000") & "mm"
        Me.lblKMT1Pos.Caption = "KMT1=" & Format(PComm32_Position_mm(9), "0.000") & "°"
        Me.lblKMT2Pos.Caption = "KMT2=" & Format(PComm32_Position_mm(10), "0.000") & "°"
        Me.lbl_DWPos.Caption = "DWy=" & Format(PComm32_Position_mm(11), "0.000") & "mm"
        Me.lbl_KMXPos.Caption = "KMX=" & Format(PComm32_Position_mm(12), "0.000") & "mm"
                
        Me.lblQHeadZ_Pos.Caption = "QHdZ=" & Format(Cliffer_Position_mm(0), "0.000") & "mm"
        Me.lblQHeadT_Pos.Caption = "QHdT=" & Format(Cliffer_Position_mm(1), "0.000") & "°"
        
        If g_nHeadType = nLG_Q Then
            dDeltaX# = gPrintPara.dPrintStart_Xmm - PComm32_Position_mm(0)
            dDeltaY# = PComm32_Position_mm(0) - gPrintPara.dPrintStart_Ymm
            
            frmRunning.txtPrintOriginXDistance_Xmm.Text = Format(dDeltaX#, "0.000")
            frmRunning.txtPrintOriginXDistance_Ymm.Text = Format(dDeltaY#, "0.000")
                    
            nMultiPleNzlNo% = (dDeltaX#) / ((gPrintPara.dCfgXPitch_um / 1000))
            nRealNzlNo% = gPrintPara.nSetStartNzlNo + (nMultiPleNzlNo% * gPrintPara.nSetMultiple_Value)
            
            strDisp$ = CStr(nMultiPleNzlNo% + 1) & " ( " & CStr(nRealNzlNo%) & " )"
            frmRunning.lblNzlNo.Caption = strDisp$
            
            If (gPrintPara.dADCFullValue - gPrintPara.dADCEmptyValue) > 0 Then
                If gPrintPara.nADCViewOption = 1 Then
                    dPercentage# = ((gPrintPara.dGet_ADCValue(0) - gPrintPara.dADCEmptyValue) / (gPrintPara.dADCFullValue - gPrintPara.dADCEmptyValue)) * 100
                    Me.cwsInkLevel.Value = dPercentage#
                    lblInkLevel.Caption = "Level= " & Format(dPercentage#, "0") & "[%]"
                Else
                    dCC# = ((gPrintPara.dGet_ADCValue(0) - gPrintPara.dADCEmptyValue) / (gPrintPara.dADCFullValue - gPrintPara.dADCEmptyValue)) * 60
                    Me.cwsInkLevel.Value = dCC#
                    lblInkLevel.Caption = "Level= " & Format(dCC#, "0") & "[cc]"
                End If
            End If
        End If
    Else
        Exit Sub
    End If
    
    Me.CWB_Stat(4).Value = fl_Meniscus
    Me.CWB_Jetting.Value = PI_HEAD_fl_Jetting
    
    Static nReadCnt As Integer
    Static nSeqNo As Integer
    Dim nDelayCnt As Integer
    nDelayCnt = 4
    
    Call PComm32_DIN_ReadAll(PComm32_ClifferID)
        
    If PComm32_Init_Flag = True Then
        If Cliffer_DIN_Bit(oSg_Cliffer_Head_Heater) = 1 Then
            frmRunning.lblHeaterOn(0).Caption = "ON"
        Else
            frmRunning.lblHeaterOn(0).Caption = "OFF"
        End If
        If Cliffer_DIN_Bit(oSg_Cliffer_Reservior_Heater) = 1 Then
            frmRunning.lblHeaterOn(1).Caption = "ON"
        Else
            frmRunning.lblHeaterOn(1).Caption = "OFF"
        End If
    End If
    
    If frmRunning.SSTab2.Tab = 3 Then
        Call PComm32_DIN_ReadAll(PComm32_ClifferID)
        Call PComm32_DOUT_ReadAll(PComm32_ClifferID)
        For i% = 0 To CLIFFER_IO_CNT Step 1
            If i% <= 8 Then
                frmRunning.chkIn(i%).Value = Cliffer_DIN_Bit(i%)
                frmRunning.chkOut(i%).Value = Cliffer_DIN_Bit(i%)
            End If
        Next i%
    End If
    
    frmRunning.lblADC_Value(0) = "ADC Ch1: " & Format(gPrintPara.dGet_ADCValue(0), "0")
    frmRunning.lblADC_Value(1) = "ADC Ch2: " & Format(gPrintPara.dGet_ADCValue(1), "0")
    
    If Me.MSComm_NX4.PortOpen = True Then
       'Call frmRunning.DisplayPrintParams
        'ctrlEnable True, frmRunning
        Select Case nSeqNo
            
            Case 0
                If nReadCnt = 0 Then
                    If Send_HeadTempCmd(MDI_Main.MSComm_NX4, 1, 1, 1) = False Then
                        nReadCnt = 0
                        nSeqNo = 2
                    Else
                        nReadCnt = 1
                    End If
                Else
                    nReadCnt = nReadCnt + 1
                    If nReadCnt > nDelayCnt Then
                        nReadCnt = 0
                        nSeqNo = 1
                    End If
                End If
            Case 1
                If nReadCnt = 0 Then
                    g_dGetHeadTemperature(0) = Read_HeadTemp(MDI_Main.MSComm_NX4, 1)
                    If g_dGetHeadTemperature(0) = -1 Then
                        nReadCnt = 0
                        nSeqNo = 2
                    Else
                        frmRunning.lblHeadTemp.Caption = "Head: " & Format(g_dGetHeadTemperature(0), "0.0") & " °C"
                        nReadCnt = 1
                    End If
                Else
                    nReadCnt = nReadCnt + 1
                    If nReadCnt > nDelayCnt Then
                        nReadCnt = 0
                        nSeqNo = 2
                    End If
                End If
            Case 2
                If nReadCnt = 0 Then
                    If Send_HeadTempCmd(MDI_Main.MSComm_NX4, 2, 1, 1) = False Then
                        nReadCnt = 0
                        nSeqNo = 0
                    Else
                        nReadCnt = 1
                    End If
                Else
                    nReadCnt = nReadCnt + 1
                    If nReadCnt > nDelayCnt Then
                        nReadCnt = 0
                        nSeqNo = 3
                    End If
                End If
            Case 3
                If nReadCnt = 0 Then
                    g_dGetHeadTemperature(1) = Read_HeadTemp(MDI_Main.MSComm_NX4, 2)
                    
                    If g_dGetHeadTemperature(1) = -1 Then
                        nReadCnt = 0
                        nSeqNo = 0
                    Else
                        frmRunning.lblReserviorTemp.Caption = "Reservior: " & Format(g_dGetHeadTemperature(1), "0.0") & " °C"
                        nReadCnt = 1
                    End If
                Else
                    nReadCnt = nReadCnt + 1
                    If nReadCnt > nDelayCnt Then
                        nReadCnt = 0
                        nSeqNo = 0
                    End If
                End If
        End Select
     
    End If
End Sub

Private Sub txtTimerJet_DelayTime_sec_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtTimerJet_DelayTime_sec.Text) = False) Then
        Me.txtTimerJet_DelayTime_sec.Text = "5"
        Exit Sub
    End If
    
    gPrintPara.dSysTimerJetTime_sec = CDbl(Me.txtTimerJet_DelayTime_sec.Text)
    
    frmRunning.txtTimerJet_DelayTime_sec.Text = Me.txtTimerJet_DelayTime_sec.Text
    
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_TIMERJETTIME_SEC", gPrintPara.dSysTimerJetTime_sec)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtTimerJet_DelayTime_sec_KeyPress(KeyAscii As Integer)
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
End Sub

Private Sub txtPurgeTime_sec_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtPurgeTime_sec.Text) = False) Then
        Me.txtPurgeTime_sec.Text = "5"
        Exit Sub
    End If
    
    gPrintPara.dSysPurgeTime_sec = CDbl(Me.txtPurgeTime_sec.Text)
    
    frmRunning.txtPurgeTime_sec.Text = Me.txtPurgeTime_sec.Text
    
    Call SaveSetting(App.Title, "PRINT_INFO", "SYS_PURGETIME_SEC", gPrintPara.dSysPurgeTime_sec)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtPurgeTime_sec_KeyPress(KeyAscii As Integer)
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
End Sub

Private Sub WinsockTrig_Close()
    Call mdlTrig.Disconnect
End Sub

Private Sub WinsockTrig_DataArrival(ByVal bytesTotal As Long)
    Call mdlTrig.ReceiveData(bytesTotal)
End Sub

