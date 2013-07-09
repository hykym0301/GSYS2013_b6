#ifndef Cell_h
#define Cell_h

// ----------------------------------------------------------------------------
// 2006-10-23 오전 12:22:33 추가(New),  Sun.H.D
// 호출 시점 :  Document Class Attribute
// 
// 특     징 :  Cell 및 InkPoint 의 Pitch Data및 Draw
// 
// 매개 변수 :  
// 
// 리 턴 값  :  
// ----------------------------------------------------------------------------

#include <afxtempl.h>	// CTypedPtrList

struct CELLPITCH
{
	double				dDataPitch1;
	double				dDataPitch2;
	double				dDataPitch3;
	double				dGatePitch1;
	double				dGatePitch2;
};

struct POINTPITCH
{
	double				dDiameter;
	double				dLeftPitch;
	double				dTopPitch;
	double				dSpacePitch;
};


class CArrowLine
{
// Attributes
public:
	UINT				m_nArrowSize;

	COLORREF			m_clrColor;

	CPoint				m_ptStartPoint;
	CPoint				m_ptEndPoint;

protected:


// Operations
public:
	CArrowLine()
	{
		m_nArrowSize = 0;

	    m_clrColor = NULL;

		m_ptStartPoint = CPoint(0, 0);
		m_ptEndPoint = CPoint(0, 0);

	}
	~CArrowLine(){}

	void Draw(CDC* pDC);

protected:

};


class CDottedLine
{
// Attributes
public:
	COLORREF			m_clrColor;

	CPoint				m_ptStartPoint;
	CPoint				m_ptEndPoint;

protected:


// Operations
public:
	CDottedLine()
	{
		m_clrColor = NULL;
		m_ptStartPoint = CPoint(0, 0);
		m_ptEndPoint = CPoint(0, 0);
	}
	~CDottedLine(){}

	void Draw(CDC* pDC);

protected:


};


class CStaticText	: public CStatic
{

// Attributes
public:
	UINT				m_nID;
	CString				m_strText;
	CPoint				m_pointPos;

protected:


// Operations
public:
	CStaticText()
	{
		Init_Variable();
	}

	~CStaticText(){ }

	void SetCoordinate();
	void SetTxt();
	void Destory();

	void Init_Variable();

	BOOL Show();
	BOOL Hide();

protected:
};


class CEditText	: public CEdit
{

// Attributes
public:
	CString				m_strText;

protected:


// Operations
public:
	CEditText()
	{
		Init_Variable();
	}

	~CEditText(){ }

	void SetTxt();
	void Destory();

	void Init_Variable();

	BOOL Show();
	BOOL Hide();

protected:
};


class CInkPoint : public CObject
{
DECLARE_SERIAL(CInkPoint)

// Attributes
public:
	BOOL				m_bChecked;
	
	typedef struct InkPointInfo
	{
		UINT				nPenWidth;
		float				fViewScale;
		BOOL				bSelected;
		CRect				rtEnclosingRect;
		COLORREF			clrColor;
		POINTPITCH			ptPitch;
		CDottedLine			dlineDottedLine;
		CArrowLine			alineArrowLine;
		CStaticText*		pStaticTopPitchText;
		CStaticText*		pStaticSpacePitchText;

		InkPointInfo()
		{
			nPenWidth = 5;
			fViewScale = 1.0;
			bSelected = FALSE;
			rtEnclosingRect = CRect(0,0,0,0);
			clrColor = BLACK;
			ptPitch.dDiameter = 100;
			ptPitch.dLeftPitch = 50;
			ptPitch.dTopPitch = 50;
			ptPitch.dSpacePitch = 0;
			pStaticTopPitchText = NULL;
			pStaticSpacePitchText = NULL;
		}

	} INKPOINTINFO, *PINKPOINTINFO;

	INKPOINTINFO		m_inkPointInfo;

protected:


// Operations
public:
	CInkPoint();
	virtual ~CInkPoint(){ Clear_Variable();}

	virtual void Draw(CDC* pDC, const CInkPoint* pElement);
	virtual void Move(const CSize& aSize);
	virtual void Serialize(CArchive& ar);	// Serialize function for CInkPoint
	CRect GetBoundRect();


	void				Init_Variable();
	void				Clear_Variable();
	void				Copy_StaticText(CStaticText* pSr, CStaticText* pDest);

protected:
//	virtual CInkPoint();
};



