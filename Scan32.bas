Attribute VB_Name = "Scan32"
'-----------------------------------------------------
' DNSCAN32.DLL Visual Basic Declarations
'-----------------------------------------------------

'-----------------------------------------------------
' DeviceNet Constants
'-----------------------------------------------------

Global Const DNS_MIN_MAC_ID = 0
Global Const DNS_MAX_MAC_ID = 63
Global Const DNS_NUM_MAC_ID = 64
Global Const DNS_ALL_MAC_ID = &HFF
Global Const DNS_125K = 0
Global Const DNS_250K = 1
Global Const DNS_500K = 2

' IO Active timeout constant
Global Const IO_TIMEOUT = 2000          ' Timeout in ms

'------------------------------------------------------
' Type definitions
'------------------------------------------------------

'--------------------------
' Module header
'--------------------------
Type DNS_MODULE_HEADER
        ModuleType As Integer
        WinSize As Integer
        CardId As Integer
        KernelId As Integer
        KernelRev As Integer
        ModuleId As Integer
        ModuleRev As Integer
        NetSerial As Long
        CardType As String * 16
        CardSerial As String * 8
        IrqControl As Integer
        IrqStatusA As Byte
        IrqStatusB As Byte
        MainCode As Integer
        CanStatus As Integer
        CanTx As Integer
        CanAck As Integer
        CanRx As Integer
        CanErr As Integer
        CanLost As Integer
        CanOverrun As Integer
        AddCode As Integer
        ModuleString As String * 64
End Type

'--------------------------
' CAN Counters
'--------------------------
Type DNS_CAN_COUNTERS
    CanTx As Integer
    CanAck As Integer
    CanRx As Integer
    CanErr As Integer
    CanLost As Integer
    CanOverrun As Integer
End Type

'--------------------------
' Scaner config data
'--------------------------
Type DNS_SCANNER_CFG
    MacId As Integer
    BaudRate As Integer
    ScanInterval As Integer
    Reserved As Integer
    Flags As Integer
    ExplicitRequestSize As Integer
    ExplicitRequestOffset As Integer
    ExplicitResponseSize As Integer
    ExplicitResponseOffset As Integer
    Io1Interval As Integer
    Output1Size As Integer
    Output1Offset As Integer
    Output1Path As Integer
    Input1Size As Integer
    Input1Offset As Integer
    Input1Path As Integer
    Io2Interval As Integer
    Output2Size As Integer
    Output2Offset As Integer
    Output2Path As Integer
    Input2Size As Integer
    Input2Offset As Integer
    Input2Path As Integer
End Type

'--------------------------
' Device config data
'--------------------------
Type DNS_DEVICE_CFG
    MacId As Integer
    VendorId As Integer
    DeviceType As Integer
    ProductCode As Integer
    Reserved1 As Integer
    Reserved2 As Integer
    Reserved3 As Integer
    Flags As Integer
    ExplicitSize As Integer
    ExplicitOffset As Integer
    Io1Interval As Integer
    Output1Size As Integer
    Output1Offset As Integer
    Output1LocalPathOffset As Integer
    Output1RemotePathOffset As Integer
    Input1Size As Integer
    Input1Offset As Integer
    Input1LocalPathOffset As Integer
    Input1RemotePathOffset As Integer
    Io2Interval As Integer
    Output2Size As Integer
    Output2Offset As Integer
    Output2LocalPathOffset As Integer
    Output2RemotePathOffset As Integer
    Input2Size As Integer
    Input2Offset As Integer
    Input2LocalPathOffset As Integer
    Input2RemotePathOffset As Integer
End Type


'--------------------------
' status structure
'--------------------------
Type DNS_STATUS
    StatusCode As Byte
    StatusFlags As Byte
End Type

'--------------------------
' Command error
'--------------------------
Type DNS_CMD_ERROR
    ErrCode As Integer
    ErrCodeExt As Integer
End Type

'--------------------------
' I/O pool
'--------------------------

Global Const DNS_MIN_IO_OFFSET = &H1000
Global Const DNS_MAX_IO_OFFSET = &H3FFF

