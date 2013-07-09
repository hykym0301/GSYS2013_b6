// Dlg_GetImgPitch.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_GetImgPitch.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetImgPitch dialog


CDlg_GetImgPitch::CDlg_GetImgPitch(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_GetImgPitch::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlg_GetImgPitch)
	m_fImgPitch = 0.0f;
	//}}AFX_DATA_INIT
}


void CDlg_GetImgPitch::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_GetImgPitch)
	DDX_Text(pDX, IDC_EDIT_IMGPITCH, m_fImgPitch);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_GetImgPitch, CDialog)
	//{{AFX_MSG_MAP(CDlg_GetImgPitch)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetImgPitch message handlers
