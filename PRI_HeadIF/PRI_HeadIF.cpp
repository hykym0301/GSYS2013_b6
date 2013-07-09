// PRI_HeadIF.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "PRI_HeadIF.h"
#include "PRI_HeadIFDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFApp

BEGIN_MESSAGE_MAP(CPRI_HeadIFApp, CWinApp)
	//{{AFX_MSG_MAP(CPRI_HeadIFApp)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFApp construction

CPRI_HeadIFApp::CPRI_HeadIFApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CPRI_HeadIFApp object

CPRI_HeadIFApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFApp initialization

BOOL CPRI_HeadIFApp::InitInstance()
{
	m_Handle = CreateFileMapping((HANDLE) 0xFFFFFFFF, NULL, PAGE_READWRITE, 0, 32, "MY_PRI_HEADIF_CONTROL");

    if (m_Handle)
	{
       if (GetLastError() == ERROR_ALREADY_EXISTS) 
	   {       
          LPDWORD lpMapViewAddr;
          HWND    hwnd;

          m_Handle = OpenFileMapping(FILE_MAP_READ, FALSE, "MY_PRI_HEADIF_CONTROL");

          lpMapViewAddr = (LPDWORD) MapViewOfFile(m_Handle, FILE_MAP_READ, 0, 0, 4);

          hwnd = (HWND) *lpMapViewAddr;

          UnmapViewOfFile(lpMapViewAddr);	  

		  //AfxMessageBox("현재 프로그램이 작동중 입니다. 다시 확인해 보시기 바랍니다.");
		  
          return FALSE;
       }
    }

	AfxEnableControlContainer();

	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.

#ifdef _AFXDLL
	Enable3dControls();			// Call this when using MFC in a shared DLL
#else
	Enable3dControlsStatic();	// Call this when linking to MFC statically
#endif

	CPRI_HeadIFDlg* pDlg = new CPRI_HeadIFDlg;
    if(!pDlg->Create(IDD_PRI_HEADIF_DIALOG)) 
	{
		return FALSE; 
	}

    m_pMainWnd = pDlg; 
    pDlg->ShowWindow(SW_HIDE); 
    pDlg->UpdateWindow(); 

    return TRUE;    // 반드시 TRUE 

	CPRI_HeadIFDlg dlg;
	m_pMainWnd = &dlg;
	int nResponse = dlg.DoModal();
	if (nResponse == IDOK)
	{
		// TODO: Place code here to handle when the dialog is
		//  dismissed with OK
	}
	else if (nResponse == IDCANCEL)
	{
		// TODO: Place code here to handle when the dialog is
		//  dismissed with Cancel
	}

	// Since the dialog has been closed, return FALSE so that we exit the
	//  application, rather than start the application's message pump.
	return FALSE;
}

