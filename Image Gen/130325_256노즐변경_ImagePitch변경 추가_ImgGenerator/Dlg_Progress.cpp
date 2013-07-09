// Dlg_Progress.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_Progress.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_Progress dialog


CDlg_Progress::CDlg_Progress(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_Progress::IDD, pParent)
{
//	m_pDoc = NULL;
//	m_strFilePath="";
	m_bCancel=FALSE;
	//{{AFX_DATA_INIT(CDlg_Progress)
	m_strStaticBox1 = _T("");
	//}}AFX_DATA_INIT
}


void CDlg_Progress::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_Progress)
	DDX_Control(pDX, IDC_PROGRESS1, m_ctrlProgress);
	DDX_Text(pDX, IDC_STATIC1, m_strStaticBox1);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_Progress, CDialog)
	//{{AFX_MSG_MAP(CDlg_Progress)
	ON_WM_ACTIVATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_Progress message handlers

BOOL CDlg_Progress::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	m_ctrlProgress.SetRange(0, 100);
	m_ctrlProgress.SetPos(0);

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

//DEL void CDlg_Progress::ImageGenerate()
//DEL {
//DEL 
//DEL }

//DEL void CDlg_Progress::OnShowWindow(BOOL bShow, UINT nStatus) 
//DEL {
//DEL 	CDialog::OnShowWindow(bShow, nStatus);
//DEL 	
//DEL 	// TODO: Add your message handler code here
//DEL 	
//DEL 	
//DEL }

//DEL void CDlg_Progress::OnPaint() 
//DEL {
//DEL 	CPaintDC dc(this); // device context for painting
//DEL 	
//DEL 	// TODO: Add your message handler code here
//DEL 	
//DEL 	// Do not call CDialog::OnPaint() for painting messages
//DEL }

//DEL int CDlg_Progress::DoModal() 
//DEL {
//DEL 	// TODO: Add your specialized code here and/or call the base class
//DEL 	
//DEL 	return CDialog::DoModal();
//DEL }

//DEL void CDlg_Progress::OnSetFont(CFont* pFont) 
//DEL {
//DEL 	// TODO: Add your specialized code here and/or call the base class
//DEL 	
//DEL 	CDialog::OnSetFont(pFont);
//DEL }

void CDlg_Progress::OnActivate(UINT nState, CWnd* pWndOther, BOOL bMinimized) 
{
	CDialog::OnActivate(nState, pWndOther, bMinimized);
	
	// TODO: Add your message handler code here
	
}

//DEL void CDlg_Progress::OnSetFocus(CWnd* pOldWnd) 
//DEL {
//DEL 	CDialog::OnSetFocus(pOldWnd);
//DEL 	
//DEL 	// TODO: Add your message handler code here
//DEL 	ImageGenerate();
//DEL 	
//DEL }

void CDlg_Progress::OnCancel() 
{
	// TODO: Add extra cleanup here
	m_bCancel=TRUE;
	CDialog::OnCancel();
}
