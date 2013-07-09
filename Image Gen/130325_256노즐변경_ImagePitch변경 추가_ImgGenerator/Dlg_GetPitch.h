#if !defined(AFX_DLG_GETPITCH_H__8A28E62A_5CC3_4D4A_9E95_6E56FD830C1D__INCLUDED_)
#define AFX_DLG_GETPITCH_H__8A28E62A_5CC3_4D4A_9E95_6E56FD830C1D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_GetPitch.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetPitch dialog

class CDlg_GetPitch : public CDialog
{
// Construction
public:
	CDlg_GetPitch(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlg_GetPitch)
	enum { IDD = IDD_DIALOG_GETPITCH };
	double	m_dPitch;
	CString	m_strStatic;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_GetPitch)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_GetPitch)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_GETPITCH_H__8A28E62A_5CC3_4D4A_9E95_6E56FD830C1D__INCLUDED_)
