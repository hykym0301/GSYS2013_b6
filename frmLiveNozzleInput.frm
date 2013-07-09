VERSION 5.00
Begin VB.Form frmLiveNozzleInput 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Nozzle Live Setting"
   ClientHeight    =   780
   ClientLeft      =   1080
   ClientTop       =   6360
   ClientWidth     =   2760
   Icon            =   "frmLiveNozzleInput.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   780
   ScaleWidth      =   2760
   StartUpPosition =   1  '소유자 가운데
   Begin VB.TextBox txtNzlScript 
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9.75
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   60
      TabIndex        =   0
      Top             =   90
      Width           =   2610
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "ex)32~224"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   75
      TabIndex        =   1
      Top             =   435
      Width           =   945
   End
End
Attribute VB_Name = "frmLiveNozzleInput"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Terminate()

    LiveNozzle_InputMode = 0

End Sub

Private Sub Form_Unload(Cancel As Integer)

    LiveNozzle_InputMode = 0

End Sub


