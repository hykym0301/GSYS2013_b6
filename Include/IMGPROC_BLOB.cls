VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IMGPROC_BLOB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'****************************************************************************
'*                   Visoion 표준화 - Blob Analysis Class                   *
'*                       2007/11/22           이혁진                        *
'*                          IMGPROC_BLOB.Cls                                *
'*                       cBLOB_Structure.Bas                                *
'****************************************************************************
Function Blob_Search(ipBlobCtl As Object, ipBufMainCtl As Object, ipBufChildCtl As Object, ipImgProcessCtl As Object, ipGrpCntxt As Object, _
                     ipOptBinCond As ImpConditionConstants, ipValBinCond_Low As Long, ipValBinCond_Upp As Long, ipBlobLow As Double, ipBlobHigh As Double, _
                     ipForeGrVal As Integer, ipOpenCloseDiameter As Long, Optional ByVal shp_RegBox As Object) As Boolean

    On Error GoTo Error_Handdler

    Dim nTotalBlobs                 As Long
    Dim Ref_X, Ref_Y, Ref_W, Ref_H  As Double

    bin_cond& = ipBinCond
    ip_low_blob# = ipBlobLow
    ip_high_blob# = ipBlobHigh

    ft_x& = Screen.TwipsPerPixelX: ft_y& = Screen.TwipsPerPixelY

    If shp_RegBox Is Nothing Then
        Ref_X = 0: Ref_Y = 0
        Ref_W = ipBufMainCtl.SizeX: Ref_H = ipBufMainCtl.SizeY
    Else
        Ref_X = shp_RegBox.Left / ft_x&: Ref_Y = shp_RegBox.Top / ft_y&
        Ref_W = shp_RegBox.Width / ft_x&: Ref_H = shp_RegBox.Height / ft_y&
    End If

    ipBlobCtl.image = ipBufChildCtl

    ipBufChildCtl.Free
    ipBufChildCtl.ParentImage = ipBufMainCtl
    ipBufChildCtl.ChildRegion.Mode = roiOffsetSize
    ipBufChildCtl.ChildRegion.OffsetX = Ref_X: ipBufChildCtl.ChildRegion.OffsetY = Ref_Y
    ipBufChildCtl.ChildRegion.SizeX = Ref_W: ipBufChildCtl.ChildRegion.SizeY = Ref_H
    ipBufChildCtl.Allocate

    ipImgProcessCtl.Source1 = ipBufChildCtl
    ipImgProcessCtl.Destination1 = ipBufChildCtl

    ipImgProcessCtl.Binarize ipOptBinCond, ipValBinCond_Low, ipValBinCond_Upp  ''
    If ipOpenCloseDiameter <> 0 Then
        ipImgProcessCtl.Open ipOpenCloseDiameter, impGrayscale
        ipImgProcessCtl.Close ipOpenCloseDiameter, impGrayscale
    End If


    'Attribute---------------------------------------
    ipBlobCtl.IdentifierBlobType = blobIndividual
    ipBlobCtl.IdentifierPixelType = blobGrayscale
    ipBlobCtl.Lattice = blob8Connected
    ipBlobCtl.NumberOfFeretAngles = 8
    If ipForeGrVal = 0 Then
        ipBlobCtl.ForegroundPixelValue = blobZero
    Else
        ipBlobCtl.ForegroundPixelValue = blobNonZero
    End If
    ipBlobCtl.PixelAspectRatio = 1
    'Attribute---------------------------------------
    'Feature List------------------------------------
    ipBlobCtl.FeatureList.Area = True: ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Box.All = True: ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.CenterOfGravity.All = True: ipBlobCtl.Calculate
    ipBlobCtl.FeatureList.Compactness = True: ipBlobCtl.Calculate
    'Feature List------------------------------------
    'ipBlobCtl.Calculate
    'Sorting Key-------------------------------------
    ipBlobCtl.SortingKeys.Add blobCenterOfGravityX, blobIncreasing, blobPriority1: ipBlobCtl.Calculate
    ipBlobCtl.SortingKeys.Add blobCenterOfGravityY, blobIncreasing, blobPriority2: ipBlobCtl.Calculate
    'Sorting Key-------------------------------------
    'Filters-----------------------------------------
    idx& = ipBlobCtl.Filters.Add(blobInclude, blobArea, blobInRange, ip_low_blob#, ip_high_blob#): ipBlobCtl.Calculate
    ipBlobCtl.ApplyFilter idx&, False: ipBlobCtl.Calculate
    'ipBlobCtl.Calculate
    'Filters-----------------------------------------

    nTotalBlobs = ipBlobCtl.Results.Count
    rtnBlobResult_BlobQTY_per_OneRef = nTotalBlobs '------------------------------------------>호출부로 결과 리턴 - 클래스 외부 선언
    ipBlobCtl.DrawBlobs ipBufChildCtl, blobIncludedBlobs, &H808080, False  'ipBufChildCtl
    
    'ipBufMainCtl.CopyClip ipBufChildCtl, Ref_X, Ref_Y'결과영역 오버레이 디스플레이時 메인버퍼이여야 하므로
    
    'ipGrpCntxt.image = frmVision.Buf_Main
    'ipGrpCntxt.ForegroundShade = &H808080
    'ipBlobCtl.Results.Draw ipGrpCntxt, blobDrawBlobs, blobAllBlobs ' blobIncludedBlobs
    'ipBlobCtl.DrawBlobs ipBufChildCtl, blobIncludedBlobs, &H808080, False
    'frmVision.BlobAnalysis1.d
    
    If nTotalBlobs = 0 Then
        Blob_Search = False
        ipBlobCtl.SortingKeys.Remove 2
        ipBlobCtl.SortingKeys.Remove 1
        ipBlobCtl.Filters.Remove 1
        Exit Function
    End If
    
    ReDim rtnBlobResult(nTotalBlobs - 1) '---------------------------------------------------->호출부로 결과 리턴 - 클래스 외부 선언
    For i% = 1 To nTotalBlobs
        'rtnBlobResult(i% - 1).Center_X = Ref_X + ipBlobCtl.Results(i%).CenterOfGravityX
        'rtnBlobResult(i% - 1).Center_Y = Ref_Y + ipBlobCtl.Results(i%).CenterOfGravityY
        xx_max# = ipBlobCtl.Results(i%).BoxXMaximum
        xx_min# = ipBlobCtl.Results(i%).BoxXMinimum
        yy_max# = ipBlobCtl.Results(i%).BoxYMaximum
        yy_min# = ipBlobCtl.Results(i%).BoxYMinimum
        rtnBlobResult(i% - 1).Size_X = xx_max# - xx_min#
        rtnBlobResult(i% - 1).Size_Y = yy_max# - yy_min#
        rtnBlobResult(i% - 1).Pos_X = Ref_X + xx_min# 'rtnBlobResult.Center_X - (rtnBlobResult.Size_X / 2)
        rtnBlobResult(i% - 1).Pos_Y = Ref_Y + yy_min# 'rtnBlobResult.Center_Y - (rtnBlobResult.Size_Y / 2)
        rtnBlobResult(i% - 1).Center_X = rtnBlobResult(i% - 1).Pos_X + (rtnBlobResult(i% - 1).Size_X / 2)
        rtnBlobResult(i% - 1).Center_Y = rtnBlobResult(i% - 1).Pos_Y + (rtnBlobResult(i% - 1).Size_Y / 2)
        rtnBlobResult(i% - 1).Area = ipBlobCtl.Results(i%).Area
        rtnBlobResult(i% - 1).cCompactness = ipBlobCtl.Results(i%).Compactness
        
        With ipGrpCntxt
            
            .ForegroundShade = vbWhite
            .DrawingRegion.Mode = roiCenterSize
            .DrawingRegion.CenterX = rtnBlobResult(i% - 1).Center_X
            .DrawingRegion.CenterY = rtnBlobResult(i% - 1).Center_Y
            .DrawingRegion.SizeX = 30
            .DrawingRegion.SizeY = 30
            .Cross
        End With
        
    Next i%

    If nTotalBlobs <> 0 Then
        Blob_Search = True
    Else
        Blob_Search = False
    End If

    ipBlobCtl.SortingKeys.Remove 2
    ipBlobCtl.SortingKeys.Remove 1
    ipBlobCtl.Filters.Remove 1
    Exit Function
    
Error_Handdler:
    Open App.Path & "\BlobClassErrorLog" & Format(Now, "YYYYMMDD") & " .log" For Append As #1
    Print #1, Format(Now, "HH:MM:SS") & "," & Err.Description
    Close #1

End Function
