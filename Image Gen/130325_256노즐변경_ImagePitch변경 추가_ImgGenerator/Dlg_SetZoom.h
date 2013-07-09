#if !defined(AFX_DLG_SETZOOM_H__27C24904_F104_459D_9F72_10A7676C4396__INCLUDED_)
#define AFX_DLG_SETZOOM_H__27C24904_F104_459D_9F72_10A7676C4396__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_SetZoom.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetZoom dialog

class CDlg_SetZoom : public CDialog
{
// Construction
public:
	CDlg_SetZoom(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlg_SetZoom)
	enum { IDD = IDD_DIALOG_SETZOOM };
	UINT	m_nZoom;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_SetZoom)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_SetZoom)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_SETZOOM_H__27C24904_F104_459D_9F72_10A7676C4396__INCLUDED_)
