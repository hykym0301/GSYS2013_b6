VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmNzlPara 
   Caption         =   "노즐 파라메터"
   ClientHeight    =   6645
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5745
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmNzlPara.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   6645
   ScaleWidth      =   5745
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton cmdSaveAs 
      Caption         =   "Save As"
      Height          =   450
      Left            =   4170
      TabIndex        =   19
      Top             =   6120
      Width           =   1515
   End
   Begin VB.CommandButton cmdLoad 
      Caption         =   "Load"
      Height          =   450
      Left            =   2550
      TabIndex        =   15
      Top             =   5580
      Width           =   1515
   End
   Begin VB.TextBox txtNzlSetValue 
      Alignment       =   2  '가운데 맞춤
      BackColor       =   &H80000000&
      BorderStyle     =   0  '없음
      Height          =   585
      Left            =   3645
      Locked          =   -1  'True
      TabIndex        =   14
      Text            =   "--"
      Top             =   3735
      Visible         =   0   'False
      Width           =   1200
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      Height          =   450
      Left            =   2550
      TabIndex        =   12
      Top             =   6120
      Width           =   1515
   End
   Begin VB.Frame FrameRange 
      Caption         =   "Range 옵션 선택시.."
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2445
      Left            =   2655
      TabIndex        =   7
      Top             =   1125
      Width           =   3015
      Begin VB.ComboBox cboMultiple_Value 
         Height          =   345
         ItemData        =   "frmNzlPara.frx":058A
         Left            =   1590
         List            =   "frmNzlPara.frx":05AC
         TabIndex        =   17
         Text            =   "1"
         Top             =   1815
         Width           =   1140
      End
      Begin VB.ComboBox cboStartNzlNo 
         Height          =   345
         Left            =   1590
         TabIndex        =   9
         Text            =   "1"
         Top             =   330
         Width           =   1155
      End
      Begin VB.ComboBox cboEndNzlNo 
         Height          =   345
         Left            =   1590
         TabIndex        =   8
         Text            =   "256"
         Top             =   735
         Width           =   1155
      End
      Begin VB.Label lblMultipleValue 
         AutoSize        =   -1  'True
         Caption         =   "현재 노즐Pitch에 의한 배수: x 1"
         Height          =   225
         Left            =   180
         TabIndex        =   18
         Top             =   1455
         Width           =   2520
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "끝  노  즐"
         Height          =   225
         Left            =   225
         TabIndex        =   16
         Top             =   810
         Width           =   720
      End
      Begin VB.Label Label23 
         Caption         =   "시작노즐"
         Height          =   225
         Left            =   225
         TabIndex        =   11
         Top             =   420
         Width           =   840
      End
      Begin VB.Label lblMultiple_Value 
         AutoSize        =   -1  'True
         Caption         =   "배수 선택"
         Height          =   225
         Left            =   195
         TabIndex        =   10
         Top             =   1860
         Width           =   765
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Nozzle 옵션( 사용자 선택에 의한 전노즐을 세팅함 )"
      Height          =   810
      Left            =   90
      TabIndex        =   1
      Top             =   135
      Width           =   5580
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "All Off"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   5
         Left            =   4470
         TabIndex        =   13
         Top             =   375
         Width           =   825
      End
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "All On"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   135
         TabIndex        =   6
         Top             =   375
         Value           =   -1  'True
         Width           =   840
      End
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "Range"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   966
         TabIndex        =   5
         Top             =   375
         Width           =   915
      End
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "Selected"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   2
         Left            =   1872
         TabIndex        =   4
         Top             =   375
         Width           =   1125
      End
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "Even"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   3
         Left            =   2988
         TabIndex        =   3
         Top             =   375
         Width           =   750
      End
      Begin VB.OptionButton Opt_ApplyNozzle 
         Caption         =   "Odd"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   4
         Left            =   3729
         TabIndex        =   2
         Top             =   375
         Width           =   750
      End
   End
   Begin MSFlexGridLib.MSFlexGrid msfgNzlParams 
      Height          =   5580
      Left            =   105
      TabIndex        =   0
      Top             =   1005
      Width           =   2400
      _ExtentX        =   4233
      _ExtentY        =   9843
      _Version        =   393216
      Rows            =   257
      Cols            =   3
      BackColor       =   16777215
      GridColor       =   0
      Appearance      =   0
      FormatString    =   "No     |Live       |Delay      "
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
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5130
      Top             =   3705
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "frmNzlPara"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_nRowNo As Integer
Dim m_nColNo As Integer
Dim m_nLiveBuf(255) As Integer
Dim m_nDelayBuf(255) As Integer
Dim m_nOption As Integer
Dim m_bLoading As Boolean

