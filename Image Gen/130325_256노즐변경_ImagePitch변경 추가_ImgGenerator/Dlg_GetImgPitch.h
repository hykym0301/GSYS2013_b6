#if !defined(AFX_DLG_GETIMGPITCH_H__0469001F_C770_4644_A195_CA76FA09CAE1__INCLUDED_)
#define AFX_DLG_GETIMGPITCH_H__0469001F_C770_4644_A195_CA76FA09CAE1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Dlg_GetImgPitch.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetImgPitch dialog

class CDlg_GetImgPitch : public CDialog
{
// Construction
public:
	CDlg_GetImgPitch(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlg_GetImgPitch)
	enum { IDD = IDD_DIALOG_GETIMGPITCH };
	float	m_fImgPitch;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlg_GetImgPitch)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlg_GetImgPitch)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLG_GETIMGPITCH_H__0469001F_C770_4644_A195_CA76FA09CAE1__INCLUDED_)
