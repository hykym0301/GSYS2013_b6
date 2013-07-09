#include "stdafx.h"
#include "Cell.h"
#include "ImgGeneratorView.h"
#include "ImgGeneratorDoc.h"

IMPLEMENT_SERIAL(CCell, CObject, VERSION_NUMBER)
IMPLEMENT_SERIAL(CInkPoint, CObject, VERSION_NUMBER)
IMPLEMENT_SERIAL(CPanel, CObject, VERSION_NUMBER)

// ----------------------------------------------------------------------------
// 2006-10-23 오전 4:36:18 추가(New),  Sun.H.D
// 호출 시점 :  Arrow Line
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CArrowLine::Draw(CDC* pDC)
{
	CPen aPen;
	UINT nType = 0;
	CPoint ArrowPoint;

	if(!aPen.CreatePen(PS_SOLID, 1, m_clrColor)){
		// Pen creation failed. Close the program
		AfxMessageBox("Pen creation failed drawing a curve", MB_OK);
		AfxAbort();
	}


	CPen* pOldPen = pDC->SelectObject(&aPen);	// Select the pen

	pDC->MoveTo(m_ptStartPoint);
	pDC->LineTo(m_ptEndPoint);

	if(m_ptStartPoint.y == m_ptEndPoint.y)
		nType = 0;
	else
		nType = 1;

	// 수평선
	if(nType==0){
		
		ArrowPoint = m_ptStartPoint;
		ArrowPoint.x += m_nArrowSize;
		ArrowPoint.y -= m_nArrowSize;
		pDC->MoveTo(ArrowPoint);
		pDC->LineTo(m_ptStartPoint);

		ArrowPoint = m_ptStartPoint;
		ArrowPoint.x += m_nArrowSize;
		ArrowPoint.y += m_nArrowSize;
		pDC->LineTo(ArrowPoint);


		ArrowPoint = m_ptEndPoint;
		ArrowPoint.x -= m_nArrowSize;
		ArrowPoint.y -= m_nArrowSize;
		pDC->MoveTo(ArrowPoint);
		pDC->LineTo(m_ptEndPoint);

		ArrowPoint = m_ptEndPoint;
		ArrowPoint.x -= m_nArrowSize;
		ArrowPoint.y += m_nArrowSize;
		pDC->LineTo(ArrowPoint);

	}else{	// 수직선
		ArrowPoint = m_ptStartPoint;
		ArrowPoint.x -= m_nArrowSize;
		ArrowPoint.y += m_nArrowSize;
		pDC->MoveTo(ArrowPoint);
		pDC->LineTo(m_ptStartPoint);

		ArrowPoint = m_ptStartPoint;
		ArrowPoint.x += m_nArrowSize;
		ArrowPoint.y += m_nArrowSize;
		pDC->LineTo(ArrowPoint);


		ArrowPoint = m_ptEndPoint;
		ArrowPoint.x -= m_nArrowSize;
		ArrowPoint.y -= m_nArrowSize;
		pDC->MoveTo(ArrowPoint);
		pDC->LineTo(m_ptEndPoint);

		ArrowPoint = m_ptEndPoint;
		ArrowPoint.x += m_nArrowSize;
		ArrowPoint.y -= m_nArrowSize;
		pDC->LineTo(ArrowPoint);
	}

	pDC->SelectObject(pOldPen);					// Restore the old pen
}



// ----------------------------------------------------------------------------
// 2006-10-23 오전 3:43:27 추가(New),  Sun.H.D
// 호출 시점 :  Dotted Line
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CDottedLine::Draw(CDC* pDC)
{
	CPen aPen;

	if(!aPen.CreatePen(PS_DOT, 1, m_clrColor)){
		// Pen creation failed. Close the program
		AfxMessageBox("Pen creation failed drawing a curve", MB_OK);
		AfxAbort();
	}


	CPen* pOldPen = pDC->SelectObject(&aPen);	// Select the pen

	pDC->MoveTo(m_ptStartPoint);
	pDC->LineTo(m_ptEndPoint);

	pDC->SelectObject(pOldPen);					// Restore the old pen
}


// ----------------------------------------------------------------------------
// 2006-10-23 오전 2:34:06 추가(New),  Sun.H.D
// 호출 시점 :  CInkPoint Member Function
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
CInkPoint::CInkPoint()
{
	Init_Variable();
}

void CInkPoint::Init_Variable()
{
	m_bChecked = FALSE;

}


void CInkPoint::Clear_Variable()
{
	if( (m_inkPointInfo.pStaticTopPitchText != NULL) && (m_inkPointInfo.pStaticTopPitchText->m_hWnd != NULL) )
	{
		m_inkPointInfo.pStaticTopPitchText->DestroyWindow();
		m_inkPointInfo.pStaticTopPitchText = NULL;

	}
	else if( (m_inkPointInfo.pStaticTopPitchText != NULL) && (m_inkPointInfo.pStaticTopPitchText->m_hWnd == NULL) )
	{
		delete m_inkPointInfo.pStaticTopPitchText;
		m_inkPointInfo.pStaticTopPitchText = NULL;
	}

	if( (m_inkPointInfo.pStaticSpacePitchText != NULL) && (m_inkPointInfo.pStaticSpacePitchText->m_hWnd != NULL) )
	{
		m_inkPointInfo.pStaticSpacePitchText->DestroyWindow();
		m_inkPointInfo.pStaticSpacePitchText = NULL;

	}
	else if( (m_inkPointInfo.pStaticSpacePitchText != NULL) && (m_inkPointInfo.pStaticSpacePitchText->m_hWnd == NULL) )
	{
		delete m_inkPointInfo.pStaticSpacePitchText;
		m_inkPointInfo.pStaticSpacePitchText = NULL;
	}
}



