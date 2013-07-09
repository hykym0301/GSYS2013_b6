// ImgGeneratorView.cpp : implementation of the CImgGeneratorView class
//

#include "stdafx.h"
#include "ImgGenerator.h"

#include "ImgGeneratorDoc.h"
#include "ImgGeneratorView.h"

#include "MainFrm.h"

#include "Dlg_GetPitch.h"
#include "Dlg_AddInkPoint.h"
#include "Dlg_SetGlass.h"
#include "Dlg_SetZoom.h"
#include "Dlg_SetJetPattern.h"
#include "Dlg_Progress.h"
#include "Dlg_GetImgPitch.h"

//#include "ChildFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView

IMPLEMENT_DYNCREATE(CImgGeneratorView, CScrollView)

BEGIN_MESSAGE_MAP(CImgGeneratorView, CScrollView)
	//{{AFX_MSG_MAP(CImgGeneratorView)
	ON_BN_CLICKED(ID_GATEPITCH1, OnStaticGP1)
	ON_BN_CLICKED(ID_GATEPITCH2, OnStaticGP2)
	ON_BN_CLICKED(ID_DATAPITCH1, OnStaticDP1)
	ON_BN_CLICKED(ID_DATAPITCH2, OnStaticDP2)
	ON_BN_CLICKED(ID_IPSTHETA, OnStaticTheta)
	ON_BN_CLICKED(ID_SLEFTPITCH, OnStaticLeftPitch)
	ON_WM_CTLCOLOR()
	ON_COMMAND(ID_SETPITCH, OnSetpitch)
	ON_WM_MOUSEWHEEL()
	ON_COMMAND(ID_IPS, OnIps)
	ON_COMMAND(ID_TN, OnTn)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_RBUTTONUP()
	ON_COMMAND(ID_ADDINKPOINT, OnAddinkpoint)
	ON_WM_KEYDOWN()
	ON_WM_KEYUP()
	ON_COMMAND(ID_DELETE, OnDelete)
	ON_COMMAND(ID_SETDIAMETER, OnSetdiameter)
	ON_COMMAND(ID_IMGGEN, OnImggen)
	ON_COMMAND(ID_GLASS, OnGlass)
	ON_COMMAND(ID_ZOOM, OnZoom)
	ON_COMMAND(ID_SETPATTERN, OnSetpattern)
	ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
	ON_COMMAND(ID_EDIT_REDO, OnEditRedo)
	ON_COMMAND(ID_SET_IMGPITCH, OnSetImgpitch)
	ON_COMMAND(ID_TXTGEN, OnTxtgen)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CScrollView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CScrollView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CScrollView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView construction/destruction

CImgGeneratorView::CImgGeneratorView()
{
	// TODO: add construction code here
	m_nViewScale = 100;

	m_MoveMode = FALSE;

	m_CursorPoint = CPoint(0, 0);
	m_FirstPoint = CPoint(0, 0);

	m_pSelected = NULL;
	m_pTempInkPoint = NULL;
	m_pEditA = NULL;
	m_pEditB = NULL;

	m_brush.CreateSolidBrush(RGB(0,0,255));
}

CImgGeneratorView::~CImgGeneratorView()
{
	if(m_pEditA != NULL)
		delete m_pEditA;

	if(m_pEditB != NULL)
		delete m_pEditB;
}

BOOL CImgGeneratorView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CScrollView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView drawing

void CImgGeneratorView::OnDraw(CDC* pDC)
{
	CImgGeneratorDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here
	GetDocument()->m_Cell.Draw(pDC);
}

void CImgGeneratorView::OnInitialUpdate()
{
	CScrollView::OnInitialUpdate();

	CSize sizeTotal;
	// TODO: calculate the total size of this view
	
	CImgGeneratorDoc* pDoc = GetDocument();

	m_pEditA = new CEditText();
	m_pEditA->m_strText = "";
	m_pEditA->Create(SS_LEFT | WS_CHILD | SS_NOTIFY | ES_AUTOVSCROLL | ES_MULTILINE | ES_READONLY, CRect ( 1, 1, 180, 100 ), this, ID_COMMENT );
	m_pEditA->SetMargins(10,10);
	m_pEditA->m_strText.Format("Image Pitch(um/pixel): %.1f", pDoc->m_Cell.m_fImgPitch);
	m_pEditA->m_strText = m_pEditA->m_strText; // + pDoc->m_Comment;
	m_pEditA->SetTxt();
	m_pEditA->Show();

	m_pEditB = new CEditText();
	m_pEditB->m_strText = "";
	m_pEditB->Create(SS_LEFT | WS_CHILD | SS_NOTIFY | WS_VSCROLL | ES_MULTILINE, CRect ( 1, 110, 180, 300 ), this, ID_COMMENT );
	m_pEditB->SetMargins(10,10);
	m_pEditB->SetLimitText(1000);
	m_pEditB->m_strText = pDoc->m_Comment;
	m_pEditB->SetTxt();
	m_pEditB->Show();
	
	pDoc->m_Cell.m_pStatictDataPitch1Text = new CStaticText();
	pDoc->m_Cell.m_pStatictDataPitch1Text->m_nID = ID_DATAPITCH1;
	pDoc->m_Cell.m_pStatictDataPitch1Text->m_strText = "";
	pDoc->m_Cell.m_pStatictDataPitch1Text->Create(pDoc->m_Cell.m_pStatictDataPitch1Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictDataPitch1Text->m_nID );
	pDoc->m_Cell.m_pStatictDataPitch1Text->Show();

	pDoc->m_Cell.m_pStatictDataPitch2Text = new CStaticText();
	pDoc->m_Cell.m_pStatictDataPitch2Text->m_nID = ID_DATAPITCH2;
	pDoc->m_Cell.m_pStatictDataPitch2Text->m_strText = "";
	pDoc->m_Cell.m_pStatictDataPitch2Text->Create(pDoc->m_Cell.m_pStatictDataPitch2Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictDataPitch2Text->m_nID );
	pDoc->m_Cell.m_pStatictDataPitch2Text->Show();

	pDoc->m_Cell.m_pStatictDataPitch3Text = new CStaticText();
	pDoc->m_Cell.m_pStatictDataPitch3Text->m_nID = ID_DATAPITCH3;
	pDoc->m_Cell.m_pStatictDataPitch3Text->m_strText = "";
	pDoc->m_Cell.m_pStatictDataPitch3Text->Create(pDoc->m_Cell.m_pStatictDataPitch3Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictDataPitch3Text->m_nID );
	pDoc->m_Cell.m_pStatictDataPitch3Text->Show();


	pDoc->m_Cell.m_pStatictGatePitch1Text = new CStaticText();
	pDoc->m_Cell.m_pStatictGatePitch1Text->m_nID = ID_GATEPITCH1;
	pDoc->m_Cell.m_pStatictGatePitch1Text->m_strText = "";
	pDoc->m_Cell.m_pStatictGatePitch1Text->Create(pDoc->m_Cell.m_pStatictGatePitch1Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictGatePitch1Text->m_nID );
	pDoc->m_Cell.m_pStatictGatePitch1Text->Show();


	pDoc->m_Cell.m_pStatictGatePitch2Text = new CStaticText();
	pDoc->m_Cell.m_pStatictGatePitch2Text->m_nID = ID_GATEPITCH2;
	pDoc->m_Cell.m_pStatictGatePitch2Text->m_strText = "";
	pDoc->m_Cell.m_pStatictGatePitch2Text->Create(pDoc->m_Cell.m_pStatictGatePitch2Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictGatePitch2Text->m_nID );
	pDoc->m_Cell.m_pStatictGatePitch2Text->Show();


	pDoc->m_Cell.m_pStatictIPSThetaText = new CStaticText();
	pDoc->m_Cell.m_pStatictIPSThetaText->m_nID = ID_IPSTHETA;
	pDoc->m_Cell.m_pStatictIPSThetaText->m_strText = "";
	pDoc->m_Cell.m_pStatictIPSThetaText->Create(pDoc->m_Cell.m_pStatictIPSThetaText->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 50, 20 ), this, pDoc->m_Cell.m_pStatictIPSThetaText->m_nID );
	pDoc->m_Cell.m_pStatictIPSThetaText->Show();


	pDoc->m_Cell.m_pStatictLeftPitchText = new CStaticText();
	pDoc->m_Cell.m_pStatictLeftPitchText->m_nID = ID_SLEFTPITCH;
	pDoc->m_Cell.m_pStatictLeftPitchText->m_strText = "";
	pDoc->m_Cell.m_pStatictLeftPitchText->Create(pDoc->m_Cell.m_pStatictLeftPitchText->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), this, pDoc->m_Cell.m_pStatictLeftPitchText->m_nID );
	pDoc->m_Cell.m_pStatictLeftPitchText->Show();

	

	pDoc->m_Cell.UpdateCoord(this);
	pDoc->UpdateAllViews(NULL);
	pDoc->SetModifiedFlag();

	CSize aSize = pDoc->GetDocSize();
	SetScrollSizes(MM_TEXT, aSize);	


	// Undo&Redo를 위해 스택에 백업
	CellPush();
}

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView printing

