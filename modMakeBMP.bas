Attribute VB_Name = "modMakeBMP"
'Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (lpvDest As Any, lpvSource As Any, ByVal cbCopy As Long) '-- 어레이 복사 용

'-- 비트맵--
Type winBMPFileHeader
     strFileType As String * 2
     lngFileSize As Long
     bytReserved1 As Integer
     bytReserved2 As Integer
     lngBitmapOffset As Long
End Type

Type BITMAPINFOHEADER
     biSize As Long
     biWidth As Long
     biHeight As Long
     biPlanes As Integer
     byBitCount As Integer
     biCompression As Long
     biSizeImage As Long
     biXPelsPerMeter As Long
     biYPelsPerMeter As Long
     biClrUsed As Long
     biClrImportant As Long
End Type
Type BITMAPPalette
     lngBlue As Byte
     lngGreen As Byte
     lngRed As Byte
     lngReserved As Byte
End Type
'-- 비트맵 --
'-- 이미지 --
Public Type tagGlassInfo
    SizeX As Double
    SizeY As Double
    OffsetX As Double
    OffsetY As Double
    PannelWidth As Double
    PannelHeight As Double
    CountHor As Integer
    CountVer As Integer
    StepHor() As Double
    StepVer() As Double
End Type

Public Type tagImgInfo
    NzlPitch As Double
    ImgPitch As Double
    DotPitch As Double
    ActStartNzl As Integer
    ActEndNzl As Integer
    DropNum As Double
    BlockVlaue(0 To 15) As Double
End Type
'-- 이미지 --

Public curImg As tagImgInfo
Public curGlass As tagGlassInfo

Public rawData() As Byte

Private mk_imgScale As Double
Private mk_imgPitch As Double
Private mk_dotPitch As Double
Private mk_nzlPitch As Double
Private mk_size(0 To 1) As Double
Private mk_size_mm As Double
Private mk_img() As Byte
Private mk_actStart As Integer
Private mk_actEnd As Integer

Public mk_BlockValue(0 To 15)  As Double
Public mk_SelectBlock(0 To 15)  As Double
Public MK_INI_EDIT_INI As String

'Public Declare Function GetTickCount Lib "kernel32" () As Long
'Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
'Public Const HWND_TOPMOST = -1
'Public Const HWND_NOTOPMOST = -2
'Public Const SWP_NOSIZE = &H1
'Public Const SWP_NOMOVE = &H2
'Public Const SWP_NOACTIVATE = &H10
'Public Const SWP_SHOWWINDOW = &H40
'Public Declare Sub SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)
Public IMG_EDIT_INI As String

Type tagBitMapHor
    BitMapHor() As Byte
End Type
Type tagBa_Raw
    garo As Integer
    sero As Integer
    BitMapVer() As tagBitMapHor
End Type
Public LoadedRaw As tagBa_Raw
Public OutRaw As tagBa_Raw

Public DitherBasePattern(15) As tagBa_Raw


Public MDinHdFile(1) As String

Public Dither_32Matrix(31, 31) As Integer
Public Dither_BasePattern() As Byte


'Sub ctrlEnable(ByVal ipfl_Enable As Boolean, frm As Form)
'
'    Dim ctrl As Object
'    On Error Resume Next
'
'    For Each ctrl In frm.Controls
'        If ipfl_Enable Then
'            ctrl.Enabled = True
'        Else
'            ctrl.Enabled = False
'        End If
'    Next
'    If ipfl_Enable Then
'        frm.MousePointer = vbDefault
'    Else
'        frm.MousePointer = vbHourglass
'    End If
'
'End Sub

Sub OpenBMP_File(ByVal strpath As String, outImgInfo As tagImgInfo, strFullIniData As String)
    strFullIniData = GetBMPData(strpath)
    
    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"

    curImg.ActStartNzl = CInt(GetIniItem(MK_INI_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", 32, True))
    curImg.ActEndNzl = CInt(GetIniItem(MK_INI_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", 480, True))
    curImg.NzlPitch = CDbl(GetIniItem(MK_INI_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", 140, True))
    curImg.ImgPitch = CDbl(GetIniItem(MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", 20, True))
    curImg.DotPitch = CDbl(GetIniItem(MK_INI_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", 40, True))
    curImg.DropNum = CDbl(GetIniItem(MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", 100, True))

    outImgInfo.ActStartNzl = curImg.ActStartNzl
    outImgInfo.ActEndNzl = curImg.ActEndNzl
    outImgInfo.NzlPitch = curImg.NzlPitch
    outImgInfo.ImgPitch = curImg.ImgPitch
    outImgInfo.DropNum = curImg.DropNum
    
    For i% = 0 To 15
        curImg.BlockVlaue(i%) = CDbl(GetIniItem(MK_INI_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, 50, True))
        outImgInfo.BlockVlaue(i%) = CDbl(GetIniItem(MK_INI_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, 50, True))
        If curImg.BlockVlaue(i%) > 100 Then
            curImg.BlockVlaue(i%) = 100
            outImgInfo.BlockVlaue(i%) = 100
        End If
        If curImg.BlockVlaue(i%) < 50 Then
            curImg.BlockVlaue(i%) = 50
            outImgInfo.BlockVlaue(i%) = 50
        End If
    Next i%

    curGlass.SizeX = ((curImg.ActEndNzl - curImg.ActStartNzl + 1) * curImg.NzlPitch * 5) / 1000
    curGlass.SizeY = CDbl(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "GLASS_HEIGHT", 10, True))
    curGlass.OffsetX = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_X", 10, True))
    curGlass.OffsetY = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "GLASS_OFFSET_Y", 10, True))
    curGlass.PannelHeight = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "PANNEL_HEIGHT", 10, True))
    curGlass.PannelWidth = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "PANNEL_WIDTH", 10, True))
    curGlass.CountHor = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "COUNT_HOR", 1, True))
    curGlass.CountVer = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "COUNT_VER", 1, True))
    
    For i% = 1 To curGlass.CountHor - 1
        curGlass.StepHor(i%) = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "PANNEL_HOR_STEP_" & i%, 10, True))
    Next i%
    For i% = 1 To curGlass.CountVer - 1
        curGlass.StepVer(i%) = CInt(GetIniItem(MK_INI_EDIT_INI, "GLASS_INFO", "PANNEL_VER_STEP_" & i%, 10, True))
    Next i%
    