void CInkPoint::Serialize(CArchive& ar)
{
	
	CObject::Serialize(ar);

	if(ar.IsStoring())
	{
		ar << m_inkPointInfo.alineArrowLine.m_clrColor
		   << m_inkPointInfo.alineArrowLine.m_nArrowSize
		   << m_inkPointInfo.alineArrowLine.m_ptStartPoint
		   << m_inkPointInfo.alineArrowLine.m_ptEndPoint
		   << m_inkPointInfo.bSelected
		   << m_inkPointInfo.clrColor
		   << m_inkPointInfo.dlineDottedLine.m_clrColor
		   << m_inkPointInfo.dlineDottedLine.m_ptEndPoint
		   << m_inkPointInfo.dlineDottedLine.m_ptStartPoint
		   << m_inkPointInfo.fViewScale
		   << m_inkPointInfo.nPenWidth
		   << m_inkPointInfo.ptPitch.dDiameter
		   << m_inkPointInfo.ptPitch.dLeftPitch
		   << m_inkPointInfo.ptPitch.dSpacePitch
		   << m_inkPointInfo.ptPitch.dTopPitch
		   << m_inkPointInfo.rtEnclosingRect;

	}
	else
	{

		CInkPoint*				pTempInkPoint = NULL;
		CImgGeneratorDoc*		pDoc = NULL;
		CMultiDocTemplate*		pDocTemplate = NULL;
		CImgGeneratorView*		pView = NULL;

		POSITION viewPosFirst = ar.m_pDocument->GetFirstViewPosition();
		pView = (CImgGeneratorView *) ar.m_pDocument->GetNextView(viewPosFirst);


		ar >> m_inkPointInfo.alineArrowLine.m_clrColor
		   >> m_inkPointInfo.alineArrowLine.m_nArrowSize
		   >> m_inkPointInfo.alineArrowLine.m_ptStartPoint
		   >> m_inkPointInfo.alineArrowLine.m_ptEndPoint
		   >> m_inkPointInfo.bSelected
		   >> m_inkPointInfo.clrColor
		   >> m_inkPointInfo.dlineDottedLine.m_clrColor
		   >> m_inkPointInfo.dlineDottedLine.m_ptEndPoint
		   >> m_inkPointInfo.dlineDottedLine.m_ptStartPoint
		   >> m_inkPointInfo.fViewScale
		   >> m_inkPointInfo.nPenWidth
		   >> m_inkPointInfo.ptPitch.dDiameter
		   >> m_inkPointInfo.ptPitch.dLeftPitch
		   >> m_inkPointInfo.ptPitch.dSpacePitch
		   >> m_inkPointInfo.ptPitch.dTopPitch
		   >> m_inkPointInfo.rtEnclosingRect;
			
			m_inkPointInfo.pStaticSpacePitchText = new CStaticText();
			m_inkPointInfo.pStaticSpacePitchText->m_strText = "";
			m_inkPointInfo.pStaticSpacePitchText->Create(m_inkPointInfo.pStaticSpacePitchText->m_strText, 
				SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, NULL );
			m_inkPointInfo.pStaticSpacePitchText->Show();

			m_inkPointInfo.pStaticTopPitchText = new CStaticText();
			m_inkPointInfo.pStaticTopPitchText->m_strText = "";
			m_inkPointInfo.pStaticTopPitchText->Create(m_inkPointInfo.pStaticSpacePitchText->m_strText, 
				SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, 307 );
			m_inkPointInfo.pStaticTopPitchText->Show();
			
	}
}



void CInkPoint::Move(const CSize& aSize)
{
	m_inkPointInfo.rtEnclosingRect += aSize;		// Move the enclosing rectangle
}


CRect CInkPoint::GetBoundRect()
{
	CRect BoundingRect;							// Object to store bounding rectangle
	BoundingRect = m_inkPointInfo.rtEnclosingRect;				// Store the enclosing rectangle

	// Increase the rectangle by the pen width
	int Offset = m_inkPointInfo.nPenWidth == 0 ? 1 : m_inkPointInfo.nPenWidth;	// Width must be at least 1
	BoundingRect.InflateRect(Offset, Offset);

	return BoundingRect;						// Return the bounding rectangle
}

void CInkPoint::Draw(CDC* pDC, const CInkPoint* pElement)
{
	CPen aPen;
	CPen* pOldPen;
	CString aStr;

	COLORREF aColor = m_inkPointInfo.clrColor;
	if ( m_inkPointInfo.bSelected == TRUE )
		aColor = SELECT_COLOR;

	if(!aPen.CreatePen(PS_SOLID, m_inkPointInfo.nPenWidth, aColor))
	{
		// Pen creation failed
		AfxMessageBox("Pen creation failed drawing a InkPoint", MB_OK);
		AfxAbort();
	}

	
	pOldPen = pDC->SelectObject(&aPen);	// Select the apen

	// Select a null brush
	CBrush* pOldBrush = static_cast<CBrush*>(pDC->SelectStockObject(HOLLOW_BRUSH));
	//m_rtEnclosingRect = GetBoundRect();
	pDC->Ellipse(m_inkPointInfo.rtEnclosingRect);

	pDC->SelectObject(pOldPen);			// Restore th old pen
	pDC->SelectObject(pOldBrush);		// Restore the old brush


	// Dotted Line Draw
	m_inkPointInfo.dlineDottedLine.m_ptStartPoint.x = m_inkPointInfo.rtEnclosingRect.right;
	m_inkPointInfo.dlineDottedLine.m_ptStartPoint.y = ((m_inkPointInfo.rtEnclosingRect.bottom - m_inkPointInfo.rtEnclosingRect.top) / 2 ) + m_inkPointInfo.rtEnclosingRect.top;
	m_inkPointInfo.dlineDottedLine.m_ptEndPoint.x = m_inkPointInfo.rtEnclosingRect.right + 40;
	m_inkPointInfo.dlineDottedLine.m_ptEndPoint.y = ((m_inkPointInfo.rtEnclosingRect.bottom - m_inkPointInfo.rtEnclosingRect.top) / 2 ) + m_inkPointInfo.rtEnclosingRect.top;
	m_inkPointInfo.dlineDottedLine.m_clrColor = BLACK;
	m_inkPointInfo.dlineDottedLine.Draw(pDC);

}


void CInkPoint::Copy_StaticText(CStaticText* pSr, CStaticText* pDest)
{
	pDest->m_nID = pSr->m_nID;
	pDest->m_strText = pSr->m_strText;
	pDest->m_pointPos = pSr->m_pointPos;
}



// ----------------------------------------------------------------------------
// 2006-10-23 오전 4:44:25 추가(New),  Sun.H.D
// 호출 시점 :  BMCD
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CBmcd::Draw(CDC *pDC)
{
	CPen aPen;

	if(!aPen.CreatePen(PS_SOLID, m_nPenWidth, m_clrColor)){
		// Pen creation failed. Close the program
		AfxMessageBox("Pen creation failed drawing a curve", MB_OK);
		AfxAbort();
	}


	CPen* pOldPen = pDC->SelectObject(&aPen);	// Select the pen
	CBrush* pOldBrush = static_cast<CBrush*>(pDC->SelectStockObject(HOLLOW_BRUSH));

	pDC->Rectangle(m_rtEnclosingRect);

	pDC->SelectObject(pOldPen);			// Restore the old pen
	pDC->SelectObject(pOldBrush);		// Restore the old brush

}


// ----------------------------------------------------------------------------
// 2006-10-23 오전 2:34:25 추가(New),  Sun.H.D
// 호출 시점 :  CCell Member Function
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
CCell::CCell()
{
	Init_Variable();
}


CCell::~CCell()
{
	Clear_Variable();
}


