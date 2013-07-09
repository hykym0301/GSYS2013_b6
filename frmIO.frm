VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmIO 
   BorderStyle     =   1  '단일 고정
   Caption         =   "IO Control"
   ClientHeight    =   5490
   ClientLeft      =   10110
   ClientTop       =   4860
   ClientWidth     =   6840
   Icon            =   "frmIO.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5490
   ScaleWidth      =   6840
   Begin TabDlg.SSTab SSTab1 
      Height          =   5295
      Left            =   90
      TabIndex        =   0
      Top             =   105
      Width           =   6690
      _ExtentX        =   11800
      _ExtentY        =   9340
      _Version        =   393216
      Tabs            =   4
      Tab             =   3
      TabsPerRow      =   4
      TabHeight       =   706
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   " UMac D-Input"
      TabPicture(0)   =   "frmIO.frx":038A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "MSFG_UMacIn"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Timer1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   " UMac D-Output"
      TabPicture(1)   =   "frmIO.frx":08F8
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "MSFG_UMacOut"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).ControlCount=   1
      TabCaption(2)   =   " Digital Input"
      TabPicture(2)   =   "frmIO.frx":0E66
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "MSFG_DigIN"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      TabCaption(3)   =   " Digital Output"
      TabPicture(3)   =   "frmIO.frx":1400
      Tab(3).ControlEnabled=   -1  'True
      Tab(3).Control(0)=   "MSFG_DigIOut"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).ControlCount=   1
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   -73875
         Top             =   2835
      End
      Begin MSFlexGridLib.MSFlexGrid MSFG_UMacIn 
         Height          =   4620
         Left            =   -74835
         TabIndex        =   1
         Top             =   540
         Width           =   6345
         _ExtentX        =   11192
         _ExtentY        =   8149
         _Version        =   393216
         Rows            =   137
         Cols            =   3
         BackColorBkg    =   -2147483633
         GridColor       =   0
         ScrollBars      =   2
         Appearance      =   0
         FormatString    =   "No            |Comment                                                                                   |State"
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
      Begin MSFlexGridLib.MSFlexGrid MSFG_UMacOut 
         Height          =   4620
         Left            =   -74835
         TabIndex        =   2
         Top             =   540
         Width           =   6345
         _ExtentX        =   11192
         _ExtentY        =   8149
         _Version        =   393216
         Rows            =   137
         Cols            =   3
         BackColorBkg    =   -2147483633
         GridColor       =   0
         ScrollBars      =   2
         Appearance      =   0
         FormatString    =   "No            |Comment                                                                                   |State"
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
      Begin MSFlexGridLib.MSFlexGrid MSFG_DigIN 
         Height          =   4620
         Left            =   -74835
         TabIndex        =   3
         Top             =   540
         Width           =   6345
         _ExtentX        =   11192
         _ExtentY        =   8149
         _Version        =   393216
         Rows            =   33
         Cols            =   3
         BackColorBkg    =   -2147483633
         GridColor       =   0
         ScrollBars      =   2
         Appearance      =   0
         FormatString    =   "No            |Comment                                                                                   |State"
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
      Begin MSFlexGridLib.MSFlexGrid MSFG_DigIOut 
         Height          =   4620
         Left            =   165
         TabIndex        =   4
         Top             =   540
         Width           =   6345
         _ExtentX        =   11192
         _ExtentY        =   8149
         _Version        =   393216
         Rows            =   33
         Cols            =   3
         BackColorBkg    =   -2147483633
         GridColor       =   0
         ScrollBars      =   2
         Appearance      =   0
         FormatString    =   "No            |Comment                                                                                   |State"
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
   End
