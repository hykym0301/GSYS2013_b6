VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmWavwDetail 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Waveform Detail"
   ClientHeight    =   13875
   ClientLeft      =   8250
   ClientTop       =   450
   ClientWidth     =   4200
   ControlBox      =   0   'False
   Icon            =   "frmWavwDetail.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   13875
   ScaleWidth      =   4200
   Begin VB.CommandButton cmdWave 
      Caption         =   "Gen Wave"
      Height          =   540
      Left            =   3870
      TabIndex        =   1
      Top             =   14115
      Width           =   3045
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   13785
      Left            =   75
      TabIndex        =   0
      Top             =   30
      Width           =   4020
      _ExtentX        =   7091
      _ExtentY        =   24315
      _Version        =   393216
      Rows            =   129
      Cols            =   6
      GridColor       =   0
      ScrollBars      =   2
      FormatString    =   "No |Hd1    |Hd2    |Hd3    |Hd4    |Hd5    "
   End
End
Attribute VB_Name = "frmWavwDetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub cmdWave_Click()

'    If frmRunning.OptDevidingX(0).Value = True Then '16
'        for_step% = 8
'    Else '32
'        for_step% = 4
'    End If
'
'    For sel_h% = 0 To 4
'
'        If frmRunning.ChkHead(sel_h%).Value = 1 Then
'
'            For row_n% = 0 To 127 Step for_step%
'                Me.MSFlexGrid1.TopRow = row_n% + 1
'                cu_val# = CDbl(Me.MSFlexGrid1.TextMatrix(row_n% + 1, sel_h% + 1))
'                If (row_n% + 1) + for_step% > 128 Then
'                    next_val# = cu_val#
'                Else
'                    next_val# = CDbl(Me.MSFlexGrid1.TextMatrix((row_n% + 1) + for_step%, sel_h% + 1))
'                End If
'                If cu_val# = next_val# Then
'                    step_val# = cu_val#
'                    For i% = 0 To for_step% - 1
'                        Me.MSFlexGrid1.TextMatrix((row_n% + i%) + 1, sel_h% + 1) = Format(cu_val#, "0.00") ' + (step_val# * i%)
'                    Next i%
'                Else
'                    step_val# = (next_val# - cu_val#) / for_step%
'                    For i% = 0 To for_step% - 1
'                        tmp_val# = cu_val# + (step_val# * i%)
'                        Me.MSFlexGrid1.TextMatrix((row_n% + i%) + 1, sel_h% + 1) = Format(tmp_val#, "0.00")
'                    Next i%
'                End If
'
'                'For i% = 0 To for_step% - 1
'                '    Me.MSFlexGrid1.TextMatrix((row_n% + i%) + 1, sel_h% + 1) = cu_val# + (step_val# * i%)
'                'Next i%
'            Next row_n%
'        End If
'    Next sel_h%

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    For i% = 1 To 128
        Me.MSFlexGrid1.TextMatrix(i%, 0) = CStr(i%)
    Next i%

End Sub