void CCell::Clear_Variable()
{
	if( (m_pStatictDataPitch1Text != NULL) && (m_pStatictDataPitch1Text->m_hWnd != NULL) )
	{
		m_pStatictDataPitch1Text->DestroyWindow();
		m_pStatictDataPitch1Text = NULL;

	}
	else if( (m_pStatictDataPitch1Text != NULL) && (m_pStatictDataPitch1Text->m_hWnd == NULL) )
	{
		delete m_pStatictDataPitch1Text;
		m_pStatictDataPitch1Text = NULL;
	}

	if( (m_pStatictDataPitch2Text != NULL) && (m_pStatictDataPitch2Text->m_hWnd != NULL) )
	{
		m_pStatictDataPitch2Text->DestroyWindow();
		m_pStatictDataPitch2Text = NULL;

	}
	else if( (m_pStatictDataPitch2Text != NULL) && (m_pStatictDataPitch2Text->m_hWnd == NULL) )
	{
		delete m_pStatictDataPitch2Text;
		m_pStatictDataPitch2Text = NULL;
	}

	if( (m_pStatictDataPitch3Text != NULL) && (m_pStatictDataPitch3Text->m_hWnd != NULL) )
	{
		m_pStatictDataPitch3Text->DestroyWindow();
		m_pStatictDataPitch3Text = NULL;

	}
	else if( (m_pStatictDataPitch3Text != NULL) && (m_pStatictDataPitch3Text->m_hWnd == NULL) )
	{
		delete m_pStatictDataPitch3Text;
		m_pStatictDataPitch3Text = NULL;
	}


	if( (m_pStatictGatePitch1Text != NULL) && (m_pStatictGatePitch1Text->m_hWnd != NULL) )
	{
		m_pStatictGatePitch1Text->DestroyWindow();
		m_pStatictGatePitch1Text = NULL;

	}
	else if( (m_pStatictGatePitch1Text != NULL) && (m_pStatictGatePitch1Text->m_hWnd == NULL) )
	{
		delete m_pStatictGatePitch1Text;
		m_pStatictGatePitch1Text = NULL;
	}

	if( (m_pStatictGatePitch2Text != NULL) && (m_pStatictGatePitch2Text->m_hWnd != NULL) )
	{
		m_pStatictGatePitch2Text->DestroyWindow();
		m_pStatictGatePitch2Text = NULL;

	}
	else if( (m_pStatictGatePitch2Text != NULL) && (m_pStatictGatePitch2Text->m_hWnd == NULL) )
	{
		delete m_pStatictGatePitch2Text;
		m_pStatictGatePitch2Text = NULL;
	}

	if( (m_pStatictIPSThetaText != NULL) && (m_pStatictIPSThetaText->m_hWnd != NULL) )
	{
		m_pStatictIPSThetaText->DestroyWindow();
		m_pStatictIPSThetaText = NULL;

	}
	else if( (m_pStatictIPSThetaText != NULL) && (m_pStatictIPSThetaText->m_hWnd == NULL) )
	{
		delete m_pStatictIPSThetaText;
		m_pStatictIPSThetaText = NULL;
	}

	if( (m_pStatictLeftPitchText != NULL) && (m_pStatictLeftPitchText->m_hWnd != NULL) )
	{
		m_pStatictLeftPitchText->DestroyWindow();
		m_pStatictLeftPitchText = NULL;

	}
	else if( (m_pStatictLeftPitchText != NULL) && (m_pStatictLeftPitchText->m_hWnd == NULL) )
	{
		delete m_pStatictLeftPitchText;
		m_pStatictLeftPitchText = NULL;
	}

	Clear_InkPoint();
}


void CCell::Init_Variable()
{
	CString strImgPitch;

	m_nPenWidth = 3;
	m_nCellType = 0;			// 0:IPS, 1:TN
//	m_fImgPitch = 2.0;
	strImgPitch = AfxGetApp()->GetProfileString("ImgGenerator", "ImagePitch", "2.0");
	m_fImgPitch = (float)atof((LPCSTR)(LPCTSTR)strImgPitch);

	m_fViewScale = 1.0;
	m_fIPSTheta = 20.0;

	m_dinkLeftPitch = 50.0;
	m_dinkTopPitch = 50.0;
	m_dinkDiameter = 50.0;

	m_ptDrawStartPoint.x = 300;
	m_ptDrawStartPoint.y = 100;

	m_ptScrollPos.x = 0;
	m_ptScrollPos.y = 0;

	m_clrColor = GRAY;

	m_cpPitch.dDataPitch1 = 124;
	m_cpPitch.dDataPitch2 = 10;
	m_cpPitch.dDataPitch3 = 0;
	m_cpPitch.dGatePitch1 = 372;
	m_cpPitch.dGatePitch2 = 82;

	m_pStatictDataPitch1Text = NULL;
	m_pStatictDataPitch2Text = NULL;
	m_pStatictDataPitch3Text = NULL;
	m_pStatictGatePitch1Text = NULL;
	m_pStatictGatePitch2Text = NULL;
	m_pStatictIPSThetaText = NULL;
	m_pStatictLeftPitchText = NULL;

}


void CCell::Serialize(CArchive& ar)
{
	CObject::Serialize(ar);


	if(ar.IsStoring())
	{

		ar << m_nPenWidth
		   << m_nCellType
		   << m_fImgPitch
		   << m_fViewScale
		   << m_fIPSTheta
		   << m_dinkLeftPitch
		   << m_dinkTopPitch
		   << m_dinkDiameter
		   << m_ptDrawStartPoint
//		   << m_ptScrollPos
		   << m_rtEnclosingRect
		   << m_sizeDrawSize
		   << m_clrColor
		   << m_cpPitch.dDataPitch1
		   << m_cpPitch.dDataPitch2
		   << m_cpPitch.dDataPitch3
		   << m_cpPitch.dGatePitch1
		   << m_cpPitch.dGatePitch2;
		
	}
	else
	{
		ar >> m_nPenWidth
		   >> m_nCellType
		   >> m_fImgPitch
		   >> m_fViewScale
		   >> m_fIPSTheta
		   >> m_dinkLeftPitch
		   >> m_dinkTopPitch
		   >> m_dinkDiameter
		   >> m_ptDrawStartPoint
//		   >> m_ptScrollPos
		   >> m_rtEnclosingRect
		   >> m_sizeDrawSize
		   >> m_clrColor
		   >> m_cpPitch.dDataPitch1
		   >> m_cpPitch.dDataPitch2
		   >> m_cpPitch.dDataPitch3
		   >> m_cpPitch.dGatePitch1
		   >> m_cpPitch.dGatePitch2;

	}

	

	

}


void CCell::Delete(CInkPoint* pInkPoint)
{
	if(pInkPoint)
	{
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->Destory();
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->Destory();

		POSITION aPosition = m_pListInkPoint.Find(pInkPoint);
		m_pListInkPoint.RemoveAt(aPosition);
		delete pInkPoint;

	}
}


