Attribute VB_Name = "Jet"

Type ScanInfo
    
    lngOneBlockTotalScanCnt As Long
    lngOneBlockLastUseNzlCnt As Long
    
    lngTotalBlockCnt As Long
    lngLastBlockTotalScanCnt As Long
    lngLastBlockLastUseNzlCnt As Long
    
End Type

Function Get_BlockScanInfo(ByVal i_nStartNzlNo As Integer, _
                           ByVal i_nEndNzlNo As Integer, _
                           ByVal i_dSetXPitch_um, _
                           ByVal i_dPrintImageWidth_mm As Double) As ScanInfo

On Error GoTo syserr:
    
    Dim stScanInfo As ScanInfo
    
    nUseNzlCnt% = (i_nEndNzlNo - i_nStartNzlNo) + 1 ' 시작되는 자기자신 포함
    
    dOneBlockJetCnt# = NOZZLE_COUNT / nUseNzlCnt
    nOneBlockJetCnt% = Fix(dOneBlockJetCnt#)
    
    If (dOneBlockJetCnt# - nOneBlockJetCnt%) = 0 Then
        nOneBlockLastUseNzlCnt% = 0
        
        stScanInfo.lngOneBlockLastUseNzlCnt = 0
        stScanInfo.lngOneBlockTotalScanCnt = nOneBlockJetCnt%
    Else
        nOneBlockLastUseNzlCnt% = nUseNzlCnt% * (dOneBlockJetCnt# - nOneBlockJetCnt%)
        
        stScanInfo.lngOneBlockLastUseNzlCnt = nOneBlockLastUseNzlCnt%
        stScanInfo.lngOneBlockTotalScanCnt = nOneBlockJetCnt% + 1
    End If
    
    
    dSetXPitch_mm# = i_dSetXPitch_um / 1000
    
    dJustBlockCnt# = (i_dPrintImageWidth_mm) / (dSetXPitch_mm# * (NOZZLE_COUNT - 1))
    nJustBlockCnt% = Fix(dJustBlockCnt#)
        
    If (dJustBlockCnt# - nJustBlockCnt%) = 0 Then
        stScanInfo.lngLastBlockTotalScanCnt = 0
        stScanInfo.lngLastBlockLastUseNzlCnt = 0
        stScanInfo.lngTotalBlockCnt = nJustBlockCnt%
    Else
        dDiff# = dJustBlockCnt# - nJustBlockCnt%
        dLastNzlCnt# = NOZZLE_COUNT * dDiff#
                
        dLastScanCnt# = dLastNzlCnt# / nUseNzlCnt%
        nLastScnCnt% = Fix(dLastScanCnt#)
        
        dDiff# = dLastScanCnt# - nLastScnCnt%
        nLastBlockNzlCnt% = dDiff# * nUseNzlCnt%
        
        stScanInfo.lngLastBlockTotalScanCnt = nLastScnCnt% + 1
        stScanInfo.lngLastBlockLastUseNzlCnt = nLastBlockNzlCnt%
        stScanInfo.lngTotalBlockCnt = nJustBlockCnt% + 1
    End If
    
    
    Get_BlockScanInfo = stScanInfo
    
    
Exit Function
syserr:
    Get_BlockScanInfo = stScanInfo
    MsgBox Err.Description

End Function

Function Get_BlockScanSimpleInfo(ByVal i_nStartNzlNo As Integer, _
                                 ByVal i_nEndNzlNo As Integer, _
                                 ByVal i_dSetXPitch_um, _
                                 ByVal i_dPrintImageWidth_mm As Double, _
                                 ByRef i_lRtnTotalScanCnt As Long, _
                                 ByRef i_nRtnLastScanNzlCnt As Integer) As Boolean

On Error GoTo syserr:
    
    Dim stScanInfo As ScanInfo
    
    nUseNzlCnt% = (i_nEndNzlNo - i_nStartNzlNo) + 1
    nUseNzlCnt% = Round((nUseNzlCnt% / gPrintPara.nSetMultiple_Value) + 0.5)
    
    dXPitch_mm# = (i_dSetXPitch_um / 1000)
    dCalcTotalScanCnt# = i_dPrintImageWidth_mm / (nUseNzlCnt% * dXPitch_mm#)
    lTmpTotalScanCnt& = Fix(dCalcTotalScanCnt#)
    dDiff# = dCalcTotalScanCnt# - lTmpTotalScanCnt&
    
    If dDiff# = 0 Then
        i_nRtnLastScanNzlCnt = 0
        i_lRtnTotalScanCnt = lTmpTotalScanCnt&
    Else
        i_nRtnLastScanNzlCnt = dDiff# * nUseNzlCnt%
        i_lRtnTotalScanCnt = lTmpTotalScanCnt& + 1
    End If
    
    Get_BlockScanSimpleInfo = True
        
Exit Function
syserr:
    Get_BlockScanSimpleInfo = False
    MsgBox Err.Description

End Function

Function Get_ModifiedXPitchPara(ByVal i_dSetXPitch_um As Double, _
                                ByVal i_dPhysicXPitch_um As Double, _
                                ByRef i_dNewXPitch_um As Double, _
                                ByRef i_nRtnMultiple_Value As Integer, _
                                ByRef i_dRtnHeadAngle As Double) As Boolean
On Error GoTo syserr:
        
    dTmp# = i_dSetXPitch_um / i_dPhysicXPitch_um
    'dMultiPleValue# = Round(dTmp# + 0.5)
    
    nMultiPleValue% = Int(dTmp#)
    dDiff# = dTmp# - nMultiPleValue%
        
    If dDiff# > 0 Then
        nMultiPleValue% = nMultiPleValue% + 1
    End If
    
    i_nRtnMultiple_Value = nMultiPleValue%
    i_dNewXPitch_um = nMultiPleValue% * i_dPhysicXPitch_um
    i_dRtnHeadAngle = ArcCos(i_dSetXPitch_um / i_dNewXPitch_um)
    
    Get_ModifiedXPitchPara = True
    
Exit Function
syserr:
    MsgBox Err.Description
End Function

Function Get_UseNozzleCnt(ByRef i_nLiveNzlBuf() As Integer, ByVal i_nStartNzlNo As Integer) As Integer
On Error GoTo syserr:
    
    nUseNzlCnt% = 0
    For i% = (i_nStartNzlNo - 1) To NOZZLE_COUNT - 1 Step 1
        If i_nLiveNzlBuf(i%) = 1 Then
            nUseNzlCnt% = nUseNzlCnt% + 1
        End If
    Next i%
    
    Get_UseNozzleCnt = nUseNzlCnt% - 1
Exit Function
syserr:
    Get_UseNozzleCnt = -1
    MsgBox Err.Description
End Function

Function Get_UseSelectNozzleCnt(ByRef i_nLiveNzlBuf() As Integer, ByVal i_nStartNzlNo As Integer, ByVal i_nEndNzlNo As Integer) As Integer
On Error GoTo syserr:
    
    nUseNzlCnt% = 0
    For i% = (i_nStartNzlNo - 1) To (i_nEndNzlNo - 1) Step 1
        If i_nLiveNzlBuf(i%) = 1 Then
            nUseNzlCnt% = nUseNzlCnt% + 1
        End If
    Next i%
    
    Get_UseSelectNozzleCnt = nUseNzlCnt% - 1
Exit Function
syserr:
    Get_UseSelectNozzleCnt = -1
    MsgBox Err.Description
End Function
























