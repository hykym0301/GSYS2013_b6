VERSION 5.00
Object = "{A700DC51-04A2-11D3-BF87-00A024D24992}#8.0#0"; "MIL.ocx"
Begin VB.Form frmHeadAlign 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Head Zero Align"
   ClientHeight    =   7350
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11790
   Icon            =   "frmHeadAlign.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7350
   ScaleWidth      =   11790
   StartUpPosition =   2  '화면 가운데
   Begin MIL.Display Display1 
      Height          =   7200
      Left            =   60
      TabIndex        =   0
      Top             =   105
      Width           =   9600
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   16933
      _ExtentY        =   12700
      _StockProps     =   1
      Name            =   "Display1"
      OwnerSystem     =   "System2"
      Image           =   "Image2"
      _FormatArrayListSize=   0
      _LUT.Data       =   "frmHeadAlign.frx":058A
      _OverlayLUT.Data=   "frmHeadAlign.frx":06BC
      Begin MIL.System System2 
         Height          =   480
         Left            =   7995
         TabIndex        =   1
         Top             =   6615
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "System2"
         SystemDescriptor=   "\\.\M_SYSTEM_METEOR_II"
         DeviceNumber    =   1
         _SerialPorts.SerialPortCount=   1
      End
      Begin MIL.Image Image1 
         Height          =   480
         Left            =   8505
         TabIndex        =   2
         Top             =   6600
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image1"
         OwnerSystem     =   "System2"
         SizeX           =   640
         SizeY           =   480
         NumberOfBands   =   3
         _CanDisplay     =   -1  'True
         CanGrab         =   -1  'True
         _LUT.Data       =   "frmHeadAlign.frx":07EE
         GammaCorrectionExponents(2)=   0
      End
      Begin MIL.Digitizer Digitizer1 
         Height          =   480
         Left            =   9030
         TabIndex        =   3
         Top             =   6600
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Digitizer1"
         OwnerSystem     =   "System2"
         Image           =   "Image1"
         DeviceNumber    =   268435456
         _FormatNameArrayListSize=   0
         _FormatArrayListSize=   0
         Format          =   "RS170"
         _LUT.Data       =   "frmHeadAlign.frx":0920
      End
      Begin MIL.Image Image2 
         Height          =   480
         Left            =   8025
         TabIndex        =   16
         Top             =   5850
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image2"
         ParentImage     =   "Image1"
         Band            =   4096
         GammaCorrectionExponents(2)=   0
      End
      Begin MIL.Image Image3 
         Height          =   480
         Left            =   8520
         TabIndex        =   17
         Top             =   5850
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image3"
         ParentImage     =   "Image1"
         Band            =   8192
         GammaCorrectionExponents(2)=   0
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00FF0000&
         Index           =   1
         X1              =   1755
         X2              =   1755
         Y1              =   4395
         Y2              =   3345
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   1
         X1              =   1785
         X2              =   1785
         Y1              =   2115
         Y2              =   3210
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00FF0000&
         Index           =   0
         X1              =   1125
         X2              =   2580
         Y1              =   3900
         Y2              =   3900
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   0
         X1              =   1065
         X2              =   2520
         Y1              =   2700
         Y2              =   2700
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Align Zero Angle: 0.1°"
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
         Height          =   225
         Left            =   255
         TabIndex        =   13
         Top             =   270
         Width           =   1800
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ch2"
      Height          =   270
      Left            =   10770
      TabIndex        =   19
      Top             =   6015
      Width           =   540
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ch1"
      Height          =   270
      Left            =   10065
      TabIndex        =   18
      Top             =   6015
      Width           =   540
   End
   Begin VB.Frame Frame1 
      Height          =   915
      Left            =   9735
      TabIndex        =   14
      Top             =   6390
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
         Index           =   7
         Left            =   120
         Picture         =   "frmHeadAlign.frx":0A52
         Style           =   1  '그래픽
         TabIndex        =   15
         Top             =   210
         Width           =   1815
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Image"
      Height          =   2925
      Left            =   9735
      TabIndex        =   8
      Top             =   2820
      Width           =   2040
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
         Index           =   6
         Left            =   105
         Picture         =   "frmHeadAlign.frx":0FDC
         Style           =   1  '그래픽
         TabIndex        =   12
         Top             =   2220
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
         Index           =   5
         Left            =   105
         Picture         =   "frmHeadAlign.frx":1566
         Style           =   1  '그래픽
         TabIndex        =   11
         Top             =   1590
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
         Index           =   4
         Left            =   105
         Picture         =   "frmHeadAlign.frx":1AF0
         Style           =   1  '그래픽
         TabIndex        =   10
         Top             =   945
         Width           =   1815
      End
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
         Index           =   3
         Left            =   105
         Picture         =   "frmHeadAlign.frx":207A
         Style           =   1  '그래픽
         TabIndex        =   9
         Top             =   300
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Zero Align"
      Height          =   2640
      Left            =   9735
      TabIndex        =   4
      Top             =   90
      Width           =   2025
      Begin VB.CommandButton cmdFunc 
         Caption         =   "계산 및 회전"
         Height          =   600
         Index           =   2
         Left            =   105
         Picture         =   "frmHeadAlign.frx":2604
         Style           =   1  '그래픽
         TabIndex        =   7
         Top             =   1920
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "끝점 체크"
         Height          =   600
         Index           =   1
         Left            =   105
         Picture         =   "frmHeadAlign.frx":2B8E
         Style           =   1  '그래픽
         TabIndex        =   6
         Top             =   1020
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "시작점 체크"
         Height          =   600
         Index           =   0
         Left            =   105
         Picture         =   "frmHeadAlign.frx":3118
         Style           =   1  '그래픽
         TabIndex        =   5
         Top             =   375
         Width           =   1815
      End
   End