void CCell::Draw(CDC* pDC)
{
	// InkPoint Draw---------------------------------------
	POSITION aPos = GetListHeadPosition();
	CInkPoint* pInkPoint = 0;
	while(aPos)
	{
		pInkPoint = GetNext(aPos);
		if(pInkPoint)
		{
			if(pDC->RectVisible(pInkPoint->GetBoundRect()))
			{
				pInkPoint->Draw(pDC, pInkPoint);
			}
		}
	}



	// Cell Draw--------------------------------------------
	if(m_nCellType == 0)	// IPS
	{

		// 셀 Draw
		Draw_Line(pDC, CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom), 
						ShiftPoint_IPS[0]);

		Draw_Line(pDC, ShiftPoint_IPS[0], 
						CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.top));

		Draw_Line(pDC, CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.top), 
						CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.top));

		Draw_Line(pDC, CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.top), 
						ShiftPoint_IPS[1]);

		Draw_Line(pDC, ShiftPoint_IPS[1], 
						CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.bottom));

		Draw_Line(pDC, CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.bottom), 
						CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom));

		// 셀 좌/우 Draw
		Draw_Line(pDC, CPoint(m_rtEnclosingRect.left - (int)DP[1], m_rtEnclosingRect.bottom), 
						CPoint(ShiftPoint_IPS[0].x - (int)DP[1], ShiftPoint_IPS[0].y));

		Draw_Line(pDC, CPoint(ShiftPoint_IPS[0].x - (int)DP[1], ShiftPoint_IPS[0].y), 
						CPoint(m_rtEnclosingRect.left - (int)DP[1], m_rtEnclosingRect.top));

		Draw_Line(pDC, CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.top), 
						CPoint(ShiftPoint_IPS[1].x + (int)DP[1], ShiftPoint_IPS[1].y));

		Draw_Line(pDC, CPoint(ShiftPoint_IPS[1].x + (int)DP[1], ShiftPoint_IPS[1].y), 
						CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom));

	}
	else				// TN
	{
		Draw_Rect(pDC, m_rtEnclosingRect);

		// 셀 좌 우
		Draw_Line(pDC, CPoint(m_rtEnclosingRect.left - (int)DP[1], m_rtEnclosingRect.bottom), 
						CPoint(m_rtEnclosingRect.left - (int)DP[1], m_rtEnclosingRect.top));

		Draw_Line(pDC, CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.top), 
						CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom));
	}


	// BMCD Draw
	m_bmArrBmcd[0].m_clrColor = m_bmArrBmcd[1].m_clrColor = GRAY;
	m_bmArrBmcd[0].m_nPenWidth = m_bmArrBmcd[1].m_nPenWidth = 3;
	m_bmArrBmcd[0].m_rtEnclosingRect = CRect(CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom),
												CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.bottom + (int)GP[1]));

	m_bmArrBmcd[1].m_rtEnclosingRect = CRect(CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.top),
												CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.top - (int)GP[1]));
	
	m_bmArrBmcd[0].Draw(pDC);
	m_bmArrBmcd[1].Draw(pDC);

	
	// Dotted Line
	m_dlineArrDottedLine[0].m_ptStartPoint = CPoint(m_rtEnclosingRect.left , m_rtEnclosingRect.top);
	m_dlineArrDottedLine[0].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 150.0), m_rtEnclosingRect.top);
	m_dlineArrDottedLine[0].m_clrColor = GRAY;
	m_dlineArrDottedLine[0].Draw(pDC);

	m_dlineArrDottedLine[1].m_ptStartPoint = CPoint(m_rtEnclosingRect.left - ((int)DP[1] + 100) , m_rtEnclosingRect.bottom);
	m_dlineArrDottedLine[1].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 150.0), m_rtEnclosingRect.bottom);
	m_dlineArrDottedLine[1].m_clrColor = GRAY;
	m_dlineArrDottedLine[1].Draw(pDC);

	m_dlineArrDottedLine[2].m_ptStartPoint = CPoint(m_rtEnclosingRect.left , m_rtEnclosingRect.top - (int)GP[1]);
	m_dlineArrDottedLine[2].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 150.0), m_rtEnclosingRect.top - (int)GP[1]);
	m_dlineArrDottedLine[2].m_clrColor = GRAY;
	m_dlineArrDottedLine[2].Draw(pDC);
	
	m_dlineArrDottedLine[3].m_ptStartPoint = CPoint(m_rtEnclosingRect.left , m_rtEnclosingRect.top);
	m_dlineArrDottedLine[3].m_ptEndPoint = CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)(GP[1] + 150.0));
	m_dlineArrDottedLine[3].m_clrColor = GRAY;
	m_dlineArrDottedLine[3].Draw(pDC);

	m_dlineArrDottedLine[4].m_ptStartPoint = CPoint(m_rtEnclosingRect.right , m_rtEnclosingRect.top);
	m_dlineArrDottedLine[4].m_ptEndPoint = CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.bottom + (int)(GP[1] + 150.0));
	m_dlineArrDottedLine[4].m_clrColor = GRAY;
	m_dlineArrDottedLine[4].Draw(pDC);

	m_dlineArrDottedLine[5].m_ptStartPoint = CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom);
	m_dlineArrDottedLine[5].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom + (int)(GP[1] + 150.0));
	m_dlineArrDottedLine[5].m_clrColor = GRAY;
	m_dlineArrDottedLine[5].Draw(pDC);

	UINT nInkCount = GetCount();
	if(nInkCount > 0)
	{
		aPos = GetListHeadPosition();
		pInkPoint = 0;
		pInkPoint = GetNext(aPos);

		m_dlineArrDottedLine[6].m_ptStartPoint = CPoint((pInkPoint->m_inkPointInfo.rtEnclosingRect.right - pInkPoint->m_inkPointInfo.rtEnclosingRect.left)/2 + 
															pInkPoint->m_inkPointInfo.rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)GP[1] + 30);
		m_dlineArrDottedLine[6].m_ptEndPoint = CPoint((pInkPoint->m_inkPointInfo.rtEnclosingRect.right - pInkPoint->m_inkPointInfo.rtEnclosingRect.left)/2 + 
															pInkPoint->m_inkPointInfo.rtEnclosingRect.left, m_rtEnclosingRect.top - (int)GP[1]);
		m_dlineArrDottedLine[6].m_clrColor = GRAY;
		m_dlineArrDottedLine[6].Draw(pDC);


		// InkPoint Left Pitch
		m_alineArrArrowLine[4].m_ptStartPoint = CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)(GP[1] + 15.0));
		m_alineArrArrowLine[4].m_ptEndPoint = CPoint((pInkPoint->m_inkPointInfo.rtEnclosingRect.right - pInkPoint->m_inkPointInfo.rtEnclosingRect.left)/2 + 
															pInkPoint->m_inkPointInfo.rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)(GP[1] + 15.0));
		m_alineArrArrowLine[4].m_clrColor = GRAY;
		m_alineArrArrowLine[4].m_nArrowSize = 5;
		m_alineArrArrowLine[4].Draw(pDC);
	}

	if(m_nCellType == 0)	// IPS
	{
		m_dlineArrDottedLine[7].m_ptStartPoint = CPoint(ShiftPoint_IPS[0].x, m_rtEnclosingRect.bottom + (int)(GP[1] + 150.0));
		m_dlineArrDottedLine[7].m_ptEndPoint = CPoint(ShiftPoint_IPS[0].x, m_rtEnclosingRect.top - (int)GP[1]);
		m_dlineArrDottedLine[7].m_clrColor = GRAY;
		m_dlineArrDottedLine[7].Draw(pDC);
	}


	// GP1
	m_alineArrArrowLine[0].m_ptStartPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 35.0), m_rtEnclosingRect.top - (int)GP[1]);
	m_alineArrArrowLine[0].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 35.0), m_rtEnclosingRect.bottom);
	m_alineArrArrowLine[0].m_clrColor = GRAY;
	m_alineArrArrowLine[0].m_nArrowSize = 5;
	m_alineArrArrowLine[0].Draw(pDC);

	// GP2
	m_alineArrArrowLine[1].m_ptStartPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 85.0), m_rtEnclosingRect.top - (int)GP[1]);
	m_alineArrArrowLine[1].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)(DP[1] + 85.0), m_rtEnclosingRect.top);
	m_alineArrArrowLine[1].m_clrColor = GRAY;
	m_alineArrArrowLine[1].m_nArrowSize = 5;
	m_alineArrArrowLine[1].Draw(pDC);

	// DP1
	m_alineArrArrowLine[2].m_ptStartPoint = CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)(GP[1] + 50.0));
	m_alineArrArrowLine[2].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom + (int)(GP[1] + 50.0));
	m_alineArrArrowLine[2].m_clrColor = GRAY;
	m_alineArrArrowLine[2].m_nArrowSize = 5;
	m_alineArrArrowLine[2].Draw(pDC);


	// DP2
	m_alineArrArrowLine[3].m_ptStartPoint = CPoint(m_rtEnclosingRect.right, m_rtEnclosingRect.bottom + (int)(GP[1] + 75.0));
	m_alineArrArrowLine[3].m_ptEndPoint = CPoint(m_rtEnclosingRect.right + (int)DP[1], m_rtEnclosingRect.bottom + (int)(GP[1] + 75.0));
	m_alineArrArrowLine[3].m_clrColor = GRAY;
	m_alineArrArrowLine[3].m_nArrowSize = 5;
	m_alineArrArrowLine[3].Draw(pDC);

	if(m_nCellType == 0)	// IPS
	{
		// DP3
		m_alineArrArrowLine[4].m_ptStartPoint = CPoint(ShiftPoint_IPS[0].x, m_rtEnclosingRect.bottom + (int)(GP[1] + 95.0));
		m_alineArrArrowLine[4].m_ptEndPoint = CPoint(m_rtEnclosingRect.left, m_rtEnclosingRect.bottom + (int)(GP[1] + 95.0));
		m_alineArrArrowLine[4].m_clrColor = GRAY;
		m_alineArrArrowLine[4].m_nArrowSize = 5;
		m_alineArrArrowLine[4].Draw(pDC);
	}
	else
	{
		// DP3
		m_alineArrArrowLine[4].m_ptStartPoint = CPoint(0,0);
		m_alineArrArrowLine[4].m_ptEndPoint = CPoint(0,0);
		m_alineArrArrowLine[4].m_clrColor = GRAY;
		m_alineArrArrowLine[4].m_nArrowSize = 0;
		m_alineArrArrowLine[4].Draw(pDC);
	}


}