End
Attribute VB_Name = "frmIO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Sel_Row_ADLink As Integer
Dim Sel_Row_UMac As Integer
Private Sub Form_Load()

    On Error Resume Next

    Dim xlApp        As Excel.Application
    Dim xlBook       As Excel.Workbook
    Dim xlSheet(1)   As Excel.Worksheet

    If fl_IOInit_OK = False Then
        PCI7230INIT PCI7320_CardQTY_2
    End If

    file_path$ = App.Path & "\System\IO_Comments.xls"

    If xlApp Is Nothing Then
        Set xlApp = New Excel.Application
    End If
    xlApp.Visible = False
    Set xlBook = xlApp.Workbooks.Open(file_path$)

    Set xlSheet(0) = xlBook.Worksheets("UMacIO")
    Set xlSheet(1) = xlBook.Worksheets("ADLinkIO")
    For i% = 3 To 138
        Me.MSFG_UMacIn.TextMatrix(i% - 2, 0) = "X" & xlSheet(0).Cells(i%, 3)
        Me.MSFG_UMacOut.TextMatrix(i% - 2, 0) = "Y" & xlSheet(0).Cells(i%, 7)
        Me.MSFG_UMacIn.TextMatrix(i% - 2, 1) = xlSheet(0).Cells(i%, 5)
        Me.MSFG_UMacOut.TextMatrix(i% - 2, 1) = xlSheet(0).Cells(i%, 9)
        Me.MSFG_UMacIn.TextMatrix(i% - 2, 2) = "Off"
        Me.MSFG_UMacOut.TextMatrix(i% - 2, 2) = "Off"
    Next i%

    For i% = 3 To 34
        Me.MSFG_DigIN.TextMatrix(i% - 2, 0) = xlSheet(1).Cells(i%, 2)
        Me.MSFG_DigIOut.TextMatrix(i% - 2, 0) = xlSheet(1).Cells(i%, 4)
        Me.MSFG_DigIN.TextMatrix(i% - 2, 1) = xlSheet(1).Cells(i%, 3)
        Me.MSFG_DigIOut.TextMatrix(i% - 2, 1) = xlSheet(1).Cells(i%, 5)
        Me.MSFG_DigIN.TextMatrix(i% - 2, 2) = "Off"
        Me.MSFG_DigIOut.TextMatrix(i% - 2, 2) = "Off"
    Next i%

    xlBook.Close True
    xlApp.DisplayAlerts = True
    xlApp.Quit
    Set xlSheet(0) = Nothing
    Set xlSheet(1) = Nothing
    Set xlBook = Nothing
    Set xlApp = Nothing

    tmp_dbl# = PubTimeCheck(True)
    Do
        DoEvents
        rtn_process_id& = GetPidByImage("EXCEL.exe")
        If rtn_process_id& <> 0 Then
            Call KillPID(rtn_process_id&)
        End If
        If PubTimeCheck(False) > 10 Then
            Exit Do
        End If
    Loop Until rtn_process_id& = 0
    tmp_dbl# = PubTimeCheck(True)

    If PComm32_Init_Flag = True Then
        If PComm32_DOUT_ReadAll = True Then
            For i% = 0 To 135
            If PComm32_DOUT_Bit(i%) = 1 Then
                Me.MSFG_UMacIn.TextMatrix(i%, 2) = "On"
                Me.MSFG_UMacIn.Col = 1: Me.MSFG_UMacIn.CellForeColor = vbRed
                Me.MSFG_UMacIn.Col = 2: Me.MSFG_UMacIn.CellForeColor = vbRed
            Else
                Me.MSFG_UMacIn.TextMatrix(i%, 2) = "Off"
                Me.MSFG_UMacIn.Col = 1: Me.MSFG_UMacIn.CellForeColor = vbBlack
                Me.MSFG_UMacIn.Col = 2: Me.MSFG_UMacIn.CellForeColor = vbBlack
            End If
            Next i%
        End If
    End If

    If PCI7230_Init_OK = True Then
        For i% = 0 To 31
            Me.MSFG_DigIOut.Row = i% + 1
            If PCI7230_OutSignalConf_Card2QTY(i%) = True Then
                Me.MSFG_DigIOut.TextMatrix(i% + 1, 2) = "On"
                Me.MSFG_DigIOut.Col = 1: Me.MSFG_DigIOut.CellForeColor = vbRed
                Me.MSFG_DigIOut.Col = 2: Me.MSFG_DigIOut.CellForeColor = vbRed
            Else
                Me.MSFG_DigIOut.TextMatrix(i% + 1, 2) = "Off"
                Me.MSFG_DigIOut.Col = 1: Me.MSFG_DigIOut.CellForeColor = vbBlack
                Me.MSFG_DigIOut.Col = 2: Me.MSFG_DigIOut.CellForeColor = vbBlack
            End If
        Next i%
    End If
    Me.Timer1.Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Me.Timer1.Enabled = False
End Sub

Private Sub MSFG_DigIOut_Click()

    Sel_Row_ADLink = Me.MSFG_DigIOut.Row

