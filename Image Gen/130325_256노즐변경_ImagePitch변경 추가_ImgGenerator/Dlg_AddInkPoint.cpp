// Dlg_AddInkPoint.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_AddInkPoint.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_AddInkPoint dialog


CDlg_AddInkPoint::CDlg_AddInkPoint(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_AddInkPoint::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlg_AddInkPoint)
	m_nSpace = 0;
	m_nCount = 1;
	m_dSpace = 0.0;
	m_bClear = FALSE;
	//}}AFX_DATA_INIT
}


void CDlg_AddInkPoint::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_AddInkPoint)
	DDX_Radio(pDX, IDC_RADIO_SPACE, m_nSpace);
	DDX_Text(pDX, IDC_EDIT_COUNT, m_nCount);
	DDX_Text(pDX, IDC_EDIT_SPACE, m_dSpace);
	DDX_Check(pDX, IDC_CHECK_CLEAR, m_bClear);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_AddInkPoint, CDialog)
	//{{AFX_MSG_MAP(CDlg_AddInkPoint)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_AddInkPoint message handlers
