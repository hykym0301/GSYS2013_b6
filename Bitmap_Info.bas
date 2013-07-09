Attribute VB_Name = "Bitmap_Info"
Public Type BitmapData
    FIleTypeStr As String
    FileSize As Double
    HeaderSize As Double
    RealImgSize As Double
    ImgHorSize As Double
    ImgVerSize As Double
    ImgColorBit As Double
End Type

Function Bitmap_Raw_Convert(ipSourceImagePath As String, ipDestinationImagePath As String, rtnBItmapData As BitmapData) As Long

    Dim FIleFormatCheck(0 To 31) As Byte
    Dim ReadingByte() As Byte
    Dim WritingByte() As Byte
    
    Bitmap_Raw_Convert = 1 'Converting Start
    
    Const SourceFileNo As Double = 1#
    Const DestnationFileNo As Double = 255#
    
    Open ipSourceImagePath For Binary As SourceFileNo
    'Seek SourceFileNo, 1
    Get SourceFileNo, 1, FIleFormatCheck
    Close SourceFileNo
    
    'File Type
    file_type$ = Chr(FIleFormatCheck(0)) & Chr(FIleFormatCheck(1))
    rtnBItmapData.FIleTypeStr = file_type$
    If file_type$ <> "BM" Then 'Bitmap Format이 아님.
        Bitmap_Raw_Convert = 255
        Exit Function
    End If
    
    'File Size
    For i% = 2 To 5
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    file_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.FileSize = file_size#
    'Header Length
    rtn_hex$ = ""
    For i% = 10 To 13
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    header_size# = CDbl("&H" & rtn_hex$)
    real_img_size# = file_size# - header_size#
    rtnBItmapData.HeaderSize = header_size#
    rtnBItmapData.RealImgSize = real_img_size#
    'Image Hor Size
    rtn_hex$ = ""
    For i% = 18 To 21
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    img_h_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.ImgHorSize = img_h_size#
    'Image Ver Size
    rtn_hex$ = ""
    For i% = 22 To 25
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    img_v_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.ImgVerSize = img_v_size#
    color_bit# = FIleFormatCheck(28)
    If color_bit# <> 8 Then '8Bit Data Bit가 아님.
        Bitmap_Raw_Convert = 254
        Exit Function
    End If
    rtnBItmapData.ImgColorBit = color_bit#
    
