VERSION 5.00
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmImageEdit_D 
   Caption         =   "Image Edit D"
   ClientHeight    =   12255
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   16875
   LinkTopic       =   "Form1"
   ScaleHeight     =   817
   ScaleMode       =   3  'ÇÈ¼¿
   ScaleWidth      =   1125
   StartUpPosition =   3  'Windows ±âº»°ª
   Begin VB.Frame FrameParamSetup 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  '¾øÀ½
      Caption         =   "Frame15"
      Height          =   11400
      Left            =   2625
      TabIndex        =   0
      Top             =   1260
      Visible         =   0   'False
      Width           =   13845
      Begin VB.CommandButton cmdCloseSetup 
         Caption         =   "´Ý±â"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   12
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Left            =   9360
         TabIndex        =   1
         Top             =   9810
         Width           =   3585
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   10650
         Left            =   345
         TabIndex        =   2
         Top             =   165
         Width           =   13200
         _ExtentX        =   23283
         _ExtentY        =   18785
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   706
         BackColor       =   8421504
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "±¼¸²"
            Size            =   12
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "±âº» ¼³Á¤"
         TabPicture(0)   =   "frmImageEdit2.frx":0000
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame101"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame100"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Frame102"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Frame103"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).ControlCount=   4
         TabCaption(1)   =   "Glass ¼³Á¤"
         TabPicture(1)   =   "frmImageEdit2.frx":001C
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame106"
         Tab(1).Control(1)=   "Frame105"
         Tab(1).Control(2)=   "Frame104"
         Tab(1).ControlCount=   3
         Begin VB.Frame Frame103 
            Caption         =   " Å×½ºÆ® ÀÌ¹ÌÁö ¼³Á¤ "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3270
            Left            =   8490
            TabIndex        =   48
            Top             =   6180
            Width           =   4380
            Begin VB.OptionButton optImgMode 
               Caption         =   "±æÀÌ·Î ¼³Á¤"
               Height          =   345
               Index           =   1
               Left            =   2490
               TabIndex        =   51
               Top             =   525
               Width           =   1425
            End
            Begin VB.OptionButton optImgMode 
               Caption         =   "Drop °¹¼ö·Î ¼³Á¤"
               Height          =   345
               Index           =   0
               Left            =   495
               TabIndex        =   50
               Top             =   510
               Value           =   -1  'True
               Width           =   1965
            End
            Begin VB.CommandButton cmdSaveSize 
               Caption         =   "ÀúÀå"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   390
               TabIndex        =   49
               Top             =   2325
               Width           =   3585
            End
            Begin CWUIControlsLib.CWNumEdit cwnDrop 
               Height          =   375
               Left            =   2415
               TabIndex        =   52
               Top             =   1125
               Width           =   1530
               _Version        =   393218
               _ExtentX        =   2699
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Format_2        =   "."
               scale_1         =   3
               ClassName_3     =   "CCWScale"
               opts_3          =   65536
               dMax_3          =   10
               discInterval_3  =   1
               ValueVarType_1  =   5
               Value_Val_1     =   9999999
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   10
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   9999999
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnDist 
               Height          =   375
               Left            =   2415
               TabIndex        =   53
               Top             =   1590
               Width           =   1530
               _Version        =   393218
               _ExtentX        =   2699
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Reset_0         =   0   'False
               CompatibleVers_0=   393218
               NumEdit_0       =   1
               ClassName_1     =   "CCWNumEdit"
               opts_1          =   327742
               BorderStyle_1   =   1
               ButtonPosition_1=   1
               TextAlignment_1 =   2
               format_1        =   2
               ClassName_2     =   "CCWFormat"
               Format_2        =   ".##0"
               scale_1         =   3
               ClassName_3     =   "CCWScale"
               opts_3          =   65536
               dMax_3          =   10
               discInterval_3  =   1
               ValueVarType_1  =   5
               Value_Val_1     =   1
               IncValueVarType_1=   5
               IncValue_Val_1  =   0.08
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   0.4
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   0.001
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   999999
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin VB.Label Label1 
               Caption         =   "ÀÌ¹ÌÁö ±æÀÌ(mm)"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   12
               Left            =   330
               TabIndex        =   55
               Top             =   1590
               Width           =   2070
            End
            Begin VB.Label Label1 
               Caption         =   "Drop °¹¼ö"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   11
               Left            =   330
               TabIndex        =   54
               Top             =   1140
               Width           =   1680
            End
         End
         Begin VB.Frame Frame102 
            Caption         =   " ºÐ»ç ÀÌ¹ÌÁö ¼³Á¤ (um) "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3270
            Left            =   8490
            TabIndex        =   40
            Top             =   2820
            Width           =   4380
            Begin VB.CommandButton cmdSaveImgInfo 
               Caption         =   "ÀúÀå"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   390
               TabIndex        =   41
               Top             =   2340
               Width           =   3585
            End
            Begin CWUIControlsLib.CWNumEdit cwnNzlPitch 
               Height          =   375
               Left            =   2610
               TabIndex        =   42
               Top             =   630
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Format_2        =   "."
               scale_1         =   3
               ClassName_3     =   "CCWScale"
               opts_3          =   65536
               dMax_3          =   10
               discInterval_3  =   1
               ValueVarType_1  =   5
               Value_Val_1     =   140
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnImgPitch 
               Height          =   375
               Left            =   2610
               TabIndex        =   43
               Top             =   1155
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   20
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnDotPitch 
               Height          =   375
               Left            =   2610
               TabIndex        =   44
               Top             =   1695
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   40
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   1000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin VB.Label Label1 
               Caption         =   "Dot Pitch"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   4
               Left            =   555
               TabIndex        =   47
               Top             =   1695
               Width           =   1680
            End
            Begin VB.Label Label1 
               Caption         =   "Image Pitch"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Index           =   3
               Left            =   525
               TabIndex        =   46
               Top             =   1155
               Width           =   1665
            End
            Begin VB.Label Label1 
               Caption         =   "Nozzle Pitch"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   405
               Index           =   2
               Left            =   525
               TabIndex        =   45
               Top             =   660
               Width           =   1815
            End
         End
         Begin VB.Frame Frame104 
            Caption         =   " Glass ÀÌ¹ÌÁö "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   8955
            Left            =   -74835
            TabIndex        =   38
            Top             =   615
            Width           =   7500
            Begin VB.PictureBox picGlass 
               Height          =   8460
               Left            =   255
               ScaleHeight     =   560
               ScaleMode       =   3  'ÇÈ¼¿
               ScaleWidth      =   463
               TabIndex        =   39
               Top             =   345
               Width           =   7000
               Begin VB.Shape ShapeGlass 
                  BorderWidth     =   2
                  Height          =   3495
                  Left            =   450
                  Top             =   255
                  Width           =   2865
               End
               Begin VB.Shape ShapePannel 
                  FillColor       =   &H00C0FFC0&
                  FillStyle       =   0  '´Ü»ö
                  Height          =   990
                  Index           =   0
                  Left            =   855
                  Top             =   495
                  Width           =   1950
               End
            End
         End
         Begin VB.Frame Frame105 
            Caption         =   " Panel ¼³Á¤ (mm) "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   4605
            Left            =   -67245
            TabIndex        =   20
            Top             =   615
            Width           =   5040
            Begin VB.CommandButton cmdSaveGlass 
               Caption         =   "ÀúÀå"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   800
               Left            =   2475
               TabIndex        =   21
               Top             =   3555
               Width           =   2430
            End
            Begin CWUIControlsLib.CWNumEdit cwnSizeX 
               Height          =   375
               Left            =   1125
               TabIndex        =   22
               Top             =   690
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Reset_0         =   0   'False
               CompatibleVers_0=   393218
               NumEdit_0       =   1
               ClassName_1     =   "CCWNumEdit"
               opts_1          =   327742
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
               Value_Val_1     =   400
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnSIzeY 
               Height          =   375
               Left            =   3495
               TabIndex        =   23
               Top             =   690
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   100
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnOffX 
               Height          =   375
               Left            =   1125
               TabIndex        =   24
               Top             =   1380
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   10
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   1000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnOffY 
               Height          =   375
               Left            =   3495
               TabIndex        =   25
               Top             =   1380
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   10
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   1000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnWidth 
               Height          =   375
               Left            =   1125
               TabIndex        =   26
               Top             =   2115
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   100
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnHeight 
               Height          =   375
               Left            =   3495
               TabIndex        =   27
               Top             =   2115
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   50
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   10000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnCountHor 
               Height          =   375
               Left            =   1125
               TabIndex        =   28
               Top             =   2835
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   2
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   1000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnCountVer 
               Height          =   375
               Left            =   3495
               TabIndex        =   29
               Top             =   2850
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   3
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   1000
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin VB.Label Label1 
               Caption         =   "Pannel ¼¼·Î °¹¼ö"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   10
               Left            =   2565
               TabIndex        =   37
               Top             =   2835
               Width           =   975
            End
            Begin VB.Label Label1 
               Caption         =   "Pannel °¡·Î °¹¼ö"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   9
               Left            =   165
               TabIndex        =   36
               Top             =   2835
               Width           =   915
            End
            Begin VB.Label Label1 
               Caption         =   "Pannel ¼¼·Î Å©±â"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   8
               Left            =   2565
               TabIndex        =   35
               Top             =   2085
               Width           =   975
            End
            Begin VB.Label Label1 
               Caption         =   "Pannel °¡·Î Å©±â"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   7
               Left            =   165
               TabIndex        =   34
               Top             =   2115
               Width           =   915
            End
            Begin VB.Label Label1 
               Caption         =   "Glass Offset X"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   6
               Left            =   2565
               TabIndex        =   33
               Top             =   1350
               Width           =   825
            End
            Begin VB.Label Label1 
               Caption         =   "Glass Offset X"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   5
               Left            =   165
               TabIndex        =   32
               Top             =   1380
               Width           =   825
            End
            Begin VB.Label Label1 
               Caption         =   "Glass  ¼¼·Î Å©±â"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   1
               Left            =   2565
               TabIndex        =   31
               Top             =   660
               Width           =   945
            End
            Begin VB.Label Label1 
               Caption         =   "Glass  °¡·Î Å©±â"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   9.75
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Index           =   0
               Left            =   165
               TabIndex        =   30
               Top             =   690
               Width           =   945
            End
         End
         Begin VB.Frame Frame106 
            Caption         =   " Pannel°£ °Å¸® ¼³Á¤ (mm) "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   4245
            Left            =   -67230
            TabIndex        =   14
            Top             =   5340
            Width           =   5040
            Begin VB.CommandButton cmdSavePannel 
               Caption         =   "ÀúÀå"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   800
               Left            =   2475
               TabIndex        =   15
               Top             =   3165
               Width           =   2430
            End
            Begin CWUIControlsLib.CWNumEdit cwnGrdStep 
               Height          =   375
               Index           =   1
               Left            =   3510
               TabIndex        =   16
               Top             =   900
               Visible         =   0   'False
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   2
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   100
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnGrdStep 
               Height          =   375
               Index           =   0
               Left            =   1230
               TabIndex        =   17
               Top             =   840
               Visible         =   0   'False
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   2
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   100
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin MSFlexGridLib.MSFlexGrid grdStep 
               Height          =   2715
               Index           =   0
               Left            =   150
               TabIndex        =   18
               Top             =   405
               Width           =   2310
               _ExtentX        =   4075
               _ExtentY        =   4789
               _Version        =   393216
               Rows            =   1
               FixedRows       =   0
               FixedCols       =   0
               FormatString    =   " Step   |      Step_X     "
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   11.25
                  Charset         =   129
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin MSFlexGridLib.MSFlexGrid grdStep 
               Height          =   2715
               Index           =   1
               Left            =   2595
               TabIndex        =   19
               Top             =   405
               Width           =   2310
               _ExtentX        =   4075
               _ExtentY        =   4789
               _Version        =   393216
               Rows            =   1
               FixedRows       =   0
               FixedCols       =   0
               FormatString    =   "Step     |      Step_Y    "
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   11.25
                  Charset         =   129
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
         End
         Begin VB.Frame Frame100 
            Caption         =   " È°¼º ³ëÁñ ¼³Á¤ "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1980
            Left            =   165
            TabIndex        =   5
            Top             =   720
            Width           =   12705
            Begin VB.CommandButton cmdActNzl 
               Caption         =   "ÀúÀå"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   700
               Left            =   9195
               TabIndex        =   10
               Top             =   1005
               Width           =   3165
            End
            Begin VB.PictureBox picNzl 
               AutoRedraw      =   -1  'True
               BackColor       =   &H00E0E0E0&
               Height          =   1380
               Left            =   165
               ScaleHeight     =   88
               ScaleMode       =   3  'ÇÈ¼¿
               ScaleWidth      =   573
               TabIndex        =   6
               Top             =   375
               Width           =   8655
               Begin VB.Label lblActNzlCnt 
                  Alignment       =   1  '¿À¸¥ÂÊ ¸ÂÃã
                  BackStyle       =   0  'Åõ¸í
                  Caption         =   "È°¼º³ëÁñ : 480°³"
                  Height          =   285
                  Left            =   6870
                  TabIndex        =   9
                  Top             =   1035
                  Width           =   1455
               End
               Begin VB.Label lblNzl 
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Åõ¸í
                  Caption         =   "1"
                  BeginProperty Font 
                     Name            =   "±¼¸²"
                     Size            =   12
                     Charset         =   129
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00008000&
                  Height          =   240
                  Index           =   1
                  Left            =   0
                  TabIndex        =   8
                  Top             =   0
                  Visible         =   0   'False
                  Width           =   135
               End
               Begin VB.Label lblNzl 
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Åõ¸í
                  Caption         =   "1"
                  BeginProperty Font 
                     Name            =   "±¼¸²"
                     Size            =   12
                     Charset         =   129
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00008000&
                  Height          =   240
                  Index           =   0
                  Left            =   285
                  TabIndex        =   7
                  Top             =   120
                  Visible         =   0   'False
                  Width           =   135
               End
               Begin VB.Shape selNzl 
                  BorderColor     =   &H0000C000&
                  BorderWidth     =   2
                  Height          =   300
                  Left            =   375
                  Top             =   810
                  Visible         =   0   'False
                  Width           =   300
               End
               Begin VB.Shape shpHead 
                  BackColor       =   &H00C0C0C0&
                  FillColor       =   &H00C0C0C0&
                  Height          =   600
                  Left            =   210
                  Top             =   345
                  Width           =   8100
               End
            End
            Begin CWUIControlsLib.CWNumEdit cwnActNzl 
               Height          =   375
               Index           =   0
               Left            =   9225
               TabIndex        =   11
               Top             =   465
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   2
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   512
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin CWUIControlsLib.CWNumEdit cwnActNzl 
               Height          =   375
               Index           =   1
               Left            =   10980
               TabIndex        =   12
               Top             =   480
               Width           =   1335
               _Version        =   393218
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   4
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
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
               Value_Val_1     =   510
               IncValueVarType_1=   5
               IncValue_Val_1  =   1
               AccelIncVarType_1=   5
               AccelInc_Val_1  =   5
               RangeMinVarType_1=   5
               RangeMin_Val_1  =   1
               RangeMaxVarType_1=   5
               RangeMax_Val_1  =   512
               ButtonStyle_1   =   0
               Bindings_1      =   4
               ClassName_4     =   "CCWBindingHolderArray"
               Editor_4        =   5
               ClassName_5     =   "CCWBindingHolderArrayEditor"
               Owner_5         =   1
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "~"
               BeginProperty Font 
                  Name            =   "±¼¸²"
                  Size            =   12
                  Charset         =   129
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Index           =   1
               Left            =   10680
               TabIndex        =   13
               Top             =   540
               Width           =   195
            End
         End
         Begin VB.Frame Frame101 
            Caption         =   " ±âº» ÀÌ¹ÌÁö "
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   6645
            Left            =   165
            TabIndex        =   3
            Top             =   2820
            Width           =   8220
            Begin VB.PictureBox picDots 
               AutoRedraw      =   -1  'True
               BackColor       =   &H00FFFFFF&
               Height          =   5940
               Left            =   300
               ScaleHeight     =   392
               ScaleMode       =   3  'ÇÈ¼¿
               ScaleWidth      =   505
               TabIndex        =   4
               Top             =   420
               Width           =   7635
            End
         End
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00404040&
         BorderWidth     =   2
         Height          =   10950
         Index           =   2
         Left            =   -15
         Top             =   0
         Width           =   13905
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Adjust Image (%)"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Index           =   0
      Left            =   90
      TabIndex        =   138
      Top             =   8910
      Width           =   2295
      Begin VB.CommandButton cmdDraw 
         Caption         =   "Update Image"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Left            =   105
         TabIndex        =   140
         Top             =   810
         Width           =   2055
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear All"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Left            =   105
         TabIndex        =   139
         Top             =   1335
         Width           =   2055
      End
      Begin CWUIControlsLib.CWNumEdit cwnEditValue 
         Height          =   330
         Left            =   120
         TabIndex        =   141
         Top             =   345
         Width           =   2055
         _Version        =   393218
         _ExtentX        =   3625
         _ExtentY        =   582
         _StockProps     =   4
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "±¼¸²"
            Size            =   12
            Charset         =   129
            Weight          =   700
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
         Format_2        =   ".##0"
         scale_1         =   3
         ClassName_3     =   "CCWScale"
         opts_3          =   65536
         dMax_3          =   10
         discInterval_3  =   1
         ValueVarType_1  =   5
         IncValueVarType_1=   5
         IncValue_Val_1  =   0.1
         AccelIncVarType_1=   5
         AccelInc_Val_1  =   1
         RangeMinVarType_1=   5
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   50
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Cur Pos (mm)"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1230
      Index           =   0
      Left            =   75
      TabIndex        =   135
      Top             =   1320
      Width           =   2295
      Begin VB.Label lblPos 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Y:"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   137
         Top             =   780
         Width           =   1995
      End
      Begin VB.Label lblPos 
         BackColor       =   &H00C0C0C0&
         Caption         =   "X:"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   136
         Top             =   345
         Width           =   1995
      End
   End
   Begin VB.CommandButton cmdSystem 
      Caption         =   "ÀÌ¹ÌÁö ¿­±â"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Index           =   0
      Left            =   9960
      Picture         =   "frmImageEdit2.frx":05B6
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   134
      Top             =   210
      Width           =   1545
   End
   Begin VB.CommandButton cmdClose 
      BackColor       =   &H0080C0FF&
      Caption         =   "´Ý±â"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   14805
      Picture         =   "frmImageEdit2.frx":0B40
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   133
      Top             =   210
      Width           =   1545
   End
   Begin VB.CommandButton cmdSystem 
      Caption         =   "ÀÌ¹ÌÁö ÀúÀå"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Index           =   1
      Left            =   11565
      Picture         =   "frmImageEdit2.frx":0E82
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   132
      Top             =   210
      Width           =   1545
   End
   Begin VB.CommandButton cmdSystem 
      Caption         =   "ÀÌ¹ÌÁö ¼³Á¤"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Index           =   2
      Left            =   13170
      Picture         =   "frmImageEdit2.frx":140C
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   131
      Top             =   210
      Width           =   1545
   End
   Begin VB.Frame Frame13 
      BackColor       =   &H00404040&
      BorderStyle     =   0  '¾øÀ½
      Caption         =   "Frame13"
      Height          =   1095
      Left            =   15
      TabIndex        =   120
      Top             =   30
      Width           =   9870
      Begin VB.Frame Frame14 
         BackColor       =   &H00404040&
         Caption         =   "Head ¼±ÅÃ"
         ForeColor       =   &H00FFFFFF&
         Height          =   1020
         Left            =   4965
         TabIndex        =   124
         Top             =   30
         Width           =   4845
         Begin VB.OptionButton optHead 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Head 5"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   4
            Left            =   3165
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   129
            Top             =   570
            Width           =   1215
         End
         Begin VB.OptionButton optHead 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Head 4"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   3
            Left            =   2460
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   128
            Top             =   165
            Width           =   1215
         End
         Begin VB.OptionButton optHead 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Head 3"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   2
            Left            =   1785
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   127
            Top             =   570
            Width           =   1215
         End
         Begin VB.OptionButton optHead 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Head 2"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   1
            Left            =   1050
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   126
            Top             =   165
            Width           =   1215
         End
         Begin VB.OptionButton optHead 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Head 1"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   9.75
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   0
            Left            =   390
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   125
            Top             =   570
            Value           =   -1  'True
            Width           =   1215
         End
      End
      Begin VB.Frame Frame12 
         BackColor       =   &H00404040&
         Caption         =   "ÀÌ¹ÌÁö ¼±ÅÃ"
         ForeColor       =   &H00FFFFFF&
         Height          =   1020
         Left            =   15
         TabIndex        =   121
         Top             =   15
         Width           =   4905
         Begin VB.OptionButton OptStop 
            BackColor       =   &H00808080&
            Caption         =   "TEST"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   690
            Left            =   2490
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   123
            Top             =   255
            Value           =   -1  'True
            Width           =   2325
         End
         Begin VB.OptionButton OptStart 
            BackColor       =   &H00808080&
            Caption         =   "Glass"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   690
            Left            =   105
            Style           =   1  '±×·¡ÇÈ
            TabIndex        =   122
            Top             =   255
            Width           =   2325
         End
      End
      Begin VB.Image Image1 
         Height          =   600
         Left            =   -60
         Picture         =   "frmImageEdit2.frx":1D0E
         Top             =   -1590
         Width           =   600
      End
      Begin VB.Image Image2 
         Height          =   600
         Left            =   195
         Picture         =   "frmImageEdit2.frx":203A
         Top             =   210
         Width           =   600
      End
      Begin VB.Label Label5 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackColor       =   &H00404040&
         Caption         =   "Image    Editor"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0C0C0&
         Height          =   810
         Left            =   930
         TabIndex        =   130
         Top             =   150
         Width           =   1350
      End
   End
   Begin VB.HScrollBar hBar 
      Height          =   255
      Left            =   2610
      TabIndex        =   119
      Top             =   11850
      Width           =   13515
   End
   Begin VB.VScrollBar vBar 
      Height          =   10485
      Left            =   16080
      TabIndex        =   118
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox picBox1 
      AutoRedraw      =   -1  'True
      Height          =   10500
      Left            =   2595
      ScaleHeight     =   696
      ScaleMode       =   3  'ÇÈ¼¿
      ScaleWidth      =   896
      TabIndex        =   113
      Top             =   1350
      Width           =   13500
      Begin VB.PictureBox picImage 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Height          =   5730
         Left            =   0
         MouseIcon       =   "frmImageEdit2.frx":2366
         ScaleHeight     =   378
         ScaleMode       =   3  'ÇÈ¼¿
         ScaleWidth      =   450
         TabIndex        =   114
         Top             =   -30
         Width           =   6810
         Begin VB.Shape Shape2 
            BorderColor     =   &H000000FF&
            BorderWidth     =   2
            FillColor       =   &H00FFFFFF&
            Height          =   1650
            Left            =   495
            Top             =   3570
            Visible         =   0   'False
            Width           =   3030
         End
         Begin VB.Shape Shape1 
            BorderColor     =   &H0000FF00&
            BorderWidth     =   2
            FillColor       =   &H00FFFFFF&
            Height          =   1650
            Left            =   2280
            Top             =   1800
            Visible         =   0   'False
            Width           =   3030
         End
         Begin VB.Label lblModule 
            Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            BackStyle       =   0  'Åõ¸í
            Caption         =   "1"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF00FF&
            Height          =   240
            Index           =   1
            Left            =   75
            TabIndex        =   116
            Top             =   60
            Visible         =   0   'False
            Width           =   150
         End
         Begin VB.Label lblModuleDist 
            BackColor       =   &H00FFFFFF&
            BackStyle       =   0  'Åõ¸í
            Caption         =   "1"
            BeginProperty Font 
               Name            =   "±¼¸²"
               Size            =   12
               Charset         =   129
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF00FF&
            Height          =   240
            Index           =   1
            Left            =   45
            TabIndex        =   115
            Top             =   60
            Visible         =   0   'False
            Width           =   960
         End
      End
      Begin VB.PictureBox picBuf 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   9855
         Left            =   3000
         ScaleHeight     =   653
         ScaleMode       =   3  'ÇÈ¼¿
         ScaleWidth      =   693
         TabIndex        =   117
         Top             =   0
         Visible         =   0   'False
         Width           =   10455
      End
   End
   Begin VB.Frame frameAdj 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Adjust Image Info"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4215
      Left            =   75
      TabIndex        =   64
      Top             =   4560
      Width           =   2310
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block0 :"
         Height          =   225
         Index           =   0
         Left            =   330
         TabIndex        =   112
         Top             =   270
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block1 :"
         Height          =   225
         Index           =   1
         Left            =   330
         TabIndex        =   111
         Top             =   510
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block2 :"
         Height          =   225
         Index           =   2
         Left            =   330
         TabIndex        =   110
         Top             =   750
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block3 :"
         Height          =   225
         Index           =   3
         Left            =   330
         TabIndex        =   109
         Top             =   990
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block4 :"
         Height          =   225
         Index           =   4
         Left            =   330
         TabIndex        =   108
         Top             =   1230
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block5 :"
         Height          =   225
         Index           =   5
         Left            =   330
         TabIndex        =   107
         Top             =   1470
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block6 :"
         Height          =   225
         Index           =   6
         Left            =   330
         TabIndex        =   106
         Top             =   1710
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block7 :"
         Height          =   225
         Index           =   7
         Left            =   330
         TabIndex        =   105
         Top             =   1950
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block8 :"
         Height          =   225
         Index           =   8
         Left            =   330
         TabIndex        =   104
         Top             =   2190
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block9 :"
         Height          =   225
         Index           =   9
         Left            =   330
         TabIndex        =   103
         Top             =   2430
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block10 :"
         Height          =   225
         Index           =   10
         Left            =   330
         TabIndex        =   102
         Top             =   2670
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block11 :"
         Height          =   225
         Index           =   11
         Left            =   330
         TabIndex        =   101
         Top             =   2910
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block12 :"
         Height          =   225
         Index           =   12
         Left            =   330
         TabIndex        =   100
         Top             =   3150
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block13 :"
         Height          =   225
         Index           =   13
         Left            =   330
         TabIndex        =   99
         Top             =   3390
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block14 :"
         Height          =   225
         Index           =   14
         Left            =   330
         TabIndex        =   98
         Top             =   3630
         Width           =   765
      End
      Begin VB.Label lblHeadModule 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Block15 :"
         Height          =   225
         Index           =   15
         Left            =   330
         TabIndex        =   97
         Top             =   3885
         Width           =   765
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   0
         Left            =   1155
         TabIndex        =   96
         Top             =   270
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   1
         Left            =   1155
         TabIndex        =   95
         Top             =   510
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   2
         Left            =   1155
         TabIndex        =   94
         Top             =   750
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   3
         Left            =   1155
         TabIndex        =   93
         Top             =   990
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   4
         Left            =   1155
         TabIndex        =   92
         Top             =   1230
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   5
         Left            =   1155
         TabIndex        =   91
         Top             =   1470
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   6
         Left            =   1155
         TabIndex        =   90
         Top             =   1710
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   7
         Left            =   1155
         TabIndex        =   89
         Top             =   1950
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   8
         Left            =   1155
         TabIndex        =   88
         Top             =   2190
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   9
         Left            =   1155
         TabIndex        =   87
         Top             =   2430
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   10
         Left            =   1155
         TabIndex        =   86
         Top             =   2670
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   11
         Left            =   1155
         TabIndex        =   85
         Top             =   2910
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   12
         Left            =   1155
         TabIndex        =   84
         Top             =   3150
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   13
         Left            =   1155
         TabIndex        =   83
         Top             =   3390
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   14
         Left            =   1155
         TabIndex        =   82
         Top             =   3630
         Width           =   480
      End
      Begin VB.Label lblBlockValue 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackStyle       =   0  'Åõ¸í
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   15
         Left            =   1155
         TabIndex        =   81
         Top             =   3870
         Width           =   480
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   0
         Left            =   1590
         TabIndex        =   80
         Top             =   285
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   1
         Left            =   1590
         TabIndex        =   79
         Top             =   525
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   2
         Left            =   1590
         TabIndex        =   78
         Top             =   765
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   3
         Left            =   1590
         TabIndex        =   77
         Top             =   1005
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   4
         Left            =   1590
         TabIndex        =   76
         Top             =   1245
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   5
         Left            =   1590
         TabIndex        =   75
         Top             =   1485
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   6
         Left            =   1590
         TabIndex        =   74
         Top             =   1725
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   7
         Left            =   1590
         TabIndex        =   73
         Top             =   1965
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   8
         Left            =   1590
         TabIndex        =   72
         Top             =   2205
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   9
         Left            =   1590
         TabIndex        =   71
         Top             =   2445
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   10
         Left            =   1590
         TabIndex        =   70
         Top             =   2685
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   11
         Left            =   1590
         TabIndex        =   69
         Top             =   2925
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   12
         Left            =   1590
         TabIndex        =   68
         Top             =   3165
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   13
         Left            =   1590
         TabIndex        =   67
         Top             =   3405
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   14
         Left            =   1590
         TabIndex        =   66
         Top             =   3645
         Width           =   195
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Åõ¸í
         Caption         =   "%"
         Height          =   210
         Index           =   15
         Left            =   1590
         TabIndex        =   65
         Top             =   3885
         Width           =   195
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Select Area (mm)"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   75
      TabIndex        =   58
      Top             =   2700
      Width           =   2310
      Begin VB.CommandButton cmdSelectArea 
         Caption         =   "Select"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   705
         TabIndex        =   59
         Top             =   1095
         Width           =   1485
      End
      Begin CWUIControlsLib.CWNumEdit cwnSelStart 
         Height          =   315
         Left            =   705
         TabIndex        =   60
         Top             =   315
         Width           =   1485
         _Version        =   393218
         _ExtentX        =   2619
         _ExtentY        =   556
         _StockProps     =   4
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "±¼¸²"
            Size            =   11.25
            Charset         =   129
            Weight          =   700
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
         Format_2        =   ".##0"
         scale_1         =   3
         ClassName_3     =   "CCWScale"
         opts_3          =   65536
         dMax_3          =   10
         discInterval_3  =   1
         ValueVarType_1  =   5
         Value_Val_1     =   1
         IncValueVarType_1=   5
         IncValue_Val_1  =   1
         AccelIncVarType_1=   5
         AccelInc_Val_1  =   5
         RangeMinVarType_1=   5
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   10000
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin CWUIControlsLib.CWNumEdit cwnSelWidth 
         Height          =   315
         Left            =   705
         TabIndex        =   61
         Top             =   690
         Width           =   1485
         _Version        =   393218
         _ExtentX        =   2619
         _ExtentY        =   556
         _StockProps     =   4
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "±¼¸²"
            Size            =   11.25
            Charset         =   129
            Weight          =   700
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
         Format_2        =   ".##0"
         scale_1         =   3
         ClassName_3     =   "CCWScale"
         opts_3          =   65536
         dMax_3          =   10
         discInterval_3  =   1
         ValueVarType_1  =   5
         Value_Val_1     =   3
         IncValueVarType_1=   5
         IncValue_Val_1  =   0.1
         AccelIncVarType_1=   5
         AccelInc_Val_1  =   1
         RangeMinVarType_1=   5
         RangeMaxVarType_1=   5
         RangeMax_Val_1  =   2000
         ButtonStyle_1   =   0
         Bindings_1      =   4
         ClassName_4     =   "CCWBindingHolderArray"
         Editor_4        =   5
         ClassName_5     =   "CCWBindingHolderArrayEditor"
         Owner_5         =   1
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Start"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   90
         TabIndex        =   63
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Width"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   90
         TabIndex        =   62
         Top             =   735
         Width           =   615
      End
   End
   Begin VB.Frame frameWait 
      BackColor       =   &H00808080&
      BorderStyle     =   0  '¾øÀ½
      Caption         =   "Frame2"
      Height          =   810
      Left            =   7530
      TabIndex        =   56
      Top             =   5550
      Visible         =   0   'False
      Width           =   3360
      Begin VB.Label Label3 
         Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
         BackColor       =   &H00808080&
         Caption         =   "Wait"
         BeginProperty Font 
            Name            =   "±¼¸²"
            Size            =   26.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   480
         Left            =   105
         TabIndex        =   57
         Top             =   150
         Width           =   3165
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   17085
      Top             =   105
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.Slider sldRatio 
      Height          =   345
      Left            =   75
      TabIndex        =   142
      Top             =   11415
      Width           =   2250
      _ExtentX        =   3969
      _ExtentY        =   609
      _Version        =   393216
      LargeChange     =   1
      Min             =   1
      SelStart        =   1
      Value           =   1
      TextPosition    =   1
   End
   Begin VB.Label Label2 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00C0C0C0&
      Caption         =   "Image Ratio"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   0
      Left            =   120
      TabIndex        =   148
      Top             =   10995
      Width           =   2250
   End
   Begin VB.Label lblRatio 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
      BackColor       =   &H00C0C0C0&
      Caption         =   "1X"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   105
      TabIndex        =   147
      Top             =   11205
      Width           =   2250
   End
   Begin VB.Image imgMove 
      Height          =   480
      Left            =   17295
      Picture         =   "frmImageEdit2.frx":28F0
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00404040&
      BorderWidth     =   2
      Height          =   1170
      Index           =   0
      Left            =   0
      Top             =   0
      Width           =   16485
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00000000&
      BorderColor     =   &H00404040&
      BorderWidth     =   2
      Height          =   12180
      Index           =   1
      Left            =   0
      Top             =   90
      Width           =   2505
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00000000&
      BorderColor     =   &H00404040&
      BorderWidth     =   2
      Height          =   11040
      Index           =   3
      Left            =   2565
      Top             =   1230
      Width           =   13920
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "~"
      Height          =   180
      Left            =   1050
      TabIndex        =   146
      Top             =   6450
      Width           =   135
   End
   Begin VB.Label lblSelPos 
      BackColor       =   &H00C0C0C0&
      Caption         =   "X1 :"
      Height          =   255
      Index           =   2
      Left            =   1410
      TabIndex        =   145
      Top             =   6450
      Width           =   765
   End
   Begin VB.Label lblSelPos 
      BackColor       =   &H00C0C0C0&
      Caption         =   "X0 :"
      Height          =   255
      Index           =   0
      Left            =   180
      TabIndex        =   144
      Top             =   6450
      Width           =   765
   End
   Begin VB.Label Label8 
      Height          =   255
      Left            =   90
      TabIndex        =   143
      Top             =   11880
      Width           =   2265
   End
