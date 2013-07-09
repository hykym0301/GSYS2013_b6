VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Object = "{A700DC51-04A2-11D3-BF87-00A024D24992}#8.0#0"; "MIL.ocx"
Object = "{B1599D63-A7CA-11D1-9F0C-00608CC9F9FB}#8.0#0"; "MILPatternMatching.ocx"
Begin VB.Form frmVision 
   BorderStyle     =   0  '¾øÀ½
   Caption         =   "Form1"
   ClientHeight    =   9060
   ClientLeft      =   2700
   ClientTop       =   2145
   ClientWidth     =   10215
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   604
   ScaleMode       =   3  'ÇÈ¼¿
   ScaleWidth      =   681
   ShowInTaskbar   =   0   'False
   Begin MIL.Display Display1 
      Height          =   7680
      Left            =   15
      TabIndex        =   10
      Top             =   15
      Width           =   10200
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   17992
      _ExtentY        =   13547
      _StockProps     =   1
      BackColor       =   14737632
      Name            =   "Display1"
      OwnerSystem     =   "System1"
      Image           =   "Buf_Main"
      BackColor       =   14737632
      _FormatArrayListSize=   0
      _OverlayKeyColor=   -1  'True
      OverlayKeyColor =   0
      _LUT.Data       =   "frmVision.frx":0000
      _OverlayLUT.Data=   "frmVision.frx":0132
      Begin VB.Shape shp_RST 
         BorderColor     =   &H00C0C0C0&
         Height          =   915
         Left            =   4035
         Top             =   3255
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Shape shp_Tag 
         BorderColor     =   &H000000FF&
         Height          =   915
         Index           =   1
         Left            =   3555
         Top             =   2970
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Shape shp_Tag 
         BorderColor     =   &H000000FF&
         Height          =   915
         Index           =   0
         Left            =   3120
         Top             =   2685
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Shape shp_Ref 
         BorderColor     =   &H0000FF00&
         Height          =   915
         Index           =   1
         Left            =   2775
         Top             =   2370
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Shape shp_Ref 
         BorderColor     =   &H0000FF00&
         Height          =   915
         Index           =   0
         Left            =   2385
         Top             =   2175
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Label lbl_Distance 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Åõ¸í
         Caption         =   "Distance = 0.0um"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C000C0&
         Height          =   225
         Left            =   15
         TabIndex        =   16
         Top             =   270
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Label lbl_Distance1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Åõ¸í
         Caption         =   "Distance = 0.0um"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   225
         Left            =   15
         TabIndex        =   15
         Top             =   510
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Line Line_cursor_V 
         BorderColor     =   &H00FF0000&
         Index           =   1
         Visible         =   0   'False
         X1              =   8970
         X2              =   8970
         Y1              =   -15
         Y2              =   7740
      End
      Begin VB.Line Line_cursor_H 
         BorderColor     =   &H00FF0000&
         Index           =   1
         Visible         =   0   'False
         X1              =   -15
         X2              =   10230
         Y1              =   6420
         Y2              =   6420
      End
      Begin VB.Line Line_cursor_V 
         BorderColor     =   &H00C000C0&
         Index           =   0
         Visible         =   0   'False
         X1              =   8925
         X2              =   8925
         Y1              =   -75
         Y2              =   7680
      End
      Begin VB.Line Line_cursor_H 
         BorderColor     =   &H00C000C0&
         Index           =   0
         Visible         =   0   'False
         X1              =   -60
         X2              =   10185
         Y1              =   6360
         Y2              =   6360
      End
      Begin VB.Line LineCal 
         BorderColor     =   &H00FF0000&
         Visible         =   0   'False
         X1              =   930
         X2              =   2910
         Y1              =   5025
         Y2              =   4905
      End
      Begin VB.Line LineVer 
         BorderColor     =   &H000000FF&
         X1              =   2250
         X2              =   765
         Y1              =   1275
         Y2              =   2430
      End
      Begin VB.Line LineHor 
         BorderColor     =   &H000000FF&
         X1              =   2175
         X2              =   690
         Y1              =   1155
         Y2              =   2310
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Åõ¸í
         Caption         =   "Review CCD"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   225
         Left            =   0
         TabIndex        =   12
         Top             =   0
         Width           =   1050
      End
   End
   Begin MIL.System System1 
      Height          =   480
      Left            =   5805
      TabIndex        =   6
      Top             =   8505
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "System1"
      SystemDescriptor=   "\\.\M_SYSTEM_METEOR_II"
      DeviceNumber    =   0
      _SerialPorts.SerialPortCount=   1
   End
   Begin MILPATTERNMATCHINGLib.PatternMatching PatternMatching1 
      Height          =   480
      Left            =   8970
      TabIndex        =   18
      Top             =   8580
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "PatternMatching1"
      OwnerSystem     =   "System1"
      Image           =   "Buf_Ptrn"
   End
   Begin MIL.Image Buf_Ptrn 
      Height          =   480
      Left            =   8445
      TabIndex        =   17
      Top             =   8580
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "Buf_Ptrn"
      OwnerSystem     =   "System1"
      SizeX           =   680
      SizeY           =   512
      NumberOfBands   =   3
      _CanDisplay     =   -1  'True
      CanDisplay      =   0   'False
      _CanGrab        =   -1  'True
      CanGrab         =   0   'False
      _LUT.Data       =   "frmVision.frx":0264
      GammaCorrectionExponents(2)=   0
   End
   Begin MIL.Image Buf_Prv 
      Height          =   480
      Left            =   7725
      TabIndex        =   11
      Top             =   8550
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "Buf_Prv"
      OwnerSystem     =   "System1"
      SizeX           =   680
      SizeY           =   512
      NumberOfBands   =   3
      _CanDisplay     =   -1  'True
      _CanGrab        =   -1  'True
      _LUT.Data       =   "frmVision.frx":0396
      GammaCorrectionExponents(2)=   0
   End
   Begin MIL.ApplicationDefaults ApplicationDefaults1 
      Height          =   480
      Left            =   5325
      TabIndex        =   5
      Top             =   8565
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "ApplicationDefaults1"
   End
   Begin MIL.Image Buf_Main 
      Height          =   480
      Left            =   6285
      TabIndex        =   7
      Top             =   8565
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "Buf_Main"
      OwnerSystem     =   "System1"
      SizeX           =   680
      SizeY           =   512
      NumberOfBands   =   3
      _CanDisplay     =   -1  'True
      _CanGrab        =   -1  'True
      _LUT.Data       =   "frmVision.frx":04C8
      GammaCorrectionExponents(2)=   0
   End
   Begin MIL.GraphicContext GraphicContext1 
      Height          =   480
      Left            =   6765
      TabIndex        =   8
      Top             =   8565
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "GraphicContext1"
      OwnerSystem     =   "System1"
      Image           =   "Buf_Main"
   End
   Begin MIL.Digitizer Digitizer1 
      Height          =   480
      Left            =   7245
      TabIndex        =   9
      Top             =   8565
      Visible         =   0   'False
      Width           =   480
      _Version        =   524288
      _MinorStreamVersion=   14
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
      Name            =   "Digitizer1"
      OwnerSystem     =   "System1"
      Image           =   "Buf_Main"
      DeviceNumber    =   268435456
      _FormatNameArrayListSize=   1
      _FormatNameArray0=   "D:\LHJ_Work\PI_Alpha_Sys\MainUI\DCFz\VCC8750A_Review.DCF"
      _FormatArrayListSize=   1
      _FormatArray0   =   "D:\LHJ_Work\PI_Alpha_Sys\MainUI\DCFz\VCC8750A_Review.DCF"
      Format          =   "D:\LHJ_Work\PI_Alpha_Sys\MainUI\DCFz\VCC8750A_Review.DCF"
      _InputRegion.SizeX=   -1  'True
      InputRegion.SizeX=   680
      _InputRegion.SizeY=   -1  'True
      InputRegion.SizeY=   512
      _InputRegion.OffsetX=   -1  'True
      InputRegion.OffsetX=   340
      _InputRegion.OffsetY=   -1  'True
      InputRegion.OffsetY=   256
      _LUT.Data       =   "frmVision.frx":05FA
   End
   Begin VB.Frame Frame1 
      Height          =   375
      Left            =   75
      TabIndex        =   19
      Top             =   7965
      Width           =   4920
      Begin VB.HScrollBar HScroll_Light 
         Height          =   240
         Left            =   1995
         Max             =   255
         TabIndex        =   22
         Top             =   105
         Width           =   2415
      End
      Begin VB.OptionButton Opt_x10 
         Caption         =   "x10"
         Height          =   210
         Left            =   1095
         TabIndex        =   21
         Top             =   135
         Width           =   600
      End
      Begin VB.OptionButton Opt_x2 
         Caption         =   "x2"
         Height          =   210
         Left            =   150
         TabIndex        =   20
         Top             =   120
         Value           =   -1  'True
         Width           =   525
      End
      Begin VB.Label lblLightVolumn 
         AutoSize        =   -1  'True
         Caption         =   "0"
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
         Left            =   4500
         TabIndex        =   23
         Top             =   120
         Width           =   105
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9600
      Top             =   8535
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin Threed.SSOption opt_Cursor 
      Height          =   345
      Index           =   0
      Left            =   45
      TabIndex        =   13
      Top             =   7710
      Width           =   1695
      _Version        =   65536
      _ExtentX        =   2990
      _ExtentY        =   609
      _StockProps     =   78
      Caption         =   "Cursor Draw"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.76
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Value           =   -1  'True
   End
   Begin VB.CheckBox cnkCrossHair 
      Caption         =   "Cross Hair."
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   3465
      TabIndex        =   4
      Top             =   7710
      Value           =   1  'È®ÀÎ
      Width           =   1515
   End
   Begin VB.CommandButton cmdImgSave 
      Caption         =   "Image ÀúÀå"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   5055
      Picture         =   "frmVision.frx":072C
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   3
      Top             =   7770
      Width           =   1230
   End
   Begin VB.CommandButton cmdImgOpen 
      Caption         =   "Image ¿­±â"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   6355
      Picture         =   "frmVision.frx":0CB6
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   2
      Top             =   7770
      Width           =   1230
   End
   Begin VB.CommandButton cmdCCdLive 
      Caption         =   "CCD Live"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   7655
      Picture         =   "frmVision.frx":1240
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   1
      Top             =   7770
      Width           =   1230
   End
   Begin VB.CommandButton cmdCCdStop 
      Caption         =   "CCD Grab"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   8955
      Picture         =   "frmVision.frx":17CA
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   0
      Top             =   7770
      Width           =   1230
   End
   Begin Threed.SSOption opt_Cursor 
      Height          =   345
      Index           =   1
      Left            =   1740
      TabIndex        =   14
      Top             =   7710
      Width           =   1740
      _Version        =   65536
      _ExtentX        =   3069
      _ExtentY        =   609
      _StockProps     =   78
      Caption         =   "Ruler Draw"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "±¼¸²"
         Size            =   9.76
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmVision"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_nCurLens As Integer

