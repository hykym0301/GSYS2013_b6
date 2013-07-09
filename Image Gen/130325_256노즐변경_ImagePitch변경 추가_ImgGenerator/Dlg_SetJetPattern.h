#if !defined(AFX_DLG_SETJETPATTERN_H__CE5D4849_B049_447C_8E85_53C412A0DAF7__INCLUDED_)
#define AFX_DLG_SETJETPATTERN_H__CE5D4849_B049_447C_8E85_53C412A0DAF7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_SetJetPattern.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetJetPattern dialog

class CDlg_SetJetPattern : public CDialog
{
// Construction
public:
	CDlg_SetJetPattern(CWnd* pParent = NULL);   // standard constructor

	double		m_dArrNzlDelay[MAKE_X_WIDTH_PIXELCOUNT];
	double		m_dArrNzlDelayPettern[MAKE_X_WIDTH_PIXELCOUNT];
// Dialog Data
	//{{AFX_DATA(CDlg_SetJetPattern)
	enum { IDD = IDD_DIALOG_IMGPATTERN };
	CListCtrl	m_ctrlListHeadPtn;
	CListCtrl	m_ctrlListPattern;
	double	m_dInterval;
	UINT	m_nPeriod;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_SetJetPattern)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_SetJetPattern)
	virtual BOOL OnInitDialog();
	afx_msg void OnButtonCommit();
	afx_msg void OnClickListPattern(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnClickListHeadpattern(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnButtonCreateheadlist();
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_SETJETPATTERN_H__CE5D4849_B049_447C_8E85_53C412A0DAF7__INCLUDED_)