UINT CCell::GetCount()
{
	int InkPointCnt=0;
	POSITION aPosition;
	CInkPoint* pInkPoint;

	aPosition = GetListHeadPosition();
	while(aPosition)
	{
		pInkPoint = GetNext(aPosition);
		InkPointCnt++;
	}

	return InkPointCnt;
}


void CCell::SelectAlone(CInkPoint* pSelectedInkPoint)
{
	POSITION aPosition;
	CInkPoint* pInkPoint;

	aPosition = GetListHeadPosition();
	while(aPosition)
	{
		pInkPoint = GetNext(aPosition);
		if(pInkPoint)
		{
			if(pSelectedInkPoint == pInkPoint)
			{
				AllUnselect();
				pInkPoint->m_inkPointInfo.bSelected = TRUE;
			}
			else
			{
				pInkPoint->m_inkPointInfo.bSelected = FALSE;
			}
		}
	}

}

void CCell::SelectCtrl(CInkPoint* pInkPoint)
{
	if(pInkPoint)
	{
		pInkPoint->m_inkPointInfo.bSelected = TRUE;
	}
}

void CCell::SelectGroupMode(CInkPoint* pSelectedInkPoint)
{
	if(pSelectedInkPoint)
	{
		//if (pSelectedInkPoint->m_bSelected == TRUE)
		//	pSelectedInkPoint->m_bSelected = FALSE;
		//else
			pSelectedInkPoint->m_inkPointInfo.bSelected = TRUE;
	}
}

void CCell::AllUnselect()
{
	POSITION aPosition;
	CInkPoint* pInkPoint;

	aPosition = GetListHeadPosition();
	while(aPosition)
	{
		pInkPoint = GetNext(aPosition);
		if(pInkPoint)
			pInkPoint->m_inkPointInfo.bSelected = FALSE;
	}
}


void CCell::Draw_Line(CDC* pDC, CPoint StartPos, CPoint EndPos) const
{
	CPen aPen;

	if(!aPen.CreatePen(PS_DOT, m_nPenWidth, m_clrColor)){
		// Pen creation failed. Close the program
		AfxMessageBox("Pen creation failed drawing a curve", MB_OK);
		AfxAbort();
	}


	CPen* pOldPen = pDC->SelectObject(&aPen);	// Select the pen

	pDC->MoveTo(StartPos);
	pDC->LineTo(EndPos);

	pDC->SelectObject(pOldPen);					// Restore the old pen
}


void CCell::Draw_Rect(CDC* pDC, CRect rect) const
{
	CPen aPen;

	if(!aPen.CreatePen(PS_SOLID, m_nPenWidth, m_clrColor)){
		// Pen creation failed. Close the program
		AfxMessageBox("Pen creation failed drawing a curve", MB_OK);
		AfxAbort();
	}


	CPen* pOldPen = pDC->SelectObject(&aPen);	// Select the pen
	CBrush* pOldBrush = static_cast<CBrush*>(pDC->SelectStockObject(HOLLOW_BRUSH));

	pDC->Rectangle(rect);

	pDC->SelectObject(pOldPen);			// Restore the old pen
	pDC->SelectObject(pOldBrush);		// Restore the old brush
}