Private Sub cmdCCdLive_Click()

    On Error Resume Next
    
    'If Me.Display1.IsAllocated = True Then
    '    Me.Display1.Free
    'End If
    'If Me.Digitizer1.IsAllocated = True Then
    '    Me.Digitizer1.Free
    'End If
    'Me.Display1.ZoomX = -2
    'Me.Display1.ZoomY = -2
    'If Me.Display1.IsAllocated = False Then
    '    Me.Display1.Allocate
    'End If
    'Me.Digitizer1.Allocate
    Me.Digitizer1.GrabContinuous
    
End Sub

Private Sub cmdCCdStop_Click()
'
'    If Me.Display1.IsAllocated = True Then
'        Me.Display1.Free
'    End If
'
'    Me.Display1.Zoom -2, -2, False
'
'    If Me.Display1.IsAllocated = False Then
'        Me.Display1.Allocate
'    End If
'
    Me.Digitizer1.Halt
    Me.Digitizer1.Grab
    
    Me.Buf_Prv.Copy Me.Buf_Main, imAllBands
        
End Sub

Private Sub cmdImgOpen_Click()
    
    Call cmdCCdStop_Click
    
    Me.CommonDialog1.DialogTitle = "Image File Open..."
    Me.CommonDialog1.Filter = "Pictures (*.bmp;*.jpg)|*.bmp;*.jpg"
    Me.CommonDialog1.FileName = ""
    Me.CommonDialog1.ShowOpen
    
    file_name$ = Me.CommonDialog1.FileName
        
    If file_name$ <> "" Then
        If InStr(1, UCase(file_name$), ".BMP") <> 0 Then
            Me.Buf_Main.FileFormat = imBMP
            Me.Buf_Prv.FileFormat = imBMP

        Else
            Me.Buf_Main.FileFormat = imJPEGLossyFileFormat
            Me.Buf_Prv.FileFormat = imJPEGLossyFileFormat
            Me.Buf_Main.FileFormat = imJPEGLossyFileFormat
            Me.Buf_Prv.FileFormat = imJPEGLossyFileFormat
        End If
        On Error Resume Next
        
        Me.Buf_Main.Load file_name$
        Me.Buf_Prv.Load file_name$
        Me.Buf_Main.Load file_name$
        Me.Buf_Prv.Load file_name$
    Else
        Call cmdCCdLive_Click
    End If
    