BOOL CImgGeneratorView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CImgGeneratorView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CImgGeneratorView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView diagnostics

#ifdef _DEBUG
void CImgGeneratorView::AssertValid() const
{
	CScrollView::AssertValid();
}

void CImgGeneratorView::Dump(CDumpContext& dc) const
{
	CScrollView::Dump(dc);
}

CImgGeneratorDoc* CImgGeneratorView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CImgGeneratorDoc)));
	return (CImgGeneratorDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorView message handlers

HBRUSH CImgGeneratorView::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor) 
{
	HBRUSH hbr = CScrollView::OnCtlColor(pDC, pWnd, nCtlColor);
	
	// TODO: Change any attributes of the DC here
	int nID = pWnd->GetDlgCtrlID();
	if( nID == NULL || 
		nID == 307 || 
		(nID >= ID_DATAPITCH1 && nID <= ID_SLEFTPITCH))
	{
		pDC->SetBkMode(TRANSPARENT);                       // 투명한 속성
		

		if(nID == 307)
		{
			pDC->SetTextColor(RGB(0,0,255));
		}

		return (HBRUSH)GetStockObject(NULL_BRUSH);
	
	 }

	// TODO: Return a different brush if the default is not desired
	return hbr;
}



void CImgGeneratorView::OnSetpitch() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();

	CDlg_GetPitch aDlg;
	if(m_pSelected)
		aDlg.m_dPitch = m_pSelected->m_inkPointInfo.ptPitch.dSpacePitch;
	else
		aDlg.m_dPitch = 0;

	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_Cell.SetSpacePitch_Selected(aDlg.m_dPitch);
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
	}

}


BOOL CImgGeneratorView::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt) 
{
	// TODO: Add your message handler code here and/or call default
	CImgGeneratorDoc* pDoc = GetDocument();
	CClientDC aDC(this);
	OnPrepareDC(&aDC);
	aDC.DPtoLP(&pt);

	m_nViewScale = (int)(pDoc->GetScale() * 100.0);
	if(nFlags == MK_CONTROL){
		if(zDelta > 0){
//			if(m_nViewScale <= 500)
				m_nViewScale += 20;
		}
		else{
			if(m_nViewScale >= 20)
				m_nViewScale -= 20;
		}


		pDoc->SetScale(m_nViewScale);
 		pDoc->m_Cell.UpdateCoord(this);
 
		CSize aSize = pDoc->GetDocSize();
 		SetScrollSizes(MM_TEXT, aSize);


		pDoc->m_Cell.m_ptScrollPos = GetScrollPosition();
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();

	}

	return CScrollView::OnMouseWheel(nFlags, zDelta, pt);
}


CInkPoint* CImgGeneratorView::Select(CPoint aPoint)
{
	// Convert parameter aPoint to logical coordinates
	CClientDC aDC(this);
	OnPrepareDC(&aDC);
	aDC.DPtoLP(&aPoint);

	CImgGeneratorDoc* pDoc = GetDocument();		// Get a pointer to the document
	CInkPoint* pInkPoint = 0;					// Store an element pointer
	CRect aRect(0,0,0,0);					// Store a rectangle
	POSITION aPos = pDoc->m_Cell.GetListTailPosition();	// Get last element position

	while(aPos)	// Iterate through the list
	{
		pInkPoint = pDoc->m_Cell.GetPrev(aPos);
		if(pInkPoint) 
		{
			aRect = pInkPoint->GetBoundRect();
			// Select the first element that appears under the cursor
			if(aRect.PtInRect(aPoint))
				return pInkPoint;
		}
	}

	return 0;
}





void CImgGeneratorView::OnIps() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();

	pDoc->m_Cell.m_nCellType = 0;
	pDoc->m_Cell.UpdateCoord(this);
	pDoc->UpdateAllViews(NULL);
	pDoc->SetModifiedFlag();

}

void CImgGeneratorView::OnTn() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();

	pDoc->m_Cell.m_nCellType = 1;
	pDoc->m_Cell.UpdateCoord(this);
	pDoc->UpdateAllViews(NULL);
	pDoc->SetModifiedFlag();

}


CInkPoint* CImgGeneratorView::CreateInkPoint()
{
	CInkPoint* pInkPoint=0;
	pInkPoint = new CInkPoint();
	pInkPoint->m_inkPointInfo.ptPitch.dLeftPitch = GetDocument()->m_Cell.m_dinkLeftPitch;
	pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = GetDocument()->m_Cell.m_dinkTopPitch;
	pInkPoint->m_inkPointInfo.ptPitch.dDiameter = GetDocument()->m_Cell.m_dinkDiameter;

	pInkPoint->m_inkPointInfo.pStaticSpacePitchText = new CStaticText();
	pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText = "";
	pInkPoint->m_inkPointInfo.pStaticSpacePitchText->Create(pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText, 
															SS_LEFT | WS_CHILD | SS_NOTIFY, 
															CRect ( 1, 1, 60, 20 ), 
															this, 
															NULL );
	pInkPoint->m_inkPointInfo.pStaticSpacePitchText->Show();

	pInkPoint->m_inkPointInfo.pStaticTopPitchText = new CStaticText();
	pInkPoint->m_inkPointInfo.pStaticTopPitchText->m_strText = "";
	pInkPoint->m_inkPointInfo.pStaticTopPitchText->Create(pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText, 
															SS_LEFT | WS_CHILD | SS_NOTIFY, 
															CRect ( 1, 1, 70, 20 ), 
															this, 
															307 );
	pInkPoint->m_inkPointInfo.pStaticTopPitchText->Show();
	
	return pInkPoint;
}


void CImgGeneratorView::OnStaticDP1()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_GetPitch aDlg;

	aDlg.m_dPitch = pDoc->m_Cell.m_cpPitch.dDataPitch1;
	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_Cell.m_cpPitch.dDataPitch1 = aDlg.m_dPitch;
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();

	}


}


void CImgGeneratorView::OnStaticDP2()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_GetPitch aDlg;

	aDlg.m_dPitch = pDoc->m_Cell.m_cpPitch.dDataPitch2;
	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_Cell.m_cpPitch.dDataPitch2 = aDlg.m_dPitch;
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();
	}

}


void CImgGeneratorView::OnStaticGP1()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_GetPitch aDlg;

	aDlg.m_dPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1;
	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_Cell.m_cpPitch.dGatePitch1 = aDlg.m_dPitch;
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();
	}

}

void CImgGeneratorView::OnStaticGP2()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_GetPitch aDlg;

	aDlg.m_dPitch = pDoc->m_Cell.m_cpPitch.dGatePitch2;
	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_Cell.m_cpPitch.dGatePitch2 = aDlg.m_dPitch;
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();
	}

}

