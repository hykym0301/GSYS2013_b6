VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmUsrPosPopUp 
   BorderStyle     =   0  '없음
   Caption         =   "Form1"
   ClientHeight    =   2940
   ClientLeft      =   9000
   ClientTop       =   8235
   ClientWidth     =   1845
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   1845
   ShowInTaskbar   =   0   'False
   Begin Threed.SSPanel sspPopUp_UserPos 
      Height          =   2925
      Left            =   15
      TabIndex        =   0
      Top             =   15
      Width           =   1830
      _Version        =   65536
      _ExtentX        =   3228
      _ExtentY        =   5159
      _StockProps     =   15
      BackColor       =   14215660
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   -1  'True
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Data Clear"
         Height          =   600
         Index           =   4
         Left            =   75
         Picture         =   "frmUsrPosPopUp.frx":0000
         Style           =   1  '그래픽
         TabIndex        =   6
         Top             =   2280
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Description Write"
         Height          =   600
         Index           =   0
         Left            =   75
         Picture         =   "frmUsrPosPopUp.frx":058A
         Style           =   1  '그래픽
         TabIndex        =   5
         Top             =   390
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Get Position"
         Height          =   600
         Index           =   1
         Left            =   75
         Picture         =   "frmUsrPosPopUp.frx":15CC
         Style           =   1  '그래픽
         TabIndex        =   4
         Top             =   1020
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Move Position"
         Height          =   600
         Index           =   2
         Left            =   75
         Picture         =   "frmUsrPosPopUp.frx":1B56
         Style           =   1  '그래픽
         TabIndex        =   3
         Top             =   1650
         Width           =   1695
      End
      Begin VB.CommandButton cmdFunc 
         Height          =   315
         Index           =   3
         Left            =   1095
         Picture         =   "frmUsrPosPopUp.frx":1EE0
         Style           =   1  '그래픽
         TabIndex        =   2
         Top             =   45
         Width           =   330
      End
      Begin VB.CommandButton cmdHidePopUp 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1440
         Picture         =   "frmUsrPosPopUp.frx":246A
         Style           =   1  '그래픽
         TabIndex        =   1
         Top             =   45
         Width           =   330
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   ">Pop-Up"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9.75
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   75
         TabIndex        =   7
         Top             =   75
         Width           =   840
      End
   End
End
Attribute VB_Name = "frmUsrPosPopUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFunc_Click(Index As Integer)

    Dim tmp_Bool As Boolean
    'On Error GoTo Err_Here

    row_index% = CInt(frmMotion.lbl_RowNum.Caption)
    If row_index% = 0 Then
        MsgBox "편집란을 선택 하세요!", vbInformation
        Exit Sub
    End If

    Select Case Index
        Case 0 'Write Description
            rtn_str$ = InputBox("Input Description : ", "G-System")
            frmMotion.MSFlexGrid1.TextMatrix(row_index, 1) = rtn_str$
    End Select
       
End Sub

Private Sub cmdHidePopUp_Click()

    For i% = 1 To 64
        For j% = 1 To 6
            frmMotion.MSFlexGrid1.Row = i%
            frmMotion.MSFlexGrid1.Col = j%
            frmMotion.MSFlexGrid1.CellBackColor = vbWhite
        Next j%
    Next i%

    Unload Me

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

