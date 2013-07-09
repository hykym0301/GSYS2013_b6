Attribute VB_Name = "NX4"

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Const PORT_NO As Integer = 3

Dim ChecksumF As Boolean
Dim recvBuf() As Byte
Dim recvByte As Long

Dim P_Addr() As String
Dim P_Name() As String
Dim P_Desc() As String
Dim P_Cont() As String

Function InitNX4(ByVal i_MSComm As MSComm, ByVal i_nPortNo As Integer) As Boolean

On Error GoTo Err

       
    i_MSComm.CommPort = i_nPortNo
    i_MSComm.PortOpen = True
    
InitNX4 = True

Exit Function

Err:

InitNX4 = False
MsgBox Err.Description

End Function

Private Function sHex2Dec(sHex As String) As String

On Error Resume Next

    Dim i As Long
    Dim sDigit As String
    Dim DigitVal As Long
    Dim CalcVal As Long
    Dim MinusF As Boolean
    
    For i = 1 To Len(sHex)
        sDigit = Mid(sHex, i, 1)
        Select Case sDigit
        Case "A"
            DigitVal = 10
        Case "B"
            DigitVal = 11
        Case "C"
            DigitVal = 12
        Case "D"
            DigitVal = 13
        Case "E"
            DigitVal = 14
        Case "F"
            DigitVal = 15
        Case Else
            DigitVal = Val(sDigit)
        End Select
        
        If i = 1 And DigitVal > 7 Then
            MinusF = True
        End If
        
        CalcVal = CalcVal + (DigitVal * (16 ^ (Len(sHex) - i)))
    Next i
    If MinusF = True Then
        CalcVal = -(65536 - CalcVal)
    End If
    sHex2Dec = CStr(CalcVal)
End Function

Private Function CRC2Dec(sHex As String) As Long

On Error Resume Next

    Dim i As Long
    Dim sDigit As String
    Dim DigitVal As Long
    Dim CalcVal As Long
    
    For i = 1 To Len(sHex)
        sDigit = Mid(sHex, i, 1)
        Select Case sDigit
        Case "A"
            DigitVal = 10
        Case "B"
            DigitVal = 11
        Case "C"
            DigitVal = 12
        Case "D"
            DigitVal = 13
        Case "E"
            DigitVal = 14
        Case "F"
            DigitVal = 15
        Case Else
            DigitVal = Val(sDigit)
        End Select
        CalcVal = CalcVal + (DigitVal * (16 ^ (Len(sHex) - i)))
    Next i
    CRC2Dec = CalcVal
End Function

Private Function Dec2Hex(sDec As Long, HexSize As Long) As String

On Error Resume Next

    Dim i As Long
    Dim sHex As String
    
    If sDec < 0 Then
        sDec = 65536 + sDec
    End If
    
    sHex = Hex(sDec)
    
    For i = Len(sHex) + 1 To HexSize
        Dec2Hex = Dec2Hex & "0"
    Next i
    Dec2Hex = Dec2Hex & sHex
End Function

Private Function Check_Chksum(chkData As Variant) As Boolean

On Error Resume Next

    If ChecksumF = False Then
        Check_Chksum = True
        Exit Function
    End If
    
    Dim i As Long
    Dim chksum As Long
    Dim chksum_R As Long
    
    For i = 1 To UBound(chkData) - 4
        chksum = chksum + chkData(i)
    Next i
    
    chksum_R = CRC2Dec(Chr(chkData(UBound(chkData) - 3))) * 16 + CRC2Dec(Chr(chkData(UBound(chkData) - 2)))
    
    If (chksum Mod 256) = chksum_R Then
        Check_Chksum = True
    Else
        Check_Chksum = False
    End If
End Function

Private Sub Add_Chksum(ByRef addData As Variant)

On Error Resume Next

    If ChecksumF = False Then
        Exit Sub
    End If
    
    Dim i As Long
    Dim chksum As Long
    
    For i = 1 To UBound(addData) - 4
        chksum = chksum + addData(i)
    Next i
    chksum = chksum Mod 256
    
    addData(UBound(addData) - 3) = Asc(Hex(chksum \ 16))
    addData(UBound(addData) - 2) = Asc(Hex(chksum Mod 16))
End Sub

Private Function TimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            TimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        TimeCheck = 0
    End If

End Function

