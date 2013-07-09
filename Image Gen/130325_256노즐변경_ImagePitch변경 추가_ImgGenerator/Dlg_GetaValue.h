#if !defined(AFX_DLG_GETAVALUE_H__FBAC036F_A991_47E1_A430_41503C8C853E__INCLUDED_)
#define AFX_DLG_GETAVALUE_H__FBAC036F_A991_47E1_A430_41503C8C853E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_GetaValue.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetaValue dialog

class CDlg_GetaValue : public CDialog
{
// Construction
public:
	CDlg_GetaValue(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlg_GetaValue)
	enum { IDD = IDD_DIALOG_GETAVALE };
	double	m_dValue;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_GetaValue)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_GetaValue)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_GETAVALUE_H__FBAC036F_A991_47E1_A430_41503C8C853E__INCLUDED_)
