; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDlg_SetGlass
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "imggenerator.h"
LastPage=0

ClassCount=14
Class1=CChildFrame
Class2=CDlg_AddInkPoint
Class3=CDlg_GetaValue
Class4=CDlg_GetImgPitch
Class5=CDlg_GetPitch
Class6=CDlg_Progress
Class7=CDlg_SetGlass
Class8=CDlg_SetJetPattern
Class9=CDlg_SetZoom
Class10=CImgGeneratorApp
Class11=CAboutDlg
Class12=CImgGeneratorDoc
Class13=CImgGeneratorView
Class14=CMainFrame

ResourceCount=12
Resource1=IDD_DIALOG_GLASS
Resource2=IDD_DIALOG_IMGPATTERN
Resource3=IDD_DIALOG_SETZOOM
Resource4=IDR_MAINFRAME
Resource5=IDD_ABOUTBOX
Resource6=IDD_DIALOG_GETAVALE
Resource7=IDD_DIALOG_ADDINKPOINT
Resource8=IDD_DIALOG_PROGRESS
Resource9=IDR_IMGGENTYPE
Resource10=IDD_DIALOG_GETPITCH
Resource11=IDR_CURSOR_MENU
Resource12=IDD_DIALOG_GETIMGPITCH

[CLS:CChildFrame]
Type=0
BaseClass=CMDIChildWnd
HeaderFile=ChildFrm.h
ImplementationFile=ChildFrm.cpp

[CLS:CDlg_AddInkPoint]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_AddInkPoint.h
ImplementationFile=Dlg_AddInkPoint.cpp

[CLS:CDlg_GetaValue]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_GetaValue.h
ImplementationFile=Dlg_GetaValue.cpp

[CLS:CDlg_GetImgPitch]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_GetImgPitch.h
ImplementationFile=Dlg_GetImgPitch.cpp

[CLS:CDlg_GetPitch]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_GetPitch.h
ImplementationFile=Dlg_GetPitch.cpp

[CLS:CDlg_Progress]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_Progress.h
ImplementationFile=Dlg_Progress.cpp

[CLS:CDlg_SetGlass]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_SetGlass.h
ImplementationFile=Dlg_SetGlass.cpp
LastObject=IDC_EDIT_PANELCOUNT

[CLS:CDlg_SetJetPattern]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_SetJetPattern.h
ImplementationFile=Dlg_SetJetPattern.cpp

[CLS:CDlg_SetZoom]
Type=0
BaseClass=CDialog
HeaderFile=Dlg_SetZoom.h
ImplementationFile=Dlg_SetZoom.cpp

[CLS:CImgGeneratorApp]
Type=0
BaseClass=CWinApp
HeaderFile=ImgGenerator.h
ImplementationFile=ImgGenerator.cpp

[CLS:CAboutDlg]
Type=0
BaseClass=CDialog
HeaderFile=ImgGenerator.cpp
ImplementationFile=ImgGenerator.cpp
LastObject=CAboutDlg

[CLS:CImgGeneratorDoc]
Type=0
BaseClass=CDocument
HeaderFile=ImgGeneratorDoc.h
ImplementationFile=ImgGeneratorDoc.cpp

[CLS:CImgGeneratorView]
Type=0
BaseClass=CScrollView
HeaderFile=ImgGeneratorView.h
ImplementationFile=ImgGeneratorView.cpp
Filter=C
VirtualFilter=VWC
LastObject=ID_TXTGEN

[CLS:CMainFrame]
Type=0
BaseClass=CMDIFrameWnd
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp

[DLG:IDD_DIALOG_ADDINKPOINT]
Type=1
Class=CDlg_AddInkPoint
ControlCount=10
Control1=IDC_EDIT_COUNT,edit,1350631554
Control2=IDC_CHECK_CLEAR,button,1342242819
Control3=IDC_RADIO_SPACE,button,1342308361
Control4=IDC_EDIT_SPACE,edit,1350631554
Control5=IDC_RADIO_SPACE2,button,1342177289
Control6=IDOK,button,1342242816
Control7=IDCANCEL,button,1342242816
Control8=IDC_STATIC,static,1342308352
Control9=IDC_STATIC,button,1342177287
Control10=IDC_STATIC,static,1342308352

[DLG:IDD_DIALOG_GETAVALE]
Type=1
Class=CDlg_GetaValue
ControlCount=4
Control1=IDC_EDIT_VALUE,edit,1350631552
Control2=IDOK,button,1342242817
Control3=IDCANCEL,button,1342242816
Control4=IDC_STATIC,static,1342308352

[DLG:IDD_DIALOG_GETIMGPITCH]
Type=1
Class=CDlg_GetImgPitch
ControlCount=4
Control1=IDC_EDIT_IMGPITCH,edit,1350631552
Control2=IDOK,button,1342242817
Control3=IDCANCEL,button,1342242816
Control4=IDC_STATIC1,static,1342308352