Private Sub cboEndNzlNo_Click()
On Error GoTo syserr:
    
    If IsNumeric(cboStartNzlNo.Text) = False Then
        Exit Sub
    End If
    
    If IsNumeric(cboEndNzlNo.Text) = False Then
        Exit Sub
    End If
    
    nStartNo% = cboStartNzlNo.Text
    nEndNo% = cboEndNzlNo.Text
    
    If nStartNo% > nEndNo% Then
        cboStartNzlNo.Text = "1"
        cboEndNzlNo.Text = CStr(NOZZLE_COUNT)
        Exit Sub
    End If
    
    For i% = 1 To NOZZLE_COUNT Step 1
        If (i% >= nStartNo%) And (i% <= nEndNo%) Then
            Me.msfgNzlParams.TextMatrix(i%, 1) = "1"
        Else
            Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
        End If
    Next i%
    
    Me.txtNzlSetValue.Visible = False
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cboEndNzlNo_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.cboEndNzlNo.Text) = False) Then
        Me.cboEndNzlNo.Text = CStr(NOZZLE_COUNT)
        Exit Sub
    End If
    
    nStartNo% = CInt(cboStartNzlNo.Text)
    nEndNo% = CInt(cboEndNzlNo.Text)
    
    If nStartNo% > nEndNo% Then
        Me.cboEndNzlNo.ListIndex = 0
    End If
    
    Call cboEndNzlNo_Click
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cboEndNzlNo_KeyPress(KeyAscii As Integer)
On Error GoTo syserr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cboMultiple_Value_Click()
On Error GoTo syserr:
    
    If (IsNumeric(cboStartNzlNo.Text) = True) And _
       (IsNumeric(cboEndNzlNo.Text) = True) And _
       (IsNumeric(cboMultiple_Value.Text) = True) Then
        
        nStartNzlNo% = CInt(cboStartNzlNo.Text) - 1
        nEndNzlNo% = CInt(cboEndNzlNo.Text) - 1
        nMultiple_Value% = CInt(cboMultiple_Value.Text)
        
        If nStartNzlNo% > nEndNzlNo% Then
            MsgBox "시작노즐이 끝노즐보다 큰값일 수 없습니다. 다시 확인하여 주십시요.", vbExclamation
            Exit Sub
        End If
                
        For i% = 1 To NOZZLE_COUNT Step 1
            Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
        Next i%
        
        For i% = nStartNzlNo% To nEndNzlNo% Step 1
            If ((i% - nStartNzlNo%) Mod nMultiple_Value%) = 0 Then
                Me.msfgNzlParams.TextMatrix(i% + 1, 1) = "1"
            Else
                Me.msfgNzlParams.TextMatrix(i% + 1, 1) = "0"
            End If
        Next i%
        
    End If
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cboStartNzlNo_Click()

On Error GoTo syserr:
    
    If IsNumeric(cboStartNzlNo.Text) = False Then
        Me.cboStartNzlNo.Text = "1"
        Exit Sub
    End If
    
    If IsNumeric(cboEndNzlNo.Text) = False Then
        Me.cboEndNzlNo.Text = CStr(NOZZLE_COUNT)
    End If
    
    nStartNo% = CInt(Me.cboStartNzlNo.Text)
    nEndNo% = CInt(Me.cboEndNzlNo.Text)
    
    If (nStartNo% > NOZZLE_COUNT) Or (nStartNo% < 1) Then
        nStartNo% = 1
        Me.cboStartNzlNo.Text = "1"
    End If
    
    Me.cboEndNzlNo.Clear
    For i% = nStartNo% To NOZZLE_COUNT Step 1
        DoEvents
        Me.cboEndNzlNo.AddItem i%
    Next i%
    
    If (nStartNo% > nEndNo%) Then
        'Me.cboEndNzlNo.ListIndex = NOZZLE_COUNT - nStartNo%
        Me.cboEndNzlNo.Text = CStr(NOZZLE_COUNT)
    Else
        'Me.cboEndNzlNo.ListIndex = nEndNo% - nStartNo%
        Me.cboEndNzlNo.Text = CStr(nEndNo%)
    End If
    
    nStartNo% = cboStartNzlNo.Text
    nEndNo% = cboEndNzlNo.Text
    
    If nStartNo% > nEndNo% Then
        cboStartNzlNo.Text = "1"
        cboEndNzlNo.Text = CStr(NOZZLE_COUNT)
        Exit Sub
    End If
    
    For i% = 1 To NOZZLE_COUNT Step 1
        If (i% >= nStartNo%) And (i% <= nEndNo%) Then
            Me.msfgNzlParams.TextMatrix(i%, 1) = "1"
        Else
            Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
        End If
    Next i%
    
   ' msfgNzlParams.Rows = nStartNo%
    
    Me.txtNzlSetValue.Visible = False
    
Exit Sub
syserr:
    MsgBox Err.Description
    
End Sub

Private Sub cboStartNzlNo_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.cboStartNzlNo.Text) = False) Then
        Me.cboStartNzlNo.Text = "1"
    End If
    
    nValue% = CInt(Me.cboStartNzlNo.Text)
    
    If (nValue% <= 0) Or (nValue% > NOZZLE_COUNT) Then
        Me.cboStartNzlNo.Text = "1"
    End If
    
    Call cboStartNzlNo_Click
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cboStartNzlNo_KeyPress(KeyAscii As Integer)
On Error GoTo syserr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
        Case vbKeyBack
        Case Else
            KeyAscii = 0
    End Select
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdLoad_Click()
On Error GoTo syserr:

    Dim NzlLive(255) As Integer
    Dim ReArray As Variant
    
    Me.CommonDialog1.Filter = "Live Delay File(*.csv)|*.csv"
    Me.CommonDialog1.InitDir = "C:\Poongsan\Data\Live_Delay\"
    Me.CommonDialog1.ShowOpen
    
    file_name$ = Me.CommonDialog1.FileName
    
    If file_name$ = "" Then Exit Sub
    
    If Dir(file_name$) = "" Then
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If
    
    gPrintPara.strNzlParamsFilePath = file_name$
    For i% = 0 To 1 Step 1
        frmRunning.txtNozzleParamsFilePath(i%).ToolTipText = file_name$
        frmRunning.txtNozzleParamsFilePath(i%).Text = GetNameToPath(file_name$)
    Next i%
    
    Call Load_NozzleParams
    
Exit Sub
syserr:
    Close #1
    MsgBox Err.Description
End Sub

Private Sub cmdSave_Click()
On Error GoTo syserr:
    Call Save
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdSaveAs_Click()
On Error GoTo syserr:
    Call SaveAs
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Form_Load()
On Error GoTo syserr:
    
    m_bLoading = True
    
    For i% = 1 To NOZZLE_COUNT Step 1
        cboStartNzlNo.AddItem CStr(i%)
        cboEndNzlNo.AddItem CStr(i%)
    Next i%
        
    txtNzlSetValue.Visible = False
    FrameRange.Enabled = False
    
    m_nOption = CInt(GetSetting(App.Title, "PRINT_INFO", "NZL_LIVE_OPTION", "0"))
    Me.Opt_ApplyNozzle(m_nOption).Value = True
        
    If m_nOption = 1 Then
        FrameRange.Enabled = True
    Else
        FrameRange.Enabled = False
    End If
        
    Call Load_NozzleParams
    
    Me.cboStartNzlNo.Text = CStr(gPrintPara.nSetStartNzlNo)
    Me.cboEndNzlNo.Text = CStr(gPrintPara.nSetEndNzlNo)
    m_bLoading = False
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub


Private Sub msfgNzlParams_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo Err:
    m_nRowNo = Me.msfgNzlParams.Row
    m_nColNo = Me.msfgNzlParams.Col
    
    If m_nOption = 2 Then
        If m_nColNo = 2 Then
            Me.txtNzlSetValue.Width = Me.msfgNzlParams.CellWidth
            Me.txtNzlSetValue.Height = Me.msfgNzlParams.CellHeight
            Me.txtNzlSetValue.Left = Me.msfgNzlParams.CellLeft + Me.msfgNzlParams.Left
            Me.txtNzlSetValue.Top = Me.msfgNzlParams.CellTop + Me.msfgNzlParams.Top
            
            Me.txtNzlSetValue.Text = Me.msfgNzlParams.TextMatrix(Me.msfgNzlParams.Row, Me.msfgNzlParams.Col)
            Me.txtNzlSetValue.Visible = True
            Me.txtNzlSetValue.ZOrder (0)
            Me.txtNzlSetValue.SetFocus
            Me.txtNzlSetValue.SelStart = Len(txtNzlSetValue.Text)
        Else
            Me.txtNzlSetValue.Visible = False
            strValue$ = Me.msfgNzlParams.TextMatrix(m_nRowNo, m_nColNo)
            'Me.Caption = CStr(m_nRowNo) & " / " & CStr(m_nColNo) & "=" & CStr(strValue$)
            If strValue$ = "0" Then
                Me.msfgNzlParams.TextMatrix(m_nRowNo, m_nColNo) = "1"
            Else
               Me.msfgNzlParams.TextMatrix(m_nRowNo, m_nColNo) = "0"
            End If
        End If
    End If
    Exit Sub
Err:
    MsgBox Err.Description
End Sub

Private Sub Opt_ApplyNozzle_Click(Index As Integer)

