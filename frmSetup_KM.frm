VERSION 5.00
Begin VB.Form frmSetup_KM 
   BorderStyle     =   1  '단일 고정
   Caption         =   "IJCS-1 시스템 파라메터"
   ClientHeight    =   6915
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   15720
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6915
   ScaleWidth      =   15720
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save/Boot"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   14130
      Picture         =   "frmSetup_KM.frx":0000
      Style           =   1  '그래픽
      TabIndex        =   0
      Top             =   6075
      Width           =   1545
   End
End
Attribute VB_Name = "frmSetup_KM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
