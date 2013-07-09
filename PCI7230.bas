Attribute VB_Name = "PCI7230"
Public Const PCI_7230 = 6

Declare Function Register_Card Lib "Pci-Dask.dll" (ByVal CardType As Integer, ByVal card_num As Integer) As Integer
Declare Function Release_Card Lib "Pci-Dask.dll" (ByVal CardNumber As Integer) As Integer

Declare Function DI_ReadPort Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, Value As Long) As Integer
Declare Function DI_ReadLine Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, ByVal Line As Integer, Value As Integer) As Integer
Declare Function DO_WritePort Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, ByVal Value As Long) As Integer
Declare Function DO_WriteLine Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, ByVal Line As Integer, ByVal Value As Integer) As Integer
Declare Function DO_ReadLine Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, ByVal Line As Integer, Value As Integer) As Integer
Declare Function DO_ReadPort Lib "Pci-Dask.dll" (ByVal CardNumber As Integer, ByVal Port As Integer, Value As Long) As Integer


Public Const BIT_ON As Integer = 1
Public Const BIT_OFF As Integer = 0

Public ptrCardID()    As Integer
Public ipCardIndex  As Integer
Public rtnErrCode As Integer

Dim card As Long
Dim card_number As Long

Public Set_CardEA As Integer
Public rtnSum() As Long
Public PCI7230_Init_OK As Boolean

Public Const PCI7320_CardQTY_2 As Integer = 2

Sub PCI7230INIT(ipCardEa As Integer)
    ', ipInitCardIndex As Integer
    On Error Resume Next

    ReDim ptrCardID(ipCardEa - 1)
    ReDim rtnSum(ipCardEa - 1)
    
    'ptrCardID(ipInitCardIndex) = -1
    'ptrCardID(ipInitCardIndex) = Register_Card(PCI_7230, ipInitCardIndex)
    
    For i% = 0 To ipCardEa - 1
        ptrCardID(i%) = -1
        ptrCardID(i%) = Register_Card(PCI_7230, i%)
    Next i%
    
    PCI7230_Init_OK = True
    
End Sub
Sub PCI7230_TERMINATE(ipCardEa As Integer)

    'ipInitCardIndex As Integer
    On Error Resume Next
'    If ptrCardID(ipInitCardIndex) >= 0 Then
'        rtnErrCode = Release_Card(ptrCardID(ipInitCardIndex))
'    End If
    For i% = 0 To ipCardEa - 1
        If ptrCardID(i%) >= 0 Then
            rtnErrCode = Release_Card(ptrCardID(i%))
        End If
    Next i%
    PCI7230_Init_OK = False
    
End Sub

Sub PCI7230_OutSignal(ipInitCardIndex As Integer, ipBitNo As Integer, ipBitCase As Integer)

    On Error Resume Next

    If ipBitCase = 0 Then
        If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
            rtnSum(ipInitCardIndex) = rtnSum(ipInitCardIndex) Xor (2 ^ ipBitNo)
        End If
    Else
        If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = 0 Then
            rtnSum(ipInitCardIndex) = rtnSum(ipInitCardIndex) Xor (2 ^ ipBitNo)
        End If
    End If
  
    If ipBitCase = 1 Then
        'frmMain.CWB_DO(ipBitNo + 8).Value = True
    Else
        'frmMain.CWB_DO(ipBitNo + 8).Value = False
    End If
  
  rtnErrCode = DO_WritePort(ptrCardID(ipInitCardIndex), ipInitCardIndex, rtnSum(ipInitCardIndex))
  