End Sub

Private Sub cmdImgSave_Click()
    Me.CommonDialog1.DialogTitle = "Image File Save..."
    Me.CommonDialog1.Filter = "Pictures (*.bmp;*.jpg)|*.bmp;*.jpg"
    Me.CommonDialog1.FileName = ""
    Me.CommonDialog1.ShowSave
    
    file_name$ = Me.CommonDialog1.FileName
    
    Me.Digitizer1.Halt
    
    If file_name$ <> "" Then
        If InStr(1, UCase(file_name$), ".BMP") <> 0 Then
            Me.Buf_Main.FileFormat = imBMP
            Me.Buf_Prv.FileFormat = imBMP
        ElseIf InStr(1, UCase(file_name$), ".JPG") <> 0 Then
            Me.Buf_Main.FileFormat = imJPEGLossyFileFormat
            Me.Buf_Prv.FileFormat = imJPEGLossyFileFormat
        Else
            MsgBox "Not Suported File Format!", vbCritical
            Exit Sub
        End If
        
        Me.Buf_Main.Save file_name$
        
        Me.Digitizer1.GrabContinuous
    End If
    
End Sub

Private Sub cnkCrossHair_Click()

    If Me.cnkCrossHair.Value = 1 Then
        Me.LineHor.Visible = True
        Me.LineVer.Visible = True
    Else
        Me.LineHor.Visible = False
        Me.LineVer.Visible = False
    End If

