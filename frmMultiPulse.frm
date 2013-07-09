VERSION 5.00
Object = "{D940E4E4-6079-11CE-88CB-0020AF6845F6}#1.6#0"; "cwui.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMultiPulse 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Multi Pulse"
   ClientHeight    =   7065
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10980
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMultiPulse.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7065
   ScaleWidth      =   10980
   StartUpPosition =   1  '소유자 가운데
   Begin VB.CommandButton cmdSaveAs_MP 
      Caption         =   "Save As"
      Height          =   600
      Left            =   6780
      TabIndex        =   16
      Top             =   6435
      Width           =   1935
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2385
      Top             =   6555
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "Track Mode"
      Height          =   585
      Left            =   45
      TabIndex        =   5
      Top             =   60
      Width           =   8670
      Begin VB.CommandButton cmdFit 
         Caption         =   "Fit"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   6555
         TabIndex        =   13
         Top             =   210
         Width           =   840
      End
      Begin VB.CommandButton cmdOrigin 
         Caption         =   "원복"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   7635
         TabIndex        =   12
         Top             =   210
         Width           =   840
      End
      Begin VB.OptionButton PanXY 
         Caption         =   "PanXY"
         Height          =   180
         Left            =   5385
         TabIndex        =   11
         Top             =   255
         Width           =   1020
      End
      Begin VB.OptionButton optPanY 
         Caption         =   "PanY"
         Height          =   180
         Left            =   4305
         TabIndex        =   10
         Top             =   240
         Width           =   1020
      End
      Begin VB.OptionButton optPanX 
         Caption         =   "PanX"
         Height          =   180
         Left            =   3195
         TabIndex        =   9
         Top             =   255
         Width           =   1020
      End
      Begin VB.OptionButton optZoomXY 
         Caption         =   "ZoomXY"
         Height          =   180
         Left            =   2100
         TabIndex        =   8
         Top             =   270
         Width           =   1020
      End
      Begin VB.OptionButton optZoomY 
         Caption         =   "ZoomY"
         Height          =   180
         Left            =   1080
         TabIndex        =   7
         Top             =   270
         Width           =   1020
      End
      Begin VB.OptionButton optZoomX 
         Caption         =   "ZoomX"
         Height          =   180
         Left            =   150
         TabIndex        =   6
         Top             =   270
         Width           =   1020
      End
   End
   Begin VB.TextBox txtInputValue 
      BorderStyle     =   0  '없음
      Height          =   240
      Left            =   3120
      TabIndex        =   4
      Text            =   "--"
      Top             =   6630
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton cmdLoad_MultiPulse 
      Caption         =   "Load"
      Height          =   600
      Left            =   4530
      TabIndex        =   1
      Top             =   6435
      Width           =   2175
   End
   Begin VB.CommandButton cmdSave_MP 
      Caption         =   "Save"
      Height          =   600
      Left            =   8775
      TabIndex        =   0
      Top             =   6435
      Width           =   2175
   End
   Begin MSFlexGridLib.MSFlexGrid msfgMultiPulse 
      Height          =   5265
      Left            =   8760
      TabIndex        =   2
      Top             =   1110
      Width           =   2190
      _ExtentX        =   3863
      _ExtentY        =   9287
      _Version        =   393216
      Rows            =   18
      BackColor       =   16777215
      GridColor       =   0
      Appearance      =   0
      FormatString    =   "Time(us) |Volt(V)              "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin CWUIControlsLib.CWGraph CWG_MultiPulse 
      Height          =   5685
      Left            =   45
      TabIndex        =   3
      Top             =   690
      Width           =   8655
      _Version        =   393218
      _ExtentX        =   15266
      _ExtentY        =   10028
      _StockProps     =   71
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
      Graph_0         =   1
      ClassName_1     =   "CCWGraphFrame"
      opts_1          =   62
      C[0]_1          =   0
      Event_1         =   2
      ClassName_2     =   "CCWGFPlotEvent"
      Owner_2         =   1
      Plots_1         =   3
      ClassName_3     =   "CCWDataPlots"
      Array_3         =   1
      Editor_3        =   4
      ClassName_4     =   "CCWGFPlotArrayEditor"
      Owner_4         =   1
      Array[0]_3      =   5
      ClassName_5     =   "CCWDataPlot"
      opts_5          =   4194367
      Name_5          =   "Plot-1"
      C[0]_5          =   65535
      C[1]_5          =   65535
      C[2]_5          =   16711680
      C[3]_5          =   16776960
      Event_5         =   2
      X_5             =   6
      ClassName_6     =   "CCWAxis"
      opts_6          =   575
      Name_6          =   "XAxis"
      C[3]_6          =   8421504
      C[4]_6          =   8421504
      Orientation_6   =   2947
      format_6        =   7
      ClassName_7     =   "CCWFormat"
      Format_7        =   "."
      Scale_6         =   8
      ClassName_8     =   "CCWScale"
      opts_8          =   90112
      rMin_8          =   49
      rMax_8          =   565
      dMax_8          =   16
      discInterval_8  =   1
      Radial_6        =   0
      Enum_6          =   9
      ClassName_9     =   "CCWEnum"
      Editor_9        =   10
      ClassName_10    =   "CCWEnumArrayEditor"
      Owner_10        =   6
      Font_6          =   0
      tickopts_6      =   2799
      major_6         =   1
      minor_6         =   1
      Caption_6       =   11
      ClassName_11    =   "CCWDrawObj"
      opts_11         =   62
      C[0]_11         =   -2147483640
      Image_11        =   12
      ClassName_12    =   "CCWTextImage"
      szText_12       =   "Time Divide [ 1눈금=1um ]"
      font_12         =   0
      Animator_11     =   0
      Blinker_11      =   0
      Y_5             =   13
      ClassName_13    =   "CCWAxis"
      opts_13         =   575
      Name_13         =   "YAxis-1"
      C[3]_13         =   8421504
      C[4]_13         =   8421504
      Orientation_13  =   2451
      format_13       =   14
      ClassName_14    =   "CCWFormat"
      Scale_13        =   15
      ClassName_15    =   "CCWScale"
      opts_15         =   57344
      rMin_15         =   12
      rMax_15         =   335
      dMax_15         =   125
      discInterval_15 =   1
      Radial_13       =   0
      Enum_13         =   16
      ClassName_16    =   "CCWEnum"
      Editor_16       =   17
      ClassName_17    =   "CCWEnumArrayEditor"
      Owner_17        =   13
      Font_13         =   0
      tickopts_13     =   2799
      major_13        =   10
      minor_13        =   10
      Caption_13      =   18
      ClassName_18    =   "CCWDrawObj"
      opts_18         =   62
      C[0]_18         =   -2147483640
      Image_18        =   19
      ClassName_19    =   "CCWTextImage"
      szText_19       =   "Voltage[V]"
      style_19        =   17301883
      font_19         =   0
      Animator_18     =   0
      Blinker_18      =   0
      PointStyle_5    =   9
      LineStyle_5     =   5
      LineWidth_5     =   1
      BasePlot_5      =   0
      DefaultXInc_5   =   1
      DefaultPlotPerRow_5=   -1  'True
      Axes_1          =   20
      ClassName_20    =   "CCWAxes"
      Array_20        =   2
      Editor_20       =   21
      ClassName_21    =   "CCWGFAxisArrayEditor"
      Owner_21        =   1
      Array[0]_20     =   6
      Array[1]_20     =   13
      DefaultPlot_1   =   22
      ClassName_22    =   "CCWDataPlot"
      opts_22         =   4194367
      Name_22         =   "[Template]"
      C[0]_22         =   65280
      C[1]_22         =   255
      C[2]_22         =   16711680
      C[3]_22         =   16776960
      Event_22        =   2
      X_22            =   6
      Y_22            =   13
      LineStyle_22    =   1
      LineWidth_22    =   1
      BasePlot_22     =   0
      DefaultXInc_22  =   1
      DefaultPlotPerRow_22=   -1  'True
      Cursors_1       =   23
      ClassName_23    =   "CCWCursors"
      Editor_23       =   24
      ClassName_24    =   "CCWGFCursorArrayEditor"
      Owner_24        =   1
      TrackMode_1     =   2
      GraphBackground_1=   0
      GraphFrame_1    =   25
      ClassName_25    =   "CCWDrawObj"
      opts_25         =   62
      Image_25        =   26
      ClassName_26    =   "CCWPictImage"
      opts_26         =   1280
      Rows_26         =   1
      Cols_26         =   1
      F_26            =   -2147483633
      B_26            =   -2147483633
      ColorReplaceWith_26=   8421504
      ColorReplace_26 =   8421504
      Tolerance_26    =   2
      Animator_25     =   0
      Blinker_25      =   0
      PlotFrame_1     =   27
      ClassName_27    =   "CCWDrawObj"
      opts_27         =   62
      C[1]_27         =   0
      Image_27        =   28
      ClassName_28    =   "CCWPictImage"
      opts_28         =   1280
      Rows_28         =   1
      Cols_28         =   1
      Pict_28         =   1
      F_28            =   -2147483633
      B_28            =   0
      ColorReplaceWith_28=   8421504
      ColorReplace_28 =   8421504
      Tolerance_28    =   2
      Animator_27     =   0
      Blinker_27      =   0
      Caption_1       =   29
      ClassName_29    =   "CCWDrawObj"
      opts_29         =   62
      C[0]_29         =   -2147483640
      Image_29        =   30
      ClassName_30    =   "CCWTextImage"
      style_30        =   29
      font_30         =   0
      Animator_29     =   0
      Blinker_29      =   0
      DefaultXInc_1   =   1
      DefaultPlotPerRow_1=   -1  'True
      Bindings_1      =   31
      ClassName_31    =   "CCWBindingHolderArray"
      Editor_31       =   32
      ClassName_32    =   "CCWBindingHolderArrayEditor"
      Owner_32        =   1
      Annotations_1   =   33
      ClassName_33    =   "CCWAnnotations"
      Editor_33       =   34
      ClassName_34    =   "CCWAnnotationArrayEditor"
      Owner_34        =   1
      AnnotationTemplate_1=   35
      ClassName_35    =   "CCWAnnotation"
      opts_35         =   63
      Name_35         =   "[Template]"
      Plot_35         =   22
      Text_35         =   "[Template]"
      TextXPoint_35   =   6.7
      TextYPoint_35   =   6.7
      TextColor_35    =   16777215
      TextFont_35     =   36
      ClassName_36    =   "CCWFont"
      bFont_36        =   -1  'True
      BeginProperty Font_36 {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ShapeXPoints_35 =   37
      ClassName_37    =   "CDataBuffer"
      Type_37         =   5
      m_cDims;_37     =   1
      m_cElts_37      =   1
      Element[0]_37   =   3.3
      ShapeYPoints_35 =   38
      ClassName_38    =   "CDataBuffer"
      Type_38         =   5
      m_cDims;_38     =   1
      m_cElts_38      =   1
      Element[0]_38   =   3.3
      ShapeFillColor_35=   16777215
      ShapeLineColor_35=   16777215
      ShapeLineWidth_35=   1
      ShapeLineStyle_35=   1
      ShapePointStyle_35=   10
      ShapeImage_35   =   39
      ClassName_39    =   "CCWDrawObj"
      opts_39         =   62
      Image_39        =   40
      ClassName_40    =   "CCWPictImage"
      opts_40         =   1280
      Rows_40         =   1
      Cols_40         =   1
      Pict_40         =   7
      F_40            =   -2147483633
      B_40            =   -2147483633
      ColorReplaceWith_40=   8421504
      ColorReplace_40 =   8421504
      Tolerance_40    =   2
      Animator_39     =   0
      Blinker_39      =   0
      ArrowVisible_35 =   -1  'True
      ArrowColor_35   =   16777215
      ArrowWidth_35   =   1
      ArrowLineStyle_35=   1
      ArrowHeadStyle_35=   1
   End
   Begin VB.Label lblMaxVoltage 
      AutoSize        =   -1  'True
      Caption         =   "[--V ]"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   240
      Left            =   9540
      TabIndex        =   15
      Top             =   705
      Width           =   435
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "* Maximum Voltage"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   240
      Left            =   8970
      TabIndex        =   14
      Top             =   315
      Width           =   1875
   End
End
Attribute VB_Name = "frmMultiPulse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_nRowNo As Integer
Dim m_nColNo As Integer
Dim m_dOutVolt(16) As Double

Private Sub cmdFit_Click()
On Error GoTo syserr:
    Call Load_MultiPulse(False)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdLoad_MultiPulse_Click()
On Error GoTo syserr:
    
    Dim ReArray As Variant

    Me.CommonDialog1.Filter = "Multi Pulse File(*.csv)|*.csv"
    Me.CommonDialog1.InitDir = gPrintPara.strMultiPulseFilePath
    Me.CommonDialog1.ShowOpen
    
    file_name$ = Me.CommonDialog1.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If Dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    gPrintPara.strMultiPulseFilePath = file_name$
    frmRunning.txtMultiPulseFilePath.ToolTipText = file_name$
    frmRunning.txtMultiPulseFilePath.Text = GetNameToPath(file_name$)
    
    Call Load_MultiPulse(True)
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdOrigin_Click()
On Error GoTo syserr:
    Call Load_MultiPulse(True)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdSave_MP_Click()
On Error GoTo syserr:
    Call Save
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveAs_MP_Click()
On Error GoTo syserr:
    Call SaveAs
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Form_Load()
On Error GoTo syserr:
    Call Load_MultiPulse(True)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo syserr:
    Call Check_ExchangedValue
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub msfgMultiPulse_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo Err:

    m_nRowNo = Me.msfgMultiPulse.Row
    m_nColNo = Me.msfgMultiPulse.Col
    
    Me.txtInputValue.Width = Me.msfgMultiPulse.CellWidth
    Me.txtInputValue.Height = Me.msfgMultiPulse.CellHeight
    Me.txtInputValue.Left = Me.msfgMultiPulse.CellLeft + Me.msfgMultiPulse.Left
    Me.txtInputValue.Top = Me.msfgMultiPulse.CellTop + Me.msfgMultiPulse.Top

    Me.txtInputValue.Text = Me.msfgMultiPulse.TextMatrix(Me.msfgMultiPulse.Row, Me.msfgMultiPulse.Col)
    Me.txtInputValue.Visible = True
    Me.txtInputValue.ZOrder (0)
    Me.txtInputValue.SetFocus
    Me.txtInputValue.SelStart = Len(txtInputValue.Text)
    
    Exit Sub
    
Err:
    MsgBox Err.Description
End Sub

Private Sub Load_MultiPulse(ByVal i_bReadFileView As Boolean)
    On Error GoTo Err:
       
    Dim ReArray As Variant
    
    file_name$ = gPrintPara.strMultiPulseFilePath
    
    lblMaxVoltage.Caption = "{ " & CStr(SAVED_HEADIF_BOOT_SUPPLY_VOLT) & "V }"
        
    Me.CWG_MultiPulse.Refresh
    Me.CWG_MultiPulse.ClearData
    
    nMaxSplitCnt% = (MAX_WAVEFORM_DIVIDE_CNT / WAVEFORM_SPLIT_CNT)
    
    Me.CWG_MultiPulse.Axes(1).Minimum = 0
    Me.CWG_MultiPulse.Axes(1).Maximum = nMaxSplitCnt%
    
    If i_bReadFileView = True Then
        If Dir(file_name$) = "" Then
            MsgBox "파일을 열 수 없습니다!", vbCritical
            'Exit Sub
            
            For i% = 1 To 16 Step 1
                Me.msfgMultiPulse.TextMatrix(i%, 0) = CStr(i%)
                Me.msfgMultiPulse.TextMatrix(i%, 1) = CStr(m_dOutVolt(i% - 1))
                Me.CWG_MultiPulse.Plots(1).ChartY m_dOutVolt(i% - 1)
            Next i%
            
        Else
            Open file_name$ For Input As #1
            iindex% = 0
            Do While Not EOF(1)
            
                Line Input #1, str_line$
                ReArray = Split(str_line$, ",", 3, vbTextCompare)
                
                If iindex% > (nMaxSplitCnt% + 1) Then
                    Exit Do
                End If
                
                If (UBound(ReArray) = 1) And (iindex% >= 1) Then
                    m_dOutVolt(iindex% - 1) = ReArray(1)
                    
                    Me.msfgMultiPulse.TextMatrix(iindex%, 0) = CStr(iindex% - 1)
                    Me.msfgMultiPulse.TextMatrix(iindex%, 1) = CStr(m_dOutVolt(iindex% - 1))
                    Me.CWG_MultiPulse.Plots(1).ChartY m_dOutVolt(iindex% - 1)
                    
                End If
                
                str_line$ = ""
                iindex% = iindex% + 1
            Loop
            Close #1
        End If
        
        
    Else
       Me.CWG_MultiPulse.Plots(1).ChartY m_dOutVolt
    End If
   
    Exit Sub
Err:
    Close #1
    'MsgBox Err.Description
End Sub

Private Sub optPanX_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackPanPlotAreaX
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optPanY_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackZoomRectY
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optZoomX_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackZoomRectX
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optZoomXY_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackZoomRectXY
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub optZoomY_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackZoomRectY
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub PanXY_Click()
On Error GoTo syserr:
    Me.CWG_MultiPulse.TrackMode = cwGTrackZoomRectXY
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtInputValue_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtInputValue.Text) = False) Then
        Me.txtInputValue.Text = "0"
        Exit Sub
    End If
    
    dValue# = CDbl(Me.txtInputValue.Text)
    
    If dValue# >= 0 And dValue# <= SAVED_HEADIF_BOOT_SUPPLY_VOLT Then
        Me.msfgMultiPulse.TextMatrix(Me.msfgMultiPulse.Row, Me.msfgMultiPulse.Col) = Me.txtInputValue.Text
    Else
        Me.txtInputValue.Text = Me.msfgMultiPulse.TextMatrix(Me.msfgMultiPulse.Row, Me.msfgMultiPulse.Col)
        
        dValue# = CDbl(Me.txtInputValue.Text)
        MsgBox "입력 전압값이 0[V] 보다 작거나 " & CStr(SAVED_HEADIF_BOOT_SUPPLY_VOLT) & "[V] 보다 작습니다. 다시 확인후 입력바랍니다.", vbExclamation
    End If
    
    m_dOutVolt(m_nRowNo - 1) = dValue#