End
Attribute VB_Name = "frmImageEdit_D"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function StretchBlt Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Private Const SRCCOPY = &HCC0020
Private edit_start_block As Integer
Private edit_end_block As Integer
Sub ImgRatio_Update()
    Me.picImage.Cls
    Me.picImage.Visible = False
    Me.Shape2.Visible = False
    Me.Shape1.Visible = False
    Me.lblRatio.Caption = Me.sldRatio.Value & "X"
    Me.picImage.Width = Me.picBuf.Width * Me.sldRatio.Value
    Me.picImage.Height = Me.picBuf.Height * Me.sldRatio.Value
    StretchBlt Me.picImage.hDC, 0, 0, picBuf.Width * Me.sldRatio.Value, picBuf.Height * Me.sldRatio.Value, picBuf.hDC, 0, 0, picBuf.Width, picBuf.Height, SRCCOPY
    Me.picImage.Visible = True
    SetImgPos
End Sub

Private Sub cmdClear_Click()
    ctrlEnable False, Me
    frameWait.Visible = True
    Me.Shape2.Visible = False
    Me.Shape1.Visible = False
    For i% = 0 To 15
        curImg.BlockVlaue(i%) = 50
        lblBlockValue(i%).Caption = curImg.BlockVlaue(i%)
    Next i%
    mkSampleBMP_D curImg
    DisplayImage App.Path & "\Data\Sample.bmp"
    frameWait.Visible = False
    ctrlEnable True, Me
    
    Me.sldRatio.Value = 1
    