'--------------------------
' Dnscan error codes
'--------------------------
Global Const DRIVER_LOADED = &H20000000
Global Const DRIVER_NOT_FOUND = &H20000001
Global Const INVALID_DRIVER = &H20000002
Global Const DRIVER_NOT_LOADED = &H20000003
Global Const COMMAND_TIMEOUT = &H20000004

' Command ErrCode codes
Global Const DNS_GENERAL_ERROR = &H20000200
Global Const DNS_ERR_CMD = &H20000201
Global Const DNS_ERR_MAC = &H20000202
Global Const DNS_ERR_BAUD = &H20000203
Global Const DNS_ERR_DUPMAC = &H20000204
Global Const DNS_ERR_DUPDEV = &H20000205
Global Const DNS_ERR_NODEV = &H20000206
Global Const DNS_ERR_OFF = &H20000207
Global Const DNS_ERR_ACTIVE = &H20000208
Global Const DNS_ERR_NOTOFF = &H20000209
Global Const DNS_ERR_SCAN = &H2000020A
Global Const DNS_ERR_NOTSCAN = &H2000020B
Global Const DNS_ERR_SCANOFF = &H2000020C
Global Const DNS_ERR_IO_OFFSET = &H2000020D
Global Const DNS_ERR_BUS_FAULT = &H2000020E
Global Const DNS_ERR_UNKNOWN = &H2000020F

Global Const DNS_ERR_INVALID_AREA = &H20000210
Global Const DNS_ERR_NOT_IN_LIST = &H20000211
Global Const DNS_ERR_INVALID_EVENT = &H20000212
Global Const DNS_ERR_SERVER_NOT_ACTIVE = &H20000213
Global Const DNS_ERR_INVALID_DATA_SIZE = &H20000214
Global Const DNS_ERR_CONN_NOT_EXIST = &H20000215
Global Const DNS_ERR_INVALID_CLASS = &H20000216
Global Const DNS_ERR_INVALID_INSTANCE = &H20000217
Global Const DNS_ERR_EXP_NOT_AVAIL = &H20000218
Global Const DNS_ERR_EXP_MSG_PENDING = &H20000219
Global Const DNS_ERR_UNSUPP_CONN_TYPE = &H2000021A
Global Const DNS_ERR_INVALID_CONN_FLAGS = &H2000021B
Global Const DNS_ERR_EXP_MSG_TRUNCATED = &H2000021C
Global Const DNS_ERR_NOT_REGISTERED = &H2000021D
Global Const DNS_ERR_EVENT_REGISTERED = &H2000021E
Global Const DNS_ERR_INVALID_DEVICEID = &H2000021F
Global Const DNS_ERR_EXPLICIT_BUFFER = &H20000220
Global Const DNS_ERR_STROBE_BUFFER = &H20000221
Global Const DNS_ERR_CONNECTION_NOT_CONFIGURED_BUFFER = &H20000222
Global Const DNS_ERR_INVALID_PATHID = &H20000223

'--------------------------
' Device Status Word
'--------------------------

' status codes
Global Const DNS_NON_EXIST = &H0
Global Const DNS_IDLE = &H1
Global Const DNS_ACTIVE = &H2
Global Const DNS_TIMEOUT = &H3
Global Const DNS_FAULT_UCMM = &H4
Global Const DNS_MS_BUSY = &H5
Global Const DNS_FAULT_MS = &H6
Global Const DNS_BAD_VENDOR = &H7
Global Const DNS_FAULT_VENDOR = &H8
Global Const DNS_BAD_TYPE = &H9
Global Const DNS_FAULT_TYPE = &HA
Global Const DNS_BAD_CODE = &HB
Global Const DNS_FAULT_CODE = &HC
Global Const DNS_BAD_IO1_INPUT = &HD
Global Const DNS_FAULT_IO1_INPUT = &HE
Global Const DNS_BAD_IO1_OUTPUT = &HF
Global Const DNS_FAULT_IO1_OUTPUT = &H10
Global Const DNS_BAD_IO2_INPUT = &H11
Global Const DNS_FAULT_IO2_INPUT = &H12
Global Const DNS_BAD_IO2_OUTPUT = &H13
Global Const DNS_FAULT_IO2_OUTPUT = &H14
Global Const DNS_FAULT_IO1_EPR = &H15
Global Const DNS_FAULT_IO2_EPR = &H16
Global Const DNS_MS_SYNC = &H17

