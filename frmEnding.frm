VERSION 5.00
Begin VB.Form frmEnding 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Program 종료"
   ClientHeight    =   1170
   ClientLeft      =   8115
   ClientTop       =   7575
   ClientWidth     =   6810
   Icon            =   "frmEnding.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1170
   ScaleWidth      =   6810
   StartUpPosition =   2  '화면 가운데
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   225
      Top             =   60
   End
   Begin VB.Label lbl_MSG 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "SYSTEM Data Allocation Free X"
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
      Left            =   255
      TabIndex        =   0
      Top             =   330
      Width           =   6165
   End
End
Attribute VB_Name = "frmEnding"
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

    Select Case Cnt
        Case 0
            dis_str$ = "SYSTEM Data Allocation Free " & "-"
            Cnt = Cnt + 1
        Case 1
            dis_str$ = "SYSTEM Data Allocation Free " & "\"
            Cnt = Cnt + 1
        Case 2
            dis_str$ = "SYSTEM Data Allocation Free " & "|"
            Cnt = Cnt + 1
        Case 3
            dis_str$ = "SYSTEM Data Allocation Free " & "/"
            Cnt = 0
    End Select
    
    Me.lbl_MSG.Caption = dis_str$: DoEvents

End Sub
