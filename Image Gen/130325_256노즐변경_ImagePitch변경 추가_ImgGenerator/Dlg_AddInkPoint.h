#if !defined(AFX_DLG_ADDINKPOINT_H__40E05F03_31EB_4EBD_AF35_3994B8D73E0D__INCLUDED_)
#define AFX_DLG_ADDINKPOINT_H__40E05F03_31EB_4EBD_AF35_3994B8D73E0D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_AddInkPoint.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_AddInkPoint dialog

class CDlg_AddInkPoint : public CDialog
{
// Construction
public:
	CDlg_AddInkPoint(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlg_AddInkPoint)
	enum { IDD = IDD_DIALOG_ADDINKPOINT };
	int		m_nSpace;
	int		m_nCount;
	double	m_dSpace;
	BOOL	m_bClear;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_AddInkPoint)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_AddInkPoint)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_ADDINKPOINT_H__40E05F03_31EB_4EBD_AF35_3994B8D73E0D__INCLUDED_)
