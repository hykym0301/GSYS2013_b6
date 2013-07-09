// PRI_HeadIF.h : main header file for the PRI_HEADIF application
//

#if !defined(AFX_PRI_HEADIF_H__28C318EE_CFC2_4FBD_AEB0_B5AB03FFBB61__INCLUDED_)
#define AFX_PRI_HEADIF_H__28C318EE_CFC2_4FBD_AEB0_B5AB03FFBB61__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFApp:
// See PRI_HeadIF.cpp for the implementation of this class
//

class CPRI_HeadIFApp : public CWinApp
{
public:
	CPRI_HeadIFApp();
	HANDLE   m_Handle;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPRI_HeadIFApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CPRI_HeadIFApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PRI_HEADIF_H__28C318EE_CFC2_4FBD_AEB0_B5AB03FFBB61__INCLUDED_)