[DLG:IDD_DIALOG_GETPITCH]
Type=1
Class=CDlg_GetPitch
ControlCount=4
Control1=IDC_EDIT_PITCH,edit,1350631552
Control2=IDOK,button,1342242817
Control3=IDCANCEL,button,1342242816
Control4=IDC_STATIC1,static,1342308352

[DLG:IDD_DIALOG_PROGRESS]
Type=1
Class=CDlg_Progress
ControlCount=3
Control1=IDCANCEL,button,1342242816
Control2=IDC_PROGRESS1,msctls_progress32,1350565889
Control3=IDC_STATIC1,static,1342308352

[DLG:IDD_DIALOG_GLASS]
Type=1
Class=CDlg_SetGlass
ControlCount=18
Control1=IDC_EDIT_PANELCOUNT,edit,1350631552
Control2=IDC_BUTTON_PANELCOUNT,button,1342242816
Control3=IDC_EDIT_DROPCOUNT,edit,1350631552
Control4=IDC_EDIT_EMPCOUNT,edit,1350631552
Control5=IDC_EDIT_PITCH,edit,1350631552
Control6=IDC_EDIT_PIXELCOUNT,edit,1350631552
Control7=IDC_BUTTON_COMMIT,button,1342242816
Control8=IDOK,button,1342242816
Control9=IDCANCEL,button,1342242816
Control10=IDC_LIST_GLASSDATA,SysListView32,1350631433
Control11=IDC_STATIC,static,1342308352
Control12=IDC_STATIC,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_STATIC,static,1342308352
Control15=IDC_STATIC,button,1342177287
Control16=IDC_EDIT_PANELNO,edit,1484849280
Control17=IDC_STATIC,static,1342308352
Control18=IDC_STATIC,static,1342308352

[DLG:IDD_DIALOG_IMGPATTERN]
Type=1
Class=CDlg_SetJetPattern
ControlCount=12
Control1=IDC_EDIT_PERIOD,edit,1350631552
Control2=IDC_EDIT_INTERVAL,edit,1350631552
Control3=IDC_BUTTON_COMMIT,button,1342242816
Control4=IDC_LIST_PATTERN,SysListView32,1350631437
Control5=IDC_BUTTON_CREATEHEADLIST,button,1342242816
Control6=IDC_LIST_HEADPATTERN,SysListView32,1350631437
Control7=IDOK,button,1342242816
Control8=IDCANCEL,button,1342242816
Control9=IDC_STATIC,static,1342308352
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,button,1342177287
Control12=IDC_STATIC,button,1342177287

[DLG:IDD_DIALOG_SETZOOM]
Type=1
Class=CDlg_SetZoom
ControlCount=4
Control1=IDC_EDIT_ZOOM,edit,1350631552
Control2=IDOK,button,1342242817
Control3=IDCANCEL,button,1342242816
Control4=IDC_STATIC,static,1342308352

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_FILE_PRINT
Command5=ID_APP_ABOUT
Command6=ID_IPS
Command7=ID_TN
CommandCount=7

[MNU:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_PRINT_SETUP
Command4=ID_FILE_MRU_FILE1
Command5=ID_APP_EXIT
Command6=ID_VIEW_TOOLBAR
Command7=ID_VIEW_STATUS_BAR
Command8=ID_APP_ABOUT
CommandCount=8

[MNU:IDR_IMGGENTYPE]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_CLOSE
Command4=ID_FILE_SAVE
Command5=ID_FILE_SAVE_AS
Command6=ID_IMGGEN
Command7=ID_TXTGEN
Command8=ID_FILE_PRINT
Command9=ID_FILE_PRINT_PREVIEW
Command10=ID_FILE_PRINT_SETUP
Command11=ID_FILE_MRU_FILE1
Command12=ID_APP_EXIT
Command13=ID_VIEW_TOOLBAR
Command14=ID_VIEW_STATUS_BAR
Command15=ID_WINDOW_CASCADE
Command16=ID_WINDOW_TILE_VERT
Command17=ID_GLASS
Command18=ID_SETPATTERN
Command19=ID_ZOOM
Command20=ID_SET_IMGPITCH
CommandCount=20

[MNU:IDR_CURSOR_MENU]
Type=1
Class=?
Command1=ID_SETPITCH
Command2=ID_SETDIAMETER
Command3=ID_DELETE
Command4=ID_ADDINKPOINT
CommandCount=4

[ACL:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_EDIT_COPY
Command2=ID_FILE_NEW
Command3=ID_FILE_OPEN
Command4=ID_FILE_PRINT
Command5=ID_FILE_SAVE
Command6=ID_EDIT_PASTE
Command7=ID_EDIT_UNDO
Command8=ID_EDIT_CUT
Command9=ID_NEXT_PANE
Command10=ID_PREV_PANE
Command11=ID_EDIT_COPY
Command12=ID_EDIT_PASTE
Command13=ID_EDIT_CUT
Command14=ID_EDIT_REDO
Command15=ID_EDIT_UNDO
CommandCount=15

