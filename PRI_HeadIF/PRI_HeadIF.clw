; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CPRI_HeadIFDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "pri_headif.h"
LastPage=0

ClassCount=4
Class1=CPRI_HeadIFApp
Class2=CAboutDlg
Class3=CPRI_HeadIFDlg
Class4=CSystemTray

ResourceCount=3
Resource1=IDD_ABOUTBOX (German (Germany))
Resource2=IDR_MENU
Resource3=IDD_PRI_HEADIF_DIALOG (German (Germany))

[CLS:CPRI_HeadIFApp]
Type=0
BaseClass=CWinApp
HeaderFile=PRI_HeadIF.h
ImplementationFile=PRI_HeadIF.cpp

[CLS:CAboutDlg]
Type=0
BaseClass=CDialog
HeaderFile=PRI_HeadIFDlg.cpp
ImplementationFile=PRI_HeadIFDlg.cpp
LastObject=CAboutDlg

[CLS:CPRI_HeadIFDlg]
Type=0
BaseClass=CDialog
HeaderFile=PRI_HeadIFDlg.h
ImplementationFile=PRI_HeadIFDlg.cpp
Filter=D
VirtualFilter=dWC
LastObject=IDC_BTN_SEND_DATA

[CLS:CSystemTray]
Type=0
BaseClass=CWnd
HeaderFile=SystemTray.h
ImplementationFile=SystemTray.cpp

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg

[DLG:IDD_PRI_HEADIF_DIALOG]
Type=1
Class=CPRI_HeadIFDlg

[DLG:IDD_PRI_HEADIF_DIALOG (German (Germany))]
Type=1
Class=CPRI_HeadIFDlg
ControlCount=10
Control1=IDC_BTN_EXIT,button,1208025088
Control2=IDC_BTN_BOOT,button,1342242816
Control3=IDC_LIST_MSG,listbox,1352728833
Control4=IDC_STC_LIVE,static,1342308865
Control5=IDC_BTN_SAVE,button,1073807360
Control6=IDC_STATIC,static,1342308352
Control7=IDC_BTN_TEST,button,1073807360
Control8=IDC_STATIC,static,1342308352
Control9=IDC_BTN_INIT_KM,button,1342242816
Control10=IDC_STATIC,button,1342177287

[MNU:IDR_MENU]
Type=1
Class=?
Command1=IDR_SHOW
Command2=IDR_HIDE
Command3=IDR_RUN
Command4=IDR_STOP
Command5=IDR_EXIT
CommandCount=5

[DLG:IDD_ABOUTBOX (German (Germany))]
Type=1
Class=?
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