End
Attribute VB_Name = "frmHeadAlign"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim fbCheckAlign(1) As Boolean
Dim fbMouseDown(1) As Boolean

Private Sub cmdFunc_Click(Index As Integer)
On Error GoTo syserr:

Select Case Index
    Case 0 ' 1st inspect
        fbCheckAlign(0) = True
    Case 1 ' 2nd inspect
        fbCheckAlign(1) = True
    Case 2 ' calc & rotate
        
        dDeltaX_mm# = gdHeadZeroAlignXPos_mm(1) - gdHeadZeroAlignXPos_mm(0)
        dDeltaY_mm# = gdHeadZeroAlignYPos_mm(1) - gdHeadZeroAlignYPos_mm(0)
        
        dMeasureAngle# = ArcCos(dslant#)
        
        Call SaveSetting(App.Title, "HEAD_ALIGN", "FIRST_X_MM", CStr(gdHeadZeroAlignXPos_mm(0)))
        Call SaveSetting(App.Title, "HEAD_ALIGN", "FIRST_Y_MM", CStr(gdHeadZeroAlignYPos_mm(0)))
        Call SaveSetting(App.Title, "HEAD_ALIGN", "SECOND_X_MM", CStr(gdHeadZeroAlignXPos_mm(1)))
        Call SaveSetting(App.Title, "HEAD_ALIGN", "SECOND_Y_MM", CStr(gdHeadZeroAlignYPos_mm(1)))
        
    Case 3 ' save
    Case 4 ' open
    Case 5 ' live
        Me.Digitizer1.GrabContinuous
    Case 6 ' stop
        Me.Digitizer1.Halt
    Case 7 ' exit
        Unload Me
End Select
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Command1_Click()
Me.Display1.image = Image2
End Sub

Private Sub Command2_Click()
Me.Display1.image = Image3
End Sub

