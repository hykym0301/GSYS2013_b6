// ImgGeneratorDoc.cpp : implementation of the CImgGeneratorDoc class
//

#include "stdafx.h"
#include "ImgGenerator.h"

#include "ImgGeneratorDoc.h"
#include "ImgGeneratorView.h"

#include "MainFrm.h"
#include "ChildFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define DIB_HEADER_MARKER		((WORD)('M' << 8) | 'B')	// BM MARKER

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorDoc

IMPLEMENT_DYNCREATE(CImgGeneratorDoc, CDocument)

BEGIN_MESSAGE_MAP(CImgGeneratorDoc, CDocument)
	//{{AFX_MSG_MAP(CImgGeneratorDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorDoc construction/destruction

CImgGeneratorDoc::CImgGeneratorDoc()
{
	// TODO: add one-time construction code here
	memset(&m_Comment,'\0', 1000);

	m_nDropCount=1;
	m_nEmpCount=0;
	m_dNzlDelayInterval=0.0;
	m_nNzlDelayPeriod=0;

	memset(m_dArrNzlDelay, 0, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	memset(m_dArrNzlDelayPettern, 0, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	m_ViewPos.left = 0;
	m_ViewPos.top = 0;
	m_ViewPos.right = 0;
	m_ViewPos.bottom = 0;
}

CImgGeneratorDoc::~CImgGeneratorDoc()
{
	Clear_Panel();
	Clear_Stack();

}

BOOL CImgGeneratorDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorDoc serialization

void CImgGeneratorDoc::Serialize(CArchive& ar)
{
//	POSITION aPos = AfxGetApp()->GetFirstDocTemplatePosition();
//	POSITION bPos = (AfxGetApp()->GetNextDocTemplate(aPos))->GetFirstDocPosition();



	m_pListPanel.Serialize(ar);
	m_Cell.Serialize(ar);
	m_Cell.m_pListInkPoint.Serialize(ar);

	if (ar.IsStoring())
	{
		// TODO: add storing code here

		CMainFrame* pFrame = (CMainFrame *)(AfxGetApp()->GetMainWnd());
		CChildFrame* pChild = (CChildFrame *)pFrame->GetActiveFrame();
		CImgGeneratorView* pView = (CImgGeneratorView *)(pChild->GetActiveView());
		
		pView->m_pEditB->GetWindowText(m_Comment, 1000);

		ar << m_nDropCount
		   << m_nEmpCount
		   << m_nNzlDelayPeriod
		   << m_dNzlDelayInterval
		   << m_ViewPos;

		for(int i=0; i<MAKE_X_WIDTH_PIXELCOUNT;i++)
		   ar << m_dArrNzlDelay[i];
		
		for(int ia=0; ia<MAKE_X_WIDTH_PIXELCOUNT;ia++)
		   ar << m_dArrNzlDelayPettern[ia];

		for(int ib=0; ib<1000; ib++)
			ar << m_Comment[ib];
		
	}
	else
	{
		// TODO: add loading code here
		ar >> m_nDropCount
		   >> m_nEmpCount
		   >> m_nNzlDelayPeriod
		   >> m_dNzlDelayInterval
		   >> m_ViewPos;
		 
		for(int j=0; j<MAKE_X_WIDTH_PIXELCOUNT;j++)
		   ar >> m_dArrNzlDelay[j];

		for(int ja=0; ja<MAKE_X_WIDTH_PIXELCOUNT;ja++)
		   ar >> m_dArrNzlDelayPettern[ja];

		for(int jb=0; jb<1000; jb++)
			ar >> m_Comment[jb];
	}
}

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorDoc diagnostics

#ifdef _DEBUG
void CImgGeneratorDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CImgGeneratorDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CImgGeneratorDoc commands

CSize CImgGeneratorDoc::GetDocSize()
{
	CSize aSize;
	aSize = m_Cell.GetDrawSize();
	aSize.cx += 150;
	aSize.cy += 150;

	return aSize;
}


void CImgGeneratorDoc::Clear_Panel()
{
	CPanel* pPanel;
	POSITION aPosition = m_pListPanel.GetHeadPosition();

	// Now delete the element pointed to by each list entry
	while(aPosition)
	{
		pPanel = m_pListPanel.GetNext(aPosition);
		
		if(pPanel)
			delete pPanel;
	}

	m_pListPanel.RemoveAll();	// Finally delete all pointers
}
BOOL CImgGeneratorDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{

	if (!CDocument::OnOpenDocument(lpszPathName))
		return FALSE;
	
	// TODO: Add your specialized creation code here

	return TRUE;
}

BOOL CImgGeneratorDoc::OnSaveDocument(LPCTSTR lpszPathName) 
{
	// TODO: Add your specialized code here and/or call the base class

	// Active View Pointer 가져오기 /////////////////////////////////////////////
	CMainFrame* pFrame = (CMainFrame *)(AfxGetApp()->GetMainWnd());
	CChildFrame* pChild = (CChildFrame *)pFrame->GetActiveFrame();
	CImgGeneratorView* pView = (CImgGeneratorView *)(pChild->GetActiveView());
	/////////////////////////////////////////////////////////////////////////////

	pView->GetWindowRect(m_ViewPos);

	return CDocument::OnSaveDocument(lpszPathName);
}

void CImgGeneratorDoc::CopyCell(CCell *pSr, CCell *pDest)
{
	pDest->m_nPenWidth = pSr->m_nPenWidth;
	pDest->m_nCellType = pSr->m_nCellType;
	pDest->m_fImgPitch = pSr->m_fImgPitch;
	pDest->m_fViewScale = pSr->m_fViewScale;
	pDest->m_fIPSTheta = pSr->m_fIPSTheta;
	
	pDest->DP[0] = pSr->DP[0];
	pDest->DP[1] = pSr->DP[1];
	pDest->DP[2] = pSr->DP[2];
	pDest->GP[0] = pSr->GP[0];
	pDest->GP[1] = pSr->GP[1];
	
	pDest->m_dinkLeftPitch = pSr->m_dinkLeftPitch;
	pDest->m_dinkTopPitch = pSr->m_dinkTopPitch;
	pDest->m_dinkDiameter = pSr->m_dinkDiameter;
	pDest->ShiftPoint_IPS[0] = pSr->ShiftPoint_IPS[0];
	pDest->ShiftPoint_IPS[1] = pSr->ShiftPoint_IPS[1];
	pDest->m_ptDrawStartPoint = pSr->m_ptDrawStartPoint;
	pDest->m_ptScrollPos = pSr->m_ptScrollPos;
	pDest->m_rtEnclosingRect = pSr->m_rtEnclosingRect;
	pDest->m_sizeDrawSize = pSr->m_sizeDrawSize;
	pDest->m_clrColor = pSr->m_clrColor;

	pDest->m_cpPitch.dDataPitch1 = pSr->m_cpPitch.dDataPitch1;
	pDest->m_cpPitch.dDataPitch2 = pSr->m_cpPitch.dDataPitch2;
	pDest->m_cpPitch.dDataPitch3 = pSr->m_cpPitch.dDataPitch3;
	pDest->m_cpPitch.dGatePitch1 = pSr->m_cpPitch.dGatePitch1;
	pDest->m_cpPitch.dGatePitch2 = pSr->m_cpPitch.dGatePitch2;

	for(int i=0; i<6; i++)
	{
		pDest->m_alineArrArrowLine[i].m_clrColor = pSr->m_alineArrArrowLine[i].m_clrColor;
		pDest->m_alineArrArrowLine[i].m_nArrowSize = pSr->m_alineArrArrowLine[i].m_nArrowSize;
		pDest->m_alineArrArrowLine[i].m_ptStartPoint = pSr->m_alineArrArrowLine[i].m_ptStartPoint;
		pDest->m_alineArrArrowLine[i].m_ptEndPoint = pSr->m_alineArrArrowLine[i].m_ptEndPoint;
	}

	for(int j=0; j<8; j++)
	{
		pDest->m_dlineArrDottedLine[j].m_clrColor = pSr->m_dlineArrDottedLine[j].m_clrColor;
		pDest->m_dlineArrDottedLine[j].m_ptStartPoint = pSr->m_dlineArrDottedLine[j].m_ptStartPoint;
		pDest->m_dlineArrDottedLine[j].m_ptEndPoint = pSr->m_dlineArrDottedLine[j].m_ptEndPoint;
	}

	pDest->m_pStatictDataPitch1Text = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictDataPitch1Text, pDest->m_pStatictDataPitch1Text);

	pDest->m_pStatictDataPitch2Text = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictDataPitch2Text, pDest->m_pStatictDataPitch2Text);

	pDest->m_pStatictDataPitch3Text = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictDataPitch3Text, pDest->m_pStatictDataPitch3Text);


	pDest->m_pStatictGatePitch1Text = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictGatePitch1Text, pDest->m_pStatictGatePitch1Text);

	pDest->m_pStatictGatePitch2Text = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictGatePitch2Text, pDest->m_pStatictGatePitch2Text);


	pDest->m_pStatictIPSThetaText = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictIPSThetaText, pDest->m_pStatictIPSThetaText);

	pDest->m_pStatictLeftPitchText = new CStaticText();
	pDest->Copy_StaticText(pSr->m_pStatictLeftPitchText, pDest->m_pStatictLeftPitchText);

	for(int k=0; k<2; k++)
	{
		pDest->m_bmArrBmcd[k].m_clrColor = pSr->m_bmArrBmcd[k].m_clrColor;
		pDest->m_bmArrBmcd[k].m_nPenWidth = pSr->m_bmArrBmcd[k].m_nPenWidth;
		pDest->m_bmArrBmcd[k].m_rtEnclosingRect = pSr->m_bmArrBmcd[k].m_rtEnclosingRect;

	}

	pDest->CopyList(&pSr->m_pListInkPoint, &pDest->m_pListInkPoint);
}


