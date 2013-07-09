VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmReadyModeSet 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Ready-Mode"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4080
   Icon            =   "frmReadyModeSet.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   4080
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton cmdReadyModeApply 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Apply"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   2190
      Style           =   1  '그래픽
      TabIndex        =   7
      Top             =   4200
      Width           =   1740
   End
   Begin VB.TextBox txtVoltage 
      Alignment       =   2  '가운데 맞춤
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2190
      TabIndex        =   6
      Text            =   "0"
      Top             =   3825
      Width           =   1740
   End
   Begin VB.TextBox txtUsrInput 
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
      Height          =   300
      Left            =   495
      TabIndex        =   2
      Top             =   360
      Visible         =   0   'False
      Width           =   1695
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGridVolt1 
      Height          =   13785
      Left            =   4140
      TabIndex        =   0
      Top             =   75
      Width           =   3930
      _ExtentX        =   6932
      _ExtentY        =   24315
      _Version        =   393216
      Rows            =   129
      Cols            =   6
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   "No |Hd1    |Hd2    |Hd3    |Hd4    |Hd5    "
   End
   Begin MSFlexGridLib.MSFlexGrid MSF_Wave 
      Height          =   3735
      Left            =   150
      TabIndex        =   1
      Top             =   75
      Width           =   3795
      _ExtentX        =   6694
      _ExtentY        =   6588
      _Version        =   393216
      Rows            =   17
      Cols            =   3
      GridColor       =   0
      ScrollBars      =   0
      Appearance      =   0
      FormatString    =   $"frmReadyModeSet.frx":058A
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGridVolt 
      Height          =   5115
      Left            =   4470
      TabIndex        =   8
      Top             =   3645
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   9022
      _Version        =   393216
      Rows            =   129
      GridColor       =   0
      ScrollBars      =   2
      Appearance      =   0
      FormatString    =   "PointNo|Gen Voltage       "
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "전헤드 대표전압[V]"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   165
      TabIndex        =   5
      Top             =   3900
      Width           =   1785
   End
   Begin VB.Label lbl_ColNum 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   3210
      TabIndex        =   4
      Top             =   5775
      Width           =   90
   End
   Begin VB.Label lbl_RowNum 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "0"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   3210
      TabIndex        =   3
      Top             =   5610
      Width           =   90
   End
End
Attribute VB_Name = "frmReadyModeSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Sub GenWave()