Public Function Send_HeadTempCmd(ByVal i_MSComm As MSComm, Addr As Long, Cnt As Long, RegNo As Variant) As Boolean
On Error GoTo syserr:

    Dim SendBuf() As Byte
    Dim i As Long
    Dim myUBound As Long
    
    myUBound = 10 + (Cnt * 5)
    If ChecksumF = True Then
        myUBound = myUBound + 2
    End If
    
    ReDim SendBuf(0 To myUBound) As Byte
    
    SendBuf(0) = &H2
    SendBuf(1) = Asc(CStr(Addr \ 10))
    SendBuf(2) = Asc(CStr(Addr Mod 10))
    SendBuf(3) = Asc("D")
    SendBuf(4) = Asc("R")
    SendBuf(5) = Asc("R")
    SendBuf(6) = Asc(",")
    SendBuf(7) = Asc(CStr(Cnt \ 10))
    SendBuf(8) = Asc(CStr(Cnt Mod 10))
    
    For i = 1 To Cnt
        SendBuf((i - 1) * 5 + 9) = Asc(",")
        SendBuf((i - 1) * 5 + 10) = Asc(CStr(RegNo \ 1000))
        SendBuf((i - 1) * 5 + 11) = Asc(CStr(RegNo Mod 1000) \ 100)
        SendBuf((i - 1) * 5 + 12) = Asc(CStr(RegNo Mod 100) \ 10)
        SendBuf((i - 1) * 5 + 13) = Asc(CStr(RegNo Mod 10))
    Next i
    
    Call Add_Chksum(SendBuf)
    
    SendBuf(myUBound - 1) = &HD
    SendBuf(myUBound) = &HA
    
    i_MSComm.Output = SendBuf
    
    Send_HeadTempCmd = True
    
Exit Function
syserr:
    Send_HeadTempCmd = False
End Function

Public Function Read_HeadTemp(ByVal i_MSComm As MSComm, Addr As Long) As Double

On Error GoTo syserr:
    
    Dim txtLineArray As Variant
    Dim strHex As String
    Dim strdec As String
    Dim buf$
    
    Call TimeCheck(True)
    Do
        DoEvents
        If TimeCheck(False) > 2 Then
            Read_HeadTemp = -1#
            Exit Function
        End If
    Loop Until i_MSComm.InBufferCount > 0
    Call TimeCheck(True)
    Do
        DoEvents
        buf$ = buf$ & i_MSComm.Input
        If TimeCheck(False) > 3 Then
            Call TimeCheck(True)
            Read_HeadTemp = -2#
            Exit Function
        End If
    Loop Until Right(buf$, 1) = vbLf
    Call TimeCheck(True)

    
    txtLineArray = Split(buf$, ",", 1024, vbTextCompare)
    strHex = Left(txtLineArray(2), 4)
    strdec = sHex2Dec(strHex)
    Read_HeadTemp = CDbl(strdec) / 10
    
Exit Function
syserr:
    Read_HeadTemp = -1
End Function

Public Function Send_DRR(ByVal i_MSComm As MSComm, Addr As Long, Cnt As Long, RegNo As Variant) As Double

On Error Resume Next

    Dim SendBuf() As Byte
    Dim i As Long
    Dim myUBound As Long
    Dim recvBuf() As Byte
    
    myUBound = 10 + (Cnt * 5)
    If ChecksumF = True Then
        myUBound = myUBound + 2
    End If
    
    ReDim SendBuf(0 To myUBound) As Byte
    
    SendBuf(0) = &H2
    SendBuf(1) = Asc(CStr(Addr \ 10))
    SendBuf(2) = Asc(CStr(Addr Mod 10))
    SendBuf(3) = Asc("D")
    SendBuf(4) = Asc("R")
    SendBuf(5) = Asc("R")
    SendBuf(6) = Asc(",")
    SendBuf(7) = Asc(CStr(Cnt \ 10))
    SendBuf(8) = Asc(CStr(Cnt Mod 10))
    For i = 1 To Cnt
        SendBuf((i - 1) * 5 + 9) = Asc(",")
        SendBuf((i - 1) * 5 + 10) = Asc(CStr(RegNo \ 1000))
        SendBuf((i - 1) * 5 + 11) = Asc(CStr(RegNo Mod 1000) \ 100)
        SendBuf((i - 1) * 5 + 12) = Asc(CStr(RegNo Mod 100) \ 10)
        SendBuf((i - 1) * 5 + 13) = Asc(CStr(RegNo Mod 10))
    Next i
    
    Call Add_Chksum(SendBuf)
    
    SendBuf(myUBound - 1) = &HD
    SendBuf(myUBound) = &HA
    
    i_MSComm.Output = SendBuf
            
    Call TimeCheck(True)
    
    Do
        DoEvents
        If TimeCheck(False) > 3 Then
            Send_DRR = -1#
            Exit Function
        End If
    Loop Until i_MSComm.InBufferCount > 0
    
    Dim buf$
    Call TimeCheck(True)
    
    Do
        DoEvents
        buf$ = buf$ & i_MSComm.Input
        If TimeCheck(False) > 3 Then
            Call TimeCheck(True)
            Send_DRR = -2#
            Exit Function
        End If
    Loop Until Right(buf$, 1) = vbLf
    
    Call TimeCheck(True)
    
    Dim txtLineArray As Variant
    Dim strHex As String
    Dim strdec As String
    
    txtLineArray = Split(buf$, ",", 1024, vbTextCompare)
    
    strHex = Left(txtLineArray(2), 4)
    strdec = sHex2Dec(strHex)
    
    Send_DRR = CDbl(strdec) / 10
    