On Error GoTo syserr:
    
    If m_bLoading = True Then Exit Sub
    
    txtNzlSetValue.Visible = False
    FrameRange.Enabled = False
    
    Select Case Index
        
        Case 0  '// all on
            
            For i% = 1 To NOZZLE_COUNT Step 1
                Me.msfgNzlParams.TextMatrix(i%, 1) = "1"
            Next i%
            
        Case 1  '// range
            
            FrameRange.Enabled = True
            Call cboStartNzlNo_Click
            
        Case 2  '// selected
        
        Case 3  '// even
            
            For i% = 1 To NOZZLE_COUNT Step 1
                If (i% Mod 2) = 0 Then
                    Me.msfgNzlParams.TextMatrix(i%, 1) = "1"
                Else
                    Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
                End If
            Next i%
            
        Case 4  '// odd
            
            For i% = 1 To NOZZLE_COUNT Step 1
                If (i% Mod 2) = 1 Then
                    Me.msfgNzlParams.TextMatrix(i%, 1) = "1"
                Else
                    Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
                End If
            Next i%
            
        Case 5  '// all off
            
            For i% = 1 To NOZZLE_COUNT Step 1
                Me.msfgNzlParams.TextMatrix(i%, 1) = "0"
            Next i%
        
    End Select
    
    m_nOption = Index
    Call SaveSetting(App.Title, "PRINT_INFO", "NZL_LIVE_OPTION", CStr(Index))
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtNzlSetValue_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo syserr:
    
    If (KeyCode <> 13) Then Exit Sub
    
    If (IsNumeric(Me.txtNzlSetValue.Text) = False) Then
        Me.txtNzlSetValue.Text = "0"
        Exit Sub
    End If
    
    nValue% = CInt(Me.txtNzlSetValue.Text)
    
    If nValue% > 1 Then
        Me.msfgNzlParams.TextMatrix(Me.msfgNzlParams.Row, Me.msfgNzlParams.Col) = "1"
    ElseIf nValue% < 0 Then
        Me.msfgNzlParams.TextMatrix(Me.msfgNzlParams.Row, Me.msfgNzlParams.Col) = "0"
    Else
        Me.msfgNzlParams.TextMatrix(Me.msfgNzlParams.Row, Me.msfgNzlParams.Col) = Me.txtNzlSetValue.Text
    End If
    
    txtNzlSetValue.Visible = False
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub txtNzlSetValue_KeyPress(KeyAscii As Integer)
On Error GoTo syserr:

    Select Case KeyAscii
        Case Asc("0") To Asc("9")
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
    Dim bExchanged(1) As Boolean
    Dim nValue(1) As Integer
    For i% = 1 To NOZZLE_COUNT Step 1
        nValue(0) = CInt(msfgNzlParams.TextMatrix(i%, 1))
        nValue(1) = CInt(msfgNzlParams.TextMatrix(i%, 2))
        If (m_nLiveBuf(i% - 1) <> nValue(0)) And _
           (bExchanged(0) = False) Then
            bExchanged(0) = True
        End If
        
        If (m_nDelayBuf(i% - 1) <> nValue(1)) And _
           (bExchanged(1) = False) Then
            bExchanged(1) = True
        End If
    Next i%
    
    If (bExchanged(0) = True) Or (bExchanged(1) = True) Then
        If (bExchanged(0) = True) And (bExchanged(1) = True) Then
            If MsgBox("Live, Delay 설정값에 변경된 데이타 있습니다. 변경된 값으로 수정하시겠습니까?", vbExclamation + vbOKCancel) = vbOK Then
                GRID_DataSaveToCSV msfgNzlParams, gPrintPara.strNzlParamsFilePath, True
            End If
            
        Else
            If bExchanged(0) = True Then
                If MsgBox("Live 설정값에 변경된 데이타 있습니다. 변경된 값으로 수정하시겠습니까?", vbExclamation + vbOKCancel) = vbOK Then
                    GRID_DataSaveToCSV msfgNzlParams, gPrintPara.strNzlParamsFilePath, True
                End If
            End If
            If bExchanged(1) = True Then
                If MsgBox("Delay 설정값에 변경된 데이타 있습니다. 변경된 값으로 수정하시겠습니까?", vbExclamation + vbOKCancel) = vbOK Then
                    GRID_DataSaveToCSV msfgNzlParams, gPrintPara.strNzlParamsFilePath, True
                End If
            End If
        End If
    End If
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Load_NozzleParams()
    On Error GoTo Err:
    
    'Dim NzlLive(255) As Integer
    'Dim NzlDelay(255) As Integer
    Dim ReArray As Variant
    file_name$ = gPrintPara.strNzlParamsFilePath
    
    Me.Caption = "노즐 파라메터(" & GetNameToPath(file_name$) & ")"
    
    If Dir(file_name$) = "" Then
        Call SetDefaultValue
        MsgBox "파일을 열 수 없습니다!", vbCritical
        Exit Sub
    End If

    Open file_name$ For Input As #1
    iindex% = 0
    Do While Not EOF(1)
        Line Input #1, str_line$
        ReArray = Split(str_line$, ",", 3, vbTextCompare)
            
        If (iindex% >= 1) And UBound(ReArray) = 2 Then
        
            m_nLiveBuf(iindex% - 1) = ReArray(1)
            m_nDelayBuf(iindex% - 1) = ReArray(2)
            
            Me.msfgNzlParams.TextMatrix(iindex%, 0) = CStr(iindex%)
            Me.msfgNzlParams.TextMatrix(iindex%, 1) = CStr(m_nLiveBuf(iindex% - 1))
            Me.msfgNzlParams.TextMatrix(iindex%, 2) = CStr(m_nDelayBuf(iindex% - 1))
                                    
            gPrintPara.nSetNzlLive(iindex% - 1) = ReArray(1)
            gPrintPara.nSetNzlDelay(iindex% - 1) = ReArray(2)
           
        End If
        str_line$ = ""
        iindex% = iindex% + 1
    Loop
    Close #1
    
    If PI_HEAD_BootOK = True Then
        If PI_HEAD_LiveNozzle(0, True, gPrintPara.nSetNzlLive) = False Then
            MsgBox "Nozzle Live중 Interface Error!", vbCritical
        End If
        
        If PI_HEAD_DelayNozzle(0, True, gPrintPara.nSetNzlDelay) = False Then
            MsgBox "Nozzle Delay중 Interface Error!", vbCritical
        End If
    End If
    
    lblMultipleValue.Caption = "현재 노즐Pitch에 의한 배수: x " & CStr(gPrintPara.nSetMultiple_Value)
    
    frmRunning.cboNzlNo_1st.Text = cboStartNzlNo.Text
    frmRunning.cboNzlNo_2nd.Text = cboEndNzlNo.Text
    
    Call Check_PrintNzlNo
    
    Exit Sub