void CImgGeneratorView::OnStaticTheta()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_GetPitch aDlg;

	aDlg.m_dPitch = pDoc->m_Cell.m_fIPSTheta;
	aDlg.m_strStatic = "Theta :";

	if(aDlg.DoModal() == IDOK)
	{
		if(aDlg.m_dPitch > 45.0)
		{
			AfxMessageBox("45도 이하만 가능합니다.");
		}
		else
		{
			pDoc->m_Cell.m_fIPSTheta = (float)aDlg.m_dPitch;
			pDoc->m_Cell.UpdateCoord(this);
			pDoc->UpdateAllViews(NULL);
			pDoc->SetModifiedFlag();
		}
	}

}

void CImgGeneratorView::OnStaticLeftPitch()
{
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CInkPoint* pInkPoint;
	POSITION aPosition;
	double LeftPitch = 0.0;

	CDlg_GetPitch aDlg;
	aDlg.m_dPitch = pDoc->m_Cell.m_dinkLeftPitch;
	aDlg.m_strStatic = "Pitch(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		LeftPitch = aDlg.m_dPitch;

		aPosition = pDoc->m_Cell.GetListHeadPosition();

		while(aPosition)
		{
			pInkPoint = pDoc->m_Cell.GetNext(aPosition);
			pInkPoint->m_inkPointInfo.ptPitch.dLeftPitch = LeftPitch;
		}

		pDoc->m_Cell.m_dinkLeftPitch = LeftPitch;

		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();
	}

}


void CImgGeneratorView::MoveInkPoint(CClientDC &aDC, const CPoint &point)
{
	CPoint aPoint;
	CSize Distance;
	CRect aRect;

	aPoint = point;
	aPoint.x = m_CursorPoint.x;
	Distance = aPoint - m_CursorPoint;
	m_CursorPoint = aPoint;

	CInkPoint* pInkPoint=0;
	CImgGeneratorDoc* pDoc = GetDocument();
	POSITION aPos = pDoc->m_Cell.GetListHeadPosition();
	while(aPos)
	{
		pInkPoint = pDoc->m_Cell.GetNext(aPos);
		if(pInkPoint)
		{
	
			if(pInkPoint->m_inkPointInfo.bSelected == TRUE)
			{
				aDC.SetROP2(R2_NOTXORPEN);
				pInkPoint->Draw(&aDC, pInkPoint);
				pInkPoint->Move(Distance);
				pInkPoint->Draw(&aDC, pInkPoint);

				aRect = pInkPoint->GetBoundRect();
				pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = (pDoc->m_Cell.m_rtEnclosingRect.bottom - 
													((aRect.bottom - aRect.top)/2 + aRect.top)) * 
													(double)pDoc->m_Cell.m_fImgPitch / pDoc->m_Cell.m_fViewScale;


				if (pInkPoint->m_inkPointInfo.ptPitch.dTopPitch < 0) 
				{
					pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = 0;
					return;
				}
				else if(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch >= pDoc->m_Cell.m_cpPitch.dGatePitch1)
				{
					if(fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch) == 0)
					{
						pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - pDoc->m_Cell.m_fImgPitch;
					}
					else
					{
						pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - 
																	fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch);
					}
					
					return;
				}
				else if(fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, pDoc->m_Cell.m_fImgPitch) > 0.0)
				{
					if(fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, pDoc->m_Cell.m_fImgPitch) > (pDoc->m_Cell.m_fImgPitch/2.0))
					{
						pInkPoint->m_inkPointInfo.ptPitch.dTopPitch += 
							(pDoc->m_Cell.m_fImgPitch - fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, pDoc->m_Cell.m_fImgPitch));
						
						if(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch >= pDoc->m_Cell.m_cpPitch.dGatePitch1)
						{
							if(fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch) == 0)
							{
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - pDoc->m_Cell.m_fImgPitch;
							}
							else
							{
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - 
																			fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch);
							}
							
							return;
						}
					}
					else
					{
						pInkPoint->m_inkPointInfo.ptPitch.dTopPitch -= 
							fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, pDoc->m_Cell.m_fImgPitch);
					}
				}

			}
		}
	}

}



void CImgGeneratorView::OnLButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	CClientDC aDC(this);
	OnPrepareDC(&aDC);
	GetCursorPos(&m_CursorPoint);
	ScreenToClient(&m_CursorPoint);
	aDC.DPtoLP(&m_CursorPoint);

	m_FirstPoint = point;


	CImgGeneratorDoc* pDoc = GetDocument();
	CRect aRect;
	CInkPoint* pCurrentSelection = Select(point);

	if(!pCurrentSelection)	// 공란을 클릭했을 경우 모든 Select 해제
	{
		pDoc->m_Cell.AllUnselect();
		m_pSelected = 0;

	}
	else if(nFlags == (MK_CONTROL | MK_LBUTTON))	// Ctrl + Left Button
	{
		if(pCurrentSelection)
		{
			
			m_pSelected = pCurrentSelection;

			if(m_pSelected)	// Select
			{
				// Undo&Redo를 위해 스택에 백업
				CellPush();

				pDoc->m_Cell.SelectCtrl(m_pSelected);
				pDoc->UpdateAllViews(NULL);
				pDoc->SetModifiedFlag();
			}
		}

	}
	else if(nFlags == (MK_SHIFT | MK_LBUTTON))		// Shift + Left Button
	{
		// Undo&Redo를 위해 스택에 백업
		CellPush();

		m_pSelected = pCurrentSelection;

	}
	else if(nFlags == MK_LBUTTON)					// Only Left Button
	{

		if(pCurrentSelection)
		{
			m_pSelected = pCurrentSelection;

			if(m_pSelected)	// Select
			{
				// Undo&Redo를 위해 스택에 백업
				CellPush();

				pDoc->m_Cell.SelectAlone(m_pSelected);
				pDoc->UpdateAllViews(NULL);
				pDoc->SetModifiedFlag();
				
			}

		}

	}

	
	CScrollView::OnLButtonDown(nFlags, point);
}

void CImgGeneratorView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	GetDocument()->m_Cell.m_ptScrollPos = GetScrollPosition();
	GetDocument()->m_Cell.UpdateCoord(this);

	GetDocument()->UpdateAllViews(NULL);
	GetDocument()->SetModifiedFlag();

	CScrollView::OnLButtonUp(nFlags, point);
}

void CImgGeneratorView::OnMouseMove(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	CClientDC aDC(this);
	OnPrepareDC(&aDC);

	CImgGeneratorDoc* pDoc = GetDocument();
	CRect aRect, bRect;
	CInkPoint* pCurrentSelection = Select(point);

	if(nFlags == (MK_CONTROL | MK_LBUTTON))
	{
		if(pCurrentSelection)
		{
			aDC.DPtoLP(&point);			// Convert to logical coordinatess
			pDoc->m_Cell.m_rtEnclosingRect.NormalizeRect();
			InvalidateRect(pDoc->m_Cell.m_rtEnclosingRect, FALSE);

			MoveInkPoint(aDC, point);	// Move the element
			return;
		}

	}
	else if(nFlags == (MK_SHIFT | MK_LBUTTON))
	{
		//m_FirstPoint = point;

		if(m_pSelected)
		{
			aDC.DPtoLP(&point);			// Convert to logical coordinatess
			aRect = pDoc->m_Cell.m_rtEnclosingRect;	//.NormalizeRect();
			aDC.DPtoLP(aRect);
			aRect.NormalizeRect();
			InvalidateRect(aRect, FALSE);

			MoveInkPoint(aDC, point);	// Move the element
			return;
		}
		else
		{
			//aDC.DPtoLP(&point);
			//aDC.DPtoLP(&m_FirstPoint);
			if(m_FirstPoint.y < point.y)
			{
				bRect.top = m_FirstPoint.y;
				bRect.bottom = point.y;
			}
			else
			{
				bRect.top = point.y;
				bRect.bottom = m_FirstPoint.y;
			}

			if(m_FirstPoint.x < point.x)
			{
				bRect.left = m_FirstPoint.x;
				bRect.right = point.x;
			}
			else
			{
				bRect.left = point.x;
				bRect.right = m_FirstPoint.x;
			}


			//aRect = pDoc->m_Cell.m_rtEnclosingRect;	//.NormalizeRect();
			aDC.DPtoLP(bRect);
			
			CPoint aPos = GetScrollPosition();
			aRect = pDoc->m_Cell.m_rtEnclosingRect;	//.NormalizeRect();
			aRect.top -= aPos.y;
			aRect.NormalizeRect();
			InvalidateRect(aRect, FALSE);

			/*pDoc->m_Cell.m_rtEnclosingRect.NormalizeRect();
			InvalidateRect(pDoc->m_Cell.m_rtEnclosingRect, FALSE);*/

			TRACE("%d, %d, %d, %d\n", bRect.left, bRect.top, bRect.right, bRect.bottom);
			Select_Group(bRect);

			return;

		}
	}
	else if(nFlags == MK_LBUTTON)
	{
		if(m_pSelected)	// Select
		{
			aDC.DPtoLP(&point);			// Convert to logical coordinatess
			pDoc->m_Cell.m_rtEnclosingRect.NormalizeRect();
			InvalidateRect(pDoc->m_Cell.m_rtEnclosingRect, FALSE);

			MoveInkPoint(aDC, point);	// Move the element
			return;
		}

	}
	else
	{
		
	}

	CString str;
	str.Format("마우스 좌표 (%4d,%4d)", point.x, point.y);
	CMainFrame *pMainFrame = (CMainFrame *)AfxGetMainWnd();
	pMainFrame->m_wndStatusBar.SetPaneText(1, str);


	CScrollView::OnMouseMove(nFlags, point);
}

