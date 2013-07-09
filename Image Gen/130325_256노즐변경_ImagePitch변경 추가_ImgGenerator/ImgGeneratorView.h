// ImgGeneratorView.h : interface of the CImgGeneratorView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_IMGGENERATORVIEW_H__A17A6A59_FE80_4975_8D67_96CF1A36D54A__INCLUDED_)
#define AFX_IMGGENERATORVIEW_H__A17A6A59_FE80_4975_8D67_96CF1A36D54A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CImgGeneratorDoc;

class CImgGeneratorView : public CScrollView
{
protected: // create from serialization only
	CImgGeneratorView();
	DECLARE_DYNCREATE(CImgGeneratorView)

// Attributes
public:
	CImgGeneratorDoc* GetDocument();
	UINT				m_nViewScale;
//	UINT				m_nSelectMode;	// 0: Alone, 1: Group
	CInkPoint*			m_pSelected;
	CInkPoint*			m_pTempInkPoint;

	BOOL				m_MoveMode;
	CPoint				m_CursorPoint;
	CPoint				m_FirstPoint;

	CBrush				m_brush;

	CEditText*			m_pEditA;
	CEditText*			m_pEditB;

// Operations
public:
	CInkPoint* CreateInkPoint();


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CImgGeneratorView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnPrepareDC(CDC* pDC, CPrintInfo* pInfo = NULL);
	protected:
	virtual void OnInitialUpdate(); // called first time after construct
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
public:
	void CellPush();
	void Select_Group(CRect rect);
	CInkPoint* Select(CPoint aPoint);
	virtual ~CImgGeneratorView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	void MoveInkPoint(CClientDC &aDC, const CPoint &point);


	//{{AFX_MSG(CImgGeneratorView)
	afx_msg void OnStaticGP1();
	afx_msg void OnStaticGP2();
	afx_msg void OnStaticDP1();
	afx_msg void OnStaticDP2();
	afx_msg void OnStaticTheta();
	afx_msg void OnStaticLeftPitch();
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	afx_msg void OnSetpitch();
	afx_msg BOOL OnMouseWheel(UINT nFlags, short zDelta, CPoint pt);
	afx_msg void OnIps();
	afx_msg void OnTn();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnAddinkpoint();
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnDelete();
	afx_msg void OnSetdiameter();
	afx_msg void OnImggen();
	afx_msg void OnGlass();
	afx_msg void OnZoom();
	afx_msg void OnSetpattern();
	afx_msg void OnEditUndo();
	afx_msg void OnEditRedo();
	afx_msg void OnSetImgpitch();
	afx_msg void OnTxtgen();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in ImgGeneratorView.cpp
inline CImgGeneratorDoc* CImgGeneratorView::GetDocument()
   { return (CImgGeneratorDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_IMGGENERATORVIEW_H__A17A6A59_FE80_4975_8D67_96CF1A36D54A__INCLUDED_)
