VERSION 5.00
Begin VB.Form frmPeriSet 
   BorderStyle     =   1  '´ÜÀÏ °íÁ¤
   Caption         =   "PERI Board Setting"
   ClientHeight    =   2235
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12735
   Icon            =   "frmPeriSet.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2235
   ScaleWidth      =   12735
   StartUpPosition =   3  'Windows ±âº»°ª
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
      Height          =   900
      Left            =   10605
      Picture         =   "frmPeriSet.frx":058A
      Style           =   1  '±×·¡ÇÈ
      TabIndex        =   10
      Top             =   1275
      Width           =   2025
   End
   Begin VB.TextBox txtBootPath 
      Enabled         =   0   'False
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
      Left            =   2880
      TabIndex        =   9
      Text            =   "-"
      Top             =   75
      Width           =   9765
   End
   Begin VB.TextBox txtEncRes 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   2895
      TabIndex        =   8
      Text            =   "0.1"
      Top             =   420
      Width           =   960
   End
   Begin VB.TextBox txtEncPhase 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   2880
      TabIndex        =   7
      Text            =   "4"
      Top             =   765
      Width           =   960
   End
   Begin VB.TextBox txtSysImgPitch 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   2880
      TabIndex        =   6
      Text            =   "90"
      Top             =   1110
      Width           =   960
   End
   Begin VB.TextBox txtSupplyVolt 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   2880
      TabIndex        =   5
      Text            =   "125"
      Top             =   1455
      Width           =   960
   End
   Begin VB.TextBox txtHead1_2Offset 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   6945
      TabIndex        =   4
      Text            =   "0"
      Top             =   420
      Width           =   1545
   End
   Begin VB.TextBox txtHead1_2Offset 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   6945
      TabIndex        =   3
      Text            =   "0"
      Top             =   765
      Width           =   1545
   End
   Begin VB.TextBox txtHead1_2Offset 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   6945
      TabIndex        =   2
      Text            =   "0"
      Top             =   1110
      Width           =   1545
   End
   Begin VB.TextBox txtHead1_2Offset 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   6945
      TabIndex        =   1
      Text            =   "0"
      Top             =   1455
      Width           =   1545
   End
   Begin VB.TextBox txtHead1_2Offset 
      Alignment       =   2  '°¡¿îµ¥ ¸ÂÃã
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
      Left            =   6945
      TabIndex        =   0
      Text            =   "0"
      Top             =   1815
      Width           =   1545
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Boot Path"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   90
      TabIndex        =   20
      Top             =   210
      Width           =   945
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Encoder Resolution[um]"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   0
      Left            =   105
      TabIndex        =   19
      Top             =   555
      Width           =   2430
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Encoder Phase"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   90
      TabIndex        =   18
      Top             =   900
      Width           =   1500
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "System Image Pitch[um]"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   90
      TabIndex        =   17
      Top             =   1245
      Width           =   2490
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "System Supply Voltage[V]"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   90
      TabIndex        =   16
      Top             =   1590
      Width           =   2640
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Head 1-2 Offset 1"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   1
      Left            =   5115
      TabIndex        =   15
      Top             =   465
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Head 1-2 Offset 2"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   2
      Left            =   5115
      TabIndex        =   14
      Top             =   840
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Head 1-2 Offset 3"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   3
      Left            =   5115
      TabIndex        =   13
      Top             =   1185
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Head 1-2 Offset 4"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   4
      Left            =   5115
      TabIndex        =   12
      Top             =   1500
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Åõ¸í
      Caption         =   "Head 1-2 Offset 5"
      BeginProperty Font 
         Name            =   "±¼¸²"
         Size            =   9
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Index           =   5
      Left            =   5115
      TabIndex        =   11
      Top             =   1875
      Width           =   1710
   End
End
Attribute VB_Name = "frmPeriSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSave_Click()
    
    SAVED_HEADIF_BOOT_BOOT_PATH = Me.txtBootPath.Text
    SAVED_HEADIF_BOOT_ENC_RES = CDbl(Me.txtEncRes.Text)
    SAVED_HEADIF_BOOT_ENC_Phase = CInt(Me.txtEncPhase.Text)
    SAVED_HEADIF_BOOT_System_Image_Pitch = CDbl(Me.txtSysImgPitch.Text)
    SAVED_HEADIF_BOOT_SUPPLY_VOLT = CDbl(Me.txtSupplyVolt.Text)
    
    frmRunning.txtPrintYPitch_um.Text = Format(SAVED_HEADIF_BOOT_System_Image_Pitch, "0")
    
    gPrintPara.dCfgPrintFreq_kHz = (gPrintPara.dCfgPrintSpeed_mmPs / (SAVED_HEADIF_BOOT_System_Image_Pitch / 1000)) / 1000
    frmRunning.lblPrintFrequency_kHz.Caption = "ÇÁ¸°Æ® ÁÖÆÄ¼ö: " & Format(gPrintPara.dCfgPrintFreq_kHz, "0.0") & "[kHz]"
    frmRunning.txtJetFrequency_khz.Text = Format(gPrintPara.dCfgPrintFreq_kHz, "0.0")
    
    For i% = 0 To 4
        SAVED_HEADIF_BetweenHeadOffset(i%) = 0
    Next i%
    
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "BOOT_PATH", SAVED_HEADIF_BOOT_BOOT_PATH)
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SAVED_HEADIF_BOOT_ENC_RES", CStr(SAVED_HEADIF_BOOT_ENC_RES))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SAVED_HEADIF_BOOT_ENC_Phase", CStr(SAVED_HEADIF_BOOT_ENC_Phase))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "System_Image_Pitch", CStr(SAVED_HEADIF_BOOT_System_Image_Pitch))
    Call SaveSetting("PI_ALPHA_SYSTEM_HEAD_IF", "SYS_DATA", "SAVED_HEADIF_BOOT_SUPPLY_VOLT", CStr(SAVED_HEADIF_BOOT_SUPPLY_VOLT))
    
    If PI_HEAD_BootOK = True Then
        
        If MsgBox("PERI Board¸¦ ÀçºÎÆÃ ÇÏ½Ã°Ú½À´Ï±î?", vbQuestion + vbYesNo) = vbNo Then
            Exit Sub
        End If
            
        g_nDataLoadingType = 2
        
        Load frmWait
        frmWait.Show
        
        If PI_HEAD_IF_Boot(True) = False Then
            MsgBox "Booting ½ÇÆÐ!!", vbCritical
        Else
            
            Unload frmWait
            Call frmInit.Config_HeadController
            MsgBox "Booting ¿Ï·á!!", vbInformation
        End If
    End If
    
    Unload Me
    
End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
            SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE

End Sub

Private Sub Form_Load()
    
    Me.txtBootPath.Text = SAVED_HEADIF_BOOT_BOOT_PATH
    Me.txtEncRes.Text = SAVED_HEADIF_BOOT_ENC_RES
    Me.txtEncPhase.Text = SAVED_HEADIF_BOOT_ENC_Phase
    Me.txtSysImgPitch.Text = SAVED_HEADIF_BOOT_System_Image_Pitch
    Me.txtSupplyVolt.Text = SAVED_HEADIF_BOOT_SUPPLY_VOLT

    For i% = 0 To 4
        Me.txtHead1_2Offset(i%).Text = SAVED_HEADIF_BetweenHeadOffset(i%)
    Next i%

End Sub