void CImgGeneratorView::OnRButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	//GetDocument()->m_Cell.AllUnselect();
	m_pSelected = Select(point);
	if(m_pSelected)
		m_pSelected->m_inkPointInfo.bSelected = TRUE;

	GetDocument()->UpdateAllViews(NULL);

	CMenu aMenu;
	aMenu.LoadMenu(IDR_CURSOR_MENU);
	ClientToScreen(&point);

	if(m_pSelected)
		aMenu.GetSubMenu(0)->TrackPopupMenu(TPM_LEFTALIGN|TPM_RIGHTBUTTON, point.x, point.y, this);
	else
		aMenu.GetSubMenu(1)->TrackPopupMenu(TPM_LEFTALIGN|TPM_RIGHTBUTTON, point.x, point.y, this);


	CScrollView::OnRButtonUp(nFlags, point);
}

void CImgGeneratorView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
	if(pHint)
	{
		CClientDC aDC(this);
		OnPrepareDC(&aDC);

		CRect aRect = static_cast<CInkPoint *>(pHint)->GetBoundRect();
		aDC.LPtoDP(aRect);
		InvalidateRect(aRect);
	}
	else
		InvalidateRect(0);
	
}

void CImgGeneratorView::OnAddinkpoint() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CInkPoint*  pTempInkPoint = NULL;
	CClientDC aDC(this);
	int i=0,j=0;
	double AutoSpacePitch=0.0;
	CDlg_AddInkPoint aDlg;

	if(aDlg.DoModal() == IDOK)
	{
		if(aDlg.m_nCount > 0)
		{
			if(aDlg.m_bClear)
				pDoc->m_Cell.Clear_InkPoint();
			
			switch(aDlg.m_nSpace)
			{
				case -1:			// 선택 없음

					break;

				case 0:				// Space
					if((aDlg.m_dSpace * aDlg.m_nCount) > (pDoc->m_Cell.m_cpPitch.dGatePitch1 - pDoc->m_Cell.m_cpPitch.dGatePitch2))
					{
						AfxMessageBox("총 Pitch를 초과합니다. 확인 후 재시도 하십시요.");
						return;
					}

					for(i=0; i<aDlg.m_nCount;i++)
					{
						pTempInkPoint = NULL;
						pTempInkPoint = CreateInkPoint();
						pDoc->m_Cell.Add(pTempInkPoint);
						pTempInkPoint->Init_Variable();

						pTempInkPoint->m_inkPointInfo.ptPitch.dTopPitch = aDlg.m_dSpace * (i+1);
					}
					pDoc->m_Cell.UpdateCoord(this);
					pTempInkPoint->Draw(&aDC, pTempInkPoint);

					break;

				case 1:				// Auto Space
					AutoSpacePitch = (pDoc->m_Cell.m_cpPitch.dGatePitch1 - pDoc->m_Cell.m_cpPitch.dGatePitch2) / aDlg.m_nCount;

					for(i=0; i<aDlg.m_nCount;i++)
					{
						pTempInkPoint = NULL;
						pTempInkPoint = CreateInkPoint();
						pDoc->m_Cell.Add(pTempInkPoint);
						pTempInkPoint->Init_Variable();

						pTempInkPoint->m_inkPointInfo.ptPitch.dTopPitch = AutoSpacePitch * i;
					}
					pDoc->m_Cell.UpdateCoord(this);
					pTempInkPoint->Draw(&aDC, pTempInkPoint);

					break;

			}

		}
	}

	pDoc->UpdateAllViews(NULL);
	
}



void CImgGeneratorView::OnPrepareDC(CDC* pDC, CPrintInfo* pInfo) 
{
	// TODO: Add your specialized code here and/or call the base class
	CScrollView::OnPrepareDC(pDC, pInfo);

}

void CImgGeneratorView::Select_Group(CRect rect)
{
	// Convert parameter aPoint to logical coordinates
	CClientDC aDC(this);
	OnPrepareDC(&aDC);
	//aDC.DPtoLP(&rect);
	CRgn region;
	region.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);

	CImgGeneratorDoc* pDoc = GetDocument();		// Get a pointer to the document
	CInkPoint* pInkPoint = 0;					// Store an element pointer
	CRect aRect(0,0,0,0);					// Store a rectangle
	POSITION aPos = pDoc->m_Cell.GetListTailPosition();	// Get last element position

	pDoc->m_Cell.AllUnselect();

	while(aPos)	// Iterate through the list
	{
		pInkPoint = pDoc->m_Cell.GetPrev(aPos);
		aRect = pInkPoint->GetBoundRect();
		// Select the first element that appears under the cursor
		if(region.RectInRegion(aRect))
		{
			pInkPoint->m_inkPointInfo.bSelected = TRUE;
		}
		TRACE("%d, %d, %d, %d\n", aRect.left, aRect.top, aRect.right, aRect.bottom);
	}
}