class CBmcd
{

// Attributes
public:
	UINT				m_nPenWidth;

	COLORREF			m_clrColor;

	CRect				m_rtEnclosingRect;

protected:


// Operations
public:
	CBmcd(){}
	~CBmcd(){}

	void Draw(CDC* pDC);

protected:

};


class CCell : public CObject
{
DECLARE_SERIAL(CCell)

// Attributes
public:
	UINT				m_nPenWidth;
	UINT				m_nCellType;			// 0:IPS, 1:TN
	
	float				m_fImgPitch;
	float				m_fViewScale;
	float				m_fIPSTheta;

	double				DP[3], GP[2];
	double				m_dinkLeftPitch;
	double				m_dinkTopPitch;
	double				m_dinkDiameter;

	CPoint				ShiftPoint_IPS[2];
	CPoint				m_ptDrawStartPoint;
	CPoint				m_ptScrollPos;

	CRect				m_rtEnclosingRect;

	CSize				m_sizeDrawSize;

	COLORREF			m_clrColor;

	CELLPITCH			m_cpPitch;

	CStaticText*		m_pStatictDataPitch1Text;
	CStaticText*		m_pStatictDataPitch2Text;
	CStaticText*		m_pStatictDataPitch3Text;
	CStaticText*		m_pStatictGatePitch1Text;
	CStaticText*		m_pStatictGatePitch2Text;
	CStaticText*		m_pStatictIPSThetaText;
	CStaticText*		m_pStatictLeftPitchText;


	CBmcd				m_bmArrBmcd[2];

	CArrowLine			m_alineArrArrowLine[6];
	CDottedLine			m_dlineArrDottedLine[8];

	CTypedPtrList<CObList, CInkPoint*>	m_pListInkPoint;

protected:


// Operations
public:
	void SetSpacePitch(CInkPoint* pInkA, CInkPoint* pInkB, double SpacePitch);
	void SetSpacePitch_Selected(double SpacePitch);
	void DeleteSelected();
	void SetSpacePitch(CInkPoint *pInkPoint, double SpacePitch);
	void Clear_InkPoint();
	void UpdateCoord(CWnd* pParentWnd);
	CCell();	// Construtor
	~CCell();	// Destructor

	virtual void Serialize(CArchive& ar);

	void Draw(CDC* pDC);
	void SelectAlone(CInkPoint* pInkPoint);
	void SelectCtrl(CInkPoint* pInkPoint);
	void SelectGroupMode(CInkPoint* pSelectedInkPoint);
	void AllUnselect();
	void Draw_Line(CDC* pDC, CPoint StartPos, CPoint EndPos) const;
	void Draw_Rect(CDC* pDC, CRect rect) const;
	void Init_Variable();
	void Clear_Variable();
	void CopyInkpoint(CInkPoint* pSr, CInkPoint* pDest);
	void CopyList(CTypedPtrList<CObList, CInkPoint*>* pSr, CTypedPtrList<CObList, CInkPoint*>* pDest);
	void Copy_StaticText(CStaticText* pSr, CStaticText* pDest);


	POSITION Add(CInkPoint* pInkPoint)					// Add an element to the list
	{ 
		POSITION pos = NULL;
		pos = m_pListInkPoint.AddTail(pInkPoint); 
		return pos;
	}
	
	void Delete(CInkPoint* pInkPoint);

	UINT GetCount();

	CSize GetDrawSize()
	{ return m_sizeDrawSize; }

	POSITION GetListHeadPosition() const				// Return list head POSITION value
	{ 
		POSITION pos = NULL;
		pos =  m_pListInkPoint.GetHeadPosition();

		return pos;
	}

	POSITION GetListTailPosition() const				// Return list tail POSITION value
	{ 
		POSITION pos = NULL;
		pos =  m_pListInkPoint.GetTailPosition();

		return pos;
	}

	CInkPoint* GetNext(POSITION& aPos) const				// Return current element pointer
	{ return m_pListInkPoint.GetNext(aPos); }

	CInkPoint* GetPrev(POSITION& aPos) const				// Return current element pointer
	{ return m_pListInkPoint.GetPrev(aPos); }


protected:

};



class CPanel : public CObject
{
DECLARE_SERIAL(CPanel)

// Attributes
public:
	
	double				m_dPitch;
	int					m_nPixelCount;

protected:

// Operations
public:
	CPanel(){}
	virtual void Serialize(CArchive& ar);	
};


#endif	//!defined(Cell.h)