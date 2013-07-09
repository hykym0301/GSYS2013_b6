VERSION 5.00
Begin VB.Form frmStart 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Program Start"
   ClientHeight    =   1290
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6765
   Icon            =   "frmStart.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1290
   ScaleWidth      =   6765
   StartUpPosition =   2  '화면 가운데
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   240
      Top             =   150
   End
   Begin VB.Label lbl_MSG 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "SYSTEM Data Loading............X"
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
      Top             =   420
      Width           =   6120
   End
End
Attribute VB_Name = "frmStart"
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
            dis_str$ = "SYSTEM Data Loading............" & "-"
            Cnt = Cnt + 1
        Case 1
            dis_str$ = "SYSTEM Data Loading............" & "\"
            Cnt = Cnt + 1
        Case 2
            dis_str$ = "SYSTEM Data Loading............" & "|"
            Cnt = Cnt + 1
        Case 3
            dis_str$ = "SYSTEM Data Loading............" & "/"
            Cnt = 0
    End Select
    
    Me.lbl_MSG.Caption = dis_str$: DoEvents

End Sub
