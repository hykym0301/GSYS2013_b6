VERSION 5.00
Begin VB.Form frmLineScanConfig 
   BorderStyle     =   1  '단일 고정
   Caption         =   "LineScan검사 설정"
   ClientHeight    =   4845
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5205
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmLineScanConfig.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   5205
   Begin VB.Frame Frame2 
      Caption         =   "Threshold"
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   0
      TabIndex        =   25
      Top             =   3075
      Width           =   5160
      Begin VB.CommandButton cmdInspect 
         Caption         =   "Test"
         Height          =   330
         Left            =   4365
         TabIndex        =   29
         Top             =   300
         Width           =   645
      End
      Begin VB.ComboBox cboOption 
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         ItemData        =   "frmLineScanConfig.frx":058A
         Left            =   1845
         List            =   "frmLineScanConfig.frx":05AC
         TabIndex        =   28
         Top             =   315
         Width           =   2385
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   225
         Left            =   165
         Max             =   255
         TabIndex        =   26
         Top             =   345
         Width           =   1320
      End
      Begin VB.Label lblThreshold 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   225
         Left            =   1605
         TabIndex        =   27
         Top             =   375
         Width           =   105
      End
   End
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   915
      Left            =   0
      TabIndex        =   22
      Top             =   3930
      Width           =   5160
      Begin VB.CommandButton cmdFunc 
         Caption         =   "TrigB'd"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   2
         Left            =   165
         Picture         =   "frmLineScanConfig.frx":0669
         Style           =   1  '그래픽
         TabIndex        =   30
         Top             =   210
         Width           =   975
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   0
         Left            =   1335
         Picture         =   "frmLineScanConfig.frx":0BF3
         Style           =   1  '그래픽
         TabIndex        =   24
         Top             =   225
         Width           =   1815
      End
      Begin VB.CommandButton cmdFunc 
         Caption         =   "종료"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Index           =   1
         Left            =   3195
         Picture         =   "frmLineScanConfig.frx":117D
         Style           =   1  '그래픽
         TabIndex        =   23
         Top             =   225
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "굴림"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3000
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5160
      Begin VB.TextBox txt_AccDecDist 
         Height          =   270
         Left            =   3210
         TabIndex        =   7
         Text            =   "0"
         Top             =   675
         Width           =   1020
      End
      Begin VB.TextBox txt_InspectVel 
         Height          =   270
         Left            =   3210
         TabIndex        =   6
         Text            =   "0"
         Top             =   270
         Width           =   1020
      End
      Begin VB.TextBox txt_InspectPosY 
         Height          =   270
         Left            =   3210
         TabIndex        =   5
         Text            =   "0"
         Top             =   1050
         Width           =   1020
      End
      Begin VB.TextBox txt_BlobAreaMax 
         Height          =   270
         Left            =   3210
         TabIndex        =   4
         Text            =   "100000"
         Top             =   1755
         Width           =   1020
      End
      Begin VB.TextBox txt_BlobAreaMin 
         Height          =   270
         Left            =   3210
         TabIndex        =   3
         Text            =   "100"
         Top             =   2115
         Width           =   1020
      End
      Begin VB.TextBox txt_HallogenVol 
         Height          =   270
         Left            =   3210
         TabIndex        =   2
         Text            =   "0"
         Top             =   1410
         Width           =   1020
      End
      Begin VB.TextBox txt_InspDotCnt 
         Height          =   270
         Left            =   3210
         TabIndex        =   1
         Text            =   "0"
         Top             =   2460
         Width           =   1020
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "스캔 속도:"
         Height          =   225
         Left            =   180
         TabIndex        =   21
         Top             =   360
         Width           =   810
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "스캔 가감속거리:"
         Height          =   225
         Left            =   180
         TabIndex        =   20
         Top             =   735
         Width           =   1350
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[mm/s]"
         Height          =   225
         Left            =   4230
         TabIndex        =   19
         Top             =   360
         Width           =   570
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[mm]"
         Height          =   225
         Left            =   4230
         TabIndex        =   18
         Top             =   765
         Width           =   420
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[mm]"
         Height          =   225
         Left            =   4230
         TabIndex        =   17
         Top             =   1140
         Width           =   420
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "스캔 시작 Y 옵셋거리:"
         Height          =   225
         Left            =   180
         TabIndex        =   16
         Top             =   1140
         Width           =   1725
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "측정 원의 최대지름:"
         Height          =   225
         Left            =   165
         TabIndex        =   15
         Top             =   1845
         Width           =   1575
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "측정 원의 최소지름:"
         Height          =   225
         Left            =   165
         TabIndex        =   14
         Top             =   2205
         Width           =   1575
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[um]"
         Height          =   225
         Left            =   4245
         TabIndex        =   13
         Top             =   1860
         Width           =   360
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[um]"
         Height          =   225
         Left            =   4245
         TabIndex        =   12
         Top             =   2205
         Width           =   360
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "할로겐 램프 측정광량:"
         Height          =   225
         Left            =   180
         TabIndex        =   11
         Top             =   1515
         Width           =   1755
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[0~255]"
         Height          =   225
         Left            =   4230
         TabIndex        =   10
         Top             =   1500
         Width           =   615
      End
      Begin VB.Label Label19 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "측정 Dotting 갯수지정:"
         Height          =   225
         Left            =   165
         TabIndex        =   9
         Top             =   2550
         Width           =   1800
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "[Dot]"
         Height          =   225
         Left            =   4260
         TabIndex        =   8
         Top             =   2535
         Width           =   375
      End
   End