Err:
    Close #1
    MsgBox Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo syserr:
    Call Check_ExchangedValue
    Call Check_PrintNzlNo
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Save()
On Error GoTo syserr:
    
    file_name$ = gPrintPara.strNzlParamsFilePath
    
    If file_name$ = "" Then Exit Sub
    
    If ((InStr(1, UCase(file_name$), "CSV") = 0) Or (InStr(1, UCase(file_name$), ".CSV") = 0)) Then
        file_name$ = file_name$ & ".csv"
    End If
    
    GRID_DataSaveToCSV msfgNzlParams, file_name$, True
                
    gPrintPara.strNzlParamsFilePath = file_name$
    For i% = 0 To 1 Step 1
        frmRunning.txtNozzleParamsFilePath(i%).ToolTipText = file_name$
        frmRunning.txtNozzleParamsFilePath(i%).Text = GetNameToPath(file_name$)
    Next i%
    
    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PARAMS_FILEPATH", gPrintPara.strNzlParamsFilePath)
    
    Call Load_NozzleParams
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub SaveAs()
On Error GoTo syserr:
    Me.CommonDialog1.Filter = "Live Delay File(*.csv)|*.csv"
    Me.CommonDialog1.InitDir = gPrintPara.strNzlParamsFilePath 'C:\Poongsan\Data\Live_Delay\"
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
    
    GRID_DataSaveToCSV msfgNzlParams, file_name$, True
                
    gPrintPara.strNzlParamsFilePath = file_name$
    For i% = 0 To 1 Step 1
        frmRunning.txtNozzleParamsFilePath(i%).ToolTipText = file_name$
        frmRunning.txtNozzleParamsFilePath(i%).Text = GetNameToPath(file_name$)
    Next i%
    
    Call SaveSetting(App.Title, "PRINT_INFO", "NOZZLE_PARAMS_FILEPATH", gPrintPara.strNzlParamsFilePath)
    
    Call Load_NozzleParams
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub SetDefaultValue()
On Error GoTo syserr:
    For iindex% = 1 To NOZZLE_COUNT Step 1
        Me.msfgNzlParams.TextMatrix(iindex%, 0) = CStr(iindex%)
        Me.msfgNzlParams.TextMatrix(iindex%, 1) = "1"
        Me.msfgNzlParams.TextMatrix(iindex%, 2) = "0"
    Next iindex%
Exit Sub
syserr:
    MsgBox Err.Description
End Sub
