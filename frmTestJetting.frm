VERSION 5.00
Begin VB.Form frmTestJetting 
   BorderStyle     =   1  '단일 고정
   Caption         =   "LineScan Trigger Setting"
   ClientHeight    =   5415
   ClientLeft      =   10800
   ClientTop       =   2820
   ClientWidth     =   10620
   Icon            =   "frmTestJetting.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   10620
   Begin VB.Frame Frame1 
      Caption         =   "STROBE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2490
      Left            =   6735
      TabIndex        =   19
      Top             =   75
      Width           =   3840
      Begin VB.CommandButton cmdSetStrobePara 
         Caption         =   "Set Strobe Para"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   2025
         TabIndex        =   30
         Top             =   1860
         Width           =   1455
      End
      Begin VB.CheckBox chkRunStrobeMode 
         Caption         =   "Strobe 동작"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   150
         TabIndex        =   29
         Top             =   2145
         Width           =   1455
      End
      Begin VB.CheckBox chkMon2 
         Caption         =   "Monitor"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   150
         TabIndex        =   24
         Top             =   1875
         Width           =   1155
      End
      Begin VB.TextBox txtStrobeFreq_khz 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2745
         TabIndex        =   23
         Text            =   "10"
         Top             =   285
         Width           =   930
      End
      Begin VB.TextBox txtStrobeDelay_us 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2745
         TabIndex        =   22
         Text            =   "0"
         Top             =   585
         Width           =   930
      End
      Begin VB.TextBox txtStrobeOnWidth_us 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2745
         TabIndex        =   21
         Text            =   "10"
         Top             =   885
         Width           =   930
      End
      Begin VB.TextBox txtStrobeBrightValue 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2745
         TabIndex        =   20
         Text            =   "512"
         Top             =   1185
         Width           =   930
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Strobe Frequency  [kHz]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   28
         Top             =   345
         Width           =   2190
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Strobe Delay           [us]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   27
         Top             =   615
         Width           =   2175
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Strobe Width           [us]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   26
         Top             =   915
         Width           =   2190
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Strobe BrightVa [0-1024]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   25
         Top             =   1215
         Width           =   2205
      End
   End
   Begin VB.ListBox listResponse 
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   2700
      Left            =   90
      TabIndex        =   13
      Top             =   2670
      Width           =   10500
   End
   Begin VB.Frame Frame2 
      Caption         =   "TRIGGER"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2490
      Left            =   90
      TabIndex        =   0
      Top             =   75
      Width           =   6555
      Begin VB.CommandButton cmdSendFilter 
         Caption         =   "Filter Set"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4170
         TabIndex        =   18
         Top             =   1905
         Width           =   1455
      End
      Begin VB.CommandButton cmdStoptDot 
         Caption         =   "Stop Dotting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4905
         TabIndex        =   17
         Top             =   1305
         Width           =   1455
      End
      Begin VB.CommandButton cmdStartDot 
         Caption         =   "Start Dotting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4905
         TabIndex        =   16
         Top             =   795
         Width           =   1455
      End
      Begin VB.CommandButton cmdSetZero 
         Caption         =   "Zero SET"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4905
         TabIndex        =   15
         Top             =   285
         Width           =   1455
      End
      Begin VB.CheckBox chkMon 
         Caption         =   "Monitor"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   150
         TabIndex        =   14
         Top             =   1875
         Width           =   1155
      End
      Begin VB.CheckBox chkEncRev 
         Caption         =   "Encoder Reverse"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   180
         Left            =   1500
         TabIndex        =   12
         Top             =   1875
         Width           =   1785
      End
      Begin VB.Timer Timer1 
         Interval        =   20
         Left            =   1050
         Top             =   1875
      End
      Begin VB.TextBox txtSP 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   3930
         TabIndex        =   5
         Text            =   "10"
         Top             =   285
         Width           =   930
      End
      Begin VB.TextBox txtAcc 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   3930
         TabIndex        =   4
         Text            =   "15"
         Top             =   585
         Width           =   930
      End
      Begin VB.TextBox txtAccInc 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   3930
         TabIndex        =   3
         Text            =   "0"
         Top             =   885
         Width           =   930
      End
      Begin VB.TextBox txtDp 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   3930
         TabIndex        =   2
         Text            =   "0.6"
         Top             =   1185
         Width           =   930
      End
      Begin VB.TextBox txtEp 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   3930
         TabIndex        =   1
         Text            =   "110"
         Top             =   1485
         Width           =   930
      End
      Begin VB.Label lbl_ReadPos 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "00.00"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   90
         TabIndex        =   11
         Top             =   2250
         Width           =   465
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Start position                [mm]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   10
         Top             =   345
         Width           =   2625
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Acceleration                  [mm]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   9
         Top             =   615
         Width           =   2670
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Acceleration Increase Value   [mm]:"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   8
         Top             =   915
         Width           =   3120
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Drop pitch                    [mm]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   7
         Top             =   1215
         Width           =   2595
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "End position                  [mm]:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   135
         TabIndex        =   6
         Top             =   1545
         Width           =   2670
      End
   End