End Sub

Private Sub cmdCloseSetup_Click()
    ctrlEnable False, Me
    frameWait.Visible = True
    LoadParam
    mkSampleBMP_D curImg
    
    DisplayImage App.Path & "\Data\Sample.bmp"
    OpenBMP_File App.Path & "\Data\Sample.bmp", curImg, strData$
    
    FrameParamSetup.Visible = False
    frameWait.Visible = False
    ctrlEnable True, Me
End Sub

Sub cmdDraw_Click()

    frameWait.Visible = True
    ctrlEnable False, Me
    Me.Shape2.Visible = False
    Me.Shape1.Visible = False


    latch_ratio# = Me.sldRatio.Value

    For i% = edit_start_block To edit_end_block
        curImg.BlockVlaue(i%) = curImg.BlockVlaue(i%) + cwnEditValue.Value
        lblBlockValue(i%).Caption = curImg.BlockVlaue(i%)
        If curImg.BlockVlaue(i%) > 100 Then
            curImg.BlockVlaue(i%) = 100
        End If
        If curImg.BlockVlaue(i%) < 50 Then
            curImg.BlockVlaue(i%) = 50
        End If
    Next i%
    
    mkSampleBMP_D curImg

    DisplayImage App.Path & "\Data\Sample.bmp"
    frameWait.Visible = False
    
    Me.sldRatio.Value = latch_ratio#
    Call ImgRatio_Update
    
    ctrlEnable True, Me
    
