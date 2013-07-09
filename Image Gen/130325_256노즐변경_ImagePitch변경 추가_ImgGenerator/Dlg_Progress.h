#if !defined(AFX_DLG_PROGRESS_H__10E9EC2F_2B45_4F33_9739_380F2BEF49AD__INCLUDED_)
#define AFX_DLG_PROGRESS_H__10E9EC2F_2B45_4F33_9739_380F2BEF49AD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_Progress.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_Progress dialog

//#include "ImgGeneratorDoc.h"

//class CImgGeneratorDoc;

class CDlg_Progress : public CDialog
{
// Construction
public:
	CDlg_Progress(CWnd* pParent = NULL);   // standard constructor
	BOOL	m_bCancel;
//	CImgGeneratorDoc*	m_pDoc;
	//CString				m_strFilePath;

// Dialog Data
	//{{AFX_DATA(CDlg_Progress)
	enum { IDD = IDD_DIALOG_PROGRESS };
	CProgressCtrl	m_ctrlProgress;
	CString	m_strStaticBox1;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_Progress)
	public:
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_Progress)
	virtual BOOL OnInitDialog();
	afx_msg void OnActivate(UINT nState, CWnd* pWndOther, BOOL bMinimized);
	virtual void OnCancel();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_PROGRESS_H__10E9EC2F_2B45_4F33_9739_380F2BEF49AD__INCLUDED_)