void CImgGeneratorDoc::Clear_Stack()
{
	POSITION aPos = m_Stack.GetHeadPosition();

	while(aPos)
		delete m_Stack.GetNext(aPos);

	m_Stack.RemoveAll();
}

void CImgGeneratorDoc::CreateStaticBox()
{
	CMainFrame* pFrame = (CMainFrame *)(AfxGetApp()->GetMainWnd());
	CChildFrame* pChild = (CChildFrame *)pFrame->GetActiveFrame();
	CImgGeneratorView* pView = (CImgGeneratorView *)(pChild->GetActiveView());

	// Cell StaticBox Create ////////////////////////////////////////////////////////////////////////////////////////////////
	m_Cell.m_pStatictDataPitch1Text->Create(m_Cell.m_pStatictDataPitch1Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictDataPitch1Text->m_nID );
	m_Cell.m_pStatictDataPitch1Text->Show();

	m_Cell.m_pStatictDataPitch2Text->Create(m_Cell.m_pStatictDataPitch2Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictDataPitch2Text->m_nID );
	m_Cell.m_pStatictDataPitch2Text->Show();

	m_Cell.m_pStatictDataPitch3Text->Create(m_Cell.m_pStatictDataPitch3Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictDataPitch3Text->m_nID );
	m_Cell.m_pStatictDataPitch3Text->Show();


	m_Cell.m_pStatictGatePitch1Text->Create(m_Cell.m_pStatictGatePitch1Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictGatePitch1Text->m_nID );
	m_Cell.m_pStatictGatePitch1Text->Show();


	m_Cell.m_pStatictGatePitch2Text->Create(m_Cell.m_pStatictGatePitch2Text->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictGatePitch2Text->m_nID );
	m_Cell.m_pStatictGatePitch2Text->Show();


	m_Cell.m_pStatictIPSThetaText->Create(m_Cell.m_pStatictIPSThetaText->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 50, 20 ), pView, m_Cell.m_pStatictIPSThetaText->m_nID );
	m_Cell.m_pStatictIPSThetaText->Show();


	m_Cell.m_pStatictLeftPitchText->Create(m_Cell.m_pStatictLeftPitchText->m_strText, 
		SS_LEFT | WS_CHILD | SS_NOTIFY, CRect ( 1, 1, 70, 20 ), pView, m_Cell.m_pStatictLeftPitchText->m_nID );
	m_Cell.m_pStatictLeftPitchText->Show();

	



	// InkPoint StaticBox Create ////////////////////////////////////////////////////////////////////////////////////////////
	CInkPoint* pInkPoint=NULL;
	POSITION aPos = m_Cell.m_pListInkPoint.GetHeadPosition();
	while(aPos)
	{
		pInkPoint = m_Cell.m_pListInkPoint.GetNext(aPos);

		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->Create(pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText, 
																SS_LEFT | WS_CHILD | SS_NOTIFY, 
																CRect ( 1, 1, 60, 20 ), 
																pView, 
																NULL );
		pInkPoint->m_inkPointInfo.pStaticSpacePitchText->Show();


		pInkPoint->m_inkPointInfo.pStaticTopPitchText->Create(pInkPoint->m_inkPointInfo.pStaticSpacePitchText->m_strText, 
																SS_LEFT | WS_CHILD | SS_NOTIFY, 
																CRect ( 1, 1, 70, 20 ), 
																pView, 
																307 );
		pInkPoint->m_inkPointInfo.pStaticTopPitchText->Show();
	}
}