Global Const DNS_OVERLAP = &H2

' connection flags
Global Const DNS_EXPLICIT = &H1
Global Const DNS_POLLED = &H2
Global Const DNS_STROBED = &H4
Global Const DNS_RESERVED = &H8
Global Const DNS_COS = &H10
Global Const DNS_CYCLIC = &H20
Global Const DNS_AKS = &H40

' event areas
Global Const STATUS_EVENT = 0
Global Const SCAN_EVENT = 1
Global Const IO1_EVENT = 1
Global Const IO2_EVENT = 2
Global Const EXP_EVENT = 3
Global Const EXP_REQ_EVENT = 3
Global Const EXP_RES_EVENT = 4

' I/O data areas
Global Const DNS_INPUT1 = 0
Global Const DNS_OUTPUT1 = 1
Global Const DNS_INPUT2 = 2
Global Const DNS_OUTPUT2 = 3

'--------------------------
' CAN status word bits specific to DNSCAN.SS1
'--------------------------
Global Const DNS_ONLINE_125K = &H1000
Global Const DNS_ONLINE_250K = &H2000
Global Const DNS_ONLINE_500K = &H4000
Global Const DNS_SCAN_ACTIVE = &H8000

'--------------------------------------
' DEVICE, CLIENT, AND SERVER OFFSETS
'--------------------------------------
Global Const DEVICE_CONTROL_EVENT_OFFSET = &H180

Global Const DEVICE_STATUS_TABLE_OFFSET = &H1C0
Global Const DEVICE_STATUS_TABLE_CODE = DEVICE_STATUS_TABLE_OFFSET
Global Const DEVICE_STATUS_TABLE_FLAGS = (DEVICE_STATUS_TABLE_OFFSET + 1)
Global Const DEVICE_STATUS_TABLE_IO1_EVENT = (DEVICE_STATUS_TABLE_OFFSET + 2)
Global Const DEVICE_STATUS_TABLE_IO2_EVENT = (DEVICE_STATUS_TABLE_OFFSET + 3)
Global Const DEVICE_STATUS_TABLE_EXPLICIT_EVENT = (DEVICE_STATUS_TABLE_OFFSET + 4)

Global Const DEVICE_CONTROL_TABLE_OFFSET = &H5C0
Global Const DEVICE_CONTROL_TABLE_FLAGS = DEVICE_CONTROL_TABLE_OFFSET
Global Const DEVICE_CONTROL_TABLE_IO1_EVENT = (DEVICE_CONTROL_TABLE_OFFSET + 1)
Global Const DEVICE_CONTROL_TABLE_IO2_EVENT = (DEVICE_CONTROL_TABLE_OFFSET + 2)
Global Const DEVICE_CONTROL_TABLE_EXPLICIT_EVENT = (DEVICE_CONTROL_TABLE_OFFSET + 3)
Global Const DEVICE_CONTROL_TABLE_QUEUE_EVENT = (DEVICE_CONTROL_TABLE_OFFSET + 14)

Global Const SERVER_STATUS_BLOCK_OFFSET = &H170
Global Const SERVER_STATUS_BLOCK_CODE = SERVER_STATUS_BLOCK_OFFSET
Global Const SERVER_STATUS_BLOCK_FLAGS = (SERVER_STATUS_BLOCK_OFFSET + 1)
Global Const SERVER_STATUS_BLOCK_IO1_EVENT = (SERVER_STATUS_BLOCK_OFFSET + 2)
Global Const SERVER_STATUS_BLOCK_IO2_EVENT = (SERVER_STATUS_BLOCK_OFFSET + 3)
Global Const SERVER_STATUS_BLOCK_EXPLICIT_REQUEST_EVENT = (SERVER_STATUS_BLOCK_OFFSET + 4)
Global Const SERVER_STATUS_BLOCK_EXPLICIT_RESPONSE_EVENT = (SERVER_STATUS_BLOCK_OFFSET + 5)

