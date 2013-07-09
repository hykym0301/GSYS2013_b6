VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{A700DC51-04A2-11D3-BF87-00A024D24992}#8.0#0"; "MIL.ocx"
Object = "{154919D3-A7DA-11D1-9F0C-00608CC9F9FB}#8.0#0"; "MILBlobAnalysis.ocx"
Object = "{4FD68BB3-A7E7-11D1-9F0D-00608CC9F9FB}#8.0#0"; "MILImageProcessing.ocx"
Begin VB.Form frmLineScan 
   BorderStyle     =   1  '단일 고정
   Caption         =   "라인스켄 카메라 측정"
   ClientHeight    =   11655
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   17865
   Icon            =   "frmLineScan.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11655
   ScaleWidth      =   17865
   StartUpPosition =   2  '화면 가운데
   Begin MIL.Display Display1 
      Height          =   11520
      Left            =   75
      TabIndex        =   0
      Top             =   90
      Width           =   15360
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   27093
      _ExtentY        =   20320
      _StockProps     =   1
      Name            =   "Display1"
      OwnerSystem     =   "System2"
      Image           =   "Image_lsc(0)"
      _FormatArrayListSize=   0
      _LUT.Data       =   "frmLineScan.frx":058A
      _OverlayLUT.Data=   "frmLineScan.frx":06BC
      Begin MIL.GraphicContext GraphicContext1 
         Height          =   480
         Left            =   8685
         TabIndex        =   22
         Top             =   6510
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "GraphicContext1"
         OwnerSystem     =   "System2"
         Image           =   "Image_lsc(0)"
      End
      Begin MIL.Image Image_lsc 
         Height          =   480
         Index           =   2
         Left            =   7185
         TabIndex        =   20
         Top             =   7500
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image_lsc(2)"
         OwnerSystem     =   "System2"
         SizeX           =   1024
         SizeY           =   768
         NumberOfBands   =   268435456
         CanProcess      =   0   'False
         _LUT.Data       =   "frmLineScan.frx":07EE
         GammaCorrectionExponents(2)=   0
      End
      Begin MIL.Image Image_lsc 
         Height          =   480
         Index           =   1
         Left            =   7185
         TabIndex        =   19
         Top             =   7005
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image_lsc(1)"
         OwnerSystem     =   "System2"
         SizeX           =   1024
         SizeY           =   768
         NumberOfBands   =   268435456
         CanDisplay      =   -1  'True
         _LUT.Data       =   "frmLineScan.frx":0920
         GammaCorrectionExponents(2)=   0
      End
      Begin MILBLOBANALYSISLib.BlobAnalysis BlobAnalysis1 
         Height          =   480
         Left            =   8175
         TabIndex        =   18
         Top             =   6510
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "BlobAnalysis1"
         OwnerSystem     =   "System2"
         Image           =   "Image_lsc(1)"
         _FeatureList.Area=   -1  'True
         FeatureList.Area=   -1
         _FeatureList.Breadth=   -1  'True
         FeatureList.Breadth=   -1
         _FeatureList.Chains=   -1  'True
         FeatureList.Chains=   -1
         _FeatureList.Compactness=   -1  'True
         FeatureList.Compactness=   -1
         _FeatureList.ConvexPerimeter=   -1  'True
         FeatureList.ConvexPerimeter=   -1
         _FeatureList.Elongation=   -1  'True
         FeatureList.Elongation=   -1
         _FeatureList.EulerNumber=   -1  'True
         FeatureList.EulerNumber=   -1
         _FeatureList.FeretElongation=   -1  'True
         FeatureList.FeretElongation=   -1
         _FeatureList.MinimumFeretAngle=   -1  'True
         FeatureList.MinimumFeretAngle=   -1
         _FeatureList.MaximumFeretAngle=   -1  'True
         FeatureList.MaximumFeretAngle=   -1
         _FeatureList.MinimumFeretDiameter=   -1  'True
         FeatureList.MinimumFeretDiameter=   -1
         _FeatureList.MaximumFeretDiameter=   -1  'True
         FeatureList.MaximumFeretDiameter=   -1
         _FeatureList.MeanFeretDiameter=   -1  'True
         FeatureList.MeanFeretDiameter=   -1
         _FeatureList.FirstPointX=   -1  'True
         FeatureList.FirstPointX=   -1
         _FeatureList.FirstPointY=   -1  'True
         FeatureList.FirstPointY=   -1
         _FeatureList.Intercept0=   -1  'True
         FeatureList.Intercept0=   -1
         _FeatureList.Intercept45=   -1  'True
         FeatureList.Intercept45=   -1
         _FeatureList.Intercept90=   -1  'True
         FeatureList.Intercept90=   -1
         _FeatureList.Intercept135=   -1  'True
         FeatureList.Intercept135=   -1
         _FeatureList.Length=   -1  'True
         FeatureList.Length=   -1
         _FeatureList.MinimumPixelValue=   -1  'True
         FeatureList.MinimumPixelValue=   -1
         _FeatureList.MaximumPixelValue=   -1  'True
         FeatureList.MaximumPixelValue=   -1
         _FeatureList.MeanPixelValue=   -1  'True
         FeatureList.MeanPixelValue=   -1
         _FeatureList.MomentX0Y1=   -1  'True
         FeatureList.MomentX0Y1=   -1
         _FeatureList.MomentX1Y0=   -1  'True
         FeatureList.MomentX1Y0=   -1
         _FeatureList.MomentX1Y1=   -1  'True
         FeatureList.MomentX1Y1=   -1
         _FeatureList.MomentX0Y2=   -1  'True
         FeatureList.MomentX0Y2=   -1
         _FeatureList.MomentX2Y0=   -1  'True
         FeatureList.MomentX2Y0=   -1
         _FeatureList.CentralMomentX0Y2=   -1  'True
         FeatureList.CentralMomentX0Y2=   -1
         _FeatureList.CentralMomentX2Y0=   -1  'True
         FeatureList.CentralMomentX2Y0=   -1
         _FeatureList.CentralMomentX1Y1=   -1  'True
         FeatureList.CentralMomentX1Y1=   -1
         _FeatureList.NumberOfHoles=   -1  'True
         FeatureList.NumberOfHoles=   -1
         _FeatureList.Perimeter=   -1  'True
         FeatureList.Perimeter=   -1
         _FeatureList.PrincipalAxisAngle=   -1  'True
         FeatureList.PrincipalAxisAngle=   -1
         _FeatureList.Roughness=   -1  'True
         FeatureList.Roughness=   -1
         _FeatureList.Runs=   -1  'True
         FeatureList.Runs=   -1
         _FeatureList.SecondaryAxisAngle=   -1  'True
         FeatureList.SecondaryAxisAngle=   -1
         _FeatureList.SigmaOfPixelValues=   -1  'True
         FeatureList.SigmaOfPixelValues=   -1
         _FeatureList.SumOfPixelValues=   -1  'True
         FeatureList.SumOfPixelValues=   -1
         _FeatureList.SumOfSquaredPixelValues=   -1  'True
         FeatureList.SumOfSquaredPixelValues=   -1
         _FeatureList.CenterOfGravity.X=   -1  'True
         FeatureList.CenterOfGravity.X=   -1
         _FeatureList.CenterOfGravity.Y=   -1  'True
         FeatureList.CenterOfGravity.Y=   -1
         _FeatureList.ContactPoints.XMinimumAtYMinimum=   -1  'True
         FeatureList.ContactPoints.XMinimumAtYMinimum=   -1
         _FeatureList.ContactPoints.XMaximumAtYMaximum=   -1  'True
         FeatureList.ContactPoints.XMaximumAtYMaximum=   -1
         _FeatureList.ContactPoints.YMinimumAtXMaximum=   -1  'True
         FeatureList.ContactPoints.YMinimumAtXMaximum=   -1
         _FeatureList.ContactPoints.YMaximumAtXMinimum=   -1  'True
         FeatureList.ContactPoints.YMaximumAtXMinimum=   -1
         _FeatureList.Box.XMinimum=   -1  'True
         FeatureList.Box.XMinimum=   -1
         _FeatureList.Box.YMinimum=   -1  'True
         FeatureList.Box.YMinimum=   -1
         _FeatureList.Box.XMaximum=   -1  'True
         FeatureList.Box.XMaximum=   -1
         _FeatureList.Box.YMaximum=   -1  'True
         FeatureList.Box.YMaximum=   -1
         _FeatureList.Box.FeretX=   -1  'True
         FeatureList.Box.FeretX=   -1
         _FeatureList.Box.FeretY=   -1  'True
         FeatureList.Box.FeretY=   -1
         Filters.Count   =   1
         Filters(1).FilterType=   1
         Filters(1).Condition=   1
         Filters(1).LowValue=   10
         Filters(1).HighValue=   10000
      End
      Begin MILIMAGEPROCESSINGLib.ImageProcessing ImageProcessing1 
         Height          =   480
         Left            =   7680
         TabIndex        =   17
         Top             =   6510
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "ImageProcessing1"
         OwnerSystem     =   "System2"
      End
      Begin MIL.System System2 
         Height          =   480
         Left            =   6225
         TabIndex        =   16
         Top             =   6510
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "System2"
         SystemDescriptor=   "\\.\M_SYSTEM_HOST"
         _SerialPorts.SerialPortCount=   0
      End
      Begin MIL.Image Image_lsc 
         Height          =   480
         Index           =   0
         Left            =   7170
         TabIndex        =   2
         Top             =   6510
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image_lsc(0)"
         OwnerSystem     =   "System2"
         SizeX           =   1024
         SizeY           =   768
         NumberOfBands   =   268435456
         CanProcess      =   0   'False
         _CanDisplay     =   -1  'True
         _LUT.Data       =   "frmLineScan.frx":0A52
         GammaCorrectionExponents(2)=   0
      End
      Begin MIL.Image Image_lsc 
         Height          =   480
         Index           =   3
         Left            =   7185
         TabIndex        =   21
         Top             =   7980
         Visible         =   0   'False
         Width           =   480
         _Version        =   524288
         _MinorStreamVersion=   14
         _ExtentX        =   847
         _ExtentY        =   847
         _StockProps     =   0
         Name            =   "Image_lsc(3)"
         OwnerSystem     =   "System2"
         SizeX           =   1024
         SizeY           =   768
         NumberOfBands   =   268435456
         CanProcess      =   0   'False
         CanDisplay      =   -1  'True
         _LUT.Data       =   "frmLineScan.frx":0B84
         GammaCorrectionExponents(2)=   0
      End
      Begin VB.Label lblBlobCnt 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Inspected Drop[cnt]:"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   165
         TabIndex        =   23
         Top             =   165
         Width           =   2295
      End
      Begin VB.Label lblGrayVal 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "00"
         ForeColor       =   &H0080FFFF&
         Height          =   180
         Left            =   105
         TabIndex        =   15
         Top             =   11205
         Width           =   180
      End
      Begin VB.Label lbl_LineScanning 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Line Scanning....."
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   36
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   720
         Left            =   4560
         TabIndex        =   1
         Top             =   5235
         Visible         =   0   'False
         Width           =   6240
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   17235
      Top             =   10095
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame3 
      Height          =   915
      Left            =   15735
      TabIndex        =   12
      Top             =   10680
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
         Picture         =   "frmLineScan.frx":0CB6
         Style           =   1  '그래픽
         TabIndex        =   13
         Top             =   210
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2460
      Left            =   15735
      TabIndex        =   9
      Top             =   3405
      Width           =   2040
      Begin VB.CommandButton cmdFunc 
         Caption         =   "검사 정지"
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
         Picture         =   "frmLineScan.frx":1240
         Style           =   1  '그래픽
         TabIndex        =   14
         Top             =   1755
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "측정 설정"
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
         Picture         =   "frmLineScan.frx":17CA
         Style           =   1  '그래픽
         TabIndex        =   11
         Top             =   210
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "검사 시작"
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
         Picture         =   "frmLineScan.frx":1D54
         Style           =   1  '그래픽
         TabIndex        =   10
         Top             =   1110
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Height          =   3330
      Left            =   15735
      TabIndex        =   4
      Top             =   0
      Width           =   2040
      Begin VB.CommandButton cmdFunc 
         Caption         =   "측정전 이미지 복귀"
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
         Index           =   1
         Left            =   120
         Picture         =   "frmLineScan.frx":22DE
         Style           =   1  '그래픽
         TabIndex        =   8
         Top             =   855
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "측정후 이미지 보기"
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
         Picture         =   "frmLineScan.frx":2868
         Style           =   1  '그래픽
         TabIndex        =   7
         Top             =   1500
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
         Left            =   120
         Picture         =   "frmLineScan.frx":2DF2
         Style           =   1  '그래픽
         TabIndex        =   6
         Top             =   2610
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
         Index           =   0
         Left            =   120
         Picture         =   "frmLineScan.frx":337C
         Style           =   1  '그래픽
         TabIndex        =   5
         Top             =   210
         Width           =   1815
      End
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   11520
      Left            =   15450
      TabIndex        =   3
      Top             =   75
      Width           =   225
   End