On Error GoTo syserr
GRID_Clear Me.MSFlexGridVolt1, False
For hdno% = 0 To 4
    'If Me.ChkHead(hdno%).Value = 1 Then
    
        GRID_Clear Me.MSFlexGridVolt, False

        For rr% = 1 To 12
            If Me.MSF_Wave.TextMatrix(rr%, 1) = "" Then Exit Sub
            cur_index% = CDbl(Me.MSF_Wave.TextMatrix(rr%, 1)) / (16 / 128)
            
            If cur_index% > 127 Then
                cur_index% = 127
            End If
            
            Me.MSFlexGridVolt.TopRow = cur_index% + 1
            Me.MSFlexGridVolt.TextMatrix(cur_index% + 1, 0) = cur_index% + 1
            Me.MSFlexGridVolt.TextMatrix(cur_index% + 1, 1) = Me.MSF_Wave.TextMatrix(rr%, 2)
            Me.MSFlexGridVolt.TopRow = cur_index% + 1
            last_index% = cur_index% + 1
            last_voltage# = Me.MSF_Wave.TextMatrix(rr%, 2)

        Next rr%
        
        Me.MSFlexGridVolt.TopRow = 1
        For i% = last_index% + 1 To 128
            Me.MSFlexGridVolt.TextMatrix(i%, 0) = i%
            Me.MSFlexGridVolt.TextMatrix(i%, 1) = 0 '   last_voltage#
        Next i%
        
        fl_cnt% = 0
        For i% = 1 To last_index%
            If Me.MSFlexGridVolt.TextMatrix(i%, 0) <> "" Then
                Me.MSFlexGridVolt.TopRow = i%: DoEvents
                If fl_cnt% = 0 Then
                    first_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    first_index% = i%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 1 Then
                    second_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    second_index% = i%
                    delta_val# = (second_val# - first_val#) / (second_index% - first_index%)
                    'step_val# = s
                    For j% = first_index% To second_index%
                        tmp# = first_val# + (delta_val# * (j% - first_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                    'fl_cnt% = 0
                ElseIf fl_cnt% = 2 Then
                    third_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    third_index% = i%
                    delta_val# = (third_val# - second_val#) / (third_index% - second_index%)
                    'step_val# = s
                    For j% = second_index% To third_index%
                        tmp# = second_val# + (delta_val# * (j% - second_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 3 Then
                    fourth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    fourth_index% = i%
                    delta_val# = (fourth_val# - third_val#) / (fourth_index% - third_index%)
                    'step_val# = s
                    For j% = third_index% To fourth_index%
                        tmp# = third_val# + (delta_val# * (j% - third_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 4 Then
                    fiveth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    fiveth_index% = i%
                    delta_val# = (fiveth_val# - fourth_val#) / (fiveth_index% - fourth_index%)
                    'step_val# = s
                    For j% = fourth_index% To fiveth_index%
                        tmp# = fourth_val# + (delta_val# * (j% - fourth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 5 Then
                    sixth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    sixth_index% = i%
                    delta_val# = (sixth_val# - fiveth_val#) / (sixth_index% - fiveth_index%)
                    'step_val# = s
                    For j% = fiveth_index% To sixth_index%
                        tmp# = fiveth_val# + (delta_val# * (j% - fiveth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 6 Then
                    seventh_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    seventh_index% = i%
                    delta_val# = (seventh_val# - sixth_val#) / (seventh_index% - sixth_index%)
                    'step_val# = s
                    For j% = sixth_index% To seventh_index%
                        tmp# = sixth_val# + (delta_val# * (j% - sixth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 7 Then
                    eighth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    eighth_index% = i%
                    delta_val# = (eighth_val# - seventh_val#) / (eighth_index% - seventh_index%)
                    'step_val# = s
                    For j% = seventh_index% To eighth_index%
                        tmp# = seventh_val# + (delta_val# * (j% - seventh_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 8 Then
                    nineth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    nineth_index% = i%
                    delta_val# = (nineth_val# - eighth_val#) / (nineth_index% - eighth_index%)
                    'step_val# = s
                    For j% = eighth_index% To nineth_index%
                        tmp# = eighth_val# + (delta_val# * (j% - eighth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 9 Then
                    tenth_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    tenth_index% = i%
                    delta_val# = (tenth_val# - nineth_val#) / (tenth_index% - nineth_index%)
                    'step_val# = s
                    For j% = nineth_index% To tenth_index%
                        tmp# = nineth_val# + (delta_val# * (j% - nineth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 10 Then
                    n11th_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    n11th_index% = i%
                    delta_val# = (n11th_val# - tenth_val#) / (n11th_index% - tenth_index%)
                    'step_val# = s
                    For j% = tenth_index% To n11th_index%
                        tmp# = tenth_val# + (delta_val# * (j% - tenth_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    
                    fl_cnt% = fl_cnt% + 1
                ElseIf fl_cnt% = 11 Then
                    n12th_val# = CDbl(Me.MSFlexGridVolt.TextMatrix(i%, 1))
                    n12th_index% = i%
                    delta_val# = (n12th_val# - n11th_val#) / (n12th_index% - n11th_index%)
                    'step_val# = s
                    For j% = n11th_index% To n12th_index%
                        tmp# = n11th_val# + (delta_val# * (j% - n11th_index%))
                        Me.MSFlexGridVolt.TextMatrix(j%, 1) = Format(tmp#, "0.00")
                        Me.MSFlexGridVolt.TopRow = j%: DoEvents
                        Me.MSFlexGridVolt.TextMatrix(j%, 0) = j%
                    Next j%
                    
                    GoTo ExitHere
                End If
    
            End If
        Next i%
ExitHere:

        For j% = 1 To 128
            Me.MSFlexGridVolt1.TextMatrix(j%, hdno% + 1) = Me.MSFlexGridVolt.TextMatrix(j%, 1)
        Next j%

    'End If
Next hdno%
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub Command1_Click()

    GenWave

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    If Dir(App.Path & "LasetReadyMode.csv") <> "" Then

        GRID_DataCSVToOpen Me.MSF_Wave, App.Path & "LasetReadyMode.csv", False
        Call GenWave
        Me.txtVoltage.Text = Me.MSF_Wave.TextMatrix(2, 2)
        
    End If
    
End Sub

Private Sub MSF_Wave_Click()

    Me.lbl_RowNum.Caption = Me.MSF_Wave.Row
    Me.lbl_ColNum.Caption = Me.MSF_Wave.Col
    
End Sub

Sub MSF_Wave_DblClick()

    text_box_fixed_x& = Me.MSF_Wave.Left '495 '420
    text_box_fixed_y& = Me.MSF_Wave.Top '360 '4710
    text_box_move_y& = 285

    

   ' Me.lbl_RowNum.Caption = Me.MSF_Wave.Row

    'Me.MSF_Wave.Row = CInt(Me.lbl_RowNum.Caption)
    'Me.MSF_Wave.Col = CInt(Me.lbl_ColNum.Caption)
    
    rrr% = CInt(Me.lbl_RowNum.Caption)
    ccc% = CInt(Me.lbl_ColNum.Caption)
    
    If ccc% = 2 Then Exit Sub
    If ((rrr% = 0) Or (ccc% = 0)) Then Exit Sub
    
    cal_x# = 0: cal_y# = 0
    For cc% = 1 To ccc%
        cal_x# = cal_x# + Me.MSF_Wave.ColWidth(cc% - 1)
    Next cc%
    For rr% = 1 To rrr%
        cal_y# = cal_y# + Me.MSF_Wave.RowHeight(rr% - 1)
    Next rr%
    mov_x# = text_box_fixed_x& + cal_x#
    mov_y# = text_box_fixed_y& + cal_y#

    Me.txtUsrInput.Move mov_x#, mov_y#
    Me.txtUsrInput.Width = Me.MSF_Wave.ColWidth(CInt(Me.lbl_ColNum.Caption)) + 15

    
    
    Me.txtUsrInput.Text = Me.MSF_Wave.TextMatrix(CInt(Me.lbl_RowNum.Caption), 1)
    Me.txtUsrInput.Visible = True
    Me.txtUsrInput.SetFocus

    On Error Resume Next
    Me.txtUsrInput.SelLength = Len(Me.txtUsrInput.Text)
    Err.Clear

End Sub

Private Sub txtUsrInput_KeyPress(KeyAscii As Integer)

    If KeyAscii <> 13 Then Exit Sub

    If IsNumeric(Me.txtUsrInput.Text) = False Then
        MsgBox "Wrong data type!!", vbCritical
        Me.txtUsrInput.Visible = False
        Exit Sub
    End If
    
    Me.MSF_Wave.TextMatrix(CLng(Me.lbl_RowNum.Caption), Me.MSF_Wave.Col) = Me.txtUsrInput.Text
    If Me.MSF_Wave.Row >= 12 Then
        Me.MSF_Wave.Row = 1
    Else
        Me.MSF_Wave.Row = Me.MSF_Wave.Row + 1
    End If
    Me.lbl_RowNum.Caption = Me.MSF_Wave.Row
    If Me.MSF_Wave.Row > 12 Then Exit Sub
    Call Me.MSF_Wave_DblClick
    'Me.txtUsrInput.Visible = False
    
End Sub

Private Sub txtVoltage_Change()

    If IsNumeric(Me.txtVoltage.Text) = False Then
        MsgBox "Wrong data type!!", vbCritical
        Exit Sub
    End If

    Me.MSF_Wave.TextMatrix(1, 2) = "0"
    Me.MSF_Wave.TextMatrix(1, 1) = "0"
    Me.MSF_Wave.TextMatrix(2, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(3, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(4, 2) = "0"
    Me.MSF_Wave.TextMatrix(5, 2) = "0"
    Me.MSF_Wave.TextMatrix(6, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(7, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(8, 2) = "0"
    Me.MSF_Wave.TextMatrix(9, 2) = "0"
    Me.MSF_Wave.TextMatrix(10, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(11, 2) = Me.txtVoltage.Text
    Me.MSF_Wave.TextMatrix(12, 2) = "0"

End Sub