void CCell::UpdateCoord(CWnd* pParentWnd)
{
	int nListCount = 0;
	double TopPitch = 0, LeftPitch = 0, Radius = 0;
	CPoint StartPos = CPoint(0, 0);
	CString str = _T("");
	POSITION aPos = NULL;
	CInkPoint* pInkPoint = 0;

	m_cpPitch.dDataPitch3 = tan( (float)m_fIPSTheta / 45.0 ) * ( (m_cpPitch.dDataPitch1 - m_cpPitch.dDataPitch2) / 2 );

	DP[0] = m_cpPitch.dDataPitch1 / (double)m_fImgPitch * m_fViewScale;
	DP[1] = m_cpPitch.dDataPitch2 / (double)m_fImgPitch * m_fViewScale;
	DP[2] = m_cpPitch.dDataPitch3 / (double)m_fImgPitch * m_fViewScale;
	GP[0] = m_cpPitch.dGatePitch1 / (double)m_fImgPitch * m_fViewScale;
	GP[1] = m_cpPitch.dGatePitch2 / (double)m_fImgPitch * m_fViewScale;

	StartPos.x = m_ptDrawStartPoint.x + (int)DP[1];
	StartPos.y = m_ptDrawStartPoint.y + (int)GP[1];

	m_rtEnclosingRect.left = StartPos.x;
	m_rtEnclosingRect.top = StartPos.y;
	m_rtEnclosingRect.right = (int)(DP[0] - DP[1]) + StartPos.x;
	m_rtEnclosingRect.bottom = (int)(GP[0] - GP[1]) + StartPos.y;

	ShiftPoint_IPS[0] = CPoint(m_rtEnclosingRect.left - (int)DP[2], 
								((m_rtEnclosingRect.bottom - m_rtEnclosingRect.top) / 2) + m_rtEnclosingRect.top);
	ShiftPoint_IPS[1] = CPoint(m_rtEnclosingRect.right - (int)DP[2], 
								ShiftPoint_IPS[0].y);

	m_sizeDrawSize.cx = m_rtEnclosingRect.right + (int)DP[1];
	m_sizeDrawSize.cy = m_rtEnclosingRect.bottom + (int)GP[1];



	aPos = GetListHeadPosition();
	
	if( m_pListInkPoint.IsEmpty() == TRUE )
	{
		return;
	}

	nListCount = m_pListInkPoint.GetCount();



	while(aPos)
	{
		pInkPoint = NULL;		
		pInkPoint = GetNext(aPos);

		if( pInkPoint == NULL )
		{
			break;
		}

		Radius = (pInkPoint->m_inkPointInfo.ptPitch.dDiameter/2) / (double)m_fImgPitch * m_fViewScale;
		TopPitch = pInkPoint->m_inkPointInfo.ptPitch.dTopPitch / (double)m_fImgPitch * m_fViewScale;
		LeftPitch = pInkPoint->m_inkPointInfo.ptPitch.dLeftPitch / (double)m_fImgPitch * m_fViewScale;

		pInkPoint->m_inkPointInfo.rtEnclosingRect.left = (m_rtEnclosingRect.left + (int)LeftPitch - (int)Radius);
		pInkPoint->m_inkPointInfo.rtEnclosingRect.top = (m_rtEnclosingRect.bottom - (int)TopPitch - (int)Radius);
		pInkPoint->m_inkPointInfo.rtEnclosingRect.right = (m_rtEnclosingRect.left + (int)LeftPitch + (int)Radius);
		pInkPoint->m_inkPointInfo.rtEnclosingRect.bottom = (m_rtEnclosingRect.bottom - (int)TopPitch + (int)Radius);


		// Text Box
		CPoint SpacePos, TopPos;
		
		TopPos.x = pInkPoint->m_inkPointInfo.rtEnclosingRect.right + 42 - m_ptScrollPos.x;
		TopPos.y = ((pInkPoint->m_inkPointInfo.rtEnclosingRect.bottom - pInkPoint->m_inkPointInfo.rtEnclosingRect.top)/2) + 
					pInkPoint->m_inkPointInfo.rtEnclosingRect.top - 6 - m_ptScrollPos.y;

		SpacePos.x = pInkPoint->m_inkPointInfo.rtEnclosingRect.right + 2 - m_ptScrollPos.x;
		SpacePos.y = (pInkPoint->m_inkPointInfo.rtEnclosingRect.top + ((long)Radius-16)) - m_ptScrollPos.y;

		str.Format("+%.1lfum", pInkPoint->m_inkPointInfo.ptPitch.dTopPitch);
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->m_strText = str;
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->SetTxt();
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->m_pointPos = TopPos;
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->SetCoordinate();


		str = "";
		str.Format("%.1lfum", pInkPoint->m_inkPointInfo.ptPitch.dSpacePitch);
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText = str;
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->SetTxt();
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_pointPos = SpacePos;
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->SetCoordinate();
	
	}


	// CELL PITCH

	// Data
	str = "";
	str.Format("%.1lfum", m_cpPitch.dDataPitch1);
	m_pStatictDataPitch1Text->m_strText = str;
	m_pStatictDataPitch1Text->SetTxt();
	m_pStatictDataPitch1Text->m_pointPos = CPoint(m_rtEnclosingRect.left + 5 - m_ptScrollPos.x, 
												m_rtEnclosingRect.bottom + (int)GP[1] + 55 - m_ptScrollPos.y);
	m_pStatictDataPitch1Text->SetCoordinate();

	str = "";
	str.Format("%.1lfum", m_cpPitch.dDataPitch2);
	m_pStatictDataPitch2Text->m_strText = str;
	m_pStatictDataPitch2Text->SetTxt();
	m_pStatictDataPitch2Text->m_pointPos = CPoint(m_rtEnclosingRect.right + 5 - m_ptScrollPos.x, 
												m_rtEnclosingRect.bottom + (int)GP[1] + 80 - m_ptScrollPos.y);
	m_pStatictDataPitch2Text->SetCoordinate();



	// Gate
	str = "";
	str.Format("%.1lfum", m_cpPitch.dGatePitch1);
	m_pStatictGatePitch1Text->m_strText = str;
	m_pStatictGatePitch1Text->SetTxt();
	m_pStatictGatePitch1Text->m_pointPos = CPoint(m_rtEnclosingRect.right + ((int)DP[1] + 40) - m_ptScrollPos.x, 
												m_rtEnclosingRect.top + 10 - m_ptScrollPos.y);
	m_pStatictGatePitch1Text->SetCoordinate();

	str = "";
	str.Format("%.1lfum", m_cpPitch.dGatePitch2);
	m_pStatictGatePitch2Text->m_strText = str;
	m_pStatictGatePitch2Text->SetTxt();
	m_pStatictGatePitch2Text->m_pointPos = CPoint(m_rtEnclosingRect.right + ((int)DP[1] + 90) - m_ptScrollPos.x, 
												m_rtEnclosingRect.top - ((int)GP[1] - 10) - m_ptScrollPos.y);
	m_pStatictGatePitch2Text->SetCoordinate();


	// IPS Theta
	if(m_nCellType == 0)	// IPS
	{
		str = "";
		str.Format("%.0f°", m_fIPSTheta);
		m_pStatictIPSThetaText->m_strText = str;
		m_pStatictIPSThetaText->SetTxt();
		m_pStatictIPSThetaText->m_pointPos = CPoint(ShiftPoint_IPS[0].x - 30 - m_ptScrollPos.x, ShiftPoint_IPS[0].y - m_ptScrollPos.y);
		m_pStatictIPSThetaText->SetCoordinate();

		str = "";
		str.Format("%.1lfum", m_cpPitch.dDataPitch3);
		m_pStatictDataPitch3Text->m_strText = str;
		m_pStatictDataPitch3Text->SetTxt();
		m_pStatictDataPitch3Text->m_pointPos = CPoint(m_rtEnclosingRect.left + 5 - (int)DP[2] - m_ptScrollPos.x, 
													m_rtEnclosingRect.bottom + (int)GP[1] + 105 - m_ptScrollPos.y);
		m_pStatictDataPitch3Text->SetCoordinate();

	}
	else
	{
		str = "";
		m_pStatictIPSThetaText->m_strText = str;
		m_pStatictIPSThetaText->SetTxt();
		m_pStatictIPSThetaText->m_pointPos = CPoint(0,0);
		m_pStatictIPSThetaText->SetCoordinate();

		str = "";
		m_pStatictDataPitch3Text->m_strText = str;
		m_pStatictDataPitch3Text->SetTxt();
		m_pStatictDataPitch3Text->m_pointPos = CPoint(0,0);
		m_pStatictDataPitch3Text->SetCoordinate();

	}

	// InkPoint Left Pitch
	UINT nInkCount = GetCount();
	if(nInkCount > 0)
	{
		str = "";
		str.Format("%.1lfum", m_dinkLeftPitch);
		m_pStatictLeftPitchText->m_strText = str;
		m_pStatictLeftPitchText->SetTxt();
		m_pStatictLeftPitchText->m_pointPos = CPoint(m_rtEnclosingRect.left + 5 , 
													m_rtEnclosingRect.bottom + (int)GP[1] + 20 - m_ptScrollPos.y);
		m_pStatictLeftPitchText->SetCoordinate();

	}



	// InkPoint 위치 확인 ------------------------------------------
	POSITION aPosition, bPosition;
	CInkPoint* pTempInkPoint;
	int InkPointCnt=0;
	CString strTopPitch, strSpacePitch;
	double dPitch=0.0, dMinPitch=100000.0, dMaxPitch = 100000.0;


	aPosition = GetListHeadPosition();
	while(aPosition)
	{
		pInkPoint = GetNext(aPosition);

		if(pInkPoint)
		{
			dMinPitch = dMaxPitch;
			bPosition = GetListHeadPosition();

			while(bPosition)
			{
				pTempInkPoint = GetNext(bPosition);
				if(pTempInkPoint) {
					dPitch = pTempInkPoint->m_inkPointInfo.ptPitch.dTopPitch - pInkPoint->m_inkPointInfo.ptPitch.dTopPitch;
					if(dMinPitch > dPitch && dPitch > 0)
						dMinPitch = dPitch;
				}
			}

			if(dMinPitch == dMaxPitch)
				dMinPitch = m_cpPitch.dGatePitch1 - (pInkPoint->m_inkPointInfo.ptPitch.dTopPitch+m_cpPitch.dGatePitch2);

			
			pInkPoint->m_inkPointInfo.ptPitch.dSpacePitch = dMinPitch;

			strSpacePitch.Format("%.1lfum", dMinPitch);
			pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_nID = NULL;
			pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText = strSpacePitch;
			pInkPoint->m_inkPointInfo.pStaticSpacePitchText->SetTxt();
		}
	}
}


