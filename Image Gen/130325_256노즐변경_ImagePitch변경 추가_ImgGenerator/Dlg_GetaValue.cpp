// Dlg_GetaValue.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_GetaValue.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetaValue dialog


CDlg_GetaValue::CDlg_GetaValue(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_GetaValue::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlg_GetaValue)
	m_dValue = 0.0;
	//}}AFX_DATA_INIT
}


void CDlg_GetaValue::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_GetaValue)
	DDX_Text(pDX, IDC_EDIT_VALUE, m_dValue);
	DDV_MinMaxDouble(pDX, m_dValue, 0., 10000000.);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_GetaValue, CDialog)
	//{{AFX_MSG_MAP(CDlg_GetaValue)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_GetaValue message handlers