'    If Check_Chksum(recvBuf) = True Then
'         If InStr(StrConv(recvBuf, vbUnicode), "OK") > 0 Then
'             lblMSG = ""
'             myCMD = Chr(recvBuf(3)) & Chr(recvBuf(4)) & Chr(recvBuf(5))
'             Select Case myCMD
'             Case "WHO"
'                 For k = 10 To LastIndex
'                     myStr = myStr & Chr(recvBuf(k))
'                 Next k
'                 lblWHO = myStr
'             Case "DRR"
'                 For k = 10 To LastIndex
'                     myStr = myStr & Chr(recvBuf(k))
'                 Next k
'                 lblReadV = sHex2Dec(myStr)
'             Case "DWR"
'             End Select
'         Else
'             lblMSG = "통신불량(NG)"
'             Exit For
'         End If
'     Else
'         lblMSG = "통신불량(Checksum Error)"
'         Exit For
'     End If
       
End Function

Public Sub Send_DWR(ByVal i_MSComm As MSComm, Addr As Long, Cnt As Long, RegNo As Variant, WData As Variant)

On Error Resume Next

    Dim SendBuf() As Byte
    Dim i As Long
    Dim myUBound As Long
    Dim HexStr As String
    Dim lngTempValue As Long
    
    lngTempValue = WData * 10
    myUBound = 10 + (Cnt * 10)
    If ChecksumF = True Then
        myUBound = myUBound + 2
    End If
    ReDim SendBuf(0 To myUBound) As Byte
    
    SendBuf(0) = &H2
    SendBuf(1) = Asc(CStr(Addr \ 10))
    SendBuf(2) = Asc(CStr(Addr Mod 10))
    SendBuf(3) = Asc("D")
    SendBuf(4) = Asc("W")
    SendBuf(5) = Asc("R")
    SendBuf(6) = Asc(",")
    SendBuf(7) = Asc(CStr(Cnt \ 10))
    SendBuf(8) = Asc(CStr(Cnt Mod 10))
    For i = 1 To Cnt
        SendBuf((i - 1) * 10 + 9) = Asc(",")
        SendBuf((i - 1) * 10 + 10) = Asc(CStr(RegNo \ 1000))
        SendBuf((i - 1) * 10 + 11) = Asc(CStr(RegNo Mod 1000) \ 100)
        SendBuf((i - 1) * 10 + 12) = Asc(CStr(RegNo Mod 100) \ 10)
        SendBuf((i - 1) * 10 + 13) = Asc(CStr(RegNo Mod 10))
        SendBuf((i - 1) * 10 + 14) = Asc(",")
        
        HexStr = Dec2Hex(CLng(lngTempValue), 4)
        SendBuf((i - 1) * 10 + 15) = Asc(Mid(HexStr, 1, 1))
        SendBuf((i - 1) * 10 + 16) = Asc(Mid(HexStr, 2, 1))
        SendBuf((i - 1) * 10 + 17) = Asc(Mid(HexStr, 3, 1))
        SendBuf((i - 1) * 10 + 18) = Asc(Mid(HexStr, 4, 1))
    Next i
    
    Call Add_Chksum(SendBuf)
    
    SendBuf(myUBound - 1) = &HD
    SendBuf(myUBound) = &HA
    
    i_MSComm.Output = SendBuf
        
End Sub



