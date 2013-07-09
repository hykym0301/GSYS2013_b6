// ImgGenerator.h : main header file for the IMGGENERATOR application
//

#if !defined(AFX_IMGGENERATOR_H__F0C35FE7_AB4F_4D1F_AD60_0305BBD35DB5__INCLUDED_)
#define AFX_IMGGENERATOR_H__F0C35FE7_AB4F_4D1F_AD60_0305BBD35DB5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorApp:
// See ImgGenerator.cpp for the implementation of this class
//

class CImgGeneratorApp : public CWinApp
{
public:
	CImgGeneratorApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CImgGeneratorApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CImgGeneratorApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_IMGGENERATOR_H__F0C35FE7_AB4F_4D1F_AD60_0305BBD35DB5__INCLUDED_)
