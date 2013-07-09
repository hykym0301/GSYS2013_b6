VERSION 5.00
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F247AF03-2671-4421-A87A-846ED80CD2A9}#1.0#0"; "JwldButn2b.ocx"
Begin VB.Form frmAlign 
   BorderStyle     =   1  '´ÜÀÏ °íÁ¤
   Caption         =   "Manual Align"
   ClientHeight    =   2010
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8310
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2010
   ScaleWidth      =   8310
   StartUpPosition =   3  'Windows ±âº»°ª
   Begin VB.TextBox txtRst 
      Height          =   1785
      Left            =   5220
      MultiLine       =   -1  'True
      ScrollBars      =   2  '¼öÁ÷
      TabIndex        =   27
      Top             =   75
      Width           =   2970
   End
   Begin VB.TextBox txtPosY 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   3975
      TabIndex        =   23
      Text            =   "0"
      Top             =   390
      Width           =   1125
   End
   Begin VB.TextBox txtPosX 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   3975
      TabIndex        =   22
      Text            =   "0"
      Top             =   105
      Width           =   1125
   End
   Begin VB.TextBox txtPosX 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   1425
      TabIndex        =   17
      Text            =   "0"
      Top             =   105
      Width           =   1125
   End
   Begin VB.TextBox txtPosY 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   1425
      TabIndex        =   16
      Text            =   "0"
      Top             =   390
      Width           =   1125
   End
   Begin VB.TextBox txtRvZ 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   10020
      TabIndex        =   15
      Text            =   "0"
      Top             =   5100
      Width           =   1125
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3000
      Left            =   5325
      TabIndex        =   2
      Top             =   5835
      Width           =   5880
      _ExtentX        =   10372
      _ExtentY        =   5292
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "Align Key Left"
      TabPicture(0)   =   "frmAlign.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "cmdMovPos(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1(0)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Tab 1"
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Tab 2"
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      Begin VB.Frame Frame1 
         Caption         =   "Base Point"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2520
         Index           =   0
         Left            =   75
         TabIndex        =   3
         Top             =   390
         Width           =   3150
         Begin JwldButn2b.JeweledButton cmdBaseAdv 
            Height          =   420
            Index           =   0
            Left            =   1950
            TabIndex        =   4
            Top             =   1950
            Width           =   525
            _ExtentX        =   926
            _ExtentY        =   741
            Caption         =   "Adv"
            PictureSize     =   0
            OriginalPicSizeW=   0
            OriginalPicSizeH=   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MousePointer    =   99
         End
         Begin CWUIControlsLib.CWNumEdit CWN_MatchScore 
            Height          =   255
            Index           =   0
            Left            =   1665
            TabIndex        =   5
            Top             =   555
            Width           =   1365
            _Version        =   393218
            _ExtentX        =   2408
            _ExtentY        =   450
            _StockProps     =   4
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "±¼¸²"
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
            TextAlignment_1 =   2
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
         Begin CWUIControlsLib.CWNumEdit CWN_BaseX 
            Height          =   255
            Index           =   0
            Left            =   1950
            TabIndex        =   6
            Top             =   1125
            Width           =   1080
            _Version        =   393218
            _ExtentX        =   1905
            _ExtentY        =   450
            _StockProps     =   4
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "±¼¸²"
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
            opts_1          =   393278
            BorderStyle_1   =   1
            ButtonPosition_1=   1
            TextAlignment_1 =   2
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
            RangeMax_Val_1  =   1000
            ButtonStyle_1   =   0
            Bindings_1      =   4
            ClassName_4     =   "CCWBindingHolderArray"
            Editor_4        =   5
            ClassName_5     =   "CCWBindingHolderArrayEditor"
            Owner_5         =   1
         End
         Begin CWUIControlsLib.CWNumEdit CWN_BaseY 
            Height          =   255
            Index           =   0
            Left            =   1950
            TabIndex        =   7
            Top             =   1605
            Width           =   1080
            _Version        =   393218
            _ExtentX        =   1905
            _ExtentY        =   450
            _StockProps     =   4
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "±¼¸²"
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
            opts_1          =   393278
            BorderStyle_1   =   1
            ButtonPosition_1=   1
            TextAlignment_1 =   2
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
            RangeMax_Val_1  =   1000
            ButtonStyle_1   =   0
            Bindings_1      =   4
            ClassName_4     =   "CCWBindingHolderArray"
            Editor_4        =   5
            ClassName_5     =   "CCWBindingHolderArrayEditor"
            Owner_5         =   1
         End
         Begin JwldButn2b.JeweledButton cmdGetBase 
            Height          =   420
            Index           =   0
            Left            =   2505
            TabIndex        =   8
            Top             =   1950
            Width           =   525
            _ExtentX        =   926
            _ExtentY        =   741
            Caption         =   "Get"
            PictureSize     =   0
            OriginalPicSizeW=   0
            OriginalPicSizeH=   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MousePointer    =   99
            BackColor       =   12632319
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Åõ¸í
            Caption         =   "Base Y"
            Height          =   180
            Index           =   0
            Left            =   1965
            TabIndex        =   11
            Top             =   1425
            Width           =   615
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Åõ¸í
            Caption         =   "Base X"
            Height          =   180
            Index           =   0
            Left            =   1965
            TabIndex        =   10
            Top             =   945
            Width           =   615
         End
         Begin VB.Image ImgBase 
            Height          =   1425
            Index           =   0
            Left            =   135
            Stretch         =   -1  'True
            Top             =   945
            Width           =   1740
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Åõ¸í
            Caption         =   "Match Score[%]"
            Height          =   180
            Index           =   0
            Left            =   1650
            TabIndex        =   9
            Top             =   360
            Width           =   1410
         End
         Begin VB.Shape Shape2 
            Height          =   1425
            Index           =   0
            Left            =   135
            Top             =   945
            Width           =   1740
         End
      End
      Begin JwldButn2b.JeweledButton cmdMovPos 
         Height          =   660
         Index           =   0
         Left            =   3375
         TabIndex        =   12
         Top             =   2160
         Width           =   2325
         _ExtentX        =   4101
         _ExtentY        =   1164
         Caption         =   "Move to Teacing Position"
         PictureSize     =   0
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   99
      End
   End
   Begin VB.TextBox txtDescription 
      Height          =   315
      Left            =   8790
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   5475
      Width           =   2415
   End
   Begin CWUIControlsLib.CWNumEdit CWN_RecipeNo 
      Height          =   300
      Left            =   6405
      TabIndex        =   13
      Top             =   5475
      Width           =   900
      _Version        =   393218
      _ExtentX        =   1587
      _ExtentY        =   529
      _StockProps     =   4
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²Ã¼"
         Size            =   12
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
      TextAlignment_1 =   2
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
   Begin JwldButn2b.JeweledButton cmdGetAlPos 
      Height          =   1050
      Index           =   0
      Left            =   240
      TabIndex        =   21
      Top             =   825
      Width           =   2325
      _ExtentX        =   4101
      _ExtentY        =   1852
      Caption         =   "Get Left Position"
      PictureSize     =   0
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   12632319
   End
   Begin JwldButn2b.JeweledButton cmdGetAlPos 
      Height          =   1050
      Index           =   1
      Left            =   2790
      TabIndex        =   24
      Top             =   825
      Width           =   2325
      _ExtentX        =   4101
      _ExtentY        =   1852
      Caption         =   "Get Right Position"
      PictureSize     =   0
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   12632319
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "°Ë»çÀ§Ä¡ Y :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   2655
      TabIndex        =   26
      Top             =   435
      Width           =   1260
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "°Ë»çÀ§Ä¡ X :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   2655
      TabIndex        =   25
      Top             =   150
      Width           =   1260
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "°Ë»çÀ§Ä¡ X :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   105
      TabIndex        =   20
      Top             =   150
      Width           =   1260
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "°Ë»çÀ§Ä¡ Y :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   105
      TabIndex        =   19
      Top             =   435
      Width           =   1260
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Review   Z :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   8700
      TabIndex        =   18
      Top             =   5145
      Width           =   1260
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Recipe No:"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5325
      TabIndex        =   14
      Top             =   5535
      Width           =   1050
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Description :"
      BeginProperty Font 
         Name            =   "±¼¸²Ã¼"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   7395
      TabIndex        =   0
      Top             =   5535
      Width           =   1365
   End
End
Attribute VB_Name = "frmAlign"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGetAlPos_Click(Index As Integer)

    Call PComm32_PositionReadAllAxis

    Me.txtPosX(Index).Text = Format(PComm32_Position_mm(0), "0.0000")
    Me.txtPosY(Index).Text = Format(PComm32_Position_mm(1), "0.0000")

    If Index = 1 Then
    
        delta_x# = CDbl(Me.txtPosX(1).Text) - CDbl(Me.txtPosX(0).Text)
        delta_y# = CDbl(Me.txtPosY(1).Text) - CDbl(Me.txtPosY(0).Text)
        rad# = Atn(delta_y# / delta_x#)
        dgr# = rad# * (180 / 3.141592)
        
        Me.txtRst.Text = "ÃøÁ¤°¢µµ=" & CStr(dgr#) & "µµ"
        
        If MsgBox("ÃøÁ¤°¢µµ=" & CStr(dgr#) & "µµ Stage Theta¿¡ Àû¿ëÇÏ½Ã°Ú½À´Ï±î?", vbQuestion + vbYesNo) = vbYes Then
        
            PComm32_JogSpdAccScrvSET PComm32_TAxis, 0.5, 200, 200
            PComm32_AxisJogMotion_Step PComm32_TAxis, dgr#, -1
        
        End If
    End If

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