End Sub

Private Sub Display1_MouseDown(Button As Integer, Shift As Integer, X As Long, Y As Long)

    If Me.opt_Cursor(0).Value = True Then
        If Button = 1 Then
            Me.Line_cursor_H(0).X1 = 0
            Me.Line_cursor_H(0).X2 = 680 * Screen.TwipsPerPixelX
            Me.Line_cursor_H(0).Y1 = Y * Screen.TwipsPerPixelY
            Me.Line_cursor_H(0).Y2 = Y * Screen.TwipsPerPixelY
            
            Me.Line_cursor_V(0).X1 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(0).X2 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(0).Y1 = 0
            Me.Line_cursor_V(0).Y2 = 512 * Screen.TwipsPerPixelY
            
            Me.Line_cursor_H(0).Visible = True
            Me.Line_cursor_V(0).Visible = True
            CCD_CursorMode_Step = 0
        ElseIf Button = 2 Then
            Me.Line_cursor_H(0).Visible = False
            Me.Line_cursor_V(0).Visible = False
            Me.opt_Cursor(0).Value = False
            CCD_CursorMode_Step = 0
        End If
        Exit Sub
    End If
    
    If Me.opt_Cursor(1).Value = True Then
        If Button = 2 Then
            Me.Line_cursor_H(0).Visible = False
            Me.Line_cursor_V(0).Visible = False
            Me.Line_cursor_H(1).Visible = False
            Me.Line_cursor_V(1).Visible = False
            Me.lbl_Distance.Visible = False
            Me.lbl_Distance1.Visible = False
            Me.opt_Cursor(1).Value = False
            CCD_CursorMode_Step = 0
        End If
        Exit Sub
    End If
    
