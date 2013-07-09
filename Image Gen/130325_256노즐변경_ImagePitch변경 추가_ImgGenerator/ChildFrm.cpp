// ChildFrm.cpp : implementation of the CChildFrame class
//

#include "stdafx.h"
#include "ImgGenerator.h"

#include "ChildFrm.h"

#include "ImgGeneratorDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CChildFrame

IMPLEMENT_DYNCREATE(CChildFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CChildFrame, CMDIChildWnd)
	//{{AFX_MSG_MAP(CChildFrame)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CChildFrame construction/destruction

CChildFrame::CChildFrame()
{
	// TODO: add member initialization code here
	
}

CChildFrame::~CChildFrame()
{
}

BOOL CChildFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs
	

	if( !CMDIChildWnd::PreCreateWindow(cs) )
		return FALSE;
	
	cs.cx = 1024;
	cs.cy = 768;
		
	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CChildFrame diagnostics

#ifdef _DEBUG
void CChildFrame::AssertValid() const
{
	CMDIChildWnd::AssertValid();
}

void CChildFrame::Dump(CDumpContext& dc) const
{
	CMDIChildWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CChildFrame message handlers





void CChildFrame::ActivateFrame(int nCmdShow) 
{
	// TODO: Add your specialized code here and/or call the base class
	CRect rect;
	rect = ((CImgGeneratorDoc *)GetActiveDocument())->GetViewPos();

	if(rect.right != 0 && rect.bottom != 0)
		SetWindowPos(NULL, 
						rect.left, 
						rect.top, 
						(rect.right-rect.left), 
						(rect.bottom-rect.top), 
						SWP_SHOWWINDOW);

	CMDIChildWnd::ActivateFrame(nCmdShow);
}