void CImgGeneratorView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	CImgGeneratorDoc* pDoc = GetDocument();
	CInkPoint* pInkPoint=NULL;
	POSITION aPos = NULL;

	if(nChar == VK_DELETE)
	{
		// Undo&Redo를 위해 스택에 백업
		CellPush();

		pDoc->m_Cell.DeleteSelected();
		pDoc->UpdateAllViews(NULL);

	}
	else if((nChar == VK_UP) || (nChar == VK_DOWN))
	{
		// Undo&Redo를 위해 스택에 백업
		CellPush();

		aPos = pDoc->m_Cell.GetListHeadPosition();
		while(aPos)
		{
			pInkPoint = pDoc->m_Cell.GetNext(aPos);
			if(pInkPoint)
			{
				if(pInkPoint->m_inkPointInfo.bSelected == TRUE)
				{
					if(nChar == VK_UP)
					{
						if ((pInkPoint->m_inkPointInfo.ptPitch.dTopPitch + pDoc->m_Cell.m_fImgPitch) <= pDoc->m_Cell.m_cpPitch.dGatePitch1)
							if(!(fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, (double)pDoc->m_Cell.m_fImgPitch)))
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch += pDoc->m_Cell.m_fImgPitch;
							else
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch += pDoc->m_Cell.m_fImgPitch - ((int)pInkPoint->m_inkPointInfo.ptPitch.dTopPitch % (int)pDoc->m_Cell.m_fImgPitch);


							if(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch >= pDoc->m_Cell.m_cpPitch.dGatePitch1)
							{
								if(fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch) == 0)
								{
									pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - pDoc->m_Cell.m_fImgPitch;
								}
								else
								{
									pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pDoc->m_Cell.m_cpPitch.dGatePitch1 - 
																				fmod(pDoc->m_Cell.m_cpPitch.dGatePitch1, pDoc->m_Cell.m_fImgPitch);
								}
								
								return;
							}
					}
					else if (nChar == VK_DOWN)
					{
						if ((pInkPoint->m_inkPointInfo.ptPitch.dTopPitch - pDoc->m_Cell.m_fImgPitch) >= 0)
							if(!(fmod(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch, 2.0)))
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch -= pDoc->m_Cell.m_fImgPitch;
							else
								pInkPoint->m_inkPointInfo.ptPitch.dTopPitch -= (int)pInkPoint->m_inkPointInfo.ptPitch.dTopPitch % (int)pDoc->m_Cell.m_fImgPitch;
					}

					pDoc->m_Cell.UpdateCoord(this);
					pDoc->UpdateAllViews(NULL, NULL, pInkPoint);
					pDoc->UpdateAllViews(NULL, NULL, pInkPoint->m_inkPointInfo.pStaticSpacePitchText);
					pDoc->UpdateAllViews(NULL, NULL, pInkPoint->m_inkPointInfo.pStaticTopPitchText);
				}
			}
		}
	}
	else if(nChar == VK_TAB)
	{
		aPos = pDoc->m_Cell.GetListHeadPosition();
		while(aPos)
		{
			pInkPoint = pDoc->m_Cell.GetNext(aPos);
			if(pInkPoint)
			{
				if(pInkPoint->m_inkPointInfo.bSelected == TRUE)
				{
					pDoc->m_Cell.AllUnselect();
					pDoc->UpdateAllViews(NULL);

					if(aPos)	
					{
						pInkPoint = pDoc->m_Cell.GetNext(aPos);

						if(pInkPoint)
						{
							pInkPoint->m_inkPointInfo.bSelected = TRUE;
							pDoc->UpdateAllViews(NULL, NULL, pInkPoint);
						}
					}
					else	// Tail InkPoint이면 Head InkPoint Select
					{
						aPos = pDoc->m_Cell.GetListHeadPosition();
						pInkPoint = pDoc->m_Cell.GetNext(aPos);
						if(pInkPoint)
						{
							pInkPoint->m_inkPointInfo.bSelected = TRUE;
							pDoc->UpdateAllViews(NULL, NULL, pInkPoint);
						}
					}
				}
			}
		}

	}
	

	CScrollView::OnKeyDown(nChar, nRepCnt, nFlags);
}

void CImgGeneratorView::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	if(nChar == 65536 || nChar == 17)
	{
		//GetDocument()->m_Cell.AllUnselect();
		GetDocument()->UpdateAllViews(NULL);
		GetDocument()->SetModifiedFlag();
	}
	
	CScrollView::OnKeyUp(nChar, nRepCnt, nFlags);
}

void CImgGeneratorView::OnDelete() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

 	CImgGeneratorDoc* pDoc = GetDocument();

	pDoc->m_Cell.DeleteSelected();
	pDoc->UpdateAllViews(NULL);

}



void CImgGeneratorView::OnSetdiameter() 
{
	// TODO: Add your command handler code here
	// Undo&Redo를 위해 스택에 백업
	CellPush();

	CImgGeneratorDoc* pDoc = GetDocument();
	CInkPoint* pInkPoint;
	POSITION aPosition;
	double Diameter = 0.0;

	CDlg_GetPitch aDlg;
	if(m_pSelected)
		aDlg.m_dPitch = m_pSelected->m_inkPointInfo.ptPitch.dDiameter;
	else
		aDlg.m_dPitch = 0;

	aDlg.m_strStatic = "Diameter(um) :";

	if(aDlg.DoModal() == IDOK)
	{
		Diameter = aDlg.m_dPitch;
	

		aPosition = pDoc->m_Cell.GetListHeadPosition();

		while(aPosition)
		{
			pInkPoint = pDoc->m_Cell.GetNext(aPosition);
			if(pInkPoint)
			{
				pInkPoint->m_inkPointInfo.ptPitch.dDiameter = Diameter;
			}
			
		}

		pDoc->m_Cell.m_dinkDiameter = Diameter;

		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();
	}

}

void CImgGeneratorView::OnTxtgen() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc*	pDoc = GetDocument();
	char				sPath[200];
	char				szFilter[] = "txt(*.txt)|*.txt";
	char				szExt[] = "txt";
	char				szFileName[] = "*.txt";
	POSITION			bPos=NULL;
	CPanel*				pPanel=NULL;
	char				sData[100];
	
	int					nPnlCnt = 0;
		
	unsigned char*		ucCellData=NULL;
	int					nTotalCnt=0;
	POSITION			aPos=NULL;
	CInkPoint*			pInkPoint=NULL;
	int					nProgressPos=0;
	POSITION			dPos;
	CDlg_Progress*		pDlg = new CDlg_Progress();
	int					nCX=0;
	int					nCY=0;
	CRect				rect;
	MSG					msg;

	memset(ucCellData,'\0',sizeof(BYTE)*nTotalCnt);
	memset(sPath,'\0',sizeof(sPath));
	memset(sData,'\0',sizeof(sData));

	CFileDialog fDlg(FALSE, szExt, szFileName, OFN_LONGNAMES|OFN_HIDEREADONLY,szFilter, NULL);
	
	if(fDlg.DoModal() == IDOK)
	{
		strcpy(sPath, fDlg.GetPathName());		
	}
	else
	{
		MessageBox("저장파일선택이 안되었습니다.","WARNING!",MB_ICONERROR);
		return;
	}

	/* Image Generate Dlg 실행 ******************************************************************************************/
	
	GetClientRect(&rect);
	nCX = (rect.right - rect.left) / 2;
	nCY = (rect.bottom - rect.top) / 2;

	pDlg->Create(IDD_DIALOG_PROGRESS);
	pDlg->SetWindowPos(NULL, nCX - 100, nCY - 50, nCX + 100, nCY + 50, SWP_NOSIZE);
	pDlg->ShowWindow(SW_SHOW);



	/* Cell Data *********************************************************************************/
	
	// 화면 디스플레이
	pDlg->m_strStaticBox1 = "Cell Data Create";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);

	// 전체 Pixel Pitch(um) / Image Pitch(um) = 전체 Drop Line ( Image Pitch간격으로 Drop : 소수점일때 반올림, 마지막 Drop데이타는 0처리)
	nTotalCnt = (int)((pDoc->m_Cell.m_cpPitch.dGatePitch1 / pDoc->m_Cell.m_fImgPitch) + 0.5);
	
	ucCellData = new unsigned char[nTotalCnt];
	memset(ucCellData,0,sizeof(BYTE)*nTotalCnt);

	// Cell LinkList Head..
	aPos = pDoc->m_Cell.GetListHeadPosition();
	
	// Cell Data입력
	while(aPos)
	{
		if(::PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
		{
			::TranslateMessage(&msg);
			::DispatchMessage(&msg);
		}

		// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
		if(pDlg->m_bCancel)
		{
			delete []ucCellData;

			pDlg->DestroyWindow();
			delete pDlg;
			pDlg=NULL;

			return;
		}

		pInkPoint = pDoc->m_Cell.GetNext(aPos);
		if(pInkPoint)
		{
			ucCellData[(int)(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch / pDoc->m_Cell.m_fImgPitch)] = 255;
		}

		nProgressPos++;
		pDlg->m_ctrlProgress.SetPos((nTotalCnt/nProgressPos)*100);
	}


	/* Panel Data *********************************************************************************/
	
	// 화면 디스플레이
	pDlg->m_strStaticBox1 = "Panel갯수확인";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);

	nProgressPos=0;
	pDlg->m_ctrlProgress.SetPos(0);

	// Panel 갯수확인
	nPnlCnt = pDoc->GetPanelCount();
	
	if(nPnlCnt <= 0)
	{
		MessageBox("판넬은 하나 이상이어야 합니다. 판넬데이타를 확인 후 재시도 하십시요.", "WARNING!",MB_ICONERROR);
		
		delete []ucCellData;

		pDlg->DestroyWindow();
		delete pDlg;
		pDlg=NULL;

		return;
	}

	// Panel LinkList Head 이동.
	dPos = pDoc->GetPanelListHeadPosition();
	pPanel = pDoc->GetNextPanel(dPos);


	
	/* Save Image Information ***********************************************************************/

	// 화면 디스플레이
	pDlg->m_strStaticBox1 = "판넬개수 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[판넬개수(EA)] = %d",nPnlCnt);
	pDoc->Save_CellTxtData(sPath,sData);
	nProgressPos=1;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "판넬당 픽셀개수 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[판넬당 픽셀개수(EA)] = %d",pPanel->m_nPixelCount);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=2;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "픽셀체우기 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[픽셀체우기] = %d",pDoc->m_nDropCount);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=3;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "픽셀비우기 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[픽셀비우기] = %d",pDoc->m_nEmpCount);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=4;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "판넬사이거리 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[판넬사이거리(um)] = %.2f",pPanel->m_dPitch);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=5;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "픽셀피치 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[픽셀피치(um)] = %.2f",pDoc->m_Cell.m_cpPitch.dGatePitch1);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=6;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "BM Size 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[BM Size(um)] = %.2f",pDoc->m_Cell.m_cpPitch.dGatePitch2);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=7;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "이미지피치 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[이미지피치(um)] = %.2f",pDoc->m_Cell.m_fImgPitch);
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=8;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	pDlg->m_strStaticBox1 = "픽셀데이타 저장";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	sprintf(sData,"[픽셀데이타]");
	pDoc->Save_CellTxtData(sPath,sData,TRUE);
	nProgressPos=9;
	pDlg->m_ctrlProgress.SetPos(nProgressPos);

	for(int nCellPoint=0; nCellPoint<nTotalCnt; nCellPoint++)
	{
		if(::PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
		{
			::TranslateMessage(&msg);
			::DispatchMessage(&msg);
		}

		// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
		if(pDlg->m_bCancel)
		{
			delete []ucCellData;

			pDlg->DestroyWindow();
			delete pDlg;
			pDlg=NULL;

			return;
		}
		
		sprintf(sData,"%d = %d",nCellPoint+1,ucCellData[nCellPoint]);
		pDoc->Save_CellTxtData(sPath,sData,TRUE);

		sprintf(sData,"픽셀데이타 %d = %d",nCellPoint+1,ucCellData[nCellPoint]);
		pDlg->m_strStaticBox1 = sData;
		pDlg->UpdateData(FALSE);
		pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
		nProgressPos++;
		pDlg->m_ctrlProgress.SetPos(((nTotalCnt+9)/nProgressPos)*100);
	}

	delete []ucCellData;
	pDlg->DestroyWindow();
	delete pDlg;
	pDlg=NULL;

	pDoc->Read_CellTxtData(sPath);
}

