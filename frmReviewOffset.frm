VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form frmReviewOffset 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Review Offset Edit"
   ClientHeight    =   2550
   ClientLeft      =   2610
   ClientTop       =   8790
   ClientWidth     =   7680
   Icon            =   "frmReviewOffset.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2550
   ScaleWidth      =   7680
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton cmdSave 
      Caption         =   "Data Save"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   600
      Left            =   5865
      Picture         =   "frmReviewOffset.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   4
      Top             =   1860
      Width           =   1590
   End
   Begin VB.TextBox txtInput 
      Appearance      =   0  '평면
      BackColor       =   &H0080FFFF&
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   630
      TabIndex        =   1
      ToolTipText     =   "적용하시려면 ENTER!"
      Top             =   375
      Visible         =   0   'False
      Width           =   1755
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   1665
      Left            =   90
      TabIndex        =   0
      ToolTipText     =   "전헤드 선택은 더블클릭 입니다.(전부해제는 한번 더 더블클릭)"
      Top             =   105
      Width           =   7500
      _ExtentX        =   13229
      _ExtentY        =   2937
      _Version        =   393216
      Rows            =   6
      Cols            =   5
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   0
      Appearance      =   0
      FormatString    =   $"frmReviewOffset.frx":0B14
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lbl_Col 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      Height          =   180
      Left            =   105
      TabIndex        =   3
      Top             =   3360
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Label lbl_Row 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      Height          =   180
      Left            =   105
      TabIndex        =   2
      Top             =   3180
      Visible         =   0   'False
      Width           =   90
   End
End
Attribute VB_Name = "frmReviewOffset"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()
    
    For i% = 0 To 4
        Me.MSFlexGrid1.TextMatrix(i% + 1, 1) = Format(SAVED_ReviewOffsetX_mm정(i%))
        Me.MSFlexGrid1.TextMatrix(i% + 1, 2) = Format(SAVED_ReviewOffsetY_mm정(i%))
        Me.MSFlexGrid1.TextMatrix(i% + 1, 3) = Format(SAVED_ReviewOffsetX_mm역(i%))
        Me.MSFlexGrid1.TextMatrix(i% + 1, 4) = Format(SAVED_ReviewOffsetY_mm역(i%))
    Next i%

End Sub

Private Sub MSFlexGrid1_Click()

    txt_first_x& = 630
    txt_first_y& = 375 '645
    text_box_move_y& = 270
    
    Me.lbl_Row.Caption = Me.MSFlexGrid1.Row
    Me.lbl_Col.Caption = Me.MSFlexGrid1.Col
    rem_col% = Me.MSFlexGrid1.Col

    For i% = 1 To Me.MSFlexGrid1.Rows - 1
        For j% = 1 To Me.MSFlexGrid1.Cols - 1
            Me.MSFlexGrid1.Row = i%
            Me.MSFlexGrid1.Col = j%
            Me.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%
    Me.MSFlexGrid1.Row = CInt(Me.lbl_Row.Caption)
    
    For j% = 1 To Me.MSFlexGrid1.Cols - 1
        Me.MSFlexGrid1.Col = j%
        Me.MSFlexGrid1.CellBackColor = vbYellow
    Next j%

    For i% = 1 To rem_col% - 1
        strat_xx& = strat_xx& + Me.MSFlexGrid1.ColWidth(i%)
    Next i%
    start_yy& = txt_first_y& + (text_box_move_y& * (CInt(Me.lbl_Row.Caption) - 1))
    txt_width& = Me.MSFlexGrid1.ColWidth(rem_col%) + 15
    Me.txtInput.Move txt_first_x& + strat_xx&, start_yy&, txt_width&
    Me.txtInput.Text = Me.MSFlexGrid1.TextMatrix(CInt(Me.lbl_Row.Caption), rem_col%)
    Me.txtInput.Visible = True

End Sub

Private Sub MSFlexGrid1_LeaveCell()

    Me.txtInput.Visible = False

End Sub

Private Sub MSFlexGrid1_RowColChange()

    Me.txtInput.Visible = True

End Sub

Private Sub txtInput_Change()

    On Error Resume Next

    sel_row% = CInt(Me.lbl_Row.Caption)
    sel_col% = CInt(Me.lbl_Col.Caption)
    
    If Me.txtInput.Text = "" Then
        Exit Sub
    End If

    If Me.txtInput.Text = "-" Then
        Exit Sub
    End If

    If IsNumeric(Me.txtInput.Text) = False Then
        MsgBox "숫자로 입력 하여야 합니다." & vbCrLf & "ex) 5.5", vbCritical
        Me.txtInput.Visible = False
        Me.MSFlexGrid1.TextMatrix(sel_row%, sel_col%) = ""
        Exit Sub
    End If

    Me.MSFlexGrid1.TextMatrix(sel_row%, sel_col%) = Me.txtInput.Text

    
End Sub