End Sub



Private Sub cmdSystem_Click(Index As Integer)

    On Error GoTo syserr
    frameWait.Visible = True
    ctrlEnable False, Me
    Me.Shape2.Visible = False
    Me.Shape1.Visible = False
    Select Case Index
        Case 0
            CommonDialog1.Filter = "*.BMP"
            CommonDialog1.ShowOpen
            CommonDialog1.CancelError = True
            If CommonDialog1.FileName = "" Then GoTo OutSub

            DisplayImage CommonDialog1.FileName
            OpenBMP_File CommonDialog1.FileName, curImg, strData$
            For i% = 0 To 15
                lblBlockValue(i%).Caption = curImg.BlockVlaue(i%)
            Next i%
            If strData$ <> "" Then
                frmBMP_Info.txtMemo.Text = ""
                frmBMP_Info.txtMemo.Text = strData$
                frmBMP_Info.Show
            End If
        Case 1
            CommonDialog1.Filter = "*.BMP"
            CommonDialog1.InitDir = App.Path & "\Output"
            CommonDialog1.ShowSave
            CommonDialog1.CancelError = True
            If CommonDialog1.FileName = "" Then GoTo OutSub

            
            If UCase(Right(CommonDialog1.FileName, 4)) <> ".BMP" Then
                tmpstr$ = CommonDialog1.FileName & ".bmp"
            Else
                tmpstr$ = CommonDialog1.FileName
            End If
            For i% = 0 To 4
                If Me.optHead(i%).Value = True Then
                    head_index% = i% + 1
                    Exit For
                End If
            Next i%
            mkHeadBMP_File_D curImg, tmpstr$, head_index%, True
            raw_file_name$ = ZalRa(tmpstr$, 1, ".bmp") & ".raw"
            mkRawData_SaveAS raw_file_name$
        Case 2
            FrameParamSetup.ZOrder
            FrameParamSetup.Top = 82
            FrameParamSetup.Left = 169
            InitParaSet
            FrameParamSetup.Visible = True
    End Select
    ctrlEnable True, Me
    frameWait.Visible = False
    Exit Sub