End
Attribute VB_Name = "frmLineScanConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Sub Set_Binarize(ByVal ipImgProcCtrl As Object, _
                     ByVal ipSrcBufCtrl As Object, _
                     ByRef ipDestBufCtrl As Object, _
                     ByVal ipbAutoCon As Boolean, _
                     Optional ipnCon As Integer, _
                     Optional ipnBinVal As Integer = 100)
On Error GoTo sysErr:
    
    ipImgProcCtrl.Source1 = ipSrcBufCtrl
    ipImgProcCtrl.Destination1 = ipDestBufCtrl
    
    If ipbAutoCon = True Then
        ipImgProcCtrl.Binarize impGreaterThan, imDefault
    Else
        ipImgProcCtrl.Binarize ipnCon, ipnBinVal
    End If

Exit Sub
sysErr:
MsgBox Err.Description
End Sub

Function Blob_Search2(ipBlobCtl As Object, _
                      ipSrcBuf As Object, _
                      ipDestBuf As Object, _
                      ipImgProcessCtl As Object, _
                      ipBinCond As Long, _
                      ipBlobLow As Double, _
                      ipBlobHigh As Double, _
                      ipForeGrVal As Integer, _
                      ByRef ipReturnBlob As Double) As Boolean

    On Error Resume Next

    ' Threshold
    bin_cond& = ipBinCond

    ' 1 ~ (640*480)
    ip_low_blob# = ipBlobLow
    ip_high_blob# = ipBlobHigh
    
    ipDestBuf.Free
    ipDestBuf.Copy ipSrcBuf
    ipDestBuf.ChildRegion.mode = roiOffsetSize
    ipDestBuf.ChildRegion.OffsetX = 0
    ipDestBuf.ChildRegion.OffsetY = 0
    ipDestBuf.ChildRegion.SizeX = 1024
    ipDestBuf.ChildRegion.SizeY = 20480 '768 '20480
    ipDestBuf.Allocate

    ipImgProcessCtl.Source1 = ipSrcBuf
    ipImgProcessCtl.Destination1 = ipDestBuf

'    If ipForeGrVal = 0 Then
'        ipImgProcessCtl.Binarize mLessThan, bin_cond& 'SYSTEM_CONST_BIN_OUT_OF_RANGE_LOWER
'    Else
'       ipImgProcessCtl.Binarize mLessThan, bin_cond&
'       ipImgProcessCtl.Binarize mLessThan, bin_cond&
'    End If

