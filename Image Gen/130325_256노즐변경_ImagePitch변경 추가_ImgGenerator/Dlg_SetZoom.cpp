// Dlg_SetZoom.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_SetZoom.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetZoom dialog


CDlg_SetZoom::CDlg_SetZoom(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_SetZoom::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlg_SetZoom)
	m_nZoom = 0;
	//}}AFX_DATA_INIT
}


void CDlg_SetZoom::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_SetZoom)
	DDX_Text(pDX, IDC_EDIT_ZOOM, m_nZoom);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_SetZoom, CDialog)
	//{{AFX_MSG_MAP(CDlg_SetZoom)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetZoom message handlers