syserr:

    If Err.Number <> 32755 Then
        MsgBox Err.Description
    End If
OutSub:
    frameWait.Visible = False
    ctrlEnable True, Me
End Sub


Private Sub cmdSelectArea_Click()




Exit Sub
    Me.Shape1.Visible = False
    
    stp# = (cwnSelStart.Value * 1000 / curImg.NzlPitch)
    blk# = 32 * Me.sldRatio.Value
    st_x# = (blk# * (Int(stp# / blk#) + 1)) + 1
    
    wID# = (cwnSelWidth.Value * 1000 / curImg.NzlPitch)
    ed_x# = (blk# * (Int(wID# / blk#) + 1))
    
    Me.Shape2.Left = st_x#
    Me.Shape2.Top = Me.picImage.Top
    Me.Shape2.Height = Me.picImage.Height
    Me.Shape2.Width = ed_x#
    Me.Shape2.Visible = True
    
    edit_start_block = Int((Me.Shape2.Left / Me.sldRatio.Value) / 32)
    edit_end_block = Int(((Me.Shape2.Left + Me.Shape2.Width) / Me.sldRatio.Value) / 32) - 1
    If edit_start_block < 1 Then edit_start_block = 1
    If edit_end_block > 15 Then edit_end_block = 15
    
    For i% = 1 To 14
         lblHeadModule(i%).BackColor = &HC0C0C0
    Next i%
    For i% = edit_start_block To edit_end_block
         lblHeadModule(i%).BackColor = &H8080FF
    Next i%
End Sub


Private Sub cwnGrdStep_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        grdStep(Index).TextMatrix(grdStep(Index).Row, grdStep(Index).Col) = cwnGrdStep(Index).Value
        cwnGrdStep(Index).Visible = False
    End If
End Sub

