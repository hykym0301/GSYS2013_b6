VERSION 5.00
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Begin VB.Form frmPopUpMsg 
   BorderStyle     =   1  '���� ����
   Caption         =   "System PopUp Message"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   Icon            =   "frmPopUpMsg.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows �⺻��
   Begin CWUIControlsLib.CWButton CWB_Msg 
      Height          =   2940
      Left            =   60
      TabIndex        =   0
      Top             =   75
      Width           =   4545
      _Version        =   393218
      _ExtentX        =   8017
      _ExtentY        =   5186
      _StockProps     =   68
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   20.25
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
      style_6         =   29
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
      szText_8        =   "Message Here..."
      style_8         =   1702131043
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
      Actual_14.r     =   303
      Actual_14.b     =   196
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
      Actual_15.r     =   300
      Actual_15.b     =   193
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
      C[0]_19         =   65535
      C[1]_19         =   65535
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
      Actual_24.r     =   303
      Actual_24.b     =   196
      Picc_24         =   412
      Color_24        =   255
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
      Actual_25.r     =   300
      Actual_25.b     =   193
      Picc_25         =   441
      Color_25        =   255
      Name_25         =   "Light"
      AllowSetColor_25=   -1  'True
      Animator_21     =   0
      Blinker_21      =   26
      ClassName_26    =   "CCWBlinker"
      Interval_26     =   300
      Enable_26       =   -1  'True
      EventID_26      =   7
      Obj_26          =   21
      varVarType_16   =   5
      Bindings_1      =   27
      ClassName_27    =   "CCWBindingHolderArray"
      Editor_27       =   28
      ClassName_28    =   "CCWBindingHolderArrayEditor"
      Owner_28        =   1
      Style_1         =   17
      drawState_1     =   1
      mechAction_1    =   1
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
End
Attribute VB_Name = "frmPopUpMsg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
            
End Sub
