// Dlg_GetPitch.cpp : implementation file
//

#include "stdafx.h"
#include "ImgGenerator.h"
#include "Dlg_GetPitch.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetPitch dialog


CDlg_GetPitch::CDlg_GetPitch(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_GetPitch::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlg_GetPitch)
	m_dPitch = 0.0;
	m_strStatic = _T("");
	//}}AFX_DATA_INIT
}


void CDlg_GetPitch::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_GetPitch)
	DDX_Text(pDX, IDC_EDIT_PITCH, m_dPitch);
	DDX_Text(pDX, IDC_STATIC1, m_strStatic);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_GetPitch, CDialog)
	//{{AFX_MSG_MAP(CDlg_GetPitch)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetPitch message handlers
