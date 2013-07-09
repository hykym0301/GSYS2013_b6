VERSION 5.00
Begin VB.Form frmDescriptionInput 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Description Input"
   ClientHeight    =   510
   ClientLeft      =   630
   ClientTop       =   2715
   ClientWidth     =   5685
   Icon            =   "frmDescriptionInput.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   510
   ScaleWidth      =   5685
   StartUpPosition =   1  '소유자 가운데
   Begin VB.CommandButton cmdApply 
      Caption         =   "Apply"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   2070
      Picture         =   "frmDescriptionInput.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   1
      Top             =   735
      Width           =   1575
   End
   Begin VB.TextBox txtDes 
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
      Left            =   90
      TabIndex        =   0
      Top             =   75
      Width           =   5550
   End
End
Attribute VB_Name = "frmDescriptionInput"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()

    Select Case InputBox_FormIndex
        Case 1 'frmMotion의 MSFlexGrid1
            Me.txtDes.Text = frmMotion.MSFlexGrid1.TextMatrix(CInt(frmMotion.lbl_RowNum.Caption), 1)
            If Len(Me.txtDes.Text) <> 0 Then
                Me.txtDes.SelStart = 0
                Me.txtDes.SelLength = Len(Me.txtDes.Text)
            End If
        Case 2
            
    End Select

End Sub

Private Sub Form_Terminate()

    InputBox_FormIndex = 0

End Sub

Private Sub Form_Unload(Cancel As Integer)

    InputBox_FormIndex = 0

End Sub

Private Sub txtDes_Change()

    Select Case InputBox_FormIndex
        Case 1 'frmMotion의 MSFlexGrid1
            frmMotion.MSFlexGrid1.TextMatrix(CInt(frmMotion.lbl_RowNum.Caption), 1) = Me.txtDes.Text: DoEvents
        Case 2
            
    End Select

End Sub

Private Sub txtDes_KeyPress(KeyAscii As Integer)

    If KeyAscii = 13 Then
        InputBox_FormIndex = 0
        Unload Me
    End If

End Sub