'    4로 나누어 떨어지지 않는경우에는 오류발생함.
    ReDim ReadingByte(img_h_size# - 1) '530
    ReDim WritingByte(img_h_size# - 1)

    Open ipSourceImagePath For Binary As SourceFileNo
    Open ipDestinationImagePath For Binary Access Write As DestnationFileNo

    wfile_index# = 1

    If img_h_size# Mod 4 <> 0 Then
        rr# = img_h_size# / 4
        tmp# = Format(rr#, 0)
        tt# = tmp# * 4
        ff# = tt# - img_h_size#
        
        
    End If

    start_idx# = (file_size# - img_h_size#) + 1

    For rfile_index# = start_idx# To (header_size#) Step ((img_h_size# + ff#) * -1)
        Seek SourceFileNo, (rfile_index# - ff#)
        Get SourceFileNo, (rfile_index# - ff#), ReadingByte
        Seek DestnationFileNo, wfile_index#
        Put DestnationFileNo, wfile_index#, ReadingByte
        wfile_index# = (wfile_index# + img_h_size#)
        DoEvents
    Next rfile_index#

    Close SourceFileNo
    Close DestnationFileNo
    Bitmap_Raw_Convert = 0 'FIle Convert완료

'    ReDim ReadingByte(img_h_size# - 1)
'    ReDim WritingByte(img_h_size# - 1)
'
'    Open ipSourceImagePath For Binary As SourceFileNo
'    Open ipDestinationImagePath For Binary Access Write As DestnationFileNo
'
'    wfile_index# = 1
'
'    'start_idx# = (file_size# - img_h_size#)
'    start_idx# = file_size#
'    'end_index# = header_size#
'    For rfile_index# = start_idx# To (header_size#) Step (img_h_size# * -1)
'        Seek SourceFileNo, rfile_index#
'        Get SourceFileNo, rfile_index#, ReadingByte
'        Seek DestnationFileNo, wfile_index# + 1
'        Put DestnationFileNo, wfile_index# + 1, ReadingByte
'        wfile_index# = (wfile_index# + img_h_size#)
'        DoEvents
'    Next rfile_index#
'
'    Close SourceFileNo
'    Close DestnationFileNo
'    Bitmap_Raw_Convert = 0 'FIle Convert완료
    
End Function
Function Bitmap_Property(ipSourceImagePath As String, rtnBItmapData As BitmapData) As Long

    Dim FIleFormatCheck(0 To 31) As Byte
    Dim ReadingByte() As Byte
    Const SourceFileNo As Double = 1#
    
    Bitmap_Property = 1 'Converting Start

    Open ipSourceImagePath For Binary As SourceFileNo
    'Seek SourceFileNo, 1
    Get SourceFileNo, 1, FIleFormatCheck
    Close SourceFileNo
    
    'File Type
    file_type$ = Chr(FIleFormatCheck(0)) & Chr(FIleFormatCheck(1))
    rtnBItmapData.FIleTypeStr = file_type$
    If file_type$ <> "BM" Then 'Bitmap Format이 아님.
        Bitmap_Property = 255
        Exit Function
    End If
    
    'File Size
    For i% = 2 To 5
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    file_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.FileSize = file_size#
    'Header Length
    rtn_hex$ = ""
    For i% = 10 To 13
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    header_size# = CDbl("&H" & rtn_hex$)
    real_img_size# = file_size# - header_size#
    rtnBItmapData.HeaderSize = header_size#
    rtnBItmapData.RealImgSize = real_img_size#
    'Image Hor Size
    rtn_hex$ = ""
    For i% = 18 To 21
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    img_h_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.ImgHorSize = img_h_size#
    'Image Ver Size
    rtn_hex$ = ""
    For i% = 22 To 25
        rtn_hex$ = Hex_FormatString(Hex(FIleFormatCheck(i%)), 2) & rtn_hex$ 'Nibble
    Next i%
    img_v_size# = CDbl("&H" & rtn_hex$)
    rtnBItmapData.ImgVerSize = img_v_size#
    color_bit# = FIleFormatCheck(28)
'''    If color_bit# <> 8 Then '8Bit Data Bit가 아님.
'''        Bitmap_Property = 254
'''        Exit Function
'''    End If
    rtnBItmapData.ImgColorBit = color_bit#
    Bitmap_Property = 0
    
End Function
Function Raw_Slicer(ipSaveFilePathOnly As String, ipOrgFileNameOnly As String, ipNzlQty As Integer, ipImgWidth As Double, ipImgHeight As Double) As Long
    
    Dim ReadingByte() As Byte
    Dim WritingByte() As Byte
    Dim ipSourceImagePath As String
    Dim ipDestinationImagePath As String
    Const SourceFileNo As Double = 1#
    Const DestnationFileNo As Double = 255#
    
    'ReDim ReadingByte(ipImgWidth - 1)
    'ReDim WritingByte(ipImgWidth - 1)
    
    ipSourceImagePath = ipSaveFilePathOnly & ipOrgFileNameOnly & ".raw"
    If Dir(ipSourceImagePath) = "" Then
        Raw_Slicer = 255
        Exit Function
    End If
    
    Open ipSourceImagePath For Binary As SourceFileNo
    tmp_width_mod% = ipImgWidth Mod ipNzlQty
    If tmp_width_mod% = 0 Then
        column_width_qty# = ipImgWidth / ipNzlQty
    Else
        column_width_qty# = (ipImgWidth \ ipNzlQty) + 1
        column_last_margin_pix% = ipImgWidth - (ipNzlQty * (ipImgWidth \ ipNzlQty))
        fl_one_over% = 1
    End If
    row_height_qty# = ipImgHeight
    
    If fl_one_over% = 0 Then
        For file_count% = 1 To column_width_qty# '+ 1
            ReDim ReadingByte(ipNzlQty - 1)
            ReDim WritingByte(ipNzlQty - 1)
            ipDestinationImagePath = ipSaveFilePathOnly & ipOrgFileNameOnly & "_Devide" & Format(file_count%, "0000") & ".raw"
            Open ipDestinationImagePath For Binary Access Write As DestnationFileNo
            For rr# = 1 To row_height_qty# ' + 1
                reading_file_index# = ((file_count% - 1) * ipNzlQty) + (((rr# - 1) * ipImgWidth) + rr#) - (rr# - 1)
                writing_file_index# = ((rr# - 1) * ipNzlQty) + 1
                Seek SourceFileNo, reading_file_index#
                Get SourceFileNo, reading_file_index#, ReadingByte
                Seek DestnationFileNo, writing_file_index#
                Put DestnationFileNo, writing_file_index#, ReadingByte
            Next rr#
            Close DestnationFileNo
        Next file_count%
    Else
        For file_count% = 1 To column_width_qty# '+ 1
            If file_count% = column_width_qty# Then '마지막 일때 는 잘린 부분에 0데이터를 채워 주어야 함.
                ReDim ReadingByte(column_last_margin_pix% - 1)
                ReDim WritingByte(ipNzlQty - 1)
                ipDestinationImagePath = ipSaveFilePathOnly & ipOrgFileNameOnly & "_Devide" & Format(file_count%, "0000") & ".raw"
                Open ipDestinationImagePath For Binary Access Write As DestnationFileNo
                For rr# = 1 To row_height_qty# '+ 1
                    reading_file_index# = ((file_count% - 1) * ipNzlQty) + (((rr# - 1) * ipImgWidth) + rr#) - (rr# - 1)
                    writing_file_index# = ((rr# - 1) * ipNzlQty) + 1
                    Seek SourceFileNo, reading_file_index#
                    Get SourceFileNo, reading_file_index#, ReadingByte
                    For kk# = 0 To column_last_margin_pix% - 1
                        WritingByte(kk#) = ReadingByte(kk#)
                    Next kk#
                    Seek DestnationFileNo, writing_file_index#
                    Put DestnationFileNo, writing_file_index#, WritingByte
                Next rr#
                Close DestnationFileNo
            Else
                ReDim ReadingByte(ipNzlQty - 1)
                ReDim WritingByte(ipNzlQty - 1)
                ipDestinationImagePath = ipSaveFilePathOnly & ipOrgFileNameOnly & "_Devide" & Format(file_count%, "0000") & ".raw"
                Open ipDestinationImagePath For Binary Access Write As DestnationFileNo
                For rr# = 1 To row_height_qty# '+ 1
                    reading_file_index# = ((file_count% - 1) * ipNzlQty) + (((rr# - 1) * ipImgWidth) + rr#) - (rr# - 1)
                    writing_file_index# = ((rr# - 1) * ipNzlQty) + 1
                    Seek SourceFileNo, reading_file_index#
                    Get SourceFileNo, reading_file_index#, ReadingByte
                    Seek DestnationFileNo, writing_file_index#
                    Put DestnationFileNo, writing_file_index#, ReadingByte
                Next rr#
                Close DestnationFileNo
            End If
        Next file_count%
    End If
    Close SourceFileNo

End Function

