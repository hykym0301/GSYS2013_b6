Attribute VB_Name = "Kill_Proc"

Public Declare Function Process32First Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long
Public Declare Function Process32Next Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long
Public Declare Function CloseHandle Lib "Kernel32.dll" (ByVal Handle As Long) As Long
Public Declare Function OpenProcess Lib "Kernel32.dll" (ByVal dwDesiredAccessas As Long, ByVal bInheritHandle As Long, ByVal dwProcId As Long) As Long
Public Declare Function EnumProcesses Lib "psapi.dll" (ByRef lpidProcess As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function GetModuleFileNameExA Lib "psapi.dll" (ByVal hProcess As Long, ByVal hModule As Long, ByVal ModuleName As String, ByVal nSize As Long) As Long
Public Declare Function EnumProcessModules Lib "psapi.dll" (ByVal hProcess As Long, ByRef lphModule As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal dwFlags As Long, ByVal th32ProcessID As Long) As Long
Public Declare Function GetVersionExA Lib "kernel32" (lpVersionInformation As OSVERSIONINFO) As Integer
Public Declare Function TerminateProcess Lib "Kernel32.dll" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long

Public Type PROCESSENTRY32
  dwSize As Long
  cntUsage As Long
  th32ProcessID As Long           ' This process
  th32DefaultHeapID As Long
  th32ModuleID As Long            ' Associated exe
  cntThreads As Long
  th32ParentProcessID As Long     ' This process's parent process
  pcPriClassBase As Long          ' Base priority of process threads
  dwFlags As Long
  szExeFile As String * 260       ' MAX_PATH
End Type

Public Type OSVERSIONINFO
  dwOSVersionInfoSize As Long
  dwMajorVersion As Long
  dwMinorVersion As Long
  dwBuildNumber As Long
  dwPlatformId As Long           '1 = Windows 95.
                                 '2 = Windows NT
  szCSDVersion As String * 128
End Type

Public Const PROCESS_TERMINATE As Long = (&H1)
Public Const PROCESS_QUERY_INFORMATION = 1024
Public Const PROCESS_VM_READ = 16
Public Const MAX_PATH = 260
Public Const STANDARD_RIGHTS_REQUIRED = &HF0000
Public Const SYNCHRONIZE = &H100000
'STANDARD_RIGHTS_REQUIRED Or SYNCHRONIZE Or &HFFF
Public Const PROCESS_ALL_ACCESS = &H1F0FFF
Public Const TH32CS_SNAPPROCESS = &H2&
Public Const hNull = 0

Public Function GetPidByImage(ByVal image As String) As Long
  On Local Error GoTo ErrOut:
  Dim hSnapshot As Long
  Dim uProcess As PROCESSENTRY32
  Dim r As Long, l As Long
  
  hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0&)
  If hSnapshot = 0 Then Exit Function
  uProcess.dwSize = Len(uProcess)
  r = Process32First(hSnapshot, uProcess)
  l = Len(image)
  If l = 0 Then Exit Function
  Do While r
    If LCase(Left(uProcess.szExeFile, l)) = LCase(image) Then
      GetPidByImage = uProcess.th32ProcessID
      Exit Do
    End If
    r = Process32Next(hSnapshot, uProcess)
  Loop
  Call CloseHandle(hSnapshot)
ErrOut:
End Function

Public Sub KillPID(ByVal pid As Long)
  On Local Error Resume Next
  Dim h As Long
  If pid = 0 Then Exit Sub
  h = OpenProcess(PROCESS_TERMINATE, False, pid)
  TerminateProcess h, 0
  CloseHandle h
  Sleep 1000
ErrOut:
End Sub


Public Function StrZToStr(s As String) As String
      StrZToStr = Left$(s, Len(s) - 1)
End Function

Public Function getVersion() As Long
  Dim osinfo As OSVERSIONINFO
  Dim retvalue As Integer
  osinfo.dwOSVersionInfoSize = 148
  osinfo.szCSDVersion = Space$(128)
  retvalue = GetVersionExA(osinfo)
  getVersion = osinfo.dwPlatformId
End Function