void CCell::Clear_InkPoint()
{
	POSITION aPosition = m_pListInkPoint.GetHeadPosition();

	// Now delete the element pointed to by each list entry
	while(aPosition)
		delete m_pListInkPoint.GetNext(aPosition);

	m_pListInkPoint.RemoveAll();	// Finally delete all pointers
}

void CCell::SetSpacePitch(CInkPoint *pInkA, CInkPoint *pInkB, double SpacePitch)
{
	if(pInkA != NULL && pInkB != NULL)
	{
		pInkB->m_inkPointInfo.ptPitch.dTopPitch = pInkA->m_inkPointInfo.ptPitch.dTopPitch - SpacePitch;

		if(pInkB->m_inkPointInfo.ptPitch.dTopPitch < 0.0)
		{
			pInkB->m_inkPointInfo.ptPitch.dTopPitch = 0.0;
		}

	}

}

void CCell::SetSpacePitch(CInkPoint *pInkPoint, double SpacePitch)
{
	// InkPoint 위치 확인 ------------------------------------------
	POSITION bPosition;
	CInkPoint* pTempInkPoint=NULL;
	CInkPoint* pMinInkPoint=NULL;
	double dPitch=0.0, dMinPitch=100000.0, dMaxPitch = 100000.0;


	if(pInkPoint)
	{
		dMinPitch = dMaxPitch;
		bPosition = GetListHeadPosition();

		while(bPosition)
		{
			pTempInkPoint = GetNext(bPosition);
			if(pTempInkPoint) {
				dPitch = pTempInkPoint->m_inkPointInfo.ptPitch.dTopPitch - pInkPoint->m_inkPointInfo.ptPitch.dTopPitch;
				if(dMinPitch > dPitch && dPitch > 0)
				{
					dMinPitch = dPitch;
					pMinInkPoint = pTempInkPoint;
				}
			}
		}

		if(pMinInkPoint)
		{
			pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = pMinInkPoint->m_inkPointInfo.ptPitch.dTopPitch - SpacePitch;
		}
		else
		{
			pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = m_cpPitch.dGatePitch1 - m_cpPitch.dGatePitch2 - SpacePitch;
		}

		if(pInkPoint->m_inkPointInfo.ptPitch.dTopPitch <= 0.0)
		{
			pInkPoint->m_inkPointInfo.ptPitch.dTopPitch = 0.0;
		}

	}
}


void CCell::CopyInkpoint(CInkPoint* pSr, CInkPoint* pDest)
{
	pDest->m_bChecked = pSr->m_bChecked;
	
	pDest->m_inkPointInfo.nPenWidth = pSr->m_inkPointInfo.nPenWidth;
	pDest->m_inkPointInfo.fViewScale = pSr->m_inkPointInfo.fViewScale;
	pDest->m_inkPointInfo.bSelected = pSr->m_inkPointInfo.bSelected;
	pDest->m_inkPointInfo.rtEnclosingRect = pSr->m_inkPointInfo.rtEnclosingRect;
	pDest->m_inkPointInfo.clrColor = pSr->m_inkPointInfo.clrColor;
	pDest->m_inkPointInfo.ptPitch.dDiameter = pSr->m_inkPointInfo.ptPitch.dDiameter;
	pDest->m_inkPointInfo.ptPitch.dLeftPitch = pSr->m_inkPointInfo.ptPitch.dLeftPitch;
	pDest->m_inkPointInfo.ptPitch.dSpacePitch = pSr->m_inkPointInfo.ptPitch.dSpacePitch;
	pDest->m_inkPointInfo.ptPitch.dTopPitch = pSr->m_inkPointInfo.ptPitch.dTopPitch;

	pDest->m_inkPointInfo.dlineDottedLine.m_clrColor = pSr->m_inkPointInfo.dlineDottedLine.m_clrColor;
	pDest->m_inkPointInfo.dlineDottedLine.m_ptStartPoint = pSr->m_inkPointInfo.dlineDottedLine.m_ptStartPoint;
	pDest->m_inkPointInfo.dlineDottedLine.m_ptEndPoint = pSr->m_inkPointInfo.dlineDottedLine.m_ptEndPoint;

	pDest->m_inkPointInfo.alineArrowLine.m_clrColor = pSr->m_inkPointInfo.alineArrowLine.m_clrColor;
	pDest->m_inkPointInfo.alineArrowLine.m_nArrowSize = pSr->m_inkPointInfo.alineArrowLine.m_nArrowSize;
	pDest->m_inkPointInfo.alineArrowLine.m_ptStartPoint = pSr->m_inkPointInfo.alineArrowLine.m_ptStartPoint;
	pDest->m_inkPointInfo.alineArrowLine.m_ptEndPoint = pSr->m_inkPointInfo.alineArrowLine.m_ptEndPoint;

	pDest->m_inkPointInfo.pStaticTopPitchText = new CStaticText();
	pDest->m_inkPointInfo.pStaticSpacePitchText = new CStaticText();
	pDest->Copy_StaticText(pSr->m_inkPointInfo.pStaticTopPitchText, pDest->m_inkPointInfo.pStaticTopPitchText);
	pDest->Copy_StaticText(pSr->m_inkPointInfo.pStaticSpacePitchText, pDest->m_inkPointInfo.pStaticSpacePitchText);

}

