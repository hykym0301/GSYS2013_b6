VERSION 5.00
Begin VB.Form frmQClass 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Q-Class Auto RUN"
   ClientHeight    =   1290
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4485
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1290
   ScaleWidth      =   4485
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox Text1 
      Appearance      =   0  '평면
      BackColor       =   &H8000000F&
      BorderStyle     =   0  '없음
      BeginProperty Font 
         Name            =   "굴림체"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1410
      Left            =   75
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "frmQClass.frx":0000
      Top             =   75
      Width           =   4440
   End
End
Attribute VB_Name = "frmQClass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