Private Sub cwnGrdStep_ValueChanged(Index As Integer, Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    grdStep(Index).TextMatrix(grdStep(Index).Row, grdStep(Index).Col) = cwnGrdStep(Index).Value
End Sub


Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub hBar_Change()
    picImage.Left = hBar.Value
End Sub

Private Sub Option1_Click(Index As Integer)
    If Index = 0 Then
        txtPoint.Text = (txtPoint.Text) / 1024 * 100
    Else
        txtPoint.Text = CInt((txtPoint.Text) * 1024 / 100)
    End If
    
End Sub

Private Sub OptStart_Click()
mkGlassBMP_File_D GlassBMP
End Sub

Private Sub picImage_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    If Button = vbKeyLButton Then
        Me.Shape2.Left = Me.Shape1.Left
        Me.Shape2.Top = Me.Shape1.Top
        Me.Shape2.Width = 1
        Me.Shape2.Height = Me.Shape1.Height
        Me.Shape2.Visible = True
    End If
    If hBar.Enabled = False And vBar.Enabled = False Then Exit Sub
'    If Button = vbKeyRButton Then
'
'        InputX = X
'        InputY = Y
'
'        picImage.MousePointer = 99
'        picImage.MouseIcon = imgMove.Picture
'    End If
    
End Sub
Private Sub picImage_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim DiffX, DiffY As Long
Dim CurrX, CurrY As Long
    'If X < 32 Then X = 32
    lblPos(0).Caption = (X - 32 + 1) * (curImg.NzlPitch / 1000)
    lblPos(1).Caption = (Y + 1) * (curImg.ImgPitch / 1000)
    Me.Shape1.Visible = True
    Me.Shape1.Top = Me.picImage.Top
    Me.Shape1.Left = (32 * Me.sldRatio.Value) * Int(X / (32 * Me.sldRatio.Value)) + 1
    Me.Shape1.Width = 31 * Me.sldRatio.Value
    Me.Shape1.Height = Me.picImage.Height
    
    If Me.Shape2.Visible = True Then
       ' Me.Shape2.Width = (Me.Shape1.Left + Me.Shape1.Width) - Me.Shape2.Left
    End If
    
'    If Button = vbKeyRButton Then
'        CurrX = picImage.Left + (X - InputX)
'        CurrY = picImage.Top + (Y - InputY)
'
'        If CurrX > 0 Then
'          CurrX = 0
'          InputX = X
'        ElseIf CurrX < MaxMoveX Then
'          CurrX = MaxMoveX
'          InputX = X
'        End If
'
'        If CurrY > 0 Then
'          CurrY = 0
'          InputY = Y
'        ElseIf CurrY < MaxMoveY Then
'          CurrY = MaxMoveY
'          InputY = Y
'        End If
'
'        picImage.Move CurrX, CurrY
'        hBar.Value = CurrX
'        vBar.Value = CurrY
'    End If
End Sub
Private Sub picImage_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    On Error Resume Next

    If Me.Shape2.Visible = True Then
       Me.Shape2.Width = (Me.Shape1.Left + Me.Shape1.Width) - Me.Shape2.Left
       edit_start_block = Int((Me.Shape2.Left / Me.sldRatio.Value) / 32)
       edit_end_block = Int(((Me.Shape2.Left + Me.Shape2.Width) / Me.sldRatio.Value) / 32) - 1
       If edit_start_block < 0 Then edit_start_block = 0
       If edit_end_block > 15 Then edit_end_block = 15
       
       For i% = 0 To 15
            lblHeadModule(i%).BackColor = &HC0C0C0
       Next i%
       For i% = edit_start_block To edit_end_block
            lblHeadModule(i%).BackColor = &H8080FF
       Next i%
    End If
End Sub
Sub SetImgPos()
  If picImage.ScaleHeight > picBox1.ScaleHeight Then
    vBar.Visible = True
    vBar.Max = picBox1.Height - picImage.ScaleHeight
    MaxMoveY = vBar.Max
    vBar.Min = 0
    vBar.Value = -1
  Else
    vBar.Visible = False
    MaxMoveY = 0
  End If
  
  If picImage.ScaleWidth > picBox1.ScaleWidth Then
    hBar.Visible = True
    hBar.Max = picBox1.Width - picImage.ScaleWidth
    MaxMoveX = hBar.Max
    hBar.Min = 0
    hBar.Value = -1
  Else
    hBar.Visible = False
    MaxMoveX = 0
  End If
  
  hBar.LargeChange = ScaleWidth
  vBar.LargeChange = ScaleHeight
End Sub


Sub sldRatio_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
'    Me.picImage.Cls
'    Me.picImage.Visible = False
'    Me.Shape2.Visible = False
'    Me.Shape1.Visible = False
'    Me.lblRatio.Caption = Me.sldRatio.Value & "X"
'    Me.picImage.Width = Me.picBuf.Width * Me.sldRatio.Value
'    Me.picImage.Height = Me.picBuf.Height * Me.sldRatio.Value
'    StretchBlt Me.picImage.hDC, 0, 0, picBuf.Width * Me.sldRatio.Value, picBuf.Height * Me.sldRatio.Value, picBuf.hDC, 0, 0, picBuf.Width, picBuf.Height, SRCCOPY
'    Me.picImage.Visible = True
'    SetImgPos
    
    Call ImgRatio_Update
    
End Sub

Private Sub vBar_Change()
    picImage.Top = vBar.Value
End Sub


'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'-------------------------------------------- ÆÄ¶ó¸ÞÅÍ ¼³Á¤ºÎ --------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------------------------
Private Sub cmdActNzl_Click()
    curImg.ActStartNzl = cwnActNzl(0).Value
    curImg.ActEndNzl = cwnActNzl(1).Value
    DrawActNzl
    SetIniItem IMG_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", cwnActNzl(0).Value
    SetIniItem IMG_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", cwnActNzl(1).Value
End Sub
Sub LoadParam()
    IMG_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"

    curImg.ActStartNzl = CInt(GetIniItem(IMG_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", 32, True))
    curImg.ActEndNzl = CInt(GetIniItem(IMG_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", 480, True))
    
    curImg.NzlPitch = CDbl(GetIniItem(IMG_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", 140, True))
    curImg.ImgPitch = CDbl(GetIniItem(IMG_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", 20, True))
    curImg.DotPitch = CDbl(GetIniItem(IMG_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", 40, True))
    
    curImg.DropNum = CDbl(GetIniItem(IMG_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", 100, True))

    For i% = 0 To 15
        curImg.BlockVlaue(i%) = CDbl(GetIniItem(IMG_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, 0, True))
        If curImg.BlockVlaue(i%) > 100 Then
            curImg.BlockVlaue(i%) = 100
        End If
        If curImg.BlockVlaue(i%) < 50 Then
            curImg.BlockVlaue(i%) = 50
        End If
    Next i%

    curGlass.SizeX = ((curImg.ActEndNzl - curImg.ActStartNzl + 1) * curImg.NzlPitch * 5) / 1000
    curGlass.SizeY = CDbl(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "GLASS_HEIGHT", 10, True))
    curGlass.OffsetX = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_X", 10, True))
    curGlass.OffsetY = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_Y", 10, True))
    curGlass.PannelHeight = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "PANNEL_HEIGHT", 10, True))
    curGlass.PannelWidth = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "PANNEL_WIDTH", 10, True))
    curGlass.CountHor = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "COUNT_HOR", 1, True))
    curGlass.CountVer = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "COUNT_VER", 1, True))
    If curGlass.CountHor < 1 Then
        curGlass.CountHor = 1
    End If
    If curGlass.CountVer <= 1 Then
        curGlass.CountVer = 1
    End If
    ReDim curGlass.StepHor(1 To curGlass.CountHor)
    ReDim curGlass.StepVer(1 To curGlass.CountVer)
    For i% = 1 To curGlass.CountHor
        curGlass.StepHor(i%) = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "PANNEL_HOR_STEP_" & i%, 10, True))
    Next i%
    For i% = 1 To curGlass.CountVer
        curGlass.StepVer(i%) = CInt(GetIniItem(IMG_EDIT_INI, "GLASS_INFO", "PANNEL_VER_STEP_" & i%, 10, True))
    Next i%
End Sub
Sub DrawActNzl()
    Me.picNzl.Cls
    Me.picNzl.DrawWidth = 2
    For i% = 0 To 512 Step 4
        picNzl.PSet (shpHead.Left + 12 + i%, shpHead.Top + 20), vbBlack
    Next i%
    lblNzl(0).Visible = False
    lblNzl(1).Visible = False
    Me.picNzl.DrawWidth = 4
    For i% = shpHead.Left + 12 + cwnActNzl(0).Value To shpHead.Left + 13 + cwnActNzl(1).Value Step 4
        picNzl.PSet (i%, shpHead.Top + 20), vbGreen
    Next i%
    selNzl.Visible = False
    lblActNzlCnt.Caption = "È°¼º³ëÁñ : " & cwnActNzl(1).Value - cwnActNzl(0).Value + 1 & "°³"
End Sub
Private Sub cmdClose_Click()
    Unload Me
    'End
End Sub
Private Sub cmdSaveGlass_Click()
    DrawGlass
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "GLASS_WIDTH", cwnSizeX.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "GLASS_HEIGHT", cwnSIzeY.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_X", cwnOffX.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_Y", cwnOffY.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "PANNEL_WIDTH", cwnWidth.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "PANNEL_HEIGHT", cwnHeight.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "COUNT_HOR", cwnCountHor.Value
    SetIniItem IMG_EDIT_INI, "GLASS_INFO", "COUNT_VER", cwnCountVer.Value
End Sub
Sub DrawGlass()

    For i% = 1 To ShapePannel.UBound
        Unload ShapePannel(i%)
    Next i%
    grdStep(0).Clear
    grdStep(1).Clear
    grdStep(0).Rows = 1
    grdStep(1).Rows = 1

    curGlass.SizeX = cwnSizeX.Value
    curGlass.SizeY = cwnSIzeY.Value
    curGlass.OffsetX = cwnOffX.Value
    curGlass.OffsetY = cwnOffY.Value
    curGlass.PannelWidth = cwnWidth.Value
    curGlass.PannelHeight = cwnHeight.Value
    curGlass.CountHor = cwnCountHor.Value
    curGlass.CountVer = cwnCountVer.Value
    
    For i% = 100 To 10 Step -10
        glass_y# = curGlass.SizeY * (i% / 100)
        glass_x# = curGlass.SizeX * (i% / 100)
        If glass_y# >= glass_x# Then
            If glass_y# < picGlass.ScaleHeight Then
                glass_scale# = (i% / 100)
                Exit For
            End If
        Else
            If glass_x# < picGlass.ScaleWidth Then
                glass_scale# = (i% / 100)
                Exit For
            End If
        End If
    Next i%
    
    
    ShapeGlass.Width = curGlass.SizeX * glass_scale#
    ShapeGlass.Height = curGlass.SizeY * glass_scale#
    ShapeGlass.Top = (picGlass.ScaleHeight / 2) - (ShapeGlass.Height / 2)
    ShapeGlass.Left = (picGlass.ScaleWidth / 2) - (ShapeGlass.Width / 2)
    ShapePannel(0).Top = ShapeGlass.Top + (curGlass.OffsetY * glass_scale#)
    ShapePannel(0).Left = ShapeGlass.Left + (curGlass.OffsetX * glass_scale#)
    ShapePannel(0).Width = curGlass.PannelWidth * glass_scale#
    ShapePannel(0).Height = curGlass.PannelHeight * glass_scale#
    cur_top% = ShapePannel(0).Top
    grdStep(0).Rows = curGlass.CountHor
'    For j% = 1 To curGlass.CountHor - 1
'        grdStep(0).RowHeight(j%) = cwnGrdStep(0).Height
'        grdStep(0).FixedRows = 1
'        grdStep(0).TextMatrix(0, 0) = "Pannel"
'        grdStep(0).TextMatrix(0, 1) = "Distance"
'
'        grdStep(0).TextMatrix(j%, 0) = "Step X" & j%
'        grdStep(0).TextMatrix(j%, 1) = curGlass.OffsetX
'    Next j%
        
    cur_index% = 0
    i_index% = 0
    For i% = 1 To (curGlass.CountVer)
        For j% = 1 To curGlass.CountHor - 1
            grdStep(0).RowHeight(j%) = cwnGrdStep(0).Height
            grdStep(0).FixedRows = 1
            grdStep(0).TextMatrix(0, 0) = "Pannel"
            grdStep(0).TextMatrix(0, 1) = "Distance"

            grdStep(0).TextMatrix(j%, 0) = "Step X" & j%
            grdStep(0).TextMatrix(j%, 1) = curGlass.OffsetX
            cur_index% = cur_index% + 1
            Load ShapePannel(cur_index%)
            ShapePannel(cur_index%).Top = cur_top%
            ShapePannel(cur_index%).Left = ShapePannel(0).Left + (ShapePannel(0).Width * j%) + (curGlass.OffsetX * j% * glass_scale#)
            ShapePannel(cur_index%).Width = curGlass.PannelWidth * glass_scale#
            ShapePannel(cur_index%).Height = curGlass.PannelHeight * glass_scale#
            ShapePannel(cur_index%).Visible = True
        Next j%
        If i% = (curGlass.CountVer) Then Exit For
        grdStep(1).TextMatrix(0, 0) = "Pannel"
        grdStep(1).TextMatrix(0, 1) = "Distance"
        grdStep(1).Rows = grdStep(1).Rows + 1
        grdStep(1).FixedRows = 1
        i_index% = i_index% + 1
        grdStep(1).TextMatrix(i_index%, 0) = "Step Y" & i_index%
        grdStep(1).TextMatrix(i_index%, 1) = curGlass.OffsetY
        grdStep(1).RowHeight(i_index%) = cwnGrdStep(1).Height
        
        cur_index% = cur_index% + 1
        cur_top% = ShapePannel(0).Top + (ShapePannel(0).Height * i%) + (curGlass.OffsetY * i% * glass_scale#)
        Load ShapePannel(cur_index%)
        ShapePannel(cur_index%).Top = cur_top%
        ShapePannel(cur_index%).Left = ShapePannel(0).Left
        ShapePannel(cur_index%).Width = curGlass.PannelWidth * glass_scale#
        ShapePannel(cur_index%).Height = curGlass.PannelHeight * glass_scale#
        ShapePannel(cur_index%).Visible = True
    Next i%
End Sub
Sub DrawGlass2()

    For i% = 1 To ShapePannel.UBound
        Unload ShapePannel(i%)
    Next i%
    grdStep(0).Clear
    grdStep(1).Clear
    grdStep(0).Rows = 1
    grdStep(1).Rows = 1

    curGlass.SizeX = cwnSizeX.Value
    curGlass.SizeY = cwnSIzeY.Value
    curGlass.OffsetX = cwnOffX.Value
    curGlass.OffsetY = cwnOffY.Value
    curGlass.PannelWidth = cwnWidth.Value
    curGlass.PannelHeight = cwnHeight.Value
    curGlass.CountHor = cwnCountHor.Value
    curGlass.CountVer = cwnCountVer.Value
    
    For i% = 100 To 10 Step -10
        glass_y# = curGlass.SizeY * (i% / 100)
        glass_x# = curGlass.SizeX * (i% / 100)
        If glass_y# >= glass_x# Then
            If glass_y# < picGlass.ScaleHeight Then
                glass_scale# = (i% / 100)
                Exit For
            End If
        Else
            If glass_x# < picGlass.ScaleWidth Then
                glass_scale# = (i% / 100)
                Exit For
            End If
        End If
    Next i%
    
    
    ShapeGlass.Width = curGlass.SizeX * glass_scale#
    ShapeGlass.Height = curGlass.SizeY * glass_scale#
    ShapeGlass.Top = (picGlass.ScaleHeight / 2) - (ShapeGlass.Height / 2)
    ShapeGlass.Left = (picGlass.ScaleWidth / 2) - (ShapeGlass.Width / 2)
    ShapePannel(0).Top = ShapeGlass.Top + curGlass.OffsetY * glass_scale#
    ShapePannel(0).Left = ShapeGlass.Left + curGlass.OffsetX * glass_scale#
    ShapePannel(0).Width = curGlass.PannelWidth * glass_scale#
    ShapePannel(0).Height = curGlass.PannelHeight * glass_scale#
    cur_top% = ShapePannel(0).Top
    cur_index% = 0
    i_index% = 0
    grdStep(0).Rows = curGlass.CountHor
'    For j% = 1 To curGlass.CountHor - 1
'        grdStep(0).RowHeight(j%) = cwnGrdStep(0).Height
'        grdStep(0).FixedRows = 1
'        grdStep(0).TextMatrix(0, 0) = "Pannel"
'        grdStep(0).TextMatrix(0, 1) = "Distance"
'
'        grdStep(0).TextMatrix(j%, 0) = "Step X" & j%
'        grdStep(0).TextMatrix(j%, 1) = curGlass.OffsetX
'    Next j%
    tmp_added_height# = 0
    For i% = 1 To curGlass.CountVer
        tmp_added_width# = 0
        For j% = 1 To curGlass.CountHor - 1
            grdStep(0).RowHeight(j%) = cwnGrdStep(0).Height
            grdStep(0).FixedRows = 1
            grdStep(0).TextMatrix(0, 0) = "Pannel"
            grdStep(0).TextMatrix(0, 1) = "Distance"

            grdStep(0).TextMatrix(j%, 0) = "Step X" & j%
            grdStep(0).TextMatrix(j%, 1) = curGlass.StepHor(j%)
            cur_index% = cur_index% + 1
            Load ShapePannel(cur_index%)
            ShapePannel(cur_index%).Top = cur_top%
            ShapePannel(cur_index%).Left = ShapePannel(0).Left + (ShapePannel(0).Width * j%) + tmp_added_width# + (curGlass.StepHor(j%) * glass_scale#)
            ShapePannel(cur_index%).Width = curGlass.PannelWidth * glass_scale#
            ShapePannel(cur_index%).Height = curGlass.PannelHeight * glass_scale#
            ShapePannel(cur_index%).Visible = True
            tmp_added_width# = tmp_added_width# + (curGlass.StepHor(j%) * glass_scale#)
        Next j%
        If i% = (curGlass.CountVer) Then Exit For
        grdStep(1).TextMatrix(0, 0) = "Pannel"
        grdStep(1).TextMatrix(0, 1) = "Distance"
        grdStep(1).Rows = grdStep(1).Rows + 1
        grdStep(1).FixedRows = 1
        i_index% = i_index% + 1
        grdStep(1).TextMatrix(i_index%, 0) = "Step Y" & i_index%
        grdStep(1).TextMatrix(i_index%, 1) = curGlass.StepVer(i%)
        grdStep(1).RowHeight(i_index%) = cwnGrdStep(1).Height
        
        cur_index% = cur_index% + 1
        cur_top% = ShapePannel(0).Top + (ShapePannel(0).Height * i%) + tmp_added_height# + (curGlass.StepVer(i%) * glass_scale#)
        Load ShapePannel(cur_index%)
        ShapePannel(cur_index%).Top = cur_top%
        ShapePannel(cur_index%).Left = ShapePannel(0).Left
        ShapePannel(cur_index%).Width = curGlass.PannelWidth * glass_scale#
        ShapePannel(cur_index%).Height = curGlass.PannelHeight * glass_scale#
        ShapePannel(cur_index%).Visible = True
        tmp_added_height# = tmp_added_height# + (curGlass.StepVer(i%) * glass_scale#)
    Next i%
End Sub
Private Sub cmdSaveImgInfo_Click()
    curImg.NzlPitch = cwnNzlPitch.Value
    curImg.ImgPitch = cwnImgPitch.Value
    curImg.DotPitch = cwnDotPitch.Value
    DrawBunSaImg
    SetIniItem IMG_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", cwnNzlPitch.Value
    SetIniItem IMG_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", cwnImgPitch.Value
    SetIniItem IMG_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", cwnDotPitch.Value
    
    
    If optImgMode(0).Value = True Then
        cwnDist.Value = ((curImg.DotPitch + ((cwnDrop.Value - 1) * (curImg.DotPitch * 2))) / 1000)
    End If
    If optImgMode(1).Value = True Then
        cwnDrop.Value = (Int(cwnDist.Value / ((curImg.DotPitch * 2) / 1000)) + 1)
    End If

End Sub
Private Sub cmdSavePannel_Click()
    ReDim curGlass.StepHor(1 To grdStep(0).Rows - 1)
    ReDim curGlass.StepVer(1 To grdStep(1).Rows - 1)
    cwnGrdStep(0).Visible = False
    cwnGrdStep(1).Visible = False
    For i% = 1 To grdStep(0).Rows - 1
        curGlass.StepHor(i%) = grdStep(0).TextMatrix(i%, 1)
        SetIniItem IMG_EDIT_INI, "GLASS_INFO", "PANNEL_HOR_STEP_" & i%, grdStep(0).TextMatrix(i%, 1)
    Next i%
    For i% = 1 To grdStep(1).Rows - 1
        curGlass.StepVer(i%) = grdStep(1).TextMatrix(i%, 1)
        SetIniItem IMG_EDIT_INI, "GLASS_INFO", "PANNEL_VER_STEP_" & i%, grdStep(1).TextMatrix(i%, 1)
    Next i%
    DrawGlass2
End Sub
Private Sub cmdSaveSize_Click()
    'SetIniItem IMG_EDIT_INI, "IMAGE_INFO", "IMAGE_SIZE", cwnDist.Value * 1000
    curImg.DropNum = cwnDrop.Value
    SetIniItem IMG_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", cwnDrop.Value
End Sub
Private Sub cwnActNzl_ValueChanged(Index As Integer, Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    If bMouseDown = False Then
        DrawActNzl
    End If
End Sub
Private Sub cwnDist_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    If optImgMode(1).Value = True Then
        cwnDrop.Value = (Int(cwnDist.Value / ((curImg.DotPitch * 2) / 1000)) + 1)
    End If
End Sub

Private Sub cwnDotPitch_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    DrawBunSaImg
End Sub
Private Sub cwnDrop_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    If optImgMode(0).Value = True Then
        cwnDist.Value = ((curImg.DotPitch + ((cwnDrop.Value - 1) * (curImg.DotPitch * 2))) / 1000)
    End If
End Sub
Private Sub cwnImgPitch_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    DrawBunSaImg
End Sub
Private Sub cwnNzlPitch_ValueChanged(Value As Variant, PreviousValue As Variant, ByVal OutOfRange As Boolean)
    DrawBunSaImg
End Sub

Private Sub Form_Load()
    'LoadBMPPalette App.Path & "\Data\Sample.bmp"
    IMG_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"
'    DisplayImage App.Path & "\Data\init.bmp"
'    OpenBMP_File App.Path & "\Data\init.bmp", curImg, strData$

    LoadParam
    mkSampleBMP_D curImg
    DisplayImage App.Path & "\Data\Sample.bmp"
    
    file_path$ = App.Path & "\Data\" & "32by32_Matrix.csv"
    Dither_Load_32_Matrix file_path$
    
End Sub
Sub DisplayImage(ByVal strpath As String)

    picBuf.Picture = LoadPicture(strpath)
    Me.picImage.Cls
    Me.picImage.Width = Me.picBuf.Width
    If Me.picBox1.Height < Me.picBuf.Height Then
        Me.picBuf.Height = Me.picBox1.Height
    End If
    Me.picImage.Height = Me.picBuf.Height
    Call StretchBlt(Me.picImage.hDC, 0, 0, picBuf.Width, picBuf.Height, picBuf.hDC, 0, 0, picBuf.Width, picBuf.Height, SRCCOPY)
    SetImgPos
    Me.sldRatio.Value = 1
    
End Sub
Sub InitParaSet()
    LoadParam

    cwnActNzl(0).Value = curImg.ActStartNzl
    cwnActNzl(1).Value = curImg.ActEndNzl
    DrawActNzl

    cwnNzlPitch.Value = curImg.NzlPitch
    cwnImgPitch.Value = curImg.ImgPitch
    cwnDotPitch.Value = curImg.DotPitch
    DrawBunSaImg

    cwnDrop.Value = curImg.DropNum
    cwnDist.Value = ((curImg.DotPitch + ((cwnDrop.Value - 1) * (curImg.DotPitch * 2))) / 1000)

    cwnSizeX.Value = curGlass.SizeX
    cwnSIzeY.Value = curGlass.SizeY
    cwnOffX.Value = curGlass.OffsetX
    cwnOffY.Value = curGlass.OffsetY
    cwnWidth.Value = curGlass.PannelWidth
    cwnHeight.Value = curGlass.PannelHeight
    cwnCountHor.Value = curGlass.CountHor
    cwnCountVer.Value = curGlass.CountVer

    grdStep(0).Rows = curGlass.CountHor + 1
    grdStep(1).Rows = curGlass.CountVer + 1
    For i% = 1 To curGlass.CountHor
        grdStep(0).TextMatrix(i%, 1) = curGlass.StepHor(i%)
    Next i%
    For i% = 1 To curGlass.CountVer
        grdStep(1).TextMatrix(i%, 1) = curGlass.StepVer(i%)
    Next i%
    
    grdStep(0).ColWidth(0) = grdStep(0).Width - cwnGrdStep(0).Width - 100
    grdStep(0).ColWidth(1) = cwnGrdStep(0).Width
    grdStep(1).ColWidth(0) = grdStep(1).Width - cwnGrdStep(1).Width - 100
    grdStep(1).ColWidth(1) = cwnGrdStep(1).Width
    DrawGlass2

    Me.Show
End Sub
Sub DrawBunSaImg()
    drwDspScale# = 1 / CDbl(Me.cwnImgPitch.Value) * 10
    Me.picDots.Cls
    Me.picDots.DrawWidth = 1
    For i% = 0 To picDots.ScaleWidth Step curImg.ImgPitch * drwDspScale#
        Me.picDots.Line (i%, 0)-(i%, picDots.ScaleHeight)
    Next i%

    For i% = 0 To picDots.ScaleHeight Step curImg.ImgPitch * drwDspScale#
        Me.picDots.Line (0, i%)-(picDots.ScaleWidth, i%)
    Next i%
    Me.picDots.DrawWidth = curImg.ImgPitch * drwDspScale#
''
''    For j% = curImg.ImgPitch * drwDspScale# To picDots.ScaleHeight Step curImg.DotPitch * drwDspScale#
''        For i% = curImg.ImgPitch * drwDspScale# To picDots.ScaleWidth Step curImg.ImgPitch * drwDspScale# * 2
''            Me.picDots.PSet (i%, j%)
''        Next i%
''
''        j% = j% + curImg.DotPitch * drwDspScale#
''        For i% = curImg.ImgPitch * drwDspScale# * 2 To picDots.ScaleWidth Step curImg.ImgPitch * drwDspScale# * 2
''            Me.picDots.PSet (i%, j%)
''        Next i%
''        DoEvents
''    Next j%
    
    For j% = curImg.ImgPitch To picDots.ScaleHeight / drwDspScale# Step curImg.DotPitch
        YPos# = Int(CDbl(j%) / curImg.ImgPitch) * curImg.ImgPitch * drwDspScale#
        
        For i% = curImg.ImgPitch * drwDspScale# To picDots.ScaleWidth Step curImg.ImgPitch * drwDspScale# * 2
            Me.picDots.PSet (i%, YPos#)
        Next i%
        
        j% = j% + curImg.DotPitch
        YPos# = Int(CDbl(j%) / curImg.ImgPitch) * curImg.ImgPitch * drwDspScale#
        For i% = curImg.ImgPitch * drwDspScale# * 2 To picDots.ScaleWidth Step curImg.ImgPitch * drwDspScale# * 2
            Me.picDots.PSet (i%, YPos#)
        Next i%
        DoEvents
    Next j%
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
'    Unload Me
'    End
End Sub

Private Sub grdStep_Click(Index As Integer)
    If grdStep(Index).Col = 0 Then
        grdStep(Index).Col = 1
        Exit Sub
    End If
    cwnGrdStep(Index).Top = grdStep(Index).CellTop + grdStep(Index).Top
    cwnGrdStep(Index).Left = grdStep(Index).CellLeft + grdStep(Index).Left
    cwnGrdStep(Index).Value = grdStep(Index).Text
    cwnGrdStep(Index).Visible = True
End Sub
Private Sub optImgMode_Click(Index As Integer)
    If Index = 0 Then
        cwnDrop.Enabled = True
        cwnDist.Enabled = False
    Else
        cwnDrop.Enabled = False
        cwnDist.Enabled = True
    End If
End Sub

Private Sub picNzl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        bMouseDown = True
        picNzl.Cls
        Me.picNzl.DrawWidth = 2
        For i% = 0 To 512 Step 4
            picNzl.PSet (shpHead.Left + 12 + i%, shpHead.Top + 20), vbBlack
        Next i%

        start_x% = X
        If start_x% < shpHead.Left + 12 Then start_x% = shpHead.Left + 12
        If start_x% > shpHead.Left + 512 Then start_x% = shpHead.Left + 512
        start_y% = shpHead.Top + 20
        selNzl.Height = 4
        selNzl.Width = 4
        selNzl.Top = start_y%
        selNzl.Left = start_x% - (selNzl.Width / 2)
        selNzl.Visible = True
        If CInt(lblNzl(0).Caption) < CInt(cwnActNzl(1).Value) Then cwnActNzl(0).Value = lblNzl(0).Caption
'    End If
End Sub
Private Sub picNzl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If (Button <> 0) And (selNzl.Visible = True) Then
        
        lblNzl(1).Visible = True
        end_x% = X
        If X < shpHead.Left + 12 Then end_x% = shpHead.Left + 12 + 1
        If X <= selNzl.Left Then end_x% = selNzl.Left + 1 ' CInt(lblNzl(0).Caption) + 1
        If end_x% > shpHead.Left + 524 Then end_x% = shpHead.Left + 524
        selNzl.Width = end_x% - selNzl.Left
        lblNzl(1).Caption = end_x% - (shpHead.Left + 12)
        lblNzl(1).Top = shpHead.Top - lblNzl(1).Height
        lblNzl(1).Left = end_x%
    ElseIf X > shpHead.Left And X < shpHead.Left + shpHead.Width And Y > shpHead.Top And Y < shpHead.Top + shpHead.Height Then
        start_x% = X
        If X < shpHead.Left + 12 Then start_x% = shpHead.Left + 12 + 1
        If start_x% > shpHead.Left + 524 Then start_x% = shpHead.Left + 524
        lblNzl(0).Caption = start_x% - (shpHead.Left + 12)
        lblNzl(0).Top = shpHead.Top - lblNzl(0).Height
        lblNzl(0).Left = start_x%
        lblNzl(0).Visible = True
    Else
        lblNzl(0).Visible = False
    End If
End Sub
Private Sub picNzl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cwnActNzl(1).Value = lblNzl(1).Caption
    lblNzl(1).Visible = False
        Me.picNzl.DrawWidth = 4
        For i% = selNzl.Left To selNzl.Left + selNzl.Width Step 4
            picNzl.PSet (i%, shpHead.Top + 20), vbGreen
        Next i%
        selNzl.Visible = False
        bMouseDown = False
End Sub


