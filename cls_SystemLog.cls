VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "cls_SystemLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public Sub sLogDis(ipTxtControl As Control, Indata As String, Optional ByVal fl_ClearTxt As Boolean)
    
    Static Scl_Count As Integer
    
    If Scl_Count > 255 Then
        Scl_Count = 0
        ipTxtControl.Text = ""
    End If
    
    If fl_ClearTxt = True Then
        Scl_Count = 0
        ipTxtControl.Text = ""
    End If
    
    ipTxtControl.SelLength = Len(ipTxtControl.Text)
    If InStr(1, Indata, vbCrLf) <> 0 Then
        ipTxtControl.SelText = Indata
    Else
        ipTxtControl.SelText = Indata & vbCrLf
    End If
    Scl_Count = Scl_Count + 1
    
End Sub