End Sub

Private Sub Display1_MouseMove(Button As Integer, Shift As Integer, X As Long, Y As Long)

    If Button = 1 Then
        If FormExistance("frmReviewOpticSet") = True Then
        
            If frmReviewOpticSet.OptPoint(0).Value = True Then
                Me.LineCal.X1 = X * Screen.TwipsPerPixelX
                Me.LineCal.Y1 = Y * Screen.TwipsPerPixelY
            Else
                Me.LineCal.X2 = X * Screen.TwipsPerPixelX
                Me.LineCal.Y2 = Y * Screen.TwipsPerPixelY
                mm_dis# = Sqr((CDbl(frmReviewOpticSet.txtDistance.Text) ^ 2) + (CDbl(frmReviewOpticSet.txtDistance.Text) ^ 2))
                pix_dis# = Sqr(((Me.LineCal.X2 - Me.LineCal.X1) ^ 2) + ((Me.LineCal.Y2 - Me.LineCal.Y1) ^ 2)) / Screen.TwipsPerPixelX
                frmReviewOpticSet.txtPixDis.Text = Round(pix_dis#, 0)
                factor# = mm_dis# / pix_dis#
                frmReviewOpticSet.txtFactor.Text = Format(factor#, "0.0################")
            End If
            Exit Sub
            
        End If
    End If

    If Me.opt_Cursor(0).Value = True Then
        If Button = 1 Then
            Me.Line_cursor_H(0).X1 = 0
            Me.Line_cursor_H(0).X2 = 680 * Screen.TwipsPerPixelX
            Me.Line_cursor_H(0).Y1 = Y * Screen.TwipsPerPixelY
            Me.Line_cursor_H(0).Y2 = Y * Screen.TwipsPerPixelY
            
            Me.Line_cursor_V(0).X1 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(0).X2 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(0).Y1 = 0
            Me.Line_cursor_V(0).Y2 = 512 * Screen.TwipsPerPixelY
            
            Me.Line_cursor_H(0).Visible = True
            Me.Line_cursor_V(0).Visible = True
            CCD_CursorMode_Step = 0
        ElseIf Button = 2 Then
            Me.Line_cursor_H(0).Visible = False
            Me.Line_cursor_V(0).Visible = False
            Me.opt_Cursor(0).Value = False
            CCD_CursorMode_Step = 0
        End If
        Exit Sub
    End If


    If Me.opt_Cursor(1).Value = True Then 'Select Case CCD_CursorMode_Step
        If Button = 1 Then
            Me.Line_cursor_H(CCD_CursorMode_Step).X1 = 0
            Me.Line_cursor_H(CCD_CursorMode_Step).X2 = 1024 * Screen.TwipsPerPixelX
            Me.Line_cursor_H(CCD_CursorMode_Step).Y1 = Y * Screen.TwipsPerPixelY
            Me.Line_cursor_H(CCD_CursorMode_Step).Y2 = Y * Screen.TwipsPerPixelY
            
            Me.Line_cursor_V(CCD_CursorMode_Step).X1 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(CCD_CursorMode_Step).X2 = X * Screen.TwipsPerPixelX
            Me.Line_cursor_V(CCD_CursorMode_Step).Y1 = 0
            Me.Line_cursor_V(CCD_CursorMode_Step).Y2 = 768 * Screen.TwipsPerPixelY
            
            Me.Line_cursor_H(CCD_CursorMode_Step).Visible = True
            Me.Line_cursor_V(CCD_CursorMode_Step).Visible = True
        ElseIf Button = 2 Then
            Me.Line_cursor_H(0).Visible = False
            Me.Line_cursor_V(0).Visible = False
            Me.Line_cursor_H(1).Visible = False
            Me.Line_cursor_V(1).Visible = False
            Me.lbl_Distance.Visible = False
            Me.lbl_Distance1.Visible = False
            Me.opt_Cursor(1).Value = False
            CCD_CursorMode_Step = 0
        End If
        Exit Sub
    End If

End Sub

Private Sub Display1_MouseUp(Button As Integer, Shift As Integer, X As Long, Y As Long)

    Static CursorPo_X(1) As Double
    Static CursorPo_Y(1) As Double
    
    If Button = 2 Then
        
        If (PComm32_Init_Flag = False) Or (g_bIsPrinting = True) Then
            Exit Sub
        End If
        
        cen_x# = Me.Buf_Main.SizeX / 2
        cen_y# = Me.Buf_Main.SizeY / 2
        
        '//  m_nCurLens = 0: x2 / m_nCurLens = 1: x10
        If m_nCurLens = 0 Then '// x2
            dFactor_x10Lens# = SAVED_ReviewOpticFactor_Pixel_Per_mm
        Else
            dFactor_x10Lens# = SAVED_ReviewOpticFactor_Pixel_Per_mm / 5
        End If
            
        delta_pix_x# = X - cen_x#: delta_pix_y# = Y - cen_y#
        delta_mov_x# = delta_pix_x# * dFactor_x10Lens#
        delta_mov_y# = delta_pix_y# * dFactor_x10Lens#
        
        PComm32_JogSpdAccScrvSET PComm32_XAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
        PComm32_JogSpdAccScrvSET PComm32_YAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_YAxis)

        PComm32_AxisJogMotion_Step PComm32_XAxis, delta_mov_x#, -1
        PComm32_AxisJogMotion_Step PComm32_YAxis, delta_mov_y#, 1
        
    End If

    If Me.opt_Cursor(1).Value = True Then
        
        If Button = 1 Then
            
            '//  m_nCurLens = 0: x2 / m_nCurLens = 1: x10
            If m_nCurLens = 0 Then '// x2
                dFactor_x10Lens# = SAVED_ReviewOpticFactor_Pixel_Per_mm
            Else
                dFactor_x10Lens# = SAVED_ReviewOpticFactor_Pixel_Per_mm / 5
            End If


            Select Case CCD_CursorMode_Step
                
                Case 0
                    CursorPo_X(0) = X: CursorPo_Y(0) = Y
                    CCD_CursorMode_Step = 1
                Case 1
                    CursorPo_X(1) = X: CursorPo_Y(1) = Y
                    distance_pix_x# = Abs(CursorPo_X(1) - CursorPo_X(0))
                    distance_pix_y# = Abs(CursorPo_Y(1) - CursorPo_Y(0))
                    
                    
                    distansz# = (Sqr((distance_pix_x# ^ 2) + (distance_pix_y# ^ 2)) * dFactor_x10Lens#) * 1000
                    dis_x# = (distance_pix_x# * dFactor_x10Lens#) * 1000
                    dis_y# = (distance_pix_y# * dFactor_x10Lens#) * 1000

                    cen_x# = CursorPo_X(0) + ((CursorPo_X(1) - CursorPo_X(0)) / 2)
                    cen_y# = CursorPo_Y(0) + ((CursorPo_Y(1) - CursorPo_Y(0)) / 2)
                    
                    Me.lbl_Distance.Caption = "H:" & Format(dis_y#, "0.0#") & "§­"
                    Me.lbl_Distance1.Caption = "W:" & Format(dis_x#, "0.0#") & "§­"
                    
                    'Me.lbl_Distance1.Left = (cen_x# * Screen.TwipsPerPixelX) - (Me.lbl_Distance1.Width / 2)
                    'Me.lbl_Distance1.Top = (Y + 10) * Screen.TwipsPerPixelX
                    
                    'Me.lbl_Distance.Left = (X * Screen.TwipsPerPixelY) - (Me.lbl_Distance1.Width / 2)
                    'Me.lbl_Distance.Top = cen_y# * Screen.TwipsPerPixelY
                    
                    Me.lbl_Distance.Visible = True
                    Me.lbl_Distance1.Visible = True
                    
                    CCD_CursorMode_Step = 0
            End Select
            
        End If
        If Button = 2 Then
            Me.Line_cursor_H(0).Visible = False
            Me.Line_cursor_V(0).Visible = False
            Me.Line_cursor_H(1).Visible = False
            Me.Line_cursor_V(1).Visible = False
            Me.lbl_Distance.Visible = False
            Me.lbl_Distance1.Visible = False
            Me.opt_Cursor(1).Value = False
            CCD_CursorMode_Step = 0
            Exit Sub
        End If
    End If

End Sub

Private Sub Form_Load()
On Error GoTo syserr:
    m_nCurLens = 0
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Opt_x10_Click()
    Call Revolver.SelectLens(MDI_Main.MSComm_Parker, 2)
    
    If m_nCurLens = 1 Then Exit Sub
    
    Call PComm32_PositionReadAllAxis
    
    dAbsXmm# = PComm32_Position_mm(PComm32_XAxis) + gPrintPara.dSysLensOffsetx2x10_Xmm
    dAbsYmm# = PComm32_Position_mm(PComm32_YAxis) + gPrintPara.dSysLensOffsetx2x10_Ymm
    
    PComm32_JogSpdAccScrvSET PComm32_XAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_YAxis)
    
'    PComm32_AxisJogMotion_Absoute PComm32_XAxis, dAbsXmm#
'    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dAbsYmm#
    PComm32_AxisJogMotion_Step PComm32_XAxis, -1 * gPrintPara.dSysLensOffsetx2x10_Xmm, -1
    PComm32_AxisJogMotion_Step PComm32_YAxis, -1 * gPrintPara.dSysLensOffsetx2x10_Ymm, 1
    
    m_nCurLens = 1
End Sub

Private Sub Opt_x2_Click()
    Call Revolver.SelectLens(MDI_Main.MSComm_Parker, 1)
    
    If m_nCurLens = 0 Then Exit Sub
    
    Call PComm32_PositionReadAllAxis
    
    dAbsXmm# = PComm32_Position_mm(PComm32_XAxis) - gPrintPara.dSysLensOffsetx2x10_Xmm
    dAbsYmm# = PComm32_Position_mm(PComm32_YAxis) - gPrintPara.dSysLensOffsetx2x10_Ymm

    PComm32_JogSpdAccScrvSET PComm32_XAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_XAxis)
    PComm32_JogSpdAccScrvSET PComm32_YAxis, 5, PComm32_Acc_ms(PComm32_XAxis), PComm32_Scrv_ms(PComm32_YAxis)
    
'    PComm32_AxisJogMotion_Absoute PComm32_XAxis, dAbsXmm#
'    PComm32_AxisJogMotion_Absoute PComm32_YAxis, dAbsYmm#
    
    PComm32_AxisJogMotion_Step PComm32_XAxis, gPrintPara.dSysLensOffsetx2x10_Xmm, -1
    PComm32_AxisJogMotion_Step PComm32_YAxis, gPrintPara.dSysLensOffsetx2x10_Ymm, 1
    
    m_nCurLens = 0
End Sub

Private Sub HScroll_Light_Change()
    gPrintPara.nLedBrightness = Me.HScroll_Light.Value
    Call SaveSetting(App.Title, "PRINT_INFO", "LED_BRIGHTNESS_VALUE", CStr(gPrintPara.nLedBrightness))
    lblLightVolumn.Caption = gPrintPara.nLedBrightness
    Call PCI7230.Set_LightVolumn(gPrintPara.nLedBrightness)
End Sub

Private Sub HScroll_Light_Scroll()
    gPrintPara.nLedBrightness = Me.HScroll_Light.Value
    Call SaveSetting(App.Title, "PRINT_INFO", "LED_BRIGHTNESS_VALUE", CStr(gPrintPara.nLedBrightness))
    lblLightVolumn.Caption = gPrintPara.nLedBrightness
    Call PCI7230.Set_LightVolumn(gPrintPara.nLedBrightness)
End Sub