'
'    Me.CWG_MultiPulse.Refresh
'    Me.CWG_MultiPulse.ClearData
    Me.CWG_MultiPulse.Plots(1).PlotY m_dOutVolt
    
    Me.txtInputValue.Visible = False
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtInputValue_KeyPress(KeyAscii As Integer)
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

Private Sub Check_ExchangedValue()
On Error GoTo syserr:
    For i% = 1 To (MAX_WAVEFORM_DIVIDE_CNT / WAVEFORM_SPLIT_CNT) Step 1
        dValue# = CDbl(msfgMultiPulse.TextMatrix(i%, 1))
        If (m_dOutVolt(i% - 1) <> dValue#) Then
            If MsgBox("Multi Pulse 설정값에 변경된 데이타 있습니다. 변경된 값으로 수정하시겠습니까?", vbExclamation + vbOKCancel) = vbOK Then
                GRID_DataSaveToCSV msfgMultiPulse, gPrintPara.strMultiPulseFilePath, True
                
                Call Load_MultiPulse(True)
                
                If PI_HEAD_BootOK = True Then
                    If PI_HEAD_VoltageSet(hh%, True, m_dOutVolt) = False Then
                        MsgBox "Multi Pulse Data 전송 실패!!", False
                    End If
                End If

            End If
            Exit For
        End If
    Next i%
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Save()
On Error GoTo syserr:
    
    file_name$ = gPrintPara.strMultiPulseFilePath
    
    If file_name$ = "" Then Exit Sub
    
    If ((InStr(1, UCase(file_name$), "CSV") = 0) Or (InStr(1, UCase(file_name$), ".CSV") = 0)) Then
        file_name$ = file_name$ & ".csv"
    End If
        
    GRID_DataSaveToCSV msfgMultiPulse, file_name$, True
                
    gPrintPara.strMultiPulseFilePath = file_name$
    frmRunning.txtMultiPulseFilePath.ToolTipText = file_name$
    frmRunning.txtMultiPulseFilePath.Text = GetNameToPath(file_name$)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "MULTI_PULSE_FILEPATH", gPrintPara.strMultiPulseFilePath)
    
    Call Load_MultiPulse(True)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub


Private Sub SaveAs()
On Error GoTo syserr:
    Me.CommonDialog1.Filter = "Multi Pulse File(*.csv)|*.csv"
    Me.CommonDialog1.InitDir = gPrintPara.strMultiPulseFilePath
    Me.CommonDialog1.ShowSave
    
    file_name$ = Me.CommonDialog1.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If ((InStr(1, UCase(file_name$), "CSV") = 0) Or (InStr(1, UCase(file_name$), ".CSV") = 0)) Then
        file_name$ = file_name$ & ".csv"
    End If
        
    If Dir(file_name$) <> "" Then
        If MsgBox("이미 존재하는 파일 입니다. 덮어 쓰시겠습니까?", vbQuestion + vbYesNo) = vbNo Then
            Exit Sub
        End If
    End If
    
    GRID_DataSaveToCSV msfgMultiPulse, file_name$, True
                
    gPrintPara.strMultiPulseFilePath = file_name$
    frmRunning.txtMultiPulseFilePath.ToolTipText = file_name$
    frmRunning.txtMultiPulseFilePath.Text = GetNameToPath(file_name$)
    
    Call SaveSetting(App.Title, "PRINT_INFO", "MULTI_PULSE_FILEPATH", gPrintPara.strMultiPulseFilePath)
    
    Call Load_MultiPulse(True)
Exit Sub
syserr:
    MsgBox Err.Description
End Sub
