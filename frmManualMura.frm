VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form frmManualMura 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Coating Image Create"
   ClientHeight    =   8970
   ClientLeft      =   13275
   ClientTop       =   4830
   ClientWidth     =   4470
   Icon            =   "frmManualMura.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8970
   ScaleWidth      =   4470
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   540
      Top             =   90
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   3495
      Picture         =   "frmManualMura.frx":058A
      Style           =   1  '그래픽
      TabIndex        =   19
      Top             =   8235
      Width           =   885
   End
   Begin VB.CommandButton cmdBlockOpen 
      Caption         =   "BlockData Open"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   1785
      Picture         =   "frmManualMura.frx":0B14
      Style           =   1  '그래픽
      TabIndex        =   18
      Top             =   8235
      Width           =   1695
   End
   Begin VB.CommandButton cmdBlockSave 
      Caption         =   "BlockData Save"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   60
      Picture         =   "frmManualMura.frx":109E
      Style           =   1  '그래픽
      TabIndex        =   17
      Top             =   8235
      Width           =   1695
   End
   Begin VB.Frame Frame2 
      Caption         =   "Block Data Batch Control"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Left            =   75
      TabIndex        =   10
      Top             =   4785
      Width           =   4320
      Begin VB.CommandButton cmdDown 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3360
         Picture         =   "frmManualMura.frx":1628
         Style           =   1  '그래픽
         TabIndex        =   16
         Top             =   675
         Width           =   810
      End
      Begin VB.CommandButton cmdUp 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3360
         Picture         =   "frmManualMura.frx":1BB2
         Style           =   1  '그래픽
         TabIndex        =   15
         Top             =   285
         Width           =   810
      End
      Begin VB.TextBox txtUpDownVal 
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
         Left            =   1455
         TabIndex        =   14
         Text            =   "0.1"
         Top             =   690
         Width           =   1860
      End
      Begin VB.ComboBox cboMdno 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         ItemData        =   "frmManualMura.frx":213C
         Left            =   1455
         List            =   "frmManualMura.frx":214F
         TabIndex        =   13
         Text            =   "All"
         Top             =   315
         Width           =   1860
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Module No"
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
         Left            =   135
         TabIndex        =   12
         Top             =   345
         Width           =   885
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Up/Down Value"
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
         Left            =   135
         TabIndex        =   11
         Top             =   720
         Width           =   1275
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Coating Image Create"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9.75
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2115
      Left            =   75
      TabIndex        =   4
      Top             =   6045
      Width           =   4320
      Begin VB.TextBox Ddist 
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
         Left            =   2685
         TabIndex        =   29
         Text            =   "20"
         Top             =   990
         Width           =   960
      End
      Begin VB.TextBox txtDLen 
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
         Left            =   2670
         TabIndex        =   26
         Text            =   "20"
         Top             =   615
         Width           =   960
      End
      Begin VB.CheckBox chkDummy 
         Caption         =   "Dummy line"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   2235
         TabIndex        =   25
         Top             =   330
         Width           =   1710
      End
      Begin VB.CheckBox chk2nd 
         Caption         =   "2nd Image"
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
         Left            =   120
         TabIndex        =   22
         Top             =   735
         Width           =   1650
      End
      Begin VB.TextBox txtDist 
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
         Left            =   615
         TabIndex        =   20
         Text            =   "10"
         Top             =   1125
         Width           =   960
      End
      Begin VB.TextBox txtCoatingLen 
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
         Left            =   615
         TabIndex        =   7
         Text            =   "200"
         Top             =   315
         Width           =   960
      End
      Begin VB.CommandButton cmdCoatingImgGen 
         Caption         =   "Coating Image GEN"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   2130
         Picture         =   "frmManualMura.frx":2176
         Style           =   1  '그래픽
         TabIndex        =   6
         Top             =   1440
         Width           =   2055
      End
      Begin VB.CheckBox chkHead간 
         Caption         =   "Head간 Image"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   195
         TabIndex        =   5
         Top             =   1575
         Width           =   1725
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "간격"
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
         Left            =   2175
         TabIndex        =   31
         Top             =   1035
         Width           =   390
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "mm"
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
         Left            =   3675
         TabIndex        =   30
         Top             =   1065
         Width           =   330
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "mm"
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
         Left            =   3675
         TabIndex        =   28
         Top             =   690
         Width           =   330
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Len="
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
         Left            =   2190
         TabIndex        =   27
         Top             =   645
         Width           =   420
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "간격"
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
         Left            =   105
         TabIndex        =   24
         Top             =   1185
         Width           =   390
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "mm"
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
         Left            =   1605
         TabIndex        =   23
         Top             =   1170
         Width           =   330
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
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
         Left            =   180
         TabIndex        =   21
         Top             =   765
         Width           =   45
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Len="
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
         Left            =   105
         TabIndex        =   9
         Top             =   345
         Width           =   420
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "mm"
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
         Left            =   1605
         TabIndex        =   8
         Top             =   345
         Width           =   330
      End
   End
   Begin VB.TextBox txtInput 
      Appearance      =   0  '평면
      BackColor       =   &H00C0FFFF&
      Height          =   285
      Left            =   1905
      TabIndex        =   1
      Top             =   615
      Visible         =   0   'False
      Width           =   645
   End
   Begin MSFlexGridLib.MSFlexGrid MSFG_BlockData 
      Height          =   4635
      Left            =   30
      TabIndex        =   0
      Top             =   45
      Width           =   4425
      _ExtentX        =   7805
      _ExtentY        =   8176
      _Version        =   393216
      Rows            =   17
      Cols            =   6
      BackColorBkg    =   -2147483633
      GridColor       =   0
      ScrollBars      =   0
      Appearance      =   0
      FormatString    =   $"frmManualMura.frx":2700
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lbl_Sel_Col 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "00"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   360
      TabIndex        =   3
      Top             =   6300
      Visible         =   0   'False
      Width           =   180
   End
   Begin VB.Label lbl_Sel_Row 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "00"
      ForeColor       =   &H00C0C0C0&
      Height          =   180
      Left            =   615
      TabIndex        =   2
      Top             =   6285
      Visible         =   0   'False
      Width           =   180
   End
End
Attribute VB_Name = "frmManualMura"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