End Sub

Private Sub MSFG_DigIOut_DblClick()

    If Me.MSFG_DigIOut.TextMatrix(Sel_Row_ADLink, 2) = "On" Then
        Me.MSFG_DigIOut.TextMatrix(Sel_Row_ADLink, 2) = "Off"
        Me.MSFG_DigIOut.Col = 1: Me.MSFG_DigIOut.CellForeColor = vbBlack
        Me.MSFG_DigIOut.Col = 2: Me.MSFG_DigIOut.CellForeColor = vbBlack
        PCI7230_OutSignal_Card2QTY Sel_Row_ADLink - 1, 0
    Else
        Me.MSFG_DigIOut.TextMatrix(Sel_Row_ADLink, 2) = "On"
        Me.MSFG_DigIOut.Col = 1: Me.MSFG_DigIOut.CellForeColor = vbRed
        Me.MSFG_DigIOut.Col = 2: Me.MSFG_DigIOut.CellForeColor = vbRed
        PCI7230_OutSignal_Card2QTY Sel_Row_ADLink - 1, 1
    End If

End Sub

Private Sub MSFG_UMacOut_Click()

    Sel_Row_UMac = Me.MSFG_UMacOut.Row

End Sub

Private Sub MSFG_UMacOut_DblClick()

    If Me.MSFG_UMacOut.TextMatrix(Sel_Row_UMac, 2) = "On" Then
        Me.MSFG_UMacOut.TextMatrix(Sel_Row_UMac, 2) = "Off"
        Me.MSFG_UMacOut.Col = 1: Me.MSFG_UMacOut.CellForeColor = vbBlack
        Me.MSFG_UMacOut.Col = 2: Me.MSFG_UMacOut.CellForeColor = vbBlack
        If PComm32_Init_Flag = True Then
            PComm32_DOUT Sel_Row_UMac - 1, 0
        End If
    Else
        Me.MSFG_UMacOut.TextMatrix(Sel_Row_UMac, 2) = "On"
        Me.MSFG_UMacOut.Col = 1: Me.MSFG_UMacOut.CellForeColor = vbRed
        Me.MSFG_UMacOut.Col = 2: Me.MSFG_UMacOut.CellForeColor = vbRed
        If PComm32_Init_Flag = True Then
            PComm32_DOUT Sel_Row_UMac - 1, 1
        End If
    End If

End Sub

Private Sub Timer1_Timer()

    If PComm32_Init_Flag = True Then
        If PComm32_DIN_ReadAll = True Then
            For i% = 0 To UBound(PComm32_DIN_Bit)
                If PComm32_DIN_Bit(i%) = 1 Then
                    Me.MSFG_UMacIn.TextMatrix(i% + 1, 2) = "On"
                    Me.MSFG_UMacIn.Col = 1: Me.MSFG_UMacIn.CellForeColor = vbRed
                    Me.MSFG_UMacIn.Col = 2: Me.MSFG_UMacIn.CellForeColor = vbRed
                Else
                    Me.MSFG_UMacIn.TextMatrix(i% + 1, 2) = "Off"
                    Me.MSFG_UMacIn.Col = 1: Me.MSFG_UMacIn.CellForeColor = vbBlack
                    Me.MSFG_UMacIn.Col = 2: Me.MSFG_UMacIn.CellForeColor = vbBlack
                End If
            Next i%
        End If
    End If
    
    If PCI7230_Init_OK = True Then
        For i% = 0 To 31
            Me.MSFG_DigIN.Row = i% + 1
            If PCI7230_InSignal_Card2QTY(i%) = True Then
                Me.MSFG_DigIN.TextMatrix(i% + 1, 2) = "On"
                Me.MSFG_DigIN.Col = 1: Me.MSFG_DigIN.CellForeColor = vbRed
                Me.MSFG_DigIN.Col = 2: Me.MSFG_DigIN.CellForeColor = vbRed
            Else
                Me.MSFG_DigIN.TextMatrix(i% + 1, 2) = "Off"
                Me.MSFG_DigIN.Col = 1: Me.MSFG_DigIN.CellForeColor = vbBlack
                Me.MSFG_DigIN.Col = 2: Me.MSFG_DigIN.CellForeColor = vbBlack
            End If
        Next i%
    End If

End Sub