Global Const SERVER_CONTROL_BLOCK_OFFSET = &H178
Global Const SERVER_CONTROL_BLOCK_CONTROL_FLAGS = &H178
Global Const SERVER_CONTROL_BLOCK_IO1_EVENT = (SERVER_CONTROL_BLOCK_OFFSET + 1)
Global Const SERVER_CONTROL_BLOCK_IO2_EVENT = (SERVER_CONTROL_BLOCK_OFFSET + 2)
Global Const SERVER_CONTROL_BLOCK_EXPLICIT_REQUEST_EVENT = (SERVER_CONTROL_BLOCK_OFFSET + 3)
Global Const SERVER_CONTROL_BLOCK_EXPLICIT_RESPONSE_EVENT = (SERVER_CONTROL_BLOCK_OFFSET + 4)
Global Const SERVER_CONTROL_BLOCK_QUEUE_EVENT = (SERVER_CONTROL_BLOCK_OFFSET + 14)

Global Const CLIENT_STATUS_BLOCK_OFFSET = &H140
Global Const CLIENT_STATUS_BLOCK_CODE = CLIENT_STATUS_BLOCK_OFFSET
Global Const CLIENT_STATUS_BLOCK_FLAGS = (CLIENT_STATUS_BLOCK_OFFSET + 1)
Global Const CLIENT_STATUS_BLOCK_SCAN_EVENT = (CLIENT_STATUS_BLOCK_OFFSET + 2)

Global Const CLIENT_CONTROL_BLOCK_OFFSET = &H150
Global Const CLIENT_CONTROL_BLOCK_FLAGS = CLIENT_CONTROL_BLOCK_OFFSET
Global Const CLIENT_CONTROL_BLOCK_QUEUE_EVENT = (CLIENT_CONTROL_BLOCK_OFFSET + 14)

'------------------------------------------------------
' DLL function prototypes
'------------------------------------------------------