BOOL CImgGeneratorDoc::RAWtoDIB(unsigned char* pBuf, unsigned char* pDIB, unsigned long cx, unsigned long cy)
{
	int nColor = 256;

	// BitmapInfo를 메모리에 로드 ////////////////////////////////////////////
	int nInfoSize;
	LPBITMAPINFO pBitmapInfo = NULL;
	if(pBitmapInfo)
		delete pBitmapInfo;

	nInfoSize = sizeof(BITMAPINFO) + (sizeof(RGBQUAD)*nColor);
	pBitmapInfo = (LPBITMAPINFO) new unsigned char[nInfoSize];
	//////////////////////////////////////////////////////////////////////////



	// Bitmap Header Info Create /////////////////////////////////////////////////////////////////
	pBitmapInfo->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);	//size of bmiHeader
	pBitmapInfo->bmiHeader.biWidth = cx;
	pBitmapInfo->bmiHeader.biHeight = cy;
	pBitmapInfo->bmiHeader.biPlanes = 1;

	pBitmapInfo->bmiHeader.biBitCount = 8;
	pBitmapInfo->bmiHeader.biSizeImage = 0;
	pBitmapInfo->bmiHeader.biCompression = BI_RGB;	// Whether Compression or non compression
	pBitmapInfo->bmiHeader.biXPelsPerMeter = 0;		// Meter per XPixel
	pBitmapInfo->bmiHeader.biYPelsPerMeter = 0;		// Meter per YPixel
	pBitmapInfo->bmiHeader.biClrUsed = 256;			// Real Color If 0 then use maximum colors
	pBitmapInfo->bmiHeader.biClrImportant = 0;
	///////////////////////////////////////////////////////////////////////////////////////////



	// Bitmap Header Create /////////////////////////////////////////////////////////////////
	BITMAPFILEHEADER bfHeader;
	
	bfHeader.bfType = DIB_HEADER_MARKER;		// 'BM'
	bfHeader.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER)
						+ ((nColor) * sizeof(RGBQUAD));	//Location of bitmap data
	bfHeader.bfSize = sizeof(bfHeader) + ((nColor-1) * sizeof(RGBQUAD))
					+ pBitmapInfo->bmiHeader.biSizeImage;
	bfHeader.bfReserved1 = 0;
	bfHeader.bfReserved2 = 0;
	//////////////////////////////////////////////////////////////////////////////////////////



	// '256 Color Gray value' Palette 생성 ///////////////////////////////////////////////////
	BYTE *lpPal;

	lpPal = (BYTE *)pBitmapInfo;
	DWORD offDest = sizeof(BITMAPINFOHEADER);
	for(int i=0; i<256; i++)
	{
		lpPal[offDest++] = (BYTE)i;
		lpPal[offDest++] = (BYTE)i;
		lpPal[offDest++] = (BYTE)i;
		lpPal[offDest++] = 0x00;
	}

	///////////////////////////////////////////////////////////////////////////////////////////



	/* BMP Format Create Start ****************************************************************/

	// Raw Image Read //////////////////////////////////////////////////////////////////
	// '윈도우 힙' 영역에 메모리 할당
	unsigned long size = ((nColor-1) * sizeof(RGBQUAD)) + sizeof(BITMAPINFO);

	
	memcpy(pDIB, (LPSTR)&bfHeader, sizeof(bfHeader));		// BITMAPFILEHEADER
	memcpy(pDIB + sizeof(bfHeader), pBitmapInfo, size);		// BITMAPINFOHEADER & PALETTE

	for(unsigned long row=0; row<cy; row++)
	{
		memmove( ((pDIB + sizeof(bfHeader) + size) + (row * cx)),
				((pBuf+(cx*cy)-1) - ( ((row+1) * cx) - 1) ), sizeof(BYTE) * cx);
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	delete pBitmapInfo;


	return true;
}

