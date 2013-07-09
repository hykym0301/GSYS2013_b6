VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmSetup_KM_Head 
   Caption         =   "IJCS-1 - Head Setup Parameter"
   ClientHeight    =   5760
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15870
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
   ScaleHeight     =   5760
   ScaleWidth      =   15870
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame1 
      Caption         =   "Head 선택"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   30
      TabIndex        =   1
      Top             =   75
      Width           =   4335
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         ItemData        =   "frmSetup_KM_Head.frx":0000
         Left            =   390
         List            =   "frmSetup_KM_Head.frx":000A
         TabIndex        =   2
         Text            =   "Combo1"
         Top             =   240
         Width           =   2040
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4710
      Left            =   15
      TabIndex        =   0
      Top             =   1035
      Width           =   15825
      _ExtentX        =   27914
      _ExtentY        =   8308
      _Version        =   393216
      Tabs            =   11
      TabsPerRow      =   12
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
      TabCaption(0)   =   "Head"
      TabPicture(0)   =   "frmSetup_KM_Head.frx":0022
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
      TabCaption(1)   =   "STB"
      TabPicture(1)   =   "frmSetup_KM_Head.frx":003E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Waveform"
      TabPicture(2)   =   "frmSetup_KM_Head.frx":005A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      TabCaption(3)   =   "Voltage"
      TabPicture(3)   =   "frmSetup_KM_Head.frx":0076
      Tab(3).ControlEnabled=   0   'False
      Tab(3).ControlCount=   0
      TabCaption(4)   =   "Vv-Rate"
      TabPicture(4)   =   "frmSetup_KM_Head.frx":0092
      Tab(4).ControlEnabled=   0   'False
      Tab(4).ControlCount=   0
      TabCaption(5)   =   "Temp"
      TabPicture(5)   =   "frmSetup_KM_Head.frx":00AE
      Tab(5).ControlEnabled=   0   'False
      Tab(5).ControlCount=   0
      TabCaption(6)   =   "Fire"
      TabPicture(6)   =   "frmSetup_KM_Head.frx":00CA
      Tab(6).ControlEnabled=   0   'False
      Tab(6).ControlCount=   0
      TabCaption(7)   =   "Delay"
      TabPicture(7)   =   "frmSetup_KM_Head.frx":00E6
      Tab(7).ControlEnabled=   0   'False
      Tab(7).ControlCount=   0
      TabCaption(8)   =   "Nozzle Delay"
      TabPicture(8)   =   "frmSetup_KM_Head.frx":0102
      Tab(8).ControlEnabled=   0   'False
      Tab(8).ControlCount=   0
      TabCaption(9)   =   "Flushing"
      TabPicture(9)   =   "frmSetup_KM_Head.frx":011E
      Tab(9).ControlEnabled=   0   'False
      Tab(9).ControlCount=   0
      TabCaption(10)  =   "Image"
      TabPicture(10)  =   "frmSetup_KM_Head.frx":013A
      Tab(10).ControlEnabled=   0   'False
      Tab(10).ControlCount=   0
   End
End
Attribute VB_Name = "frmSetup_KM_Head"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