Declare Function DNS_AddDevice Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef DeviceCfg As DNS_DEVICE_CFG) As Boolean
Declare Function DNS_CloseCard Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_DeleteDevice Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer) As Boolean
Declare Function DNS_Driver Lib "dnscan32.dll" (ByVal Buffer As String, ByRef Version As Integer, ByVal Size As Long) As Boolean
Declare Function DNS_FreeDriver Lib "dnscan32.dll" () As Boolean
Declare Function DNS_GetBusStatus Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef BusStatus As Integer) As Boolean
Declare Function DNS_GetCANCounters Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef CANCounters As DNS_CAN_COUNTERS) As Boolean
Declare Function DNS_GetCardStatus Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef CardOk As Boolean) As Boolean
Declare Function DNS_GetClientEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte, ByRef ClientEvent As Byte) As Boolean
Declare Function DNS_GetClientStatus Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef ClientStatus As DNS_STATUS) As Boolean
Declare Function DNS_GetDevice Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByRef DeviceCfg As DNS_DEVICE_CFG) As Boolean
Declare Function DNS_GetDeviceEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal EventId As Byte, ByRef DeviceEvent As Byte) As Boolean
Declare Function DNS_GetDeviceStatus Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByRef DeviceStatus As DNS_STATUS) As Boolean
Declare Function DNS_GetModuleHeader Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef ModuleHeader As DNS_MODULE_HEADER) As Boolean
Declare Function DNS_GetServerEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte, ByRef ServerEvent As Byte) As Boolean
Declare Function DNS_GetServerStatus Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef ServerStatus As DNS_STATUS) As Boolean
Declare Function DNS_IoActive Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal Timeout As Integer) As Boolean
Declare Function DNS_IoIdle Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_LoadDriver Lib "dnscan32.dll" (ByVal DriverName As String) As Boolean
Declare Function DNS_Log Lib "dnscan32.dll" (ByVal LogFlags As Long, ByVal LogFileHandle As Long) As Boolean
Declare Function DNS_Offline Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_Online Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef ScannerConfig As DNS_SCANNER_CFG) As Boolean
Declare Function DNS_OpenCard Lib "dnscan32.dll" (ByRef CardHandle As Long, ByVal CardName As String, ByVal Module As Long, ByVal Flags As Long) As Boolean
Declare Function DNS_ReadDeviceIo Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal IoArea As Byte, ByRef Buffer As Any, ByVal Size As Integer) As Boolean
Declare Function DNS_ReadServerIo Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal IoArea As Byte, ByRef Buffer As Any, ByVal Size As Integer) As Boolean
Declare Function DNS_ReceiveDeviceExplicit Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByRef Service As Byte, ByRef ServiceData As Any, ByRef Size As Integer) As Boolean
Declare Function DNS_ReceiveServerExplicit Lib "dnscan32.dll" (ByVal CardHandle As Long, ByRef ConnectionId As Integer, ByRef Service As Byte, ByRef ClassId As Integer, ByRef InstanceId As Integer, ByRef ServiceData As Any, ByRef Size As Integer) As Boolean
Declare Function DNS_RegisterBusStatusEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal ThreadId As Long, ByVal MsgId As Long, ByVal lParam As Long) As Boolean
Declare Function DNS_RegisterClientEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte, ByVal ThreadId As Long, ByVal MsgId As Long, ByVal lParam As Long) As Boolean
Declare Function DNS_RegisterDeviceEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal EventId As Byte, ByVal ThreadId As Long, ByVal MsgId As Long, ByVal lParam As Long) As Boolean
Declare Function DNS_RegisterServerEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte, ByVal ThreadId As Long, ByVal MsgId As Long, ByVal lParam As Long) As Boolean
Declare Function DNS_SendDeviceExplicit Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal Service As Byte, ByVal ClassId As Integer, ByVal InstanceId As Integer, ByRef ServiceData As Any, ByVal Size As Integer) As Boolean
Declare Function DNS_SendServerExplicit Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal ConnectionId As Integer, ByVal Service As Byte, ByRef ServiceData As Any, ByVal Size As Integer) As Boolean
Declare Function DNS_SetAccessTimeout Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal Timeout As Long) As Boolean
Declare Function DNS_SetEventNotificationInterval Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal Interval As Long) As Boolean
Declare Function DNS_StartScan Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_StopScan Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_UnRegisterBusStatusEvent Lib "dnscan32.dll" (ByVal CardHandle As Long) As Boolean
Declare Function DNS_UnRegisterClientEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte) As Boolean
Declare Function DNS_UnRegisterDeviceEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal EventId As Byte) As Boolean
Declare Function DNS_UnRegisterServerEvent Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal EventId As Byte) As Boolean
Declare Function DNS_Version Lib "dnscan32.dll" (ByVal Buffer As String, ByRef Version As Integer, ByVal Size As Long) As Boolean
Declare Function DNS_WriteDeviceIo Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal DeviceId As Integer, ByVal IoArea As Byte, ByRef Data As Any, ByVal Size As Integer) As Boolean
Declare Function DNS_WriteServerIo Lib "dnscan32.dll" (ByVal CardHandle As Long, ByVal IoArea As Byte, ByRef Data As Any, ByVal Size As Integer) As Boolean

'------------------------------------------------------
' DLL function prototypes
'------------------------------------------------------

Declare Function DNE_CommandError Lib "dnerr32.dll" (ByVal ErrorCode As Long, ByVal Buffer As String, ByVal Size As Long) As Boolean
Declare Function DNE_Version Lib "dnscan32.dll" (ByVal Buffer As String, ByRef Version As Integer, ByVal Size As Long) As Boolean

'User Definition Area-------------------------------------------
Global ScannerCfg               As DNS_SCANNER_CFG          ' DNP PCI
Public DeviceCfg               As DNS_DEVICE_CFG           ' BUS Coupler


