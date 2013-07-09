// ImgGeneratorDoc.h : interface of the CImgGeneratorDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_IMGGENERATORDOC_H__E419D58B_47C3_4AAD_A7D3_4BE7324E37C9__INCLUDED_)
#define AFX_IMGGENERATORDOC_H__E419D58B_47C3_4AAD_A7D3_4BE7324E37C9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Cell.h"

class CStack : public CTypedPtrList< CObList, CCell* >
{
// Attribution
public:
	POSITION	m_CurrentPos;
	POSITION	m_Head;
	POSITION	m_Tail;
	CCell*		m_pCell;
	BOOL		m_bPush;
protected:

// Operation
public:

	// Constructor
	CStack()
	{
		m_CurrentPos = NULL;
		m_Head = NULL;
		m_Tail = NULL;
		m_pCell = NULL;
		m_bPush = TRUE;
	};

    // Add element to top of stack
    void Push( CCell* newCell )
	{ 
		POSITION	m_ParamPos;
		BOOL		m_bDel=FALSE;

		if(m_CurrentPos != m_Head && m_CurrentPos != NULL)
		{
			m_ParamPos = m_CurrentPos;
			m_pCell = GetPrev(m_ParamPos);
			Delete(m_ParamPos);
			m_bDel=TRUE;
		}
		
		m_Head = AddHead( newCell );
		m_Tail = GetTailPosition();
		m_bPush = TRUE;

		if(m_bDel)
			m_CurrentPos = m_Head;
	}

	// Peek at top element of stack
    CCell* Peek()
    { return IsEmpty() ? NULL : GetHead(); }

    // Pop top element off stack
    CCell* Pop()
    { return RemoveHead(); }


	CCell* GetNextCell()
	{ 
		POSITION	m_ParamPos;

		if(m_CurrentPos == NULL)
			m_CurrentPos = GetHeadPosition();

		if(m_Tail == m_CurrentPos) return NULL;

		m_ParamPos = m_CurrentPos;
		m_pCell = GetNext(m_ParamPos);
		m_CurrentPos = m_ParamPos;
		m_pCell = GetAt(m_CurrentPos);

		return m_pCell;
	}

	CCell* GetPrevCell()
	{ 
		POSITION	m_ParamPos;

		if(m_CurrentPos == NULL)
			m_CurrentPos = GetHeadPosition();

		if(m_Head == m_CurrentPos) return NULL;

		m_ParamPos = m_CurrentPos;
		m_pCell = GetPrev(m_ParamPos);
		m_CurrentPos = m_ParamPos;
		m_pCell = GetAt(m_CurrentPos);

		return m_pCell;
	}

	void Delete(POSITION StartPos)
	{
		POSITION OldPos=NULL;
		POSITION EndPos=GetHeadPosition();
		while(StartPos)
		{
			OldPos = StartPos;
			delete GetPrev(StartPos);
			RemoveAt(OldPos);

			if(EndPos == OldPos || StartPos == NULL)
				return;
		}
	}

protected:

};


class CImgGeneratorDoc : public CDocument
{
protected: // create from serialization only
	CImgGeneratorDoc();
	DECLARE_DYNCREATE(CImgGeneratorDoc)

// Attributes
public:
	char				m_Comment[1000];
	CCell				m_Cell;


	CTypedPtrList<CObList, CPanel*>	m_pListPanel;
	UINT				m_nDropCount;
	UINT				m_nEmpCount;
	UINT				m_nNzlDelayPeriod;
	double				m_dArrNzlDelay[MAKE_X_WIDTH_PIXELCOUNT];
	double				m_dArrNzlDelayPettern[MAKE_X_WIDTH_PIXELCOUNT];
	double				m_dNzlDelayInterval;

	CRect				m_ViewPos;

	CStack				m_Stack;

//	CCell*				m_pCell[100];

// Operations
public:

	void Clear_Panel();
	BOOL RAWtoDIB(unsigned char* pBuf, unsigned char* pDIB, unsigned long cx, unsigned long cy);

	int  GetPanelCount() const
	{
		int nPnlCnt = 0;
		nPnlCnt = m_pListPanel.GetCount();

		return nPnlCnt;
	}

	POSITION GetPanelListHeadPosition() const				// Return list head POSITION value
	{ 
		POSITION pos = NULL;
		pos =  m_pListPanel.GetHeadPosition();

		return pos;
	}

	POSITION GetPanelListTailPosition() const				// Return list tail POSITION value
	{ 
		POSITION pos = NULL;
		pos =  m_pListPanel.GetTailPosition();

		return pos;
	}

	CPanel* GetNextPanel(POSITION& aPos) const				// Return current element pointer
	{ return m_pListPanel.GetNext(aPos); }

	CPanel* GetPrevPanel(POSITION& aPos) const				// Return current element pointer
	{ return m_pListPanel.GetPrev(aPos); }

	CCell* NewCell()
	{ return new CCell; }

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CImgGeneratorDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
	//}}AFX_VIRTUAL

// Implementation
public:
	void Save_CellTxtData(char *pPath, char *pData, BOOL bAppend = FALSE);
	void Read_CellTxtData(char *pPath);
	void CreateStaticBox();
	void Clear_Stack();
	void CopyCell(CCell* pSr, CCell* pDest);
	CRect GetViewPos()
	{ return m_ViewPos; }
	float SetScale(UINT Scale)
	{ return m_Cell.m_fViewScale = (float)Scale / (float)100.0; }

	float GetScale()
	{ return m_Cell.m_fViewScale; }

	CSize GetDocSize();
	virtual ~CImgGeneratorDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CImgGeneratorDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_IMGGENERATORDOC_H__E419D58B_47C3_4AAD_A7D3_4BE7324E37C9__INCLUDED_)