void CCell::CopyList(CTypedPtrList<CObList, CInkPoint*>* pSr, CTypedPtrList<CObList, CInkPoint*>* pDest)
{
	CInkPoint* pSrInkPoint=NULL;
	CInkPoint* pDestInkPoint=NULL;
	POSITION aPos = NULL;

	aPos =  pSr->GetHeadPosition();
	while(aPos)
	{
		pSrInkPoint = GetNext(aPos);
		if(pSrInkPoint)
		{
			pDestInkPoint = new CInkPoint;
			CopyInkpoint(pSrInkPoint, pDestInkPoint);
			pDest->AddTail(pDestInkPoint);
		}
	}
}


void CCell::Copy_StaticText(CStaticText* pSr, CStaticText* pDest)
{
	pDest->m_nID = pSr->m_nID;
	pDest->m_strText = pSr->m_strText;
	pDest->m_pointPos = pSr->m_pointPos;
}


// ----------------------------------------------------------------------------
// 2006-10-27 오후 4:02:03 추가(New),  Sun.H.D
// 호출 시점 :  CGlass
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CPanel::Serialize(CArchive& ar)
{
	
	CObject::Serialize(ar);

	if(ar.IsStoring())
	{

		ar << m_dPitch
		   << m_nPixelCount;
		
	}
	else
	{
		ar >> m_dPitch
		   >> m_nPixelCount;
	}

}

void CCell::DeleteSelected()
{
	CInkPoint* pInkPoint=NULL;
	POSITION aPos = GetListHeadPosition();

	while(aPos)
	{
		pInkPoint = GetNext(aPos);
		
		if(pInkPoint)
		{
			if(pInkPoint->m_inkPointInfo.bSelected == TRUE)
			{
				Delete(pInkPoint);
			}
		}
	}

}



struct INK_PITCH{
	CInkPoint*		pInkPoint;
	POSITION		pos;
	double			dPitch;
};




void CCell::SetSpacePitch_Selected(double SpacePitch)
{
	// InkPoint 위치 확인 ------------------------------------------
	POSITION aPos=NULL, bPos=NULL;
	CInkPoint* pInkPointA=NULL;
	CInkPoint* pInkPointB=NULL;
	CInkPoint* pMaxInkPoint=NULL;
	double dPitch=0.0, dMaxPitch = -1.0;
	CTypedPtrList<CObList, CInkPoint*>	pListInkPoint;

		
	// Selected point만 따로 내림차순으로 리스트 생성
	aPos = GetListHeadPosition();
	while(aPos)
	{
		pInkPointA = GetNext(aPos);

		pMaxInkPoint = NULL;
		bPos = NULL;
		bPos = GetListHeadPosition();
		while(bPos)
		{
			pInkPointB = GetNext(bPos);
			if(pInkPointB) {
				dPitch = pInkPointB->m_inkPointInfo.ptPitch.dTopPitch;
				if(dMaxPitch < dPitch && 
					pInkPointB->m_inkPointInfo.bSelected == TRUE &&
					pInkPointB->m_bChecked == FALSE)
				{
					dMaxPitch = dPitch;
					pMaxInkPoint = pInkPointB;
				}
			}
		}

		if(pMaxInkPoint != NULL)
		{
			pListInkPoint.AddTail(pMaxInkPoint);
			pMaxInkPoint->m_bChecked = TRUE;
			pMaxInkPoint = NULL;
		}
		dMaxPitch = -1.0;
		dPitch = 0.0;
		
	}


	// Set SpacePitch ////////////////////////////////////
	CInkPoint* pOldInk=NULL;
	BOOL bFirst=TRUE;

	pInkPointA = NULL;
	aPos = pListInkPoint.GetHeadPosition();
	while(aPos)
	{
		pInkPointA = GetNext(aPos);

		if(bFirst)
		{
			bFirst = FALSE;
			SetSpacePitch(pInkPointA, SpacePitch);
		}
		else
		{
			SetSpacePitch(pOldInk, pInkPointA, SpacePitch);
		}

		if(fmod(pInkPointA->m_inkPointInfo.ptPitch.dTopPitch, m_fImgPitch) > 0.0)
		{
			if(fmod(pInkPointA->m_inkPointInfo.ptPitch.dTopPitch, m_fImgPitch) > (m_fImgPitch/2.0))
			{
				pInkPointA->m_inkPointInfo.ptPitch.dTopPitch += 
					(m_fImgPitch - fmod(pInkPointA->m_inkPointInfo.ptPitch.dTopPitch, m_fImgPitch));
				
				if(pInkPointA->m_inkPointInfo.ptPitch.dTopPitch > m_cpPitch.dGatePitch1)
				{
					pInkPointA->m_inkPointInfo.ptPitch.dTopPitch = m_cpPitch.dGatePitch1 - 
															fmod(m_cpPitch.dGatePitch1, m_fImgPitch);
				}
			}
			else
			{
				pInkPointA->m_inkPointInfo.ptPitch.dTopPitch -= 
					fmod(pInkPointA->m_inkPointInfo.ptPitch.dTopPitch, m_fImgPitch);
			}
		}

		pOldInk = pInkPointA;
	}


	// 정렬을 위해 임시로 만든 Linked list 삭제
	aPos = pListInkPoint.GetHeadPosition();
	pListInkPoint.RemoveAll();	// Finally delete all pointers



	// Checked Flag를 모두 FALSE로 변경
	aPos = GetListHeadPosition();
	while(aPos)
	{
		pInkPointA = GetNext(aPos);
		if(pInkPointA)
			pInkPointA->m_bChecked = FALSE;
	}

}



// ----------------------------------------------------------------------------
// 2006-10-23 오전 2:33:38 추가(New),  Sun.H.D
// 호출 시점 :  CStaticText Member Function
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CStaticText::Destory()
{
}

void CStaticText::SetCoordinate()
{
	SetWindowPos(NULL, m_pointPos.x, m_pointPos.y, 70, 20, SWP_NOSIZE);
}


void CStaticText::SetTxt()
{
	SetWindowText(m_strText);
}

void CStaticText::Init_Variable()
{
	m_nID = 0;
	m_strText = "";
	m_pointPos = CPoint(0, 0);
}

BOOL CStaticText::Show()
{
	return ShowWindow(SW_SHOW);
}

BOOL CStaticText::Hide()
{
	return ShowWindow(SW_HIDE);
}


// ----------------------------------------------------------------------------
// 2006-11-28 오후 7:43:24 추가(New),  Sun.H.D
// 호출 시점 :  CEditText Member Function
// 
// 특     징 :  
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------
void CEditText::SetTxt()
{
	SetWindowText(m_strText);
}

void CEditText::Init_Variable()
{
	m_strText = "";
}

BOOL CEditText::Show()
{
	return ShowWindow(SW_SHOW);
}

BOOL CEditText::Hide()
{
	return ShowWindow(SW_HIDE);
}