End
Attribute VB_Name = "frmTestJetting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub chkRunStrobeMode_Click()
On Error GoTo syserr
    
    iindex% = 0
    If mdlTrig.StartIntTrigger(iindex%, Me.chkRunStrobeMode.Value) = False Then
        MsgBox "Fail", vbCritical
    End If
    
Exit Sub
syserr:
    MsgBox Err.Description
End Sub

Private Sub cmdSendFilter_Click()

    SendRegistry PULSE_WIDTH_REG2, 20000

End Sub

Private Sub cmdSetStrobePara_Click()

On Error GoTo syserr
    
    iindex% = 0
    If mdlTrig.ConfigStrobePara(iindex%, _
                                CDbl(Me.txtStrobeFreq_khz.Text), _
                                CDbl(Me.txtStrobeOnWidth_us.Text), _
                                CDbl(Me.txtStrobeDelay_us.Text), _
                                CDbl(Me.txtStrobeBrightValue.Text)) = False Then
        MsgBox "Fail", vbCritical
    End If
    
Exit Sub
syserr:
    MsgBox Err.Description
    
End Sub

Private Sub cmdSetZero_Click()

    If MDI_Main.WinsockTrig.State <> sckConnected Then Exit Sub
    
    iindex% = 0
    Call mdlTrig.SetZero(iindex%)

End Sub

Private Sub cmdStartDot_Click()

    If MDI_Main.WinsockTrig.State <> sckConnected Then Exit Sub

    iindex% = 0
    If mdlTrig.ConfigFiringPara(iindex%, _
                                 Abs(Me.chkEncRev.Value - 1), _
                                 CDbl(Me.txtSP.Text), _
                                 CDbl(Me.txtAcc.Text), _
                                 CDbl(Me.txtAccInc.Text), _
                                 CDbl(Me.txtEp.Text), _
                                 CDbl(Me.txtDp.Text)) = False Then
        MsgBox "Fail", vbCritical
    End If
                                 
    mdlTrig.SetFireRevStartPosition iindex%, CDbl(Me.txtEp.Text)
    mdlTrig.SetFireRevEndPosition iindex%, CDbl(Me.txtSP.Text)
                                 
    Call mdlTrig.StartExtTrigger(iindex%)

End Sub

Private Sub cmdStoptDot_Click()

    If MDI_Main.WinsockTrig.State <> sckConnected Then Exit Sub
        
    On Error Resume Next
               
    iindex% = 0
    Call mdlTrig.StopExtTrigger(iindex%)

End Sub

Private Sub Form_Activate()

    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
                SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
         
End Sub


Private Sub Timer1_Timer()

