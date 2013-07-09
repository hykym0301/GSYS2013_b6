VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IMGPROC_PTRN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'****************************************************************************
'*                   Visoion 표준화 - Blob Analysis Class                   *
'*                       2007/11/22           이혁진                        *
'*                          IMGPROC_PTRN.Cls                                *
'*                       cPTRN_Structure.Bas                                *
'****************************************************************************

Public Sub Save_Mod(ipSystem As Object, ipMainBuf As Object, _
                                ipPtrnControl As Object, ipModelFilePth As String, ipRefBox As Object, ipTagBox As Object, ipMultiPtrnFlag As Boolean)

    Dim ChildID As Long
    Dim tmpBool As Boolean
    Dim sct_X, sct_Y As Double

    sct_X = Screen.TwipsPerPixelX: sct_Y = Screen.TwipsPerPixelY

    On Error GoTo Error_Handdler
'''''
'''''    ModelParaSet.NumberOfMatchs = 1
'''''    ModelParaSet.AcceptanceThreshold = 10
'''''    ModelParaSet.ToleranceAngle = 5
'''''    ModelParaSet.AccuracyAngle = 0.1
'''''    ModelParaSet.Angle = 360
'''''    ModelParaSet.NEG_DeltaAngle = 30
'''''    ModelParaSet.POS_DeltaAngle = 30
'''''    'Bridging-----------------------------------------------------------------------------
    With ipRefBox
    Ref_Xx& = .Left / sct_X: Ref_Yy& = .Top / sct_Y
    Ref_Ww& = .Width / sct_X: Ref_Hh& = .Height / sct_Y
    End With
    With ipTagBox
    tag_xx& = .Left / sct_X: tag_yy& = .Top / sct_Y
    tag_ww& = .Width / sct_X: tag_hh& = .Height / sct_Y
    End With

    With ipPtrnControl
    .MultipleModelMode = True 'ipMultiPtrnFlag
    
    For i& = 1 To .Models.count ' - 1
        .Models.Remove i&
    Next i&

    .Models.Add ipMainBuf, tag_xx&, tag_yy&, tag_ww&, tag_hh&, ipSetPara.NumberOfMatchs, patNormalized

    .Models.Item(.Models.count).AcceptanceThreshold = ipSetPara.AcceptanceThreshold
    .Models.Item(.Models.count).Speed = patHigh
    .Models.Item(.Models.count).PositionAccuracy = patHigh
    .Models.Item(.Models.count).SearchAlgorithm.FindMode = patDefaultFindMode 'patForceFastPeak 'patDefaultFindMode 'patForceFastPeak
    .Models.Item(.Models.count).SearchAngle.Enabled = True
    .Models.Item(.Models.count).SearchAngle.Tolerance = ipSetPara.ToleranceAngle
    .Models.Item(.Models.count).SearchAngle.Accuracy = ipSetPara.AccuracyAngle
    .Models.Item(.Models.count).SearchAngle.Value = ipSetPara.Angle
    .Models.Item(.Models.count).SearchAngle.NegativeDelta = ipSetPara.NEG_DeltaAngle
    .Models.Item(.Models.count).SearchAngle.PositiveDelta = ipSetPara.POS_DeltaAngle
    .Models.Item(.Models.count).SearchAngle.InterpolationMode = angleNearestNeighbor
    .Models.Item(.Models.count).SearchRegion.Mode = roiOffsetSize
    .Models.Item(.Models.count).SearchRegion.OffsetX = Ref_Xx&
    .Models.Item(.Models.count).SearchRegion.OffsetY = Ref_Yy&
    .Models.Item(.Models.count).SearchRegion.SizeX = Ref_Ww&
    .Models.Item(.Models.count).SearchRegion.SizeY = Ref_Hh&
    .Models.Item(.Models.count).Save ipModelFilePth
    End With

Exit Sub
Error_Handdler:
    Open App.Path & "\PtrnClassErrorLog" & Format(Now, "YYYYMMDD") & " .log" For Append As #1
    Print #1, Format(Now, "HH:MM:SS") & "," & Err.Description
    Close #1

End Sub
Function Find_Model(ipPtrnControl As Control, ref_Box As Control, ipModelFilePth As String) As Double

    On Error GoTo Error_Handdler

    ft_x& = Screen.TwipsPerPixelX: ft_y& = Screen.TwipsPerPixelY

    model_path$ = ipModelFilePth

    With ipPtrnControl
    
        For i& = 1 To .Models.count
            .Models.Remove i&
        Next i&
        
        .Models.Load model_path$
        .Modified mDefault
        
        .Models(.Models.count).SearchRegion.Mode = roiOffsetSize
        .Models(.Models.count).SearchRegion.OffsetX = ref_Box.Left / ft_x&
        .Models(.Models.count).SearchRegion.OffsetY = ref_Box.Top / ft_y&
        .Models(.Models.count).SearchRegion.SizeX = ref_Box.Width / ft_x&
        .Models(.Models.count).SearchRegion.SizeY = ref_Box.Height / ft_y&
        
        .Models(.Models.count).SearchAngle.Enabled = True
'        .Models(.Models.Count).Preprocess
        .FindModel .Models.count

        If .Results.count = 0 Then
           '--bada 20090225
            Ptrn_Result_Quantity = 0
           '--bada 20090225
            Find_Model = 999
            Exit Function
        End If
        Ptrn_Result_Quantity = .Results.count
        ReDim Ptrn_Result(.Results.count - 1)
    
        For i& = 0 To .Results.count - 1
            Ptrn_Result(i&).Center_X = .Results(i& + 1).PositionX
            Ptrn_Result(i&).Center_Y = .Results(i& + 1).PositionY
            Ptrn_Result(i&).Size_X = .Models.Item(.Models.count).SizeX
            Ptrn_Result(i&).Size_Y = .Models.Item(.Models.count).SizeY
            Ptrn_Result(i&).Start_X = Ptrn_Result(i&).Center_X - (Ptrn_Result(i&).Size_X / 2)
            Ptrn_Result(i&).Start_Y = Ptrn_Result(i&).Center_Y - (Ptrn_Result(i&).Size_Y / 2)
            Ptrn_Result(i&).cScore = .Results(i& + 1).Score
            Ptrn_Result(i&).Degree = .Results(i& + 1).Angle
        Next i&
        
        If .Results.count = 1 Then
            Find_Model = .Results(1).Score
        End If
        
    End With

Exit Function
Error_Handdler:
    Open App.Path & "\PtrnClassErrorLog" & Format(Now, "YYYYMMDD") & " .log" For Append As #1
    Print #1, Format(Now, "HH:MM:SS") & "," & Err.Description
    Close #1

End Function
