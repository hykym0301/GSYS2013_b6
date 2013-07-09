#if !defined(AFX_DLG_SETGLASS_H__45036814_BEF0_4EB1_A564_E39D20D95838__INCLUDED_)
#define AFX_DLG_SETGLASS_H__45036814_BEF0_4EB1_A564_E39D20D95838__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_SetGlass.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetGlass dialog

#include <afxtempl.h>
#include "Cell.h"

class CDlg_SetGlass : public CDialog
{
// Construction
public:
	CDlg_SetGlass(CWnd* pParent = NULL);   // standard constructor
	int m_nPitchCount;
	double m_dMinSpacePitch;
	CTypedPtrList<CObList, CPanel*>	m_pListPanel;

	void Clear_Panel();


// Dialog Data
	//{{AFX_DATA(CDlg_SetGlass)
	enum { IDD = IDD_DIALOG_GLASS };
	CEdit	m_ctrlPitch;
	CListCtrl	m_ctrlListGlassData;
	int		m_nPanelCount;
	CString	m_strPanelNo;
	double	m_dPitch;
	UINT	m_nPixelCount;
	UINT	m_nDropCount;
	UINT	m_nEmpCount;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_SetGlass)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_SetGlass)
	virtual BOOL OnInitDialog();
	afx_msg void OnButtonPanelcount();
	afx_msg void OnClickListGlassdata(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnButtonCommit();
	virtual void OnOK();
	afx_msg void OnChangeEditPitch();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_SETGLASS_H__45036814_BEF0_4EB1_A564_E39D20D95838__INCLUDED_)