End Sub
Function PCI7230_InSignal(ipInitCardIndex As Integer, ipBitNo As Integer) As Boolean

    Dim rtnReadVal As Long
    
    On Error Resume Next
    
    If PCI7230_Init_OK = False Then Exit Function
    rtnErrCode = DI_ReadPort(ptrCardID(ipInitCardIndex), ipInitCardIndex, rtnReadVal)
  
    If (rtnReadVal And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
        PCI7230_InSignal = True
    Else
        PCI7230_InSignal = False
    End If
  
End Function
Function PCI7230_OutSignalConf(ipInitCardIndex As Integer, ipBitNo As Integer) As Boolean

    Dim rtnReadVal As Long
    
    On Error Resume Next
    
    If PCI7230_Init_OK = False Then Exit Function
  
    If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
        PCI7230_OutSignalConf = True
    Else
        PCI7230_OutSignalConf = False
    End If
  
End Function
Sub PCI7230_OutSignal_Card2QTY(ip_BitNo As Integer, ipBitCase As Integer)

  On Error Resume Next

  If ip_BitNo < 16 Then
      ipBitNo = ip_BitNo
      ipInitCardIndex = 0
  Else
      ipBitNo = ip_BitNo - 16
      ipInitCardIndex = 1
  End If

  If ipBitCase = 0 Then
      If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
          rtnSum(ipInitCardIndex) = rtnSum(ipInitCardIndex) Xor (2 ^ ipBitNo)
      End If
  Else
      If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = 0 Then
          rtnSum(ipInitCardIndex) = rtnSum(ipInitCardIndex) Xor (2 ^ ipBitNo)
      End If
  End If

  If ipBitCase = 1 Then
      frmMain.CWB_DO(ipBitNo + 8).Value = True
  Else
      frmMain.CWB_DO(ipBitNo + 8).Value = False
  End If
  
  rtnErrCode = DO_WritePort(ptrCardID(ipInitCardIndex), ipInitCardIndex, rtnSum(ipInitCardIndex))
  
  Call SaveSetting("PCI7230_2QTY", "LATCHED", "DO_" & CStr(ip_BitNo), CStr(ipBitCase))
  
End Sub
Function PCI7230_InSignal_Card2QTY(ip_BitNo As Integer) As Boolean

    Dim rtnReadVal As Long
    
    On Error Resume Next
    
    If PCI7230_Init_OK = False Then Exit Function

    If ip_BitNo < 16 Then
        ipBitNo = ip_BitNo
        ipInitCardIndex = 0
    Else
        ipBitNo = ip_BitNo - 16
        ipInitCardIndex = 1
    End If
    
    rtnErrCode = DI_ReadPort(ptrCardID(ipInitCardIndex), ipInitCardIndex, rtnReadVal)
  
    If (rtnReadVal And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
        PCI7230_InSignal_Card2QTY = True
    Else
        PCI7230_InSignal_Card2QTY = False
    End If
  
End Function
Function PCI7230_OutSignalConf_Card2QTY(ip_BitNo As Integer) As Boolean

    Dim rtnReadVal As Long
    
    On Error Resume Next
    
    If PCI7230_Init_OK = False Then Exit Function
  
    If ip_BitNo < 16 Then
        ipBitNo = ip_BitNo
        ipInitCardIndex = 0
    Else
        ipBitNo = ip_BitNo - 16
        ipInitCardIndex = 1
    End If
    
    If (rtnSum(ipInitCardIndex) And (2 ^ ipBitNo)) = (2 ^ ipBitNo) Then
        PCI7230_OutSignalConf_Card2QTY = True
    Else
        PCI7230_OutSignalConf_Card2QTY = False
    End If
  
End Function

Function Set_LightVolumn(ByVal i_nVolumn As Integer) As Boolean

    Const CONFIG_VALUE As Integer = &H403 '1027
    Dim nValue As Integer
    Dim i As Integer
    Dim bOn As Boolean
    
    If i_nVolumn > 255 Then
        Exit Function
    End If
        
    '// bit 0 : remote on
    '// bit 1 : shutter on
    '// bit 10: input on
      
    nValue = CONFIG_VALUE '//(2 ^ 0) + (2 ^ 1) + (2 ^ 10)
       
    For i = 0 To 7 Step 1
        If (i_nVolumn And (2 ^ i)) = (2 ^ i) Then
            nValue = nValue + (2 ^ (i + 2))
        End If
    Next i
           
    'Debug.Print nValue
    rtnErrCode% = DO_WritePort(ptrCardID(2), 2, nValue)
    
    Set_LightVolumn = True
    
End Function