'    On Error Resume Next
'
'    If SYSTEM_Para_SystemIndex = 0 Then
'        If Me.cwn_HeadNo.Value > 2 Then
'            iindex% = 1
'        Else
'            iindex% = Me.cwn_HeadNo.Value - 1
'        End If
'    Else
'        iindex% = 0
'    End If
'
'    rtn_pos# = mdlTrig.GetEncPosition_Mm(iindex%)
'
'    Me.lbl_ReadPos.Caption = rtn_pos#

    If MDI_Main.WinsockTrig.State <> sckConnected Then Exit Sub
    If Me.chkMon.Value = 0 Then Exit Sub
    
    If mdlTrig.GetFPGAStatus() = True Then
        
        If mdlTrig.gFPGASts.bINT_MODE_EN(eCHANNEL.ch1) = True Then
            Call Me.listResponse.AddItem("bINT_MODE_EN1 = 1")
        Else
            Call Me.listResponse.AddItem("bINT_MODE_EN1 = 0")
        End If
        
        If mdlTrig.gFPGASts.bTRIG_START(eCHANNEL.ch1) = True Then
            Call Me.listResponse.AddItem("bTRIG_START1 = 1")
        Else
            Call Me.listResponse.AddItem("bTRIG_START1 = 0")
        End If
        
        If mdlTrig.gFPGASts.bTRIG_STOP(eCHANNEL.ch1) = True Then
            Call Me.listResponse.AddItem("bTRIG_STOP1 = 1")
        Else
            Call Me.listResponse.AddItem("bTRIG_STOP1 = 0")
        End If
            
'        If mdlTrig.gFPGASts.bINT_MODE_EN(eCHANNEL.CH2) = True Then
'            Call Me.listResponse.AddItem("bINT_MODE_EN2 = 1")
'        Else
'            Call Me.listResponse.AddItem("bINT_MODE_EN2 = 0")
'        End If
'
'        If mdlTrig.gFPGASts.bTRIG_START(eCHANNEL.CH2) = True Then
'            Call Me.listResponse.AddItem("bTRIG_START2 = 1")
'        Else
'            Call Me.listResponse.AddItem("bTRIG_START2 = 0")
'        End If
'
'        If mdlTrig.gFPGASts.bTRIG_STOP(eCHANNEL.CH2) = True Then
'            Call Me.listResponse.AddItem("bTRIG_STOP2 = 1")
'        Else
'            Call Me.listResponse.AddItem("bTRIG_STOP2 = 0")
'        End If
        
        Me.listResponse.Clear
        Call Me.listResponse.AddItem("Enc Trigger mode = " & CStr(mdlTrig.GetRegistry(ENC_DIR_REG)))
        Call Me.listResponse.AddItem("Start position1 = " & CStr(mdlTrig.GetRegistry(ENC_START_POS_REG1)))
        Call Me.listResponse.AddItem("Accel position1 = " & CStr(mdlTrig.GetRegistry(ENC_INC_END_POS_REG1)))
        Call Me.listResponse.AddItem("End position1 = " & CStr(mdlTrig.GetRegistry(ENC_STOP_POS_REG1)))
        Call Me.listResponse.AddItem("Firing Pitch1 = " & CStr(mdlTrig.GetRegistry(ENC_PITCH_REG1)))
        Call Me.listResponse.AddItem("Accel Increase1 = " & CStr(mdlTrig.GetRegistry(ENC_INT_ADD_REG1)))
        
'        Call Me.listResponse.AddItem("Start position2 = " & CStr(mdlTrig.GetRegistry(ENC_START_POS_REG2)))
'        Call Me.listResponse.AddItem("Accel position2 = " & CStr(mdlTrig.GetRegistry(ENC_INC_END_POS_REG2)))
'        Call Me.listResponse.AddItem("End position2 = " & CStr(mdlTrig.GetRegistry(ENC_STOP_POS_REG2)))
'        Call Me.listResponse.AddItem("Firing Pitch2 = " & CStr(mdlTrig.GetRegistry(ENC_PITCH_REG2)))
'        Call Me.listResponse.AddItem("Accel Increase2 = " & CStr(mdlTrig.GetRegistry(ENC_INT_ADD_REG2)))

    End If
    
    iindex% = 0
    rtn_pos# = mdlTrig.GetEncPosition_Mm(iindex%)
    Me.lbl_ReadPos.Caption = "Current_Pos = " & rtn_pos#

End Sub