Private Sub Digitizer1_GrabFrameEnd()
On Error GoTo syserr:
    
    Call DisplayTeachingPoint
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub MoveCenter(ByVal X As Integer, ByVal Y As Integer)
On Error GoTo syserr:
    
    
    If (PComm32_Init_Flag = False) Or (g_bIsPrinting = True) Then
        Exit Sub
    End If
    
    cen_x# = Image1.SizeX / 2
    cen_y# = Image1.SizeY / 2
    
    
    dFactorXmm# = gdHeadAlignCal_mm(0)
    dFactorYmm# = gdHeadAlignCal_mm(1)
    
    delta_pix_x# = X - cen_x#
    delta_pix_y# = Y - cen_y#
    
    delta_mov_x# = delta_pix_x# * dFactorXmm#
    delta_mov_y# = delta_pix_y# * dFactorYmm#
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_YAxis)

    PComm32_AxisJogMotion_Step PComm32_XAxis, delta_mov_x#, -1
    PComm32_AxisJogMotion_Step PComm32_YAxis, delta_mov_y#, 1
        
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Display1_MouseDown(Button As Integer, Shift As Integer, X As Long, Y As Long)
On Error GoTo syserr:
    
    If Button = 2 Then
        Call MoveCenter(X, Y)
    End If
   
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub DisplayTeachingPoint()
On Error GoTo syserr:
    
    If fbCheckAlign(0) = False And fbCheckAlign(1) = False Then
        cen_x# = Image1.SizeX / 2
        cen_y# = Image1.SizeY / 2
        
        nHA_PtX1% = gdHeadZeroAlignXPos_mm(0) - PComm32_Position_mm(PComm32_XAxis)
        nHA_PtY1% = gdHeadZeroAlignYPos_mm(0) - PComm32_Position_mm(PComm32_YAxis)
        nHA_PtX2% = gdHeadZeroAlignXPos_mm(1) - PComm32_Position_mm(PComm32_XAxis)
        nHA_PtY2% = gdHeadZeroAlignYPos_mm(1) - PComm32_Position_mm(PComm32_YAxis)
        
        nHA_PtX1% = nHA_PtX1% + cen_x#
        nHA_PtY1% = nHA_PtY1% + cen_y#
        nHA_PtX2% = nHA_PtX2% + cen_x#
        nHA_PtY2% = nHA_PtY2% + cen_y#
        
        Call DrawTeachingPoint(nHA_PtX1%, nHA_PtY1%)
        Call DrawTeachingPoint(nHA_PtX2%, nHA_PtY2%)
    End If

Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub DrawTeachingPoint(ByVal X As Integer, ByVal Y As Integer)
On Error GoTo syserr:
        
    If fbCheckAlign(0) = True Then
        Me.Line1(0).X1 = (X - 40) * 15
        Me.Line1(0).Y1 = Y * 15
        Me.Line1(0).X2 = (X + 40) * 15
        Me.Line1(0).Y2 = Y * 15
        
        Me.Line1(1).X1 = X * 15
        Me.Line1(1).Y1 = (Y - 40) * 15
        Me.Line1(1).X2 = X * 15
        Me.Line1(1).Y2 = (Y + 40) * 15
    ElseIf fbCheckAlign(1) = True Then
        Me.Line2(0).X1 = (X - 40) * 15
        Me.Line2(0).Y1 = Y * 15
        Me.Line2(0).X2 = (X + 40) * 15
        Me.Line2(0).Y2 = Y * 15
        
        Me.Line2(1).X1 = X * 15
        Me.Line2(1).Y1 = (Y - 40) * 15
        Me.Line2(1).X2 = X * 15
        Me.Line2(1).Y2 = (Y + 40) * 15
    End If
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Display1_MouseMove(Button As Integer, Shift As Integer, X As Long, Y As Long)
On Error GoTo syserr:
    
    Call DrawTeachingPoint(X, Y)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Display1_MouseUp(Button As Integer, Shift As Integer, X As Long, Y As Long)
On Error GoTo syserr:
    
    If Button = 1 Then
        Call PComm32_PositionReadAllAxis
        If fbCheckAlign(0) = True Then
            fbCheckAlign(0) = False
            gdHeadZeroAlignXPos_mm(0) = PComm32_Position_mm(PComm32_XAxis)
            gdHeadZeroAlignXPos_mm(0) = PComm32_Position_mm(PComm32_YAxis)
        Else
            fbCheckAlign(1) = False
            gdHeadZeroAlignXPos_mm(1) = PComm32_Position_mm(PComm32_XAxis)
            gdHeadZeroAlignXPos_mm(1) = PComm32_Position_mm(PComm32_YAxis)
        End If
    End If
   
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Form_Load()
On Error GoTo syserr:
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