'    ipImgProcessCtl.Binarize mOutOfRange, SYSTEM_CONST_BIN_OUT_OF_RANGE_LOWER, bin_cond& ''
'    ipImgProcessCtl.Binarize mLessOrEqualTo, bin_cond&, 255 ''
'    ipImgProcessCtl.Binarize mLessOrEqualTo, bin_cond&, 255 ''
    
    
    ipImgProcessCtl.Binarize impGreaterOrEqualTo, impDefault, impDefault

    ipBlobCtl.image = ipDestBuf
'
'    'Attribute---------------------------------------
'
    ipBlobCtl.IdentifierBlobType = blobIndividual
    ipBlobCtl.IdentifierPixelType = blobBinary 'blobGrayscale
    ipBlobCtl.Lattice = blob8Connected
    ipBlobCtl.NumberOfFeretAngles = 8
    If ipForeGrVal = 0 Then
        ipBlobCtl.ForegroundPixelValue = blobZero
    Else
        ipBlobCtl.ForegroundPixelValue = blobNonZero
    End If

    ipBlobCtl.PixelAspectRatio = 1

    'Attribute---------------------------------------

    ipBlobCtl.FillHoles ipDestBuf, ipDestBuf, blobZero, blobBinary, blob8Connected
    ipBlobCtl.EraseBorderBlobs ipDestBuf, ipDestBuf, blobBinary, blobZero, blob8Connected
    
    'Form1.Display2.Image = ipDestBuf
    
    'Feature List------------------------------------
    ipBlobCtl.FeatureList.Area = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Box.All = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.CenterOfGravity.All = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Compactness = True
    ipBlobCtl.Calculate
    'Feature List------------------------------------

    'ipBlobCtl.Calculate
    'Sorting Key-------------------------------------
    'ipBlobCtl.SortingKeys.Add blobCompactness, blobIncreasing, blobPriority2
    'ipBlobCtl.Calculate
    'ipBlobCtl.SortingKeys.Add blobCenterOfGravityX, blobIncreasing, blobPriority1: ipBlobCtl.Calculate
    'ipBlobCtl.SortingKeys.Add blobCenterOfGravityY, blobIncreasing, blobPriority2: ipBlobCtl.Calculate
    'Sorting Key-------------------------------------

    'Filters-----------------------------------------
    idx& = ipBlobCtl.Filters.Add(blobInclude, blobArea, blobInRange, ip_low_blob#, ip_high_blob#)
    ipBlobCtl.Calculate
    ipBlobCtl.ApplyFilter idx&, False
    ipBlobCtl.Calculate
    'ipBlobCtl.Calculate
    'Filters-----------------------------------------

    ipReturnBlob = ipBlobCtl.Results.count
    
    gdResultBlobCnt = ipReturnBlob
    ipBlobCtl.DrawBlobs ipDestBuf, blobIncludedBlobs, &H808080, False

    'ipGrpCntxt.GraphicContext1.s = ipBufChildCtl
    'ipGrpCntxt.ForegroundShade = &H808080
    'ipBlobCtl.Results.Draw ipGrpCntxt, blobDrawBlobs, blobIncludedBlobs

    ReDim rtnBlobResult(ipReturnBlob)

    'ipGrpCntxt(0).Visible = True

    With ipGrpCntxt.DrawingRegion

        .mode = roiCenterSize
        j% = 0
        'rtnBlobResult.Area = 0

        For i% = 1 To ipReturnBlob
            DoEvents
            'frmTeaching.List1.AddItem ipBlobCtl.Results(i%).Area
'            .CenterX = center_xx#
'            .CenterY = center_yy#
'            .SizeX = 15
'            .SizeY = 15
'            ipGrpCntxt(j%).Visible = True
'            ipGrpCntxt(j%).Cross

            If (ip_low_blob# < ipBlobCtl.Results(i%).Area) And (ip_high_blob# >= ipBlobCtl.Results(i%).Area) Then

                j% = j% + 1
                rtnBlobResult(j%).Center_X = Ref_X + ipBlobCtl.Results(i%).CenterOfGravityX
                rtnBlobResult(j%).Center_Y = Ref_Y + ipBlobCtl.Results(i%).CenterOfGravityY
                'rtnBlobResult(i%).Center_X = Ref_X + (ipBlobCtl.Results(i%).BoxXMinimum + ((ipBlobCtl.Results(i%).BoxXMaximum - ipBlobCtl.Results(i%).BoxXMinimum) / 2))
                'rtnBlobResult(i%).Center_Y = Ref_Y + (ipBlobCtl.Results(i%).BoxYMinimum + ((ipBlobCtl.Results(i%).BoxYMaximum - ipBlobCtl.Results(i%).BoxYMinimum) / 2))
                xx_max# = ipBlobCtl.Results(i%).BoxXMaximum
                xx_min# = ipBlobCtl.Results(i%).BoxXMinimum
                yy_max# = ipBlobCtl.Results(i%).BoxYMaximum
                yy_min# = ipBlobCtl.Results(i%).BoxYMinimum

                rtnBlobResult(j%).Size_X = xx_max# - xx_min#
                rtnBlobResult(j%).Size_Y = yy_max# - yy_min#
                rtnBlobResult(j%).Pos_X = Ref_X + xx_min# 'rtnBlobResult.Center_X - (rtnBlobResult.Size_X / 2)
                rtnBlobResult(j%).Pos_Y = Ref_Y + yy_min# 'rtnBlobResult.Center_Y - (rtnBlobResult.Size_Y / 2)
                rtnBlobResult(j%).Area = rtnBlobResult(i%).Area + ipBlobCtl.Results(i%).Area
                
                'frmVision.BlobAnalysis1.Results(i%).Draw frmVision.GraphicContext4(0), blobDrawBlobs
                
                rtnBlobResult(j%).Compactness = ipBlobCtl.Results(i%).Compactness



                'ipBlobCtl.SortingKeys.Remove 2
                'ipBlobCtl.SortingKeys.Remove 1
                'ipBlobCtl.Filters.Remove 1
                Blob_Search2 = True
                'Exit Function

            End If

        Next i%

    End With

    If dFindBlobCnt# <> 0 Then
        Blob_Search2 = True
    Else
        Blob_Search2 = False
    End If

    'ipBlobCtl.SortingKeys.Remove 2
    ipBlobCtl.SortingKeys.Remove 1
    ipBlobCtl.Filters.Remove 1

    

End Function

Function Get_Blob(ByVal ipBlobCtl As Object, _
                  ByVal ipImgProcessCtl As Object, _
                  ByVal ipSrcBuf As Object, _
                  ByRef ipDestBuf As Object, _
                  ByVal ipThreshold As Integer, _
                  ByVal ipGraphTxt As Object, _
                  ByVal ipBlobLow As Double, _
                  ByVal ipBlobHigh As Double) As Integer

On Error GoTo sysErr:
        
    ' Threshold
    bin_cond& = ipBinCond

    ' 1 ~ (640*480)
    dLowBlob = ipBlobLow
    dHighBlob = ipBlobHigh
               
    
    
    ipDestBuf.Free

    'ipDestBuf.ChildRegion.Mode = roiOffsetSize
    frmLineScan.Image_lsc(1).ChildRegion.mode = roiOffsetSize
    
    ipDestBuf.ChildRegion.OffsetX = 0
    ipDestBuf.ChildRegion.OffsetY = 0
    ipDestBuf.ChildRegion.SizeX = 1024
    ipDestBuf.ChildRegion.SizeY = 768 '20480
    ipDestBuf.Allocate

    ipDestBuf.Copy ipSrcBuf
    
    ipImgProcessCtl.Source1 = ipSrcBuf
    ipImgProcessCtl.Destination1 = ipDestBuf
    ipImgProcessCtl.Binarize impGreaterOrEqualTo, impDefault, impDefault
               
    ipBlobCtl.image = ipDestBuf
    ipBlobCtl.IdentifierBlobType = blobIndividual
    ipBlobCtl.IdentifierPixelType = blobBinary 'blobGrayscale
    ipBlobCtl.Lattice = blob8Connected
    ipBlobCtl.NumberOfFeretAngles = 8
    ipBlobCtl.ForegroundPixelValue = blobZero ' blobNonZero
    ipBlobCtl.PixelAspectRatio = 1
    ipBlobCtl.FillHoles ipDestBuf, ipDestBuf, blobZero, blobBinary, blob8Connected
    ipBlobCtl.EraseBorderBlobs ipDestBuf, ipDestBuf, blobBinary, blobZero, blob8Connected
              
   'Feature List------------------------------------
    ipBlobCtl.FeatureList.Area = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Box.All = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.CenterOfGravity.All = True
    ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Compactness = True
    ipBlobCtl.Calculate
    'Feature List------------------------------------

    'ipBlobCtl.Calculate
    'Sorting Key-------------------------------------
    'ipBlobCtl.SortingKeys.Add blobCompactness, blobIncreasing, blobPriority2
    'ipBlobCtl.Calculate
    'ipBlobCtl.SortingKeys.Add blobCenterOfGravityX, blobIncreasing, blobPriority1: ipBlobCtl.Calculate
    'ipBlobCtl.SortingKeys.Add blobCenterOfGravityY, blobIncreasing, blobPriority2: ipBlobCtl.Calculate
    'Sorting Key-------------------------------------

    'Filters-----------------------------------------
    idx& = ipBlobCtl.Filters.Add(blobInclude, blobArea, blobInRange, ip_low_blob#, ip_high_blob#)
    ipBlobCtl.Calculate
    ipBlobCtl.ApplyFilter idx&, False
    ipBlobCtl.Calculate
    'ipBlobCtl.Calculate
    
    gdResultBlobCnt = ipBlobCtl.Results.count
    
    ReDim rtnBlobResult(gdResultBlobCnt)
    
    
      With ipGraphTxt.DrawingRegion

        .mode = roiCenterSize
        j% = 0
        'rtnBlobResult.Area = 0

        For i% = 1 To gdResultBlobCnt
            DoEvents
            'frmTeaching.List1.AddItem ipBlobCtl.Results(i%).Area
'            .CenterX = center_xx#
'            .CenterY = center_yy#
'            .SizeX = 15
'            .SizeY = 15
'            ipGrpCntxt(j%).Visible = True
'            ipGrpCntxt(j%).Cross

            If (ipBlobLow < ipBlobCtl.Results(i%).Area) And (ipBlobHigh >= ipBlobCtl.Results(i%).Area) Then

                j% = j% + 1
                rtnBlobResult(j%).Center_X = Ref_X + ipBlobCtl.Results(i%).CenterOfGravityX
                rtnBlobResult(j%).Center_Y = Ref_Y + ipBlobCtl.Results(i%).CenterOfGravityY
                'rtnBlobResult(i%).Center_X = Ref_X + (ipBlobCtl.Results(i%).BoxXMinimum + ((ipBlobCtl.Results(i%).BoxXMaximum - ipBlobCtl.Results(i%).BoxXMinimum) / 2))
                'rtnBlobResult(i%).Center_Y = Ref_Y + (ipBlobCtl.Results(i%).BoxYMinimum + ((ipBlobCtl.Results(i%).BoxYMaximum - ipBlobCtl.Results(i%).BoxYMinimum) / 2))
                xx_max# = ipBlobCtl.Results(i%).BoxXMaximum
                xx_min# = ipBlobCtl.Results(i%).BoxXMinimum
                yy_max# = ipBlobCtl.Results(i%).BoxYMaximum
                yy_min# = ipBlobCtl.Results(i%).BoxYMinimum

                rtnBlobResult(j%).Size_X = xx_max# - xx_min#
                rtnBlobResult(j%).Size_Y = yy_max# - yy_min#
                rtnBlobResult(j%).Pos_X = rtnBlobResult(i%).Center_X - (rtnBlobResult(i%).Size_X / 2)
                rtnBlobResult(j%).Pos_Y = rtnBlobResult(i%).Center_Y - (rtnBlobResult(i%).Size_Y / 2)
                rtnBlobResult(j%).Area = rtnBlobResult(i%).Area + ipBlobCtl.Results(i%).Area
                
                'frmVision.BlobAnalysis1.Results(i%).Draw frmVision.GraphicContext4(0), blobDrawBlobs
                
                rtnBlobResult(j%).Compactness = ipBlobCtl.Results(i%).Compactness

                'ipBlobCtl.SortingKeys.Remove 2
                'ipBlobCtl.SortingKeys.Remove 1
                'ipBlobCtl.Filters.Remove 1
                'Exit Function

            End If

        Next i%

    End With
        
    
    'ipBlobCtl.SortingKeys.Remove 1
    ipBlobCtl.Filters.Remove 1
    
    Get_Blob = gdResultBlobCnt
    
Exit Function
sysErr:
MsgBox Err.Description

ipDestBuf.Allocate
End Function

Public Sub Draw_SearchBlob(ByVal ipGraphic As Object, _
                           ByVal ipDisplay As Object)
On Error GoTo sysErr:
    For i% = 1 To gdResultBlobCnt
        
        DoEvents
        
        ipGraphic.DrawingRegion.CenterX = rtnBlobResult(i%).Center_X 'rtnBlobResult(li_Index).Pos_X + (rtnBlobResult(li_Index).Size_X / 2)
        ipGraphic.DrawingRegion.CenterY = rtnBlobResult(i%).Center_Y 'rtnBlobResult(li_Index).Pos_Y + (rtnBlobResult(li_Index).Size_Y / 2)
        ipGraphic.DrawingRegion.SizeX = 2
        ipGraphic.DrawingRegion.SizeY = 2
        ipGraphic.BackgroundColor = &HC0C0C0
        ipGraphic.image = frmLineScan.Image_lsc(0)
        ipGraphic.Rectangle True
    Next i%
         
    frmLineScan.lblBlobCnt = "Inspected Drop[cnt]: " & CStr(gdResultBlobCnt)
    ipDisplay.image = frmLineScan.Image_lsc(0)
Exit Sub
sysErr:
MsgBox Err.Description
    
End Sub

Private Sub cboOption_Click()
On Error GoTo sysErr:
    If cboOption.ListIndex = 9 Then
        Set_Binarize frmLineScan.ImageProcessing1, frmLineScan.Image_lsc(eImgBuf.Origin), frmLineScan.Image_lsc(eImgBuf.Process), True
        frmLineScan.Display1.image = frmLineScan.Image_lsc(eImgBuf.Process)
    End If
Exit Sub
sysErr:
MsgBox Err.Description
End Sub

Private Sub cmdFunc_Click(Index As Integer)
On Error GoTo sysErr:
Select Case Index
    Case 0 ' save
         
         gLineScanPara.dSPosOffset_mm = CDbl(Me.txt_InspectPosY.Text)
         gLineScanPara.dGrabSpeed_mmPs = CDbl(Me.txt_InspectVel.Text)
         gLineScanPara.dAccDist_mm = CDbl(Me.txt_AccDecDist.Text)
         gLineScanPara.dLampBright = CDbl(Me.txt_HallogenVol.Text)
         gLineScanPara.dInspectDotCnt = CDbl(Me.txt_InspDotCnt.Text)
        
        ' 입력은 지름으로 계산은 반지름으로 계산한다.
         gLineScanPara.dMax_BlobCircle = CDbl(Me.txt_BlobAreaMax.Text)
         gLineScanPara.dMin_BlobCircle = CDbl(Me.txt_BlobAreaMin.Text)
'        gd_BlobMaxArea = Get_CircleAreaCnt(dMaxRadius#, OPTIC_CalFactorX(2), OPTIC_CalFactorY(2), 1) 'CDbl(Me.txt_BlobAreaMax.Text)
'        gd_BlobMinArea = Get_CircleAreaCnt(dMinRadius#, OPTIC_CalFactorX(2), OPTIC_CalFactorY(2), 1) 'CDbl(Me.txt_BlobAreaMin.Text)
        
        SaveLineScanPara
    Case 1 ' exit
        Unload Me
    Case 2
        Load frmTestJetting
        frmTestJetting.Show
End Select
Exit Sub
sysErr:
MsgBox Err.Description

End Sub

Private Sub cmdInspect_Click()
On Error GoTo sysErr:

'    MsgBox CStr(Get_Blob(frmLineScan.BlobAnalysis1, _
'                         frmLineScan.ImageProcessing1, _
'                         frmLineScan.Image_lsc(0), _
'                         frmLineScan.Image_lsc(1), _
'                         0, _
'                         frmLineScan.GraphicContext1, _
'                         gLineScanPara.dMin_BlobCircle, _
'                         gLineScanPara.dMax_BlobCircle))
'
                         
    Call Blob_Search2(frmLineScan.BlobAnalysis1, frmLineScan.Image_lsc(0), frmLineScan.Image_lsc(1), frmLineScan.ImageProcessing1, 0, gLineScanPara.dMin_BlobCircle, gLineScanPara.dMax_BlobCircle, 0, dBlobCnt#)
                      
    Draw_SearchBlob frmLineScan.GraphicContext1, frmLineScan.Display1
Exit Sub
sysErr:
MsgBox Err.Description
End Sub

Private Sub Form_Load()
On Error GoTo sysErr:
    cboOption.ListIndex = 8
    Me.Top = frmLineScan.Top
    Me.Left = frmLineScan.Left + frmLineScan.Width
    
    
        
    gLineScanPara.dGrabSpeed_mmPs = CDbl(GetSetting(App.Title, "LINE_SCAN", "SPEED_MMPS", "100"))
    gLineScanPara.dAccDist_mm = CDbl(GetSetting(App.Title, "LINE_SCAN", "ACCDIST_MM", "10"))
    gLineScanPara.dSPosOffset_mm = CDbl(GetSetting(App.Title, "LINE_SCAN", "SP_OFFSET_MM", "0"))
    gLineScanPara.dLampBright = CDbl(GetSetting(App.Title, "LINE_SCAN", "LAMP_BRIGHTNESS", "100"))
    gLineScanPara.dMax_BlobCircle = CDbl(GetSetting(App.Title, "LINE_SCAN", "BLOB_MAX_UM", "10000"))
    gLineScanPara.dMin_BlobCircle = CDbl(GetSetting(App.Title, "LINE_SCAN", "BLOB_MIN_UM", "100"))
    gLineScanPara.dInspectDotCnt = CDbl(GetSetting(App.Title, "LINE_SCAN", "LIMIT_CIRCLE_CNT", "10"))

    Me.txt_InspectVel.Text = CDbl(gLineScanPara.dGrabSpeed_mmPs)
    Me.txt_AccDecDist.Text = CDbl(gLineScanPara.dAccDist_mm)
    Me.txt_InspectPosY.Text = CDbl(gLineScanPara.dSPosOffset_mm)
    Me.txt_HallogenVol.Text = CDbl(gLineScanPara.dLampBright)
    Me.txt_InspDotCnt.Text = CDbl(gLineScanPara.dInspectDotCnt)
    Me.txt_BlobAreaMax.Text = CDbl(gLineScanPara.dMax_BlobCircle)
    Me.txt_BlobAreaMin.Text = CDbl(gLineScanPara.dMin_BlobCircle)
    
    ' 반지름으로 리턴이 되기때문에 표기는 지름으로 변경한다.
'    dMaxRadius# = Get_CirleRadius(dMaxArea#, OPTIC_CalFactorX(2), OPTIC_CalFactorY(2))
'    dMaxRadius# = dMaxRadius# * 2
'    dMinRadius# = Get_CirleRadius(dMinArea#, OPTIC_CalFactorX(2), OPTIC_CalFactorY(2))
'    dMinRadius# = dMinRadius# * 2
Exit Sub
sysErr:
MsgBox Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo sysErr:
Exit Sub
sysErr:
MsgBox Err.Description
End Sub

Private Sub HScroll1_Change()
On Error GoTo sysErr:
    
    If cboOption.ListIndex < 8 Then
        Set_Binarize frmLineScan.ImageProcessing1, frmLineScan.Image_lsc(eImgBuf.Origin), frmLineScan.Image_lsc(eImgBuf.Process), False, cboOption.ListIndex, HScroll1.Value
    End If
    
    frmLineScan.Display1.image = frmLineScan.Image_lsc(eImgBuf.Process)
    Me.lblThreshold.Caption = CStr(HScroll1.Value)
Exit Sub
sysErr:
MsgBox Err.Description
End Sub
