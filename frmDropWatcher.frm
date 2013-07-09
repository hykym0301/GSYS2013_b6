VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{6B9BD678-9710-44D9-9282-A088094E4214}#1.0#0"; "ProntoCam.dll"
Begin VB.Form frmDropWatcher 
   BorderStyle     =   1  '단일 고정
   Caption         =   "DropWatcher"
   ClientHeight    =   11565
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   17655
   Icon            =   "frmDropWatcher.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11565
   ScaleWidth      =   17655
   StartUpPosition =   2  '화면 가운데
   Begin VB.Frame Frame5 
      Caption         =   "Control"
      Height          =   1680
      Left            =   15510
      TabIndex        =   20
      Top             =   5955
      Width           =   2040
      Begin VB.CommandButton cmdFunc 
         Caption         =   "분사"
         Height          =   600
         Index           =   0
         Left            =   120
         Picture         =   "frmDropWatcher.frx":058A
         Style           =   1  '그래픽
         TabIndex        =   22
         Top             =   300
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "정지"
         Height          =   600
         Index           =   1
         Left            =   135
         Picture         =   "frmDropWatcher.frx":0B14
         Style           =   1  '그래픽
         TabIndex        =   21
         Top             =   945
         Width           =   1815
      End
   End
   Begin VB.Frame Frame4 
      Height          =   915
      Left            =   15510
      TabIndex        =   18
      Top             =   10620
      Width           =   2040
      Begin VB.CommandButton cmdFunc 
         Caption         =   "종료"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   6
         Left            =   120
         Picture         =   "frmDropWatcher.frx":109E
         Style           =   1  '그래픽
         TabIndex        =   19
         Top             =   210
         Width           =   1815
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Image"
      Height          =   2925
      Left            =   15510
      TabIndex        =   13
      Top             =   7710
      Width           =   2040
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   2
         Left            =   120
         Picture         =   "frmDropWatcher.frx":1628
         Style           =   1  '그래픽
         TabIndex        =   17
         Top             =   300
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Open"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   3
         Left            =   120
         Picture         =   "frmDropWatcher.frx":1BB2
         Style           =   1  '그래픽
         TabIndex        =   16
         Top             =   945
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Live"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   4
         Left            =   120
         Picture         =   "frmDropWatcher.frx":213C
         Style           =   1  '그래픽
         TabIndex        =   15
         Top             =   1590
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Grab"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   5
         Left            =   120
         Picture         =   "frmDropWatcher.frx":26C6
         Style           =   1  '그래픽
         TabIndex        =   14
         Top             =   2220
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Strobe Trigger"
      Height          =   2250
      Left            =   15495
      TabIndex        =   4
      Top             =   1275
      Width           =   2040
      Begin MSComctlLib.Slider Slider2 
         Height          =   180
         Left            =   135
         TabIndex        =   10
         Top             =   1875
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   318
         _Version        =   393216
      End
      Begin MSComctlLib.Slider Slider3 
         Height          =   180
         Left            =   105
         TabIndex        =   11
         Top             =   585
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   318
         _Version        =   393216
      End
      Begin MSComctlLib.Slider Slider4 
         Height          =   180
         Left            =   120
         TabIndex        =   12
         Top             =   1245
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   318
         _Version        =   393216
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Width(0)"
         Height          =   180
         Left            =   165
         TabIndex        =   7
         Top             =   1650
         Width           =   690
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Volt  (0)"
         Height          =   180
         Left            =   165
         TabIndex        =   6
         Top             =   1035
         Width           =   675
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Delay(0)"
         Height          =   180
         Left            =   150
         TabIndex        =   5
         Top             =   360
         Width           =   720
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frequency"
      Height          =   1110
      Left            =   15495
      TabIndex        =   3
      Top             =   90
      Width           =   2040
      Begin MSComctlLib.Slider Slider1 
         Height          =   180
         Left            =   120
         TabIndex        =   8
         Top             =   630
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   318
         _Version        =   393216
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "5kHz"
         Height          =   180
         Left            =   240
         TabIndex        =   9
         Top             =   285
         Width           =   405
      End
   End
   Begin VB.PictureBox PicDisp 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      FillColor       =   &H008080FF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   11520
      Left            =   0
      ScaleHeight     =   764
      ScaleMode       =   3  '픽셀
      ScaleWidth      =   1020
      TabIndex        =   0
      Top             =   0
      Width           =   15360
      Begin PRONTOCAMLibCtl.ProntoCam AD 
         Height          =   1890
         Left            =   240
         TabIndex        =   2
         Top             =   660
         Visible         =   0   'False
         Width           =   3135
         _cx             =   5530
         _cy             =   3334
         Camera          =   -1
         Format          =   -1
         Rate            =   1.875
         Brightness      =   0
         BrightnessControl=   -1
         AutoExposureRef =   0
         AutoExposure    =   -1
         Sharpness       =   0
         SharpnessControl=   -1
         Hue             =   0
         HueControl      =   -1
         Saturation      =   0
         SaturationControl=   -1
         WhiteBalanceUB  =   0
         WhiteBalanceVR  =   0
         WhiteBalanceControl=   -1
         Gamma           =   0
         GammaControl    =   -1
         Shutter         =   0
         ShutterControl  =   -1
         Gain            =   0
         GainControl     =   -1
         Iris            =   0
         IrisControl     =   -1
         Focus           =   0
         FocusControl    =   -1
         Zoom            =   0
         ZoomControl     =   -1
         SizeX           =   0
         SizeY           =   0
         StartX          =   0
         StartY          =   0
         Trigger         =   0
         TriggerMode     =   0
         TriggerCounter  =   0
         TriggerPolarity =   1
         PacketSize      =   -1
         Timeout         =   10
         Asynch          =   1
         Acquire         =   0
         ScrollBars      =   0
         ScrollX         =   0
         ScrollY         =   0
         Palette         =   0
         Edge            =   0
         SwapBytes       =   0
         Bayer           =   0
         BayerLayout     =   0
         TriggerSource   =   0
         BitShift        =   0
         Magnification   =   1
         Overlay         =   0
         OverlayColor    =   65535
         Average         =   0
         Display         =   1
         Flip            =   0
         Pan             =   0
         PanControl      =   -1
         Tilt            =   0
         TiltControl     =   -1
         Temperature     =   0
         TemperatureControl=   -1
         OpticalFilter   =   0
         OpticalFilterControl=   0
         WhiteShading    =   0
         WhiteShadingControl=   -1
         TriggerDelay    =   0
         Rotate          =   0
         AntiTearing     =   0
         MonitorSync     =   0
         Integrate       =   0
         IntegrateWnd    =   16
         WindowLevel     =   0
         FontCharset     =   1
         FontHeight      =   -26
         FontWeight      =   0
         FontItalic      =   0
         FontStrikeout   =   0
         FontUnderline   =   0
         FontName        =   "Arial"
         OverlayFontCharset=   1
         OverlayFontHeight=   -40
         OverlayFontWeight=   0
         OverlayFontItalic=   0
         OverlayFontStrikeout=   0
         OverlayFontUnderline=   0
         OverlayFontName =   "Arial"
         CamName         =   ""
      End
      Begin VB.PictureBox PicMain 
         Height          =   465
         Left            =   0
         ScaleHeight     =   405
         ScaleWidth      =   555
         TabIndex        =   25
         Top             =   0
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.PictureBox PicTemp 
         Height          =   465
         Left            =   1110
         ScaleHeight     =   405
         ScaleWidth      =   555
         TabIndex        =   24
         Top             =   3945
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   495
         Left            =   1545
         TabIndex        =   23
         Top             =   8205
         Width           =   2550
      End
      Begin VB.Label lblCamInfo 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H80000005&
         Caption         =   "Camera unplugged."
         BeginProperty Font 
            Name            =   "Arial Black"
            Size            =   27.75
            Charset         =   0
            Weight          =   900
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   870
         Left            =   4785
         TabIndex        =   1
         Top             =   4950
         Visible         =   0   'False
         Width           =   6045
      End
   End