''Function INIT_DeviceNetCard(ipCardName As String, ipNodNo() As Integer, ipNodQuantity As Integer, ipLogDisplayTxtBox As Control) As Boolean
''
''    Dim rtnErr As String * 100
''    Dim rtnBool As Boolean
''    Dim rtnCardHanddle As Long
''    Dim tmp_Bool As Boolean
''
''    Set DNS_LogDisplayTxtBox = ipLogDisplayTxtBox
''    ipLogDisplayTxtBox.Text = vbCrLf
''
''    ipCardName = ipCardName
''    DNS_CONNECTION_STAT = 1
''    DeviceNetLog "1. DNS_LoadDriver('ssdn32.dll')", DNS_LogDisplayTxtBox
''    If DN_CardHandleNo = 0 Then
''        DNS_FreeDriver
''        If DNS_LoadDriver("ssdn32.dll") = False Then
''            rtnBool = DNE_CommandError(DRIVER_NOT_LOADED, rtnErr, 100)
''            DeviceNetLog "  >" & Left(rtnErr, InStr(1, rtnErr, Chr(0)) - 1), DNS_LogDisplayTxtBox
''            INIT_DeviceNetCard = False
''            DNS_CONNECTION_STAT = 0
''            Exit Function
''        End If
''    End If
''
''    If DN_CardHandleNo = 961280 Then
''        DeviceNetLog "2. DNS_CloseCard(961280)", DNS_LogDisplayTxtBox
''        tmp_Bool = DNS_CloseCard(961280)
''        'If DNS_CloseCard(961280) = False Then
''        rtnBool = DNE_CommandError(DNS_GENERAL_ERROR, rtnErr, 100)
''        DeviceNetLog "  >" & Left(rtnErr, InStr(1, rtnErr, Chr(0)) - 1), DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        DN_CardHandleNo = 0
''            'Exit Function
''        'End If
''    End If
''
''    DeviceNetLog "3. DNS_OpenCard(DN_CardHandleNo, ipCardName, 0, 0) -> " & ipCardName, DNS_LogDisplayTxtBox
''    If DNS_OpenCard(DN_CardHandleNo, ipCardName, 0, 0) = False Then
''        rtnBool = DNE_CommandError(DNS_GENERAL_ERROR, rtnErr, 100)
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DN_CardHandleNo = 0
''        DeviceNetLog "  >" & Left(rtnErr, InStr(1, rtnErr, Chr(0)) - 1), DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''    'Me.lbl_CardHanddler.Caption = Hex(DN_CardHandleNo)
''    If DN_CardHandleNo = 0 Then
''        DeviceNetLog "  >Board is'nt installed...", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DN_CardHandleNo = 0
''        Exit Function
''    End If
''
''    'Board 식별부 고정으로 쓰도록 한다. -------------------------------------------------------------
''    DeviceNetLog "4. ScannerCfg(Board Indentifier) Structure Allocation...", DNS_LogDisplayTxtBox
''
''    dis_structure$ = "   ScannerCfg.MacId = 0" & vbCrLf & "   ScannerCfg.BaudRate = DNS_125K" & vbCrLf & _
''                         "   ScannerCfg.Flags = DNS_POLLED" & vbCrLf & "   ScannerCfg.Input1Size = 7" & vbCrLf & _
''                         "   ScannerCfg.Input1Offset = &H1000" & vbCrLf & "   ScannerCfg.Output1Size = 7" & vbCrLf & _
''                         "   ScannerCfg.Output1Offset = &H2000"
''    DeviceNetLog dis_structure$, DNS_LogDisplayTxtBox
''
''    ScannerCfg.MacId = 0
''    ScannerCfg.BaudRate = DNS_125K '케이블 거리에 따라 조정..
''    ScannerCfg.Flags = DNS_POLLED
''    ScannerCfg.Input1Size = 8
''    ScannerCfg.Input1Offset = &H1000
''    ScannerCfg.Output1Size = 8
''    ScannerCfg.Output1Offset = &H2000
''    '---------------------------------------------------------------------------------------------------
''
''    DeviceNetLog "5. DNS_Online(DN_CardHandleNo, ScannerCfg)", DNS_LogDisplayTxtBox
''    If DNS_Online(DN_CardHandleNo, ScannerCfg) = False Then
''        DeviceNetLog "  Online Fail Sequence" & vbCrLf & "   DNS_FreeDriver() -> DNS_CloseCard(DN_CardHandleNo)", DNS_LogDisplayTxtBox
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DN_CardHandleNo = 0
''        DeviceNetLog "  >Online Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "6. DNS_AddDevice(lngCardHandle, DeviceCfg)-Nod1.", DNS_LogDisplayTxtBox
''    DeviceCfg.DeviceType = 0
''    DeviceCfg.ProductCode = 0
''    DeviceCfg.VendorId = 0
''    DeviceCfg.Flags = DNS_POLLED
''    DeviceCfg.MacId = 1
''    DeviceCfg.Input1Size = 8
''    DeviceCfgInput1Offset = 4096
''    DeviceCfg.Output1Size = 8
''    DeviceCfg.Output1Offset = 4128
''    If DNS_AddDevice(lngCardHandle, DeviceCfg) = False Then
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DeviceNetLog "  >Add Device Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "7. DNS_AddDevice(lngCardHandle, DeviceCfg)-Nod2.", DNS_LogDisplayTxtBox
''    DeviceCfg.DeviceType = 0
''    DeviceCfg.ProductCode = 0
''    DeviceCfg.VendorId = 0
''    DeviceCfg.Flags = DNS_POLLED
''    DeviceCfg.MacId = 2
''    DeviceCfg.Input1Size = 8
''    DeviceCfgInput1Offset = 4104
''    DeviceCfg.Output1Size = 8
''    DeviceCfg.Output1Offset = 4136
''    If DNS_AddDevice(lngCardHandle, DeviceCfg) = False Then
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DeviceNetLog "  >Add Device Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "6. DNS_AddDevice(lngCardHandle, DeviceCfg)-Nod1.", DNS_LogDisplayTxtBox
''    DeviceCfg.DeviceType = 0
''    DeviceCfg.ProductCode = 0
''    DeviceCfg.VendorId = 0
''    DeviceCfg.Flags = DNS_POLLED
''    DeviceCfg.MacId = 1
''    DeviceCfg.Input1Size = 8
''    DeviceCfgInput1Offset = 4096
''    DeviceCfg.Output1Size = 8
''    DeviceCfg.Output1Offset = 4128
''    If DNS_AddDevice(lngCardHandle, DeviceCfg) = False Then
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DeviceNetLog "  >Add Device Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "8. DNS_AddDevice(lngCardHandle, DeviceCfg)-Nod3.", DNS_LogDisplayTxtBox
''    DeviceCfg.DeviceType = 0
''    DeviceCfg.ProductCode = 0
''    DeviceCfg.VendorId = 0
''    DeviceCfg.Flags = DNS_POLLED
''    DeviceCfg.MacId = 3
''    DeviceCfg.Input1Size = 8
''    DeviceCfgInput1Offset = 4112
''    DeviceCfg.Output1Size = 8
''    DeviceCfg.Output1Offset = 4144
''    If DNS_AddDevice(lngCardHandle, DeviceCfg) = False Then
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DeviceNetLog "  >Add Device Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "9. DNS_AddDevice(lngCardHandle, DeviceCfg)-Nod4.", DNS_LogDisplayTxtBox
''    DeviceCfg.DeviceType = 0
''    DeviceCfg.ProductCode = 0
''    DeviceCfg.VendorId = 0
''    DeviceCfg.Flags = DNS_POLLED
''    DeviceCfg.MacId = 3
''    DeviceCfg.Input1Size = 8
''    DeviceCfgInput1Offset = 4120
''    DeviceCfg.Output1Size = 8
''    DeviceCfg.Output1Offset = 4152
''    If DNS_AddDevice(lngCardHandle, DeviceCfg) = False Then
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DeviceNetLog "  >Add Device Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''    DeviceNetLog "10. DNS_StartScan(DN_CardHandleNo)", DNS_LogDisplayTxtBox
''    If DNS_StartScan(DN_CardHandleNo) = False Then
''        DeviceNetLog "  Scan Start Fail Sequence" & vbCrLf & "   DNS_FreeDriver() -> DNS_CloseCard(DN_CardHandleNo)", DNS_LogDisplayTxtBox
''        DNS_FreeDriver
''        DNS_CloseCard DN_CardHandleNo
''        DN_CardHandleNo = 0
''        DeviceNetLog "  >Online Fail!!", DNS_LogDisplayTxtBox
''        INIT_DeviceNetCard = False
''        DNS_CONNECTION_STAT = 0
''        Exit Function
''    End If
''
''End Function