void CImgGeneratorView::OnImggen() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc*	pDoc = GetDocument();
	CString				strFilePath="";
	CString				strFileExt="";
	CDlg_Progress*		pDlg = new CDlg_Progress();


	char szFilter[] = "raw(*.raw)|*.raw|bmp(*.bmp)|*.bmp|";
	char szExt[] = "raw";
	char szFileName[] = "*.raw";
	CFileDialog l_file(FALSE, szExt, szFileName, OFN_LONGNAMES|OFN_HIDEREADONLY,szFilter, NULL);
	
	if(l_file.DoModal() == IDOK)
	{
		strFilePath = l_file.GetPathName();
		strFileExt = l_file.GetFileExt();
	}
	else return;

	
	// Image Generate Dlg 실행
	int nCX=0, nCY=0;
	CRect rect;
	GetClientRect(&rect);
	nCX = (rect.right - rect.left) / 2;
	nCY = (rect.bottom - rect.top) / 2;

	pDlg->Create(IDD_DIALOG_PROGRESS);
	pDlg->SetWindowPos(NULL, nCX - 100, nCY - 50, nCX + 100, nCY + 50, SWP_NOSIZE);
	pDlg->ShowWindow(SW_SHOW);
	
	

	/* Image Generate Start *******************************************************************************************/
	unsigned char*		ucCellData=NULL;
	float				fTotalCntmod=0.0;
	int					nTotalCnt=0;
	POSITION			aPos=NULL;
	CInkPoint*			pInkPoint=NULL;
	int					nProgressPos=0;

	pDlg->m_strStaticBox1 = "Cell Data Create";
	pDlg->UpdateData(FALSE);
	pDlg->RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
	// Cell Data Create----------------------------------------------------------------------------------------------------
	nTotalCnt = (int)((pDoc->m_Cell.m_cpPitch.dGatePitch1) / pDoc->m_Cell.m_fImgPitch);
	fTotalCntmod = (float)(pDoc->m_Cell.m_cpPitch.dGatePitch1 - ((double)nTotalCnt * pDoc->m_Cell.m_fImgPitch));

	if(fTotalCntmod > 0)
		nTotalCnt++;


	ucCellData = new unsigned char[nTotalCnt];
	memset(ucCellData,0,sizeof(BYTE)*nTotalCnt);

	aPos = pDoc->m_Cell.GetListHeadPosition();
	while(aPos)
	{
		pInkPoint = pDoc->m_Cell.GetNext(aPos);
		if(pInkPoint)
		{
			ucCellData[(int)(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch / pDoc->m_Cell.m_fImgPitch)] = 255;
		}
	}
	// Cell Data Create----------------------------------------------------------------------------------------------------

		
	pDlg->m_strStaticBox1 = "Glass Image Create";
	pDlg->UpdateData(FALSE);
	// ----------------------------------------------------------------------------------------------------------------------
	// Glass Image Create----------------------------------------------------------------------------------------------------
	POSITION			bPos=NULL;

	CPanel*				pPanel=NULL;

	int					PixelCount=0;
	int					j=0;
	int					k=0,k2=0;

	UINT				nDropPattern=0;
	UINT				nCntInPtn=0;

	unsigned long		ulLoop=0;
	unsigned long		ulArryCount=0;
	// 2006.11.04 edit by wonho start
	// 변수 추가
	unsigned long		ulImgLineCnt =0;
	// 2006.11.04 edit by wonho end
	unsigned long		ulImgBufSize=0;
	unsigned long		ulSpaceCount=0;
	unsigned long		ulImgBufPos=0;
	unsigned long		ulImgBuf1Pro=0;

	unsigned char*		pBuf=NULL;

	BOOL				bAddin=FALSE;
	BOOL				bAddin2=FALSE;

	double				dGlassSize=0.0;
	double				dAddin=0.0;
	double				dAddin2=0.0;
	double				dImgBufSizeMod=0.0;
	double				dSpaceCountMod=0.0;
	MSG					msg;


	POSITION cPos = pDoc->GetPanelListHeadPosition();
	
	if(cPos == NULL)
		AfxMessageBox("판넬은 하나 이상이어야 합니다. 판넬데이타를 확인 후 재시도 하십시요.");

	while(cPos)
	{
		pPanel = pDoc->GetNextPanel(cPos);


		dGlassSize += (double)pPanel->m_nPixelCount * pDoc->m_Cell.m_cpPitch.dGatePitch1;
		if(cPos>0)
		{
			if(pPanel->m_dPitch >= pDoc->m_Cell.m_cpPitch.dGatePitch2)
			{
				dGlassSize += pPanel->m_dPitch - pDoc->m_Cell.m_cpPitch.dGatePitch2;
			}

		}		
	}


	// Image Total Size 구하기
	ulImgLineCnt = (unsigned long)(dGlassSize / (double)pDoc->m_Cell.m_fImgPitch);
	dImgBufSizeMod = (dGlassSize - (ulImgLineCnt *  (double)pDoc->m_Cell.m_fImgPitch));
	if(dImgBufSizeMod > 0)
		ulImgLineCnt++;

	ulImgBufSize = ulImgLineCnt * MAKE_X_WIDTH_PIXELCOUNT;
	unsigned char*		pImgBuf=new unsigned char[ulImgBufSize];
	memset(pImgBuf,0,sizeof(BYTE)*ulImgBufSize);
	pBuf = pImgBuf;
	// 2006.11.04 edit by wonho end

	ulImgBuf1Pro = ulImgBufSize / 80;


	// Glass #################################################
	nDropPattern = pDoc->m_nDropCount + pDoc->m_nEmpCount;

	POSITION dPos = pDoc->GetPanelListHeadPosition();
	while(dPos)
	{
		if(::PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
		{
			::TranslateMessage(&msg);
			::DispatchMessage(&msg);
		}

		// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
		if(pDlg->m_bCancel)
		{
			delete []ucCellData;
			delete []pImgBuf;

			pDlg->DestroyWindow();
			delete pDlg;
			pDlg=NULL;

			return;
		}

		pPanel = pDoc->GetNextPanel(dPos);

		// Panel ========================================
		for(j=0; j<pPanel->m_nPixelCount; j++)
		{
			dAddin += fTotalCntmod;
			if(dAddin >= pDoc->m_Cell.m_fImgPitch)
			{
				bAddin = TRUE;
				dAddin -= pDoc->m_Cell.m_fImgPitch;
			}

			if(nDropPattern > 0)
				nCntInPtn = j % nDropPattern;


			if(nCntInPtn >= pDoc->m_nDropCount)
			{
				// Cell ------ Data 적용하지 않기 ------------
					for(k=0; k<nTotalCnt; k++)
					{
						
						if((nTotalCnt-1) == k)
						{
							// edit by wonho 061028
							if(fTotalCntmod != (double)0.0)
							{
								if (bAddin)	
								{
									for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
									{
										*pBuf++ = 0;
										ulImgBufPos++;
									}
								}
							}
							else
							{
								for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
								{
									*pBuf++ = 0;
									ulImgBufPos++;
								}
							}
						}
						else
						{
							for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
							{
								*pBuf++ = 0;
								ulImgBufPos++;
							}
						}
					}
				// Cell ------ Data 적용하지 않기 ------------
			}// if 
			else
			{
				// Cell ------ Data 적용하기 ------------
					for(k=0; k<nTotalCnt; k++)
					{
						
						if((nTotalCnt-1) == k)
						{
							// edit by wonho 061028
							if(fTotalCntmod != (double)0.0)
							{
								if (bAddin)
								{
									for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
									{
										*pBuf++ = *(ucCellData+k);
										ulImgBufPos++;
									}
								}
							}
							else
							{
								for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
								{
									*pBuf++ = *(ucCellData+k);
									ulImgBufPos++;
								}
							}
						}
						else
						{
							for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
							{
								*pBuf++ = *(ucCellData+k);
								ulImgBufPos++;
							}
						}
					}
				// Cell ------ Data 적용하기 ------------
			}//else

			bAddin = FALSE;
		}
		// Panel ========================================


		// Panel Space ========================================
		if(dPos)
		{
			// 판넬 사이 이미지 만들기
			ulSpaceCount = (unsigned long)((pPanel->m_dPitch - pDoc->m_Cell.m_cpPitch.dGatePitch2) / pDoc->m_Cell.m_fImgPitch);
			dSpaceCountMod = ((pPanel->m_dPitch - pDoc->m_Cell.m_cpPitch.dGatePitch2) - (ulSpaceCount *  (double)pDoc->m_Cell.m_fImgPitch));
			if(dSpaceCountMod > 0)
				ulSpaceCount++;
			
			// Panel Space ========================================
			dAddin2 += dSpaceCountMod;
			if(dAddin2 >= pDoc->m_Cell.m_fImgPitch)
			{
				bAddin2 = TRUE;
				dAddin2 -= pDoc->m_Cell.m_fImgPitch;
			}

			// Space ------------------
			for(ulLoop=0; ulLoop<ulSpaceCount; ulLoop++)
			{
				if((ulSpaceCount-1) == ulLoop)
				{
					// edit by wonho 061028
					if(dSpaceCountMod != (double)0.0)
					{
						if (bAddin2)
						{
							for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
							{
								*pBuf++ = 0;
								ulImgBufPos++;
							}
						}
					}
					else
					{
						for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
						{
							*pBuf++ = 0;
							ulImgBufPos++;
						}
					}
				}
				else
				{
					for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
					{
						*pBuf++ = 0;
						ulImgBufPos++;
					}
				}
			}
		}
		// edit by wonho 061028
		bAddin2 = TRUE;
		// Panel Space ========================================

		if(ulImgBuf1Pro > 0)
			nProgressPos = (int)(ulImgBufPos / ulImgBuf1Pro);
		else
			nProgressPos = 100;

		pDlg->m_ctrlProgress.SetPos(nProgressPos);
	}
	// Glass #################################################


	
	//노즐별 Delay중 Max값 취득
	double dMaxValue=0.0;
	unsigned DelayPitch[MAKE_X_WIDTH_PIXELCOUNT];
	for(k2=0;k2<MAKE_X_WIDTH_PIXELCOUNT;k2++)
	{
		if(pDoc->m_dArrNzlDelay[k2] > dMaxValue)
		{
			dMaxValue = pDoc->m_dArrNzlDelay[k2];
		}
		DelayPitch[k2] = (unsigned long)(pDoc->m_dArrNzlDelay[k2] / pDoc->m_Cell.m_fImgPitch);
	}

	ulImgLineCnt = ulImgLineCnt + (unsigned long)(dMaxValue/pDoc->m_Cell.m_fImgPitch);


	pDlg->m_strStaticBox1 = "Nozzle별 Delay 적용하기";
	pDlg->UpdateData(FALSE);
	// Nozzle별 Delay 적용하기 ###############################
	unsigned long ImageSize;
	ImageSize = ulImgLineCnt * MAKE_X_WIDTH_PIXELCOUNT;
	pBuf = pImgBuf;

	// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
	if(pDlg->m_bCancel)
	{
		delete []ucCellData;
		delete []pImgBuf;

		pDlg->DestroyWindow();
		delete pDlg;
		pDlg=NULL;

		return;
	}

	unsigned char* pDelayImageBuffer = new unsigned char[ImageSize];

	memset(pDelayImageBuffer, 0, sizeof(BYTE)*ImageSize);
	for(unsigned int CntPixel=0; CntPixel < ImageSize; CntPixel++ )
	{
		if(::PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
		{
			::TranslateMessage(&msg);
			::DispatchMessage(&msg);
		}

		// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
		if(pDlg->m_bCancel)
		{
			delete []ucCellData;
			delete []pImgBuf;
			delete []pDelayImageBuffer;

			pDlg->DestroyWindow();
			delete pDlg;
			pDlg=NULL;

			return;
		}

		if( (DelayPitch[CntPixel%MAKE_X_WIDTH_PIXELCOUNT] <= (unsigned)(CntPixel/MAKE_X_WIDTH_PIXELCOUNT)) &&
			((CntPixel - (unsigned)(DelayPitch[CntPixel%MAKE_X_WIDTH_PIXELCOUNT] * MAKE_X_WIDTH_PIXELCOUNT)) < ulImgBufSize))
		{ *(pDelayImageBuffer+CntPixel) = *(pBuf + (CntPixel - (unsigned)(DelayPitch[CntPixel%128] * MAKE_X_WIDTH_PIXELCOUNT) ) ); }
		else {*(pDelayImageBuffer+CntPixel) = 0x00;}
	}//for(UINT CntPixel=0; CntPixel < ImageSize; CntPixel++ )

	// Nozzle별 Delay 적용하기 End ###########################
	pDlg->m_ctrlProgress.SetPos(90);
	pDlg->m_strStaticBox1 = "File Save";
	pDlg->UpdateData(FALSE);
	// File Save-----------------------------------------------------
	CFile file;
	CFileException fe;
	CString str;

	// 이미지 생성 Dlg에서 [Cancel]버튼 클릭시 저장 취소
	if(pDlg->m_bCancel)
	{
		delete []ucCellData;
		delete []pImgBuf;
		delete []pDelayImageBuffer;

		pDlg->DestroyWindow();
		delete pDlg;
		pDlg=NULL;

		return;
	}
	


	// Image Save
	unsigned char* pDIB = NULL;

	if(!file.Open((LPCTSTR)strFilePath, CFile::modeCreate | CFile::modeWrite | CFile::shareDenyWrite , &fe))
	{
		AfxMessageBox("File Open Error");
	}
	else
	{
		strFileExt.MakeUpper();

		if(strFileExt.Find("RAW") > -1) 
		{
			file.SeekToBegin();
			file.Write(pDelayImageBuffer, sizeof(BYTE)*ImageSize);
		}
		else if(strFileExt.Find("BMP") > -1)
		{
			unsigned long Headsize = sizeof(BITMAPFILEHEADER);
			unsigned long Infosize = ((256-1) * sizeof(RGBQUAD)) + sizeof(BITMAPINFO);

			pDIB = new unsigned char[Headsize + Infosize + (sizeof(BYTE)*ImageSize)];
			if(!pDoc->RAWtoDIB(pDelayImageBuffer, pDIB, MAKE_X_WIDTH_PIXELCOUNT, ImageSize/MAKE_X_WIDTH_PIXELCOUNT))
			{
				AfxMessageBox("DIB Format Fail!");
				return;
			}


			file.SeekToBegin();
			file.Write(pDIB, Headsize + Infosize + (sizeof(BYTE)*ImageSize));			
		}
		else
		{
			AfxMessageBox(".raw, .bmp 포멧만 지원합니다.");
			return;
		}
	}

	
	pDlg->m_ctrlProgress.SetPos(100);
	pDlg->m_strStaticBox1 = "Complete!";
	pDlg->UpdateData(FALSE);


	delete []ucCellData;
	delete []pImgBuf;
	delete []pDelayImageBuffer;
	delete []pDIB;


	pDlg->DestroyWindow();
	delete pDlg;
	pDlg=NULL;
	


}

void CImgGeneratorView::OnGlass() 
{
	// TODO: Add your command handler code here
	CDlg_SetGlass aDlg;
	CPanel* pPanel=NULL;
	CImgGeneratorDoc* pDoc = GetDocument();
//	aDlg.m_pListPanel = GetDocument()->m_pListPanel;


	aDlg.m_nDropCount = pDoc->m_nDropCount;
	aDlg.m_nEmpCount = pDoc->m_nEmpCount;
	aDlg.m_dMinSpacePitch = pDoc->m_Cell.m_cpPitch.dGatePitch2;

	// 기존 panel Data를 Dlg리스트에 추가
	POSITION bPos = pDoc->m_pListPanel.GetHeadPosition();
	while(bPos)
	{
		pPanel = pDoc->m_pListPanel.GetNext(bPos);
		if(pPanel)
			aDlg.m_pListPanel.AddTail(pPanel);

		pPanel = NULL;
	}



	if(aDlg.DoModal() == IDOK)
	{
		pDoc->m_pListPanel.RemoveAll();

		POSITION aPos = aDlg.m_pListPanel.GetHeadPosition();
		while(aPos)
		{
			pPanel = aDlg.m_pListPanel.GetNext(aPos);
			if(pPanel)
				GetDocument()->m_pListPanel.AddTail(pPanel);

			pPanel = NULL;
		}
		
		aDlg.m_pListPanel.RemoveAll();


		pDoc->m_nDropCount = aDlg.m_nDropCount;
		pDoc->m_nEmpCount = aDlg.m_nEmpCount;
	}
}



void CImgGeneratorView::OnZoom() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_SetZoom aDlg;

	aDlg.m_nZoom = (int)(pDoc->GetScale() * 100.0);

	if(aDlg.DoModal() == IDOK)
	{
		m_nViewScale = aDlg.m_nZoom;

		pDoc->SetScale(m_nViewScale);
 		pDoc->m_Cell.UpdateCoord(this);
 
		CSize aSize = pDoc->GetDocSize();
 		SetScrollSizes(MM_TEXT, aSize);


		pDoc->m_Cell.m_ptScrollPos = GetScrollPosition();
		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
		pDoc->SetModifiedFlag();

	}
}