End
Attribute VB_Name = "frmLineScan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Enum eImgBuf
    Origin = 0
    Process
    Copy
    Receive
End Enum

Private Sub cmdFunc_Click(Index As Integer)
On Error GoTo syserr:

Select Case Index
    Case 0 ' open
    
        With CommonDialog1
            
            ' Set the flags and attributes of the common dialog control
            .FileName = ""
            .Filter = "Bitmap files (*.bmp)|*.bmp|MIL image file (*.mim)|*.mim|TIFF (*.tif)|*.tif|" & _
                      "All Files (*.*)|*.*"
            .ShowOpen
            
            If Len(.FileName) = 0 Then
                Exit Sub
            End If
            
            sFile$ = .FileName
            
        End With
        
        Image_lsc(eImgBuf.Origin).Load sFile$, True
'        Image_lsc(eImgBuf.Process).Load sFile$, True
        
        Image_lsc(eImgBuf.Process).Free
        Image_lsc(eImgBuf.Process).SizeX = Image_lsc(eImgBuf.Origin).SizeX
        Image_lsc(eImgBuf.Process).SizeY = Image_lsc(eImgBuf.Origin).SizeY
        Image_lsc(eImgBuf.Process).Allocate
        
        Image_lsc(eImgBuf.Process).Copy Image_lsc(eImgBuf.Origin)

        Display1.image = Image_lsc(eImgBuf.Origin)
    
    Case 1 ' org img
        Display1.image = Image_lsc(eImgBuf.Origin)
    Case 2 ' proc img
        Display1.image = Image_lsc(eImgBuf.Process)
    Case 3 ' save
    Case 4 ' config
        Load frmLineScanConfig
        frmLineScanConfig.Show
    Case 5 ' start
    Case 6 ' stop
    Case 7 ' exit
        Unload frmLineScanConfig
        Unload Me
End Select

Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub VScroll1_Change()
On Error GoTo syserr:
    Display1.PanY = VScroll1.Value
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub VScroll1_Scroll()
On Error GoTo syserr:
    Display1.PanY = VScroll1.Value
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Display1_MouseMove(Button As Integer, Shift As Integer, X As Long, Y As Long)
On Error GoTo syserr:
    Dim rtnGray_Line(0) As Byte
    Image_lsc(eImgBuf.Origin).Get rtnGray_Line, imRGB16Packed, imRed, X, Y, 1, 1
    Me.lblGrayVal.Caption = "(" & CStr(X) & "," & CStr(Y + VScroll1.Value) & ") = " & rtnGray_Line(0)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

