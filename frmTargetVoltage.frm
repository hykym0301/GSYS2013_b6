VERSION 5.00
Begin VB.Form frmTargetVoltage 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Target Voltage Apply"
   ClientHeight    =   2835
   ClientLeft      =   10005
   ClientTop       =   8490
   ClientWidth     =   3465
   Icon            =   "frmTargetVoltage.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2835
   ScaleWidth      =   3465
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   660
      Left            =   1800
      Picture         =   "frmTargetVoltage.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   16
      Top             =   2085
      Width           =   1575
   End
   Begin VB.CommandButton cmdApply 
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
      Height          =   660
      Left            =   165
      Picture         =   "frmTargetVoltage.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   15
      Top             =   2085
      Width           =   1575
   End
   Begin VB.CheckBox chkTagVolt 
      Caption         =   "Head 1."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   4
      Left            =   555
      TabIndex        =   13
      Top             =   1680
      Width           =   1035
   End
   Begin VB.TextBox txtTagVolt 
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
      Index           =   4
      Left            =   1605
      TabIndex        =   12
      Text            =   "0.00"
      Top             =   1665
      Width           =   1065
   End
   Begin VB.CheckBox chkTagVolt 
      Caption         =   "Head 1."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   3
      Left            =   555
      TabIndex        =   10
      Top             =   1305
      Width           =   1035
   End
   Begin VB.TextBox txtTagVolt 
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
      Index           =   3
      Left            =   1605
      TabIndex        =   9
      Text            =   "0.00"
      Top             =   1290
      Width           =   1065
   End
   Begin VB.CheckBox chkTagVolt 
      Caption         =   "Head 1."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   2
      Left            =   555
      TabIndex        =   7
      Top             =   930
      Width           =   1035
   End
   Begin VB.TextBox txtTagVolt 
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
      Index           =   2
      Left            =   1605
      TabIndex        =   6
      Text            =   "0.00"
      Top             =   915
      Width           =   1065
   End
   Begin VB.CheckBox chkTagVolt 
      Caption         =   "Head 1."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   1
      Left            =   555
      TabIndex        =   4
      Top             =   555
      Width           =   1035
   End
   Begin VB.TextBox txtTagVolt 
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
      Index           =   1
      Left            =   1605
      TabIndex        =   3
      Text            =   "0.00"
      Top             =   540
      Width           =   1065
   End
   Begin VB.CheckBox chkTagVolt 
      Caption         =   "Head 1."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   555
      TabIndex        =   1
      Top             =   180
      Width           =   1035
   End
   Begin VB.TextBox txtTagVolt 
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
      Index           =   0
      Left            =   1605
      TabIndex        =   0
      Text            =   "0.00"
      Top             =   165
      Width           =   1065
   End
   Begin VB.Label lbl_Unit 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   4
      Left            =   2760
      TabIndex        =   14
      Top             =   1755
      Width           =   150
   End
   Begin VB.Label lbl_Unit 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   3
      Left            =   2760
      TabIndex        =   11
      Top             =   1380
      Width           =   150
   End
   Begin VB.Label lbl_Unit 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   2
      Left            =   2760
      TabIndex        =   8
      Top             =   1005
      Width           =   150
   End
   Begin VB.Label lbl_Unit 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   1
      Left            =   2760
      TabIndex        =   5
      Top             =   630
      Width           =   150
   End
   Begin VB.Label lbl_Unit 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   0
      Left            =   2760
      TabIndex        =   2
      Top             =   255
      Width           =   150
   End
End
Attribute VB_Name = "frmTargetVoltage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