End Sub
Sub mkSampleBMP_D(mkCurimage As tagImgInfo)
    Dim nIndex As Integer
    
    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"

    mk_imgScale = 1 / CDbl(mkCurimage.ImgPitch)
    mk_imgPitch = mkCurimage.ImgPitch '* mk_imgScale
    mk_dotPitch = mkCurimage.DotPitch '* mk_imgScale
    mk_nzlPitch = mk_imgPitch ''
    mk_size(0) = mkCurimage.ActEndNzl
    mk_size(1) = 700 'mkCurimage.DropNum * 2 * mk_dotPitch
    mk_actStart = mkCurimage.ActStartNzl
    mk_actEnd = mkCurimage.ActEndNzl
    
    ReDim OutRaw.BitMapVer(0 To mk_size(1))
    
    '32x32 디더링 이미지를 모듈별 16개 생성
    Call Update_Dither_32Base_RawData(True, mk_size(1), curImg)
    
    '생성된 디더링 이미지로 전체 이미지 생성
    
    nIndex = 0
    For j# = 0 To mk_size(1)
        ReDim OutRaw.BitMapVer(j#).BitMapHor(1 To 512)
        k% = 1
        For i% = 0 To 15
            CopyMemory OutRaw.BitMapVer(j#).BitMapHor(k%), DitherBasePattern(i%).BitMapVer(nIndex).BitMapHor(0), 32
            k% = k% + 32
        Next i%
        nIndex = nIndex + 1
        If nIndex >= 32 Then
            nIndex = 0
        End If
    Next j#
    strtemp$ = App.Path & "\Data\Sample.bmp"
    mkRawData2
    CreateBMPImage2 strtemp$
    SetBMP_Info strtemp$, MK_INI_EDIT_INI
    
End Sub
Sub mkSampleBMP_File(mkCurimage As tagImgInfo, Optional ByVal adjust_block_value As Boolean = False)
'block 0 to 15
'real use 1 to 14

    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"

    mk_imgScale = 1 / CDbl(mkCurimage.ImgPitch)
    mk_imgPitch = mkCurimage.ImgPitch '* mk_imgScale
    mk_dotPitch = mkCurimage.DotPitch '* mk_imgScale
    mk_nzlPitch = mk_imgPitch ''
    mk_size(0) = mkCurimage.ActEndNzl
    mk_size(1) = 700 'mkCurimage.DropNum * 2 * mk_dotPitch
    mk_actStart = mkCurimage.ActStartNzl
    mk_actEnd = mkCurimage.ActEndNzl
    
    mkBasicImage
        If adjust_block_value = True Then
            For i% = 1 To 14
                If mkCurimage.BlockVlaue(i%) < 50 Then mkCurimage.BlockVlaue(i%) = 50
                adj_value% = CInt((CDbl(mkCurimage.BlockVlaue(i%)) * 1024 / 100) - 512)
                'If adj_value% <> 0 Then
                    AdjustBlockData strImageName, i%, adj_value%
                'End If
            Next i%
        End If
    strtemp$ = App.Path & "\Data\Sample.bmp"
    mkRawData
    CreateBMPImage strtemp$
    SetBMP_Info strtemp$, MK_INI_EDIT_INI

End Sub
Sub mkHeadBMP_File(mkCurimage As tagImgInfo, ByVal strImageName As String, ByVal head_index As Integer, Optional ByVal mkModuleBMP As Boolean = False)
'block 0 to 15
'real use 1 to 14
'On Error GoTo SysErr:
    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"
    'LoadBitmap App.Path & "\Data\Sample.bmp"

    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", mkCurimage.ActStartNzl ' cwnActNzl(0).Value
    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", mkCurimage.ActEndNzl ' cwnActNzl(1).Value
    
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", mkCurimage.NzlPitch ' cwnNzlPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", mkCurimage.ImgPitch ' cwnImgPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", mkCurimage.DotPitch 'cwnDotPitch.Value
    
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", mkCurimage.DropNum
    
    
    mk_imgScale = 1 / CDbl(mkCurimage.ImgPitch)
    mk_imgPitch = mkCurimage.ImgPitch ' * mk_imgScale
    mk_dotPitch = mkCurimage.DotPitch ''* mk_imgScale
    mk_nzlPitch = mk_imgPitch
    mk_size(0) = mkCurimage.ActEndNzl

    'mk_size(1) = (CDbl(mkCurimage.DropNum) * 2) * mk_dotPitch
    mk_size(1) = ((CDbl(mkCurimage.DropNum) * 2) * mk_dotPitch) / mk_imgPitch '이혁진 수정
    mk_actStart = mkCurimage.ActStartNzl
    mk_actEnd = mkCurimage.ActEndNzl
    
    mkBasicImage
    For i% = 1 To 14
        If mkCurimage.BlockVlaue(i%) < 50 Then mkCurimage.BlockVlaue(i%) = 50
        adj_value% = CInt((CDbl(mkCurimage.BlockVlaue(i%)) * 1024 / 100) - 512)
        'If adj_value% <> 0 Then
            AdjustBlockData strImageName, i%, adj_value%
        'End If
    Next i%
    
    For i% = 0 To 15
        If curImg.BlockVlaue(i%) > 100 Then
            curImg.BlockVlaue(i%) = 100
        End If
        If curImg.BlockVlaue(i%) < 50 Then
            curImg.BlockVlaue(i%) = 50
        End If
        SetIniItem MK_INI_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, mkCurimage.BlockVlaue(i%)
    Next i%

    If head_index <> 0 Then
        strtemp$ = ZalRa(strImageName, 1, ".bmp")
        strtemp$ = strtemp$ & "_h" & head_index & ".bmp"
    Else
        strtemp$ = strImageName
    End If
    
    mkRawData
    CreateBMPImage strtemp$
    If mkModuleBMP = True Then
        CreateModuleBMPImage strtemp$
    End If
    SetBMP_Info strtemp$, MK_INI_EDIT_INI
Exit Sub
syserr:
    MsgBox Err.Description
End Sub
Sub mkHeadBMP_File2(mkCurimage As tagImgInfo, ByVal strImageName As String, ByVal Module_index As Integer, Optional ByVal mkModuleBMP As Boolean = False)
'block 0 to 15
'real use 1 to 14
On Error GoTo syserr:
    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"
    'LoadBitmap App.Path & "\Data\Sample.bmp"

    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", mkCurimage.ActStartNzl ' cwnActNzl(0).Value
    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", mkCurimage.ActEndNzl ' cwnActNzl(1).Value

    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", mkCurimage.NzlPitch ' cwnNzlPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", mkCurimage.ImgPitch ' cwnImgPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", mkCurimage.DotPitch 'cwnDotPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", mkCurimage.DropNum

    mk_imgScale = 1 / CDbl(mkCurimage.ImgPitch)
    mk_imgPitch = mkCurimage.ImgPitch ' * mk_imgScale
    mk_dotPitch = mkCurimage.DotPitch ''* mk_imgScale
    mk_nzlPitch = mk_imgPitch
    mk_size(0) = mkCurimage.ActEndNzl
'    mk_size(1) = (mkCurimage.DropNum * 2 * mk_dotPitch) - mk_imgPitch
    mk_size_mm = (mk_dotPitch + ((mkCurimage.DropNum - 1) * (2 * mk_dotPitch)))
    mk_size(1) = Int(mk_size_mm * mk_imgScale)
    mk_actStart = mkCurimage.ActStartNzl
    mk_actEnd = mkCurimage.ActEndNzl

    mkBasicImage2
    For i% = 1 To 14
        If mkCurimage.BlockVlaue(i%) < 50 Then mkCurimage.BlockVlaue(i%) = 50
        adj_value% = CInt((CDbl((mkCurimage.BlockVlaue(i%)) * 1024) / 100) - 512)
        If adj_value% <> 0 Then
            AdjustBlockData2 strImageName, i%, adj_value%
        End If
    Next i%

    For i% = 0 To 15
        If curImg.BlockVlaue(i%) > 100 Then
            curImg.BlockVlaue(i%) = 100
        End If
        If curImg.BlockVlaue(i%) < 50 Then
            curImg.BlockVlaue(i%) = 50
        End If
        SetIniItem MK_INI_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, mkCurimage.BlockVlaue(i%)
    Next i%

    If Module_index <> 0 Then
        strtemp$ = ZalRa(strImageName, 1, ".bmp")
        'strtemp$ = strtemp$ & "_h" & head_index & ".bmp"
        strtemp$ = strtemp$ & "_MdNo" & Module_index & ".bmp"
    Else
        strtemp$ = strImageName
    End If

    mkRawData2

    CreateBMPImage2 strtemp$
    
    'Head별로 Image분할------------------------
    If mkModuleBMP = True Then
       CreateModuleBMPImage2 strtemp$
    End If
    'Head별로 Image분할------------------------
    
    SetBMP_Info strtemp$, MK_INI_EDIT_INI
Exit Sub
syserr:
    MsgBox Err.Description
    'Resume
End Sub
Sub mkHeadBMP_File_D(mkCurimage As tagImgInfo, ByVal strImageName As String, ByVal Module_index As Integer, Optional ByVal mkModuleBMP As Boolean = False)
'block 0 to 15
'real use 1 to 14
On Error GoTo syserr:

    Dim nIndex As Integer
    MK_INI_EDIT_INI = App.Path & "\Data\IMG_EDIT.ini"
    'LoadBitmap App.Path & "\Data\Sample.bmp"

    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_FIRST_NZL", mkCurimage.ActStartNzl ' cwnActNzl(0).Value
    SetIniItem MK_INI_EDIT_INI, "ACT_NZL", "ACT_LAST_NZL", mkCurimage.ActEndNzl ' cwnActNzl(1).Value

    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "NOZZLE_PITCH", mkCurimage.NzlPitch ' cwnNzlPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_PITCH", mkCurimage.ImgPitch ' cwnImgPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "DOT_PITCH", mkCurimage.DotPitch 'cwnDotPitch.Value
    SetIniItem MK_INI_EDIT_INI, "IMAGE_INFO", "IMAGE_DROP", mkCurimage.DropNum

    mk_imgScale = 1 / CDbl(mkCurimage.ImgPitch)
    mk_imgPitch = mkCurimage.ImgPitch ' * mk_imgScale
    mk_dotPitch = mkCurimage.DotPitch ''* mk_imgScale
    mk_nzlPitch = mk_imgPitch
    mk_size(0) = mkCurimage.ActEndNzl
'    mk_size(1) = (mkCurimage.DropNum * 2 * mk_dotPitch) - mk_imgPitch
    mk_size_mm = (mk_dotPitch + ((mkCurimage.DropNum - 1) * (2 * mk_dotPitch)))
    mk_size(1) = Int(mk_size_mm * mk_imgScale)
    mk_actStart = mkCurimage.ActStartNzl
    mk_actEnd = mkCurimage.ActEndNzl
    
    ReDim OutRaw.BitMapVer(0 To mk_size(1))
    
    For i% = 0 To 15
        If mkCurimage.BlockVlaue(i%) > 100 Then
            mkCurimage.BlockVlaue(i%) = 100
        End If
        If mkCurimage.BlockVlaue(i%) < 50 Then
            mkCurimage.BlockVlaue(i%) = 50
        End If
        SetIniItem MK_INI_EDIT_INI, "BLOCK_DATA", "BLOCK_" & i%, mkCurimage.BlockVlaue(i%)
    Next i%
    
    '32x32 디더링 이미지를 모듈별 16개 생성
    Call Update_Dither_32Base_RawData(True, mk_size(1), mkCurimage)
    
    '생성된 디더링 이미지로 전체 이미지 생성
    nIndex = 0
    For j# = 0 To mk_size(1)
        ReDim OutRaw.BitMapVer(j#).BitMapHor(1 To 512)
        k% = 1
        For i% = 0 To 15
            CopyMemory OutRaw.BitMapVer(j#).BitMapHor(k%), DitherBasePattern(i%).BitMapVer(nIndex).BitMapHor(0), 32
            k% = k% + 32
        Next i%
        nIndex = nIndex + 1
        If nIndex >= 32 Then
            nIndex = 0
        End If
    Next j#
    
    If Module_index <> 0 Then
        strtemp$ = ZalRa(strImageName, 1, ".bmp")
        'strtemp$ = strtemp$ & "_h" & head_index & ".bmp"
        strtemp$ = strtemp$ & "_MdNo" & Module_index & ".bmp"
    Else
        strtemp$ = strImageName
    End If

    mkRawData2
    CreateBMPImage2 strtemp$
    SetBMP_Info strtemp$, MK_INI_EDIT_INI
Exit Sub
syserr:
    MsgBox Err.Description
    'Resume
End Sub
Sub mkBasicImage()

    ReDim rawData(1 To mk_size(1), 1 To 512) As Byte

    For i# = 1 To mk_size(1) Step 1
        For j% = mk_imgPitch * mk_imgScale To 512
            rawData(i#, j%) = CByte(0) 'CByte(255)
        Next j%
        DoEvents
    Next i#

    For i# = mk_imgPitch To mk_size(1) / mk_imgScale Step mk_dotPitch
        YPos# = Int(CDbl(i#) / mk_imgPitch) * mk_imgPitch * mk_imgScale
        For j% = mk_actStart To mk_size(0) Step mk_imgPitch * mk_imgScale * 2
            rawData(YPos#, j%) = CByte(255) 'CByte(0)
        Next j%
        i# = i# + mk_dotPitch
        YPos# = Int(CDbl(i#) / mk_imgPitch) * mk_imgPitch * mk_imgScale
        If i# <= (mk_size(1) / mk_imgScale) Then
            For j% = mk_actStart + (mk_imgPitch * mk_imgScale) To mk_size(0) Step mk_imgPitch * mk_imgScale * 2
                rawData(YPos#, j%) = CByte(255) 'CByte(0)
            Next j%
        End If
        DoEvents
    Next i#

End Sub
Sub mkBasicImage2()
Dim b_arr(1 To 512) As Byte
Dim Hol_arr(1 To 512) As Byte
Dim Jak_arr(1 To 512) As Byte

    For i% = 1 To 512
        b_arr(i%) = CByte(0) 'CByte(255)
        Hol_arr(i%) = CByte(0) 'CByte(255)
        Jak_arr(i%) = CByte(0) 'CByte(255)
    Next i%
    For i% = mk_actStart To mk_size(0) Step 2
        Hol_arr(i%) = CByte(255) 'CByte(0)
    Next i%
    For i% = mk_actStart + 1 To mk_size(0) Step 2
        Jak_arr(i%) = CByte(255) 'CByte(0)
    Next i%
    
    ReDim OutRaw.BitMapVer(0 To mk_size(1))
    For Cnt# = 0 To mk_size(1)
        ReDim OutRaw.BitMapVer(Cnt#).BitMapHor(1 To 512)
        CopyMemory OutRaw.BitMapVer(Cnt#).BitMapHor(1), b_arr(1), 512
        DoEvents
    Next Cnt#

    For Cnt# = 0 To mk_size_mm Step mk_dotPitch

        YPos# = (Int(CDbl(Cnt#) / mk_imgPitch) * mk_imgPitch * mk_imgScale)
        CopyMemory OutRaw.BitMapVer(YPos#).BitMapHor(1), Hol_arr(1), 512

        Cnt# = Cnt# + mk_dotPitch
        YPos# = Int(CDbl(Cnt#) / mk_imgPitch) * mk_imgPitch * mk_imgScale
        CopyMemory OutRaw.BitMapVer(YPos#).BitMapHor(1), Jak_arr(1), 512
        DoEvents
    Next Cnt#

End Sub

Sub AdjustBlockData(ByVal strImageName As String, ByVal Block As Integer, ByVal pt_num As Integer)
Dim P(0 To 1) As Integer
    pat_size% = 32
    pat_count% = 0
    org_x% = 2
    org_y% = 1
    dot_color# = vbRed

    If pt_num > 256 Then
        pt_num = pt_num - 256
        AdjustBlockData strImageName, Block, pt_num
        org_x% = 1
        org_y% = 2
    Else
        org_x% = 2
        org_y% = 1
    End If
    
    For k% = 0 To 255 Step 64
        If k% > pt_num Then
            Exit Sub
        End If
        Select Case k%
            Case 0
                 shift_k_x% = 0
                 shift_k_y% = 0
            Case 64
                 shift_k_x% = pat_size% / 16
                 shift_k_y% = pat_size% / 16
            Case 128
                 shift_k_x% = pat_size% / 16
                 shift_k_y% = 0
            Case 192
                 shift_k_x% = 0
                 shift_k_y% = pat_size% / 16
        End Select
    
        For j% = 0 To 63 Step 16
            If j% > pt_num Then
                Exit Sub
            End If
            Select Case j%
                Case 0
                     shift_j_x% = shift_k_x%
                     shift_j_y% = shift_k_y%
                Case 16
                     shift_j_x% = shift_k_x% + pat_size% / 8
                     shift_j_y% = shift_k_y% + pat_size% / 8
                Case 32
                     shift_j_x% = shift_k_x% + pat_size% / 8
                     shift_j_y% = shift_k_y%
                Case 48
                     shift_j_x% = shift_k_x%
                     shift_j_y% = shift_k_y% + pat_size% / 8
            End Select
                
            For i% = 0 To 15 Step 4
                If i% > pt_num Then
                    Exit Sub
                End If
                Select Case i%
                    Case 0
                         P(0) = org_x% + shift_j_x%
                         P(1) = org_y% + shift_j_y%
                    Case 4
                         P(0) = org_x% + shift_j_x% + pat_size% / 4
                         P(1) = org_y% + shift_j_y% + pat_size% / 4
                    Case 8
                         P(0) = org_x% + shift_j_x% + pat_size% / 4
                         P(1) = org_y% + shift_j_y%
                    Case 12
                         P(0) = org_x% + shift_j_x%
                         P(1) = org_y% + shift_j_y% + pat_size% / 4
                End Select
                
                pat_index% = pt_num - (4 * pat_count%)
                If pat_index% > 4 Then pat_index% = 4
                Select Case pat_index%
                    Case 1
                        SetDot P(0), P(1), pat_size%, pat_size%, Block
                    Case 2
                        SetDot P(0), P(1), pat_size%, pat_size%, Block
                        SetDot P(0) + (pat_size% / 2), P(1) + (pat_size% / 2), pat_size%, pat_size%, Block
                    Case 3
                        SetDot P(0), P(1), pat_size%, pat_size%, Block
                        SetDot P(0) + (pat_size% / 2), P(1), pat_size%, pat_size%, Block
                        SetDot P(0), P(1) + (pat_size% / 2), pat_size%, pat_size%, Block
                    Case 4
                        SetDot P(0), P(1), pat_size% / 2, pat_size% / 2, Block
                End Select
                pat_count% = pat_count% + 1
            Next i%
            DoEvents
        Next j%
    Next k%

End Sub
Sub SetDot(ByVal off_x As Integer, ByVal off_y As Integer, ByVal inter_x As Integer, ByVal inter_Y As Integer, ByVal Block As Integer)

    start_block% = mk_actStart - 1 + ((Block - 1) * 32)
    end_block% = start_block% + 32
    tmp_impPitch# = mk_imgPitch * mk_imgScale
    tmp_dotPitch# = mk_dotPitch * mk_imgScale
    For i% = tmp_impPitch# + (tmp_impPitch# * (off_y - 1)) To mk_size(1) Step tmp_impPitch# * inter_Y
        For j% = ((tmp_impPitch# * (start_block))) + (tmp_impPitch# * off_x) To (end_block * tmp_impPitch#) Step tmp_impPitch# * inter_x
            rawData(i%, j%) = CByte(255) 'CByte(80)'이혁진
        Next j%
    Next i%

End Sub
Sub AdjustBlockData2(ByVal strImageName As String, ByVal Block As Integer, ByVal pt_num As Integer)
Dim P(0 To 1) As Integer
    pat_size% = 32
    pat_count% = 0
    org_x% = 2
    org_y% = 1
    dot_color# = vbRed

    If pt_num > 256 Then
        pt_num = pt_num - 256
        AdjustBlockData2 strImageName, Block, pt_num
        org_x% = 1
        org_y% = 2
    Else
        org_x% = 2
        org_y% = 1
    End If
    
    For k% = 0 To 255 Step 64
        If k% > pt_num Then
            Exit Sub
        End If
        Select Case k%
            Case 0
                 shift_k_x% = 0
                 shift_k_y% = 0
            Case 64
                 shift_k_x% = pat_size% / 16
                 shift_k_y% = pat_size% / 16
            Case 128
                 shift_k_x% = pat_size% / 16
                 shift_k_y% = 0
            Case 192
                 shift_k_x% = 0
                 shift_k_y% = pat_size% / 16
        End Select
    
        For j% = 0 To 63 Step 16
            If j% > pt_num Then
                Exit Sub
            End If
            Select Case j%
                Case 0
                     shift_j_x% = shift_k_x%
                     shift_j_y% = shift_k_y%
                Case 16
                     shift_j_x% = shift_k_x% + pat_size% / 8
                     shift_j_y% = shift_k_y% + pat_size% / 8
                Case 32
                     shift_j_x% = shift_k_x% + pat_size% / 8
                     shift_j_y% = shift_k_y%
                Case 48
                     shift_j_x% = shift_k_x%
                     shift_j_y% = shift_k_y% + pat_size% / 8
            End Select
                
            For i% = 0 To 15 Step 4
                If i% > pt_num Then
                    Exit Sub
                End If
                Select Case i%
                    Case 0
                         P(0) = org_x% + shift_j_x%
                         P(1) = org_y% + shift_j_y%
                    Case 4
                         P(0) = org_x% + shift_j_x% + pat_size% / 4
                         P(1) = org_y% + shift_j_y% + pat_size% / 4
                    Case 8
                         P(0) = org_x% + shift_j_x% + pat_size% / 4
                         P(1) = org_y% + shift_j_y%
                    Case 12
                         P(0) = org_x% + shift_j_x%
                         P(1) = org_y% + shift_j_y% + pat_size% / 4
                End Select
                
                pat_index% = pt_num - (4 * pat_count%)
                If pat_index% > 4 Then pat_index% = 4
                Select Case pat_index%
                    Case 1
                        SetDot2 P(0), P(1), pat_size%, pat_size%, Block
                    Case 2
                        SetDot2 P(0), P(1), pat_size%, pat_size%, Block
                        SetDot2 P(0) + (pat_size% / 2), P(1) + (pat_size% / 2), pat_size%, pat_size%, Block
                    Case 3
                        SetDot2 P(0), P(1), pat_size%, pat_size%, Block
                        SetDot2 P(0) + (pat_size% / 2), P(1), pat_size%, pat_size%, Block
                        SetDot2 P(0), P(1) + (pat_size% / 2), pat_size%, pat_size%, Block
                    Case 4
                        SetDot2 P(0), P(1), pat_size% / 2, pat_size% / 2, Block
                End Select
                pat_count% = pat_count% + 1
            Next i%
            DoEvents
        Next j%
    Next k%

End Sub
Sub SetDot2(ByVal off_x As Integer, ByVal off_y As Integer, ByVal inter_x As Integer, ByVal inter_Y As Integer, ByVal Block As Integer)

    start_block% = mk_actStart - 1 + ((Block - 1) * 32)
    end_block% = start_block% + 32
    tmp_impPitch# = mk_imgPitch * mk_imgScale
    tmp_dotPitch# = mk_dotPitch * mk_imgScale
    For Cnt# = (tmp_dotPitch# * (off_y - 1)) To mk_size(1) Step tmp_dotPitch# * inter_Y
        For j% = ((tmp_impPitch# * (start_block))) + (tmp_impPitch# * off_x) To (end_block * tmp_impPitch#) Step tmp_impPitch# * inter_x
            OutRaw.BitMapVer(Cnt#).BitMapHor(j%) = CByte(255)
        Next j%
    Next Cnt#

End Sub
Sub mkRawData()
    If Dir(App.Path & "\Data", vbDirectory) = "" Then
        MkDir App.Path & "\Data"
    End If
    If Dir(App.Path & "\Data\CurRawData.raw") <> "" Then
        Kill App.Path & "\Data\CurRawData.raw"
    End If
    
    Open App.Path & "\Data\CurRawData.raw" For Binary As #1
        For i# = mk_imgPitch * mk_imgScale To mk_size(1) Step 1
            For j% = mk_imgPitch * mk_imgScale To 512
                Put #1, , rawData(i#, j%)
            Next j%
            DoEvents
        Next i#
    Close #1
End Sub
Sub mkRawData2()
    If Dir(App.Path & "\Data", vbDirectory) = "" Then
        MkDir App.Path & "\Data"
    End If
    If Dir(App.Path & "\Data\CurRawData.raw") <> "" Then
        Kill App.Path & "\Data\CurRawData.raw"
    End If
    
    Open App.Path & "\Data\CurRawData.raw" For Binary As #1
        For Cnt# = 0 To mk_size(1)
                Put #1, , OutRaw.BitMapVer(Cnt#).BitMapHor
            DoEvents
        Next Cnt#
    Close #1
End Sub
Sub mkRawData_SaveAS(ipFilePath As String)

    If Dir(ipFilePath) <> "" Then
        Kill ipFilePath
    End If
    
    Open ipFilePath For Binary As #1
        For Cnt# = 0 To mk_size(1)
                Put #1, , OutRaw.BitMapVer(Cnt#).BitMapHor
            DoEvents
        Next Cnt#
    Close #1
    
End Sub
Public Sub CreateBMPImage(ByVal strImageName As String)

    Dim BMPHeader As winBMPFileHeader
    Dim BMPInfo As BITMAPINFOHEADER
    Dim BMPPalette As BITMAPPalette
    Dim pbytColor As Byte
    Dim pdblCounter As Double
    Dim rawData() As Byte
         
    'On Error GoTo SysErr
    If Dir(strImageName) <> "" Then
        Kill strImageName
    End If
    
    Open strImageName For Binary As #2

    BMPInfo.biSize = 40
    BMPInfo.biWidth = 512
    BMPInfo.biHeight = mk_size(1)
    BMPInfo.biPlanes = 1
    BMPInfo.byBitCount = 8
    BMPInfo.biCompression = 0
    BMPInfo.biSizeImage = 512 * mk_size(1)
    BMPInfo.biXPelsPerMeter = 0
    BMPInfo.biYPelsPerMeter = 0
    BMPInfo.biClrUsed = 0
    BMPInfo.biClrImportant = 0
    
    BMPHeader.strFileType = "BM"
    BMPHeader.lngFileSize = BMPInfo.biSizeImage + 1078
    BMPHeader.bytReserved1 = 0
    BMPHeader.bytReserved2 = 0
    BMPHeader.lngBitmapOffset = 1078
             
    Put #2, , BMPHeader
    Put #2, , BMPInfo
         
    Open App.Path & "\Data\BMP_Palette.bny" For Binary As #3
       For pdblCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
            Get #3, , BMPPalette
            Put #2, , BMPPalette
       Next pdblCounter
    Close #3
    
    ReDim rawData(mk_size(1), 512) As Byte
    Dim intColumn As Integer, intRow As Double '이혁진 수정 -> 원래 Integer

    Open App.Path & "\Data\CurRawData.raw" For Binary As #4
    
       For intRow = 1 To mk_size(1)
           For intColumn = 1 To 512
               Get #4, , rawData(intRow, intColumn)
           Next intColumn
           DoEvents
       Next intRow
       
       pdblCounter = 0
       
       For intRow = mk_size(1) To 1 Step -1
           For intColumn = 1 To 512
             
             Put #2, , rawData(intRow, intColumn)
             pdblCounter = pdblCounter + 1
             If pdblCounter = BMPInfo.biWidth Then
                  If BMPInfo.biWidth \ 4 <> 0 Then
                       
                       For pdblCounter = 1 To BMPInfo.biWidth Mod 4
                            pbytColor = 0
                            Put #2, , pbytColor
                       Next pdblCounter
                       pdblCounter = 0
                  
                  End If
             End If
           Next intColumn
           DoEvents
        Next intRow
    
    Close
     
Exit Sub

syserr:
MsgBox Err.Description
Close
End Sub
Public Sub CreateBMPImage2(ByVal strImageName As String)
Dim BMPHeader As winBMPFileHeader
Dim BMPInfo As BITMAPINFOHEADER
Dim BMPPalette As BITMAPPalette
Dim pbytColor As Byte
Dim pdblCounter As Double
Dim rawData() As Byte
         
On Error GoTo syserr
    If Dir(strImageName) <> "" Then
        Kill strImageName
    End If
    
    Open strImageName For Binary As #2
    
    BMPInfo.biSize = 40
    BMPInfo.biWidth = 512
    BMPInfo.biHeight = mk_size(1) + 1
    BMPInfo.biPlanes = 1
    BMPInfo.byBitCount = 8
    BMPInfo.biCompression = 0
    BMPInfo.biSizeImage = 512 * (mk_size(1) + 1)
    BMPInfo.biXPelsPerMeter = 0
    BMPInfo.biYPelsPerMeter = 0
    BMPInfo.biClrUsed = 0
    BMPInfo.biClrImportant = 0
    
    BMPHeader.strFileType = "BM"
    BMPHeader.lngFileSize = BMPInfo.biSizeImage + 1078
    BMPHeader.bytReserved1 = 0
    BMPHeader.bytReserved2 = 0
    BMPHeader.lngBitmapOffset = 1078
             
    Put #2, , BMPHeader
    Put #2, , BMPInfo
         
    Open App.Path & "\Data\BMP_Palette.bny" For Binary As #3
       For pdblCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
            Get #3, , BMPPalette
            Put #2, , BMPPalette
       Next pdblCounter
    Close #3
    
       
       Dim tmpArr(1 To 512) As Byte
       
       
       For Cnt# = mk_size(1) To 0 Step -1
             CopyMemory tmpArr(1), OutRaw.BitMapVer(Cnt#).BitMapHor(1), 512
             Put #2, , tmpArr

           DoEvents
       Next Cnt#

'
'       pdblCounter = 0
'       For Cnt# = mk_size(1) To 0 Step -1
'
'             Put #2, , OutRaw.BitMapVer(Cnt#).BitMapHor
'             pdblCounter = pdblCounter + 1
'             If pdblCounter = BMPInfo.biWidth Then
'                  If BMPInfo.biWidth \ 4 <> 0 Then
'
'                       For pdblCounter = 1 To BMPInfo.biWidth Mod 4
'                            pbytColor = 0
'                            Put #2, , pbytColor '
'                       Next pdblCounter
'                       pdblCounter = 0
'
'                  End If
'             End If
'           DoEvents
'        Next Cnt#
    
    Close
     
Exit Sub

syserr:
MsgBox Err.Description
Close
End Sub

Public Sub CreateModuleBMPImage(ByVal strImageName As String)

    Dim BMPHeader As winBMPFileHeader
    Dim BMPInfo As BITMAPINFOHEADER
    Dim BMPPalette As BITMAPPalette
    Dim pbytColor As Byte
    Dim pdblCounter As Double
    Dim rawData() As Byte
             
    On Error GoTo syserr

    ReDim rawData(mk_size(1), (512)) As Byte
    Dim intColumn As Integer, intRow As Double '이혁진 기존 INTEGER
    Open App.Path & "\Data\CurRawData.raw" For Binary As #4
    
       For intRow = 1 To mk_size(1)
           For intColumn = 1 To 512
               Get #4, , rawData(intRow, intColumn)
           Next intColumn
           DoEvents
       Next intRow
    Close #4
For k% = 0 To 1
    If k% = 0 Then
        strtemp$ = ZalRa(strImageName, 1, ".bmp")
        strtemp$ = strtemp$ & "_m0.bmp"
    Else
        strtemp$ = ZalRa(strImageName, 1, ".bmp")
        strtemp$ = strtemp$ & "_m1.bmp"
    End If
    If Dir(strtemp$) <> "" Then
        Kill strtemp$
    End If
    
    Open strtemp$ For Binary As #2
    
        BMPInfo.biSize = 40
        BMPInfo.biWidth = 512 / 2
        BMPInfo.biHeight = mk_size(1)
        BMPInfo.biPlanes = 1
        BMPInfo.byBitCount = 8
        BMPInfo.biCompression = 0
        BMPInfo.biSizeImage = (512 / 2) * mk_size(1)
        BMPInfo.biXPelsPerMeter = 0
        BMPInfo.biYPelsPerMeter = 0
        BMPInfo.biClrUsed = 0
        BMPInfo.biClrImportant = 0
        
        BMPHeader.strFileType = "BM"
        BMPHeader.lngFileSize = BMPInfo.biSizeImage + 1078
        BMPHeader.bytReserved1 = 0
        BMPHeader.bytReserved2 = 0
        BMPHeader.lngBitmapOffset = 1078
                 
        Put #2, , BMPHeader
        Put #2, , BMPInfo
             
        Open App.Path & "\Data\BMP_Palette.bny" For Binary As #3
           For pdblCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
                Get #3, , BMPPalette
                Put #2, , BMPPalette
           Next pdblCounter
        Close #3
           
        pdblCounter = 0
        
        For intRow = mk_size(1) To 1 Step -1
            For intColumn = 1 + k% To 512 Step 2
              
              Put #2, , rawData(intRow, intColumn)
              pdblCounter = pdblCounter + 1
              If pdblCounter = BMPInfo.biWidth Then
                   If BMPInfo.biWidth \ 4 <> 0 Then
                        
                        For pdblCounter = 1 To BMPInfo.biWidth Mod 4
                             pbytColor = 0
                             Put #2, , pbytColor
                        Next pdblCounter
                        pdblCounter = 0
                   
                   End If
              End If
              
            Next intColumn
            DoEvents
         Next intRow
    
    Close #2
Next k%
Exit Sub

syserr:
MsgBox Err.Description
Debug.Assert 0
Close
End Sub
Public Sub CreateModuleBMPImage2(ByVal strImageName As String)

    Dim BMPHeader As winBMPFileHeader
    Dim BMPInfo As BITMAPINFOHEADER
    Dim BMPPalette As BITMAPPalette
    Dim pbytColor As Byte
    Dim pdblCounter As Double
    Dim rawData() As Byte
             
    On Error Resume Next 'syserr


    strtemp$ = ZalRa(strImageName, 1, ".bmp")
    
    strtemp1$ = strtemp$ & "_0.bmp"
    MDinHdFile(0) = strtemp1$
    
    If Dir(strtemp1$) <> "" Then
        Kill strtemp1$
    End If
    
    strtemp2$ = strtemp$ & "_1.bmp"
    MDinHdFile(1) = strtemp2$
    
    If Dir(strtemp1$) <> "" Then
        Kill strtemp1$
    End If
    If Dir(strtemp2$) <> "" Then
        Kill strtemp$
    End If
    
    Open strtemp1$ For Binary As #2
    Open strtemp2$ For Binary As #3
    
        BMPInfo.biSize = 40
        BMPInfo.biWidth = 512 / 2
        BMPInfo.biHeight = (mk_size(1) + 1)
        BMPInfo.biPlanes = 1
        BMPInfo.byBitCount = 8
        BMPInfo.biCompression = 0
        BMPInfo.biSizeImage = (512 / 2) * (mk_size(1) + 1)
        BMPInfo.biXPelsPerMeter = 0
        BMPInfo.biYPelsPerMeter = 0
        BMPInfo.biClrUsed = 0
        BMPInfo.biClrImportant = 0
        
        BMPHeader.strFileType = "BM"
        BMPHeader.lngFileSize = BMPInfo.biSizeImage + 1078
        BMPHeader.bytReserved1 = 0
        BMPHeader.bytReserved2 = 0
        BMPHeader.lngBitmapOffset = 1078
                 
        Put #2, , BMPHeader
        Put #2, , BMPInfo
        Put #3, , BMPHeader
        Put #3, , BMPInfo
             
        Open App.Path & "\Data\BMP_Palette.bny" For Binary As #4
           For pdblCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
                Get #4, , BMPPalette
                Put #2, , BMPPalette
                Put #3, , BMPPalette
           Next pdblCounter
        Close #4
        
    Dim tmpArr(1 To 256) As Byte
    
        For Cnt# = mk_size(1) To 0 Step -1
            For i% = 1 To 256
                tmpArr(i%) = OutRaw.BitMapVer(Cnt#).BitMapHor((i% * 2) - 1)
            Next i%
            Put #2, , tmpArr
            For i% = 1 To 256
                tmpArr(i%) = OutRaw.BitMapVer(Cnt#).BitMapHor(i% * 2)
            Next i%
            Put #3, , tmpArr
            DoEvents
        Next Cnt#
''
''        pdblCounter = 0
''
''        For Cnt# = mk_size(1) To 0 Step -1
''            For intColumn = 1 To 512
''
''              Put #2, , OutRaw.BitMapVer(Cnt#).BitMapHor(intColumn)
''              intColumn = intColumn + 1
''              Put #3, , OutRaw.BitMapVer(Cnt#).BitMapHor(intColumn)
''
''            Next intColumn
''            'frmImageEdit.Label8.Caption = Cnt#
''           DoEvents
''         Next Cnt#
    Close #2
    Close #3
Exit Sub

syserr:
MsgBox Err.Description
Debug.Assert 0
'Resume
Close
End Sub


Sub LoadBMPPalette(picName As String)

    On Error GoTo syserr:
    Dim BMPHeader As winBMPFileHeader
    Dim BMPInfo As BITMAPINFOHEADER
    Dim BMPPalette As BITMAPPalette

     Open picName For Binary As #1
        Get #1, , BMPHeader
        
        Debug.Print BMPHeader.strFileType
        Debug.Print BMPHeader.lngFileSize
        Debug.Print BMPHeader.bytReserved1
        Debug.Print BMPHeader.bytReserved2
        Debug.Print BMPHeader.lngBitmapOffset
        
        Get #1, , BMPInfo
        Debug.Print BMPInfo.biSize
        Debug.Print BMPInfo.biWidth
        Debug.Print BMPInfo.biHeight
        Debug.Print BMPInfo.biPlanes
        Debug.Print BMPInfo.byBitCount
        Debug.Print BMPInfo.biCompression
        Debug.Print BMPInfo.biSizeImage
        Debug.Print BMPInfo.biXPelsPerMeter
        Debug.Print BMPInfo.biYPelsPerMeter
        Debug.Print BMPInfo.biClrUsed
        Debug.Print BMPInfo.biClrImportant
     
        If Dir(App.Path & "\Data\BMP_Palette.bny") <> "" Then
            Kill App.Path & "\Data\BMP_Palette.bny"
        End If
        
        Open App.Path & "\Data\BMP_Palette.bny" For Binary As #2
            For lngCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
                 Get #1, , BMPPalette
                 Put #2, , BMPPalette
            Next lngCounter
        Close #2
     Close #1
     
Exit Sub

syserr:
     MsgBox Err.Description
     Close
End Sub

Function GetBMPData(ByVal strBMP_Path As String) As String

    Dim bmpHdr As winBMPFileHeader
    Dim length As Integer
    Dim Data As String

    Open strBMP_Path For Binary As #1
        Get #1, , bmpHdr
        If bmpHdr.bytReserved1 = 777 Then
        
            Seek #1, bmpHdr.lngFileSize
            Get #1, , length
            Data = Space$(length)
            Seek #1, bmpHdr.lngFileSize + 4
            Get #1, , Data
        
            If InStr(1, Data, vbNullChar) <> 0 Then
                Data = Left$(Data, InStr(1, Data, vbNullChar) - 1)
            End If
            Open App.Path & "\Data\IMG_EDIT.ini" For Output As #2
                Print #2, Data
            Close #2
            
        End If
    Close #1
    GetBMPData = Data
    
End Function


Sub SetBMP_Info(ByVal strBMP_Path As String, ByVal strINI_Path As String)
On Error GoTo syserr
    Dim bmpHdr As winBMPFileHeader
    Dim length As Long
    Dim INI_STR As String
    'frmBMP_Info.Show
    
    INI_STR = ""
    Open strINI_Path For Input As #1
        While Not EOF(1)
            Line Input #1, read_line$
            INI_STR = INI_STR & read_line$ & vbCrLf
        Wend
    Close #1
    Debug.Print strBMP_Path
    Open strBMP_Path For Binary As #1
        Get #1, , bmpHdr
        bmpHdr.bytReserved1 = 777
        Seek #1, 1
        Put #1, , bmpHdr
        Seek #1, bmpHdr.lngFileSize
        length = LenB(StrConv(INI_STR, vbFromUnicode))
        Put #1, , length
        Put #1, , INI_STR & vbNullChar
    Close #1
Exit Sub
syserr:
Debug.Print Err.Description
Debug.Assert 0
'Resume
Close
End Sub

'20090403 bada
Function GetIniItem(ByVal strIni$, ByVal strSec$, ByVal strKey$, _
                    Optional ByVal strDef$ = "ERROR", _
                    Optional ByVal bForceSaveForEmpty As Boolean = False) As String
    On Error GoTo syserror
    Dim strtmp  As String
    Dim dwRet   As Long
    Dim strRealDef As String

'-- Keep Real One 040512 bada
strRealDef = strDef

    strtmp = Space(512)
    dwRet = GetPrivateProfileString(strSec, strKey, "@#$ERROR@#$", strtmp, 512, strIni)

'-- Use Default When Parameter Is Not Provided In Ini File @050512
strtmp = Trim(strtmp)
If Mid(strtmp, 1, 11) = "@#$ERROR@#$" Then
    strtmp = strRealDef
    dwRet = Len(strtmp)
    '+-- Added 050623 bada: Force Setting Default For Empty Parameter(Usually For New One)
    If bForceSaveForEmpty Then
       'VBTRACE "Force saving the item " & strKey & " = " & strtmp
        SetIniItem strIni, strSec, strKey, strtmp
    End If
    '+--
End If

    GetIniItem = Left$(strtmp, dwRet)
    Exit Function
syserror:
    'LogSysErr "GetIniItem()"
    Debug.Assert 0
End Function

'20090403 bada
Function SetIniItem(ByVal strIni$, ByVal strSec$, ByVal strKey$, ByVal strItem$) As String
    On Error GoTo syserror
    SetIniItem = WritePrivateProfileString(strSec$, strKey$, strItem$, strIni$)
    Exit Function
syserror:
    Debug.Assert 0
End Function

Public Function ZalRa$(ByVal strTarget$, ByVal i_num%, ByVal strMark$)

    t_str$ = strTarget & strMark
    For i% = 1 To i_num
        cur_num = InStr(t_str$, strMark)
        If cur_num Then
            If i% = i_num Then
                ZalRa$ = Trim$(Left$(t_str$, cur_num - 1))
                Exit For
            End If
            If cur_num = Len(t_str$) Then
                ZalRa$ = ""
                Exit For
            End If
            t_str$ = Mid$(t_str$, cur_num + Len(strMark))
        Else
            ZalRa$ = Trim$(t_str$)
            Exit For
        End If
    Next i%
    
End Function

Sub Dither_Load_32_Matrix(ByVal ipCSV_Filename As String)

    Dim ReadLine As String
    Dim ReadGridData As Variant
    Dim Row_Cnt As Integer
    Dim Col_Cnt As Integer
    'On Error Resume Next
    
    If Dir(ipCSV_Filename) = "" Then
        MsgBox "Dither Pattern file missing!!!", vbExclamation
        Exit Sub
    End If
    
    Open ipCSV_Filename For Input As #1
    Do While Not EOF(1)
        DoEvents
        Line Input #1, ReadLine
        ReadGridData = Split(ReadLine, ",")
        For Col_Cnt = 0 To 31
            Dither_32Matrix(Row_Cnt, Col_Cnt) = ReadGridData(Col_Cnt)
        Next Col_Cnt
        Row_Cnt = Row_Cnt + 1
    Loop
    Close #1

End Sub
'Sub Dither_32Base_Update_RawDataxxx(ipUpdatePercents As Double, ipFlag_Negative As Boolean, ipBlock As Integer)
'
'    Dim Row_Cnt As Integer
'    Dim Col_Cnt As Integer
'    Dim Nega_Flag As Integer
'    Dim compPara As Double
'    Dim InPutPercents As Double
'    Dim tmp_PatternFileName As String
'    Dim tmp_PalletFileName As String
'    Dim Index_Cnt As Long
'
'    Dim BMPHeader As winBMPFileHeader
'    Dim BMPInfo As BITMAPINFOHEADER
'    Dim BMPPalette As BITMAPPalette
'    Dim pbytColor As Byte
'    Dim pdblCounter As Double
'
'    pdblCounter = 0
'
'    If ipFlag_Negative = True Then
'        Nega_Flag = 255
'    Else
'        Nega_Flag = 0
'    End If
'
'    tmp_PatternFileName = App.Path & "\32by32Ptrn.bmp"
'    tmp_PalletFileName = App.Path & "\Data\BMP_Palette.bny"
'
'    BMPInfo.biSize = 40
'    BMPInfo.biWidth = 32
'    BMPInfo.biHeight = 32
'    BMPInfo.biPlanes = 1
'    BMPInfo.byBitCount = 8
'    BMPInfo.biCompression = 0
'    BMPInfo.biSizeImage = 32 * 32
'    BMPInfo.biXPelsPerMeter = 0
'    BMPInfo.biYPelsPerMeter = 0
'    BMPInfo.biClrUsed = 0
'    BMPInfo.biClrImportant = 0
'
'    BMPHeader.strFileType = "BM"
'    BMPHeader.lngFileSize = BMPInfo.biSizeImage + 1078
'    BMPHeader.bytReserved1 = 0
'    BMPHeader.bytReserved2 = 0
'    BMPHeader.lngBitmapOffset = 1078
'
'
'    Open tmp_PatternFileName For Binary As #1
'    Open tmp_PalletFileName For Binary As #2
'    Put #1, , BMPHeader
'    Put #1, , BMPInfo
'
'    For pdblCounter = 1 To (BMPHeader.lngBitmapOffset - 54) / Len(BMPPalette)
'         Get #2, , BMPPalette
'         Put #1, , BMPPalette
'    Next pdblCounter
'
'    InPutPercents = Round(ipUpdatePercents, 2)
'    compPara = 1024 * (InPutPercents / 100)
'
'    For Row_Cnt = 0 To 31
'        For Col_Cnt = 0 To 31
'            If Dither_32Matrix(Row_Cnt, Col_Cnt) > compPara Then
'                Dither_BasePattern(Row_Cnt, Col_Cnt) = Abs(255 - Nega_Flag)
'            Else
'                Dither_BasePattern(Row_Cnt, Col_Cnt) = Abs(0 - Nega_Flag)
'            End If
'
'        Next Col_Cnt
'    Next Row_Cnt
'
'    For Row_Cnt = 32 To 1 Step -1
'        For Col_Cnt = 1 To 32
'
'          Put #1, , Dither_BasePattern(Row_Cnt - 1, Col_Cnt - 1)
'          pdblCounter = pdblCounter + 1
'          If pdblCounter = BMPInfo.biWidth Then
'               If BMPInfo.biWidth \ 4 <> 0 Then
'
'                    For pdblCounter = 1 To BMPInfo.biWidth Mod 4
'                         pbytColor = 0
'                         Put #1, , pbytColor
'                    Next pdblCounter
'                    pdblCounter = 0
'
'               End If
'          End If
'        Next Col_Cnt
'        DoEvents
'     Next Row_Cnt
'
'    Close #1
'    Close #2
'
'End Sub
Sub Update_Dither_32Base_RawData(ipFlag_Negative As Boolean, ipSizeY As Double, ipCurimage As tagImgInfo)
    
    Dim Ver_Cnt As Integer
    Dim Hor_Cnt As Integer
    Dim Nega_Flag As Integer
    Dim compPara As Double
    Dim InPutPercents As Double
    
    If ipFlag_Negative = True Then
        Nega_Flag = 255
    Else
        Nega_Flag = 0
    End If
    
    For i% = 0 To 15
        InPutPercents = Round(ipCurimage.BlockVlaue(i%), 2)
        compPara = 1024 * (InPutPercents / 100)
        ReDim DitherBasePattern(i%).BitMapVer(0 To 31)
        For Ver_Cnt = 0 To 31
            ReDim DitherBasePattern(i%).BitMapVer(Ver_Cnt).BitMapHor(0 To 31)
            For Hor_Cnt = 0 To 31
                If Dither_32Matrix(Ver_Cnt, Hor_Cnt) >= compPara Then
                    DitherBasePattern(i%).BitMapVer(Ver_Cnt).BitMapHor(Hor_Cnt) = Abs(255 - Nega_Flag)
                Else
                    DitherBasePattern(i%).BitMapVer(Ver_Cnt).BitMapHor(Hor_Cnt) = Abs(0 - Nega_Flag)
                End If
                '처음 노즐 두개 스킵
                If i% = 0 And Hor_Cnt <= 1 Then
                    DitherBasePattern(i%).BitMapVer(Ver_Cnt).BitMapHor(Hor_Cnt) = Abs(255 - Nega_Flag)
                End If
                '마지막 노즐 두개 스킵
                If i% = 15 And Hor_Cnt >= 30 Then
                    DitherBasePattern(i%).BitMapVer(Ver_Cnt).BitMapHor(Hor_Cnt) = Abs(255 - Nega_Flag)
                End If
            Next Hor_Cnt
        Next Ver_Cnt
        DoEvents
    Next i%
    
    
End Sub