End
Attribute VB_Name = "frmDropWatcher"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub AD_CameraPlugged(ByVal Camera As Integer)
On Error GoTo syserr:
    lblCamInfo.Visible = False
Exit Sub
syserr:
    'MsgBox Err.Description
End Sub

Private Sub AD_CameraUnplugged(ByVal Camera As Integer)
On Error GoTo syserr:
    lblCamInfo.Visible = True
Exit Sub
syserr:
    'MsgBox Err.Description
End Sub

Private Sub AD_FrameAcquired()
On Error GoTo syserr:
    PicDisp.Picture = AD.GetPicture()

'    PicTemp.Picture = AD.GetPicture()
'    BitBlt PicMain.hDC, 0, 0, 1024, 768, PicTemp.hDC, 0, 0, SRCCOPY
'    BitBlt PicDisp.hDC, 0, 0, 1024, 768, PicMain.hDC, 0, 0, SRCCOPY
Exit Sub
syserr:
    'MsgBox Err.Description
End Sub

Private Sub cmdFunc_Click(Index As Integer)
On Error GoTo syserr:
Select Case Index
    Case 0 ' fire
    Case 1 ' stop
    Case 2 ' save
    Case 3 ' open
    Case 4 ' live
    Case 5 ' stop
    Case 6 ' exit
        Unload Me
End Select
Exit Sub
syserr:
End Sub

Private Sub Form_Load()
On Error GoTo syserr:
    Call Live
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo syserr:
Exit Sub
syserr:
    MsgBox Err.Description

End Sub

Private Sub Halt()
On Error GoTo syserr:
    AD.Acquire = False
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Live()
On Error GoTo syserr:
    AD.Camera = 0
    AD.mode = 3
    AD.Rate = 15
    'AD.Flip = fnFlipType
    AD.Acquire = True
Exit Sub
syserr:
    MsgBox Err.Description
End Sub