void CImgGeneratorView::OnSetpattern() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc* pDoc = GetDocument();
	CDlg_SetJetPattern aDlg;

	// 2006.11.05 edit by wonho 
	//memcpy(aDlg.m_dArrNzlDelay, pDoc->m_dArrNzlDelay, sizeof(int)*128);
	memcpy(aDlg.m_dArrNzlDelay, pDoc->m_dArrNzlDelay, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	memcpy(aDlg.m_dArrNzlDelayPettern, pDoc->m_dArrNzlDelayPettern, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	aDlg.m_nPeriod = pDoc->m_nNzlDelayPeriod;
	aDlg.m_dInterval = pDoc->m_dNzlDelayInterval;

	if(aDlg.DoModal() == IDOK)
	{
		// 2006.11.05 edit by wonho
		//memcpy(pDoc->m_dArrNzlDelay, aDlg.m_dArrNzlDelay, sizeof(int)*128);
		memcpy(pDoc->m_dArrNzlDelay, aDlg.m_dArrNzlDelay, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
		memcpy(pDoc->m_dArrNzlDelayPettern, aDlg.m_dArrNzlDelayPettern, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
		pDoc->m_nNzlDelayPeriod = aDlg.m_nPeriod;
		pDoc->m_dNzlDelayInterval = aDlg.m_dInterval;
	}
}





// Undo&Redo를 위해 스택에 백업
void CImgGeneratorView::CellPush()
{
	CImgGeneratorDoc* pDoc = GetDocument();

	CCell* newCell=pDoc->NewCell();
	pDoc->CopyCell(&pDoc->m_Cell, newCell);
	pDoc->m_Stack.Push(newCell);
//	pDoc->m_Stack.m_bPush = TRUE;
}

void CImgGeneratorView::OnEditUndo() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc* pDoc = GetDocument();
	CCell* aCell=NULL;

	if(pDoc->m_Stack.Peek() == NULL) return;
	if(pDoc->m_Stack.GetCount() == 0) return;

	if(pDoc->m_Stack.m_bPush)
	{
		CellPush();
		pDoc->m_Stack.m_bPush =	FALSE;
	}


	aCell = pDoc->m_Stack.GetNextCell();
	if(aCell == NULL) return;

	pDoc->m_Cell.Clear_Variable();
	pDoc->CopyCell(aCell, &pDoc->m_Cell);
	//aCell->Clear_Variable();

	pDoc->CreateStaticBox();


	// Update All ///////////////////////////////////
	pDoc->m_Cell.UpdateCoord(this);
	pDoc->UpdateAllViews(NULL);
}

void CImgGeneratorView::OnEditRedo() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc* pDoc = GetDocument();
	CCell* aCell=NULL;

	pDoc->m_Stack.m_bPush =	FALSE;
	if(pDoc->m_Stack.Peek() == NULL) return;

	//aCell=pDoc->m_Stack.Pop();
	aCell = pDoc->m_Stack.GetPrevCell();
	if(aCell == NULL) return;

	pDoc->m_Cell.Clear_Variable();
	pDoc->CopyCell(aCell, &pDoc->m_Cell);
	//aCell->Clear_Variable();

	pDoc->CreateStaticBox();


	// Update All ///////////////////////////////////
	pDoc->m_Cell.UpdateCoord(this);
	pDoc->UpdateAllViews(NULL);

}

void CImgGeneratorView::OnSetImgpitch() 
{
	// TODO: Add your command handler code here
	CImgGeneratorDoc* pDoc = GetDocument();

	CDlg_GetImgPitch aDlg;
	aDlg.m_fImgPitch = pDoc->m_Cell.m_fImgPitch;

	if(aDlg.DoModal() == IDOK)
	{
		CString strImgPitch;

		pDoc->m_Cell.m_fImgPitch = aDlg.m_fImgPitch;
		strImgPitch.Format("%.2f", pDoc->m_Cell.m_fImgPitch);
		AfxGetApp()->WriteProfileString("ImgViewer", "ImagePitch", (LPCTSTR)strImgPitch);
		
		m_pEditA->m_strText.Format("Image Pitch(um/pixel): %.1f", pDoc->m_Cell.m_fImgPitch);
		m_pEditA->SetTxt();

		pDoc->m_Cell.UpdateCoord(this);
		pDoc->UpdateAllViews(NULL);
	}
}


