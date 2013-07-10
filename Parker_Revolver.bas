Attribute VB_Name = "Revolver"

Function InitRevolver(ByVal i_MSComm As MSComm, ByVal i_nPortNo As Integer) As Boolean

On Error GoTo Err
       
    i_MSComm.CommPort = i_nPortNo
    i_MSComm.PortOpen = True
    
InitRevolver = True

Exit Function

Err:

InitRevolver = False
MsgBox Err.Description

End Function


Function RevTimeCheck(ClearAll As Boolean) As Double

    Static fl_Start As Boolean
    Static DuStart As Double
    Static DurationTime As Double

    If ClearAll = False Then
        If fl_Start = False Then
            DuStart = GetTickCount / (10 ^ 3)
            fl_Start = True
        Else
            DurationTime = Abs((GetTickCount / (10 ^ 3)) - DuStart)
            RevTimeCheck = DurationTime
        End If
    Else
        fl_Start = False
        DuStart = 0
        DurationTime = 0
        RevTimeCheck = 0
    End If

End Function

Function Home(ByVal i_MSComm As MSComm, Index As Integer)

End Function

Function SelectLens(ByVal i_MSComm As MSComm, Index As Integer) As Boolean
    On Error Resume Next
    
    If i_MSComm.PortOpen = False Then
        i_MSComm.PortOpen = True
    End If

    profile_index% = Index

    rcv_time# = RevTimeCheck(True)
    
    rev_out_cmd$ = "1USE(" & CStr(profile_index%) & ")" & vbCrLf & "1G" & vbCrLf
    i_MSComm.Output = rev_out_cmd$
    i_MSComm.Output = rev_out_cmd$
    
    'Logg "1USE(" & CStr(profile_index%) & ")" & vbCrLf & "1G" & "+CRLF"
    
'    Do
'        DoEvents
'        rtn_buf$ = rtn_buf$ & frmMain0.MSComm_Rev.Input
'        rcv_time# = RevTimeCheck(False)
'    Loop Until rcv_time# > 2
 '   rcv_time# = RevTimeCheck(True)
    'Logg rtn_buf$
End Function