void CImgGeneratorDoc::Save_CellTxtData(char *pPath, char *pData, BOOL bAppend)
{
	CFile   fpData;
	int		nAttribute = 0;
	char	sPathBuf [256];
	char	sMsg[100];
	
	memset(sPathBuf ,'\0',sizeof(sPathBuf));
	memset(sMsg,'\0',sizeof(sMsg));

	if(bAppend == TRUE)
	{
		nAttribute = CFile::modeCreate | CFile::modeNoTruncate | CFile::modeReadWrite;
	}
	else
	{
		nAttribute = CFile::modeCreate | CFile::modeWrite;
	}
	
	sprintf(sPathBuf,"%s",pPath);
	sprintf(sMsg,"%s\r\n", pData);

	fpData.Open(sPathBuf, nAttribute);

	if(bAppend == TRUE)
	{
		fpData.SeekToEnd(); 
	}
	
	fpData.Write(sMsg,strlen(sMsg));

	fpData.Close();
}

void CImgGeneratorDoc::Read_CellTxtData(char *pPath)
{
	char seps[] =" =\n\r";
	char* token=NULL;
	char  sData[100];
	double dArrData[5];
	double dData=0;

	FILE *fp = NULL;
	char szBuf[1024] = {0,};
	memset(sData,0x00,sizeof(sData));
	memset(dArrData,0,sizeof(dArrData));

	fp = fopen(pPath,"r");

	if(fp == NULL)
	{
		AfxMessageBox("Can't find the file!");
		return;
	}

	for(int i = 0;i < 5;i++)
	{
		memset(sData,0x00, sizeof(sData));
		fgets(sData, sizeof(sData),fp);		

		token = strtok(sData, seps);
		token = strtok(NULL, seps);	

		dArrData[i] = atof(token);
	}

	fclose(fp);
}
