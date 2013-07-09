VERSION 5.00
Begin VB.Form frmWait 
   Caption         =   "Wait.."
   ClientHeight    =   1425
   ClientLeft      =   8130
   ClientTop       =   7590
   ClientWidth     =   6735
   LinkTopic       =   "Form1"
   ScaleHeight     =   1290
   ScaleMode       =   0  '사용자
   ScaleWidth      =   6735
   StartUpPosition =   2  '화면 가운데
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   555
      Top             =   240
   End
   Begin VB.Label lbl_MSG 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "SYSTEM Data Processing.......X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   480
      Left            =   270
      TabIndex        =   0
      Top             =   510
      Width           =   6120
   End
End
Attribute VB_Name = "frmWait"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Cnt As Integer
Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()
    Me.Timer1.Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Me.Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
    
    If g_nDataLoadingType = 0 Then
        Select Case Cnt
            Case 0
                dis_str$ = "SYSTEM Data Processing........" & "-"
                Cnt = Cnt + 1
            Case 1
                dis_str$ = "SYSTEM Data Processing........" & "\"
                Cnt = Cnt + 1
            Case 2
                dis_str$ = "SYSTEM Data Processing........" & "|"
                Cnt = Cnt + 1
            Case 3
                dis_str$ = "SYSTEM Data Processing........" & "/"
                Cnt = 0
        End Select
    ElseIf g_nDataLoadingType = 1 Then
        
        Select Case Cnt
            Case 0
                dis_str$ = "Print Image Uploading ........" & "-"
                Cnt = Cnt + 1
            Case 1
                dis_str$ = "Print Image Uploading ........" & "\"
                Cnt = Cnt + 1
            Case 2
                dis_str$ = "Print Image Uploading ........" & "|"
                Cnt = Cnt + 1
            Case 3
                dis_str$ = "Print Image Uploading ........" & "/"
                Cnt = 0
        End Select
    
    Else
        Select Case Cnt
            Case 0
                dis_str$ = "Q Controller Booting ........" & "-"
                Cnt = Cnt + 1
            Case 1
                dis_str$ = "Q Controller Booting ........" & "\"
                Cnt = Cnt + 1
            Case 2
                dis_str$ = "Q Controller Booting ........" & "|"
                Cnt = Cnt + 1
            Case 3
                dis_str$ = "Q Controller Booting ........" & "/"
                Cnt = 0
        End Select
    
    End If
    
    
    
    Me.lbl_MSG.Caption = dis_str$: DoEvents

End Sub


