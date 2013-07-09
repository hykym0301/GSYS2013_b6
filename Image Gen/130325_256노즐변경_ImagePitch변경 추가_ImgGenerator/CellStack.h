// CellStack.h: interface for the CCellStack class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CELLSTACK_H__BDBDA939_A29D_4B5D_802A_6EEB77347FAA__INCLUDED_)
#define AFX_CELLSTACK_H__BDBDA939_A29D_4B5D_802A_6EEB77347FAA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ImgGeneratorDoc.h"
#include "Cell.h"

class CImgGeneratorDoc;

class CCellStack   : public CTypedPtrList< CObList, CCell* >
{
public:
	CCellStack();
	virtual ~CCellStack();

    // Add element to top of stack
    void Push( CImgGeneratorDoc* pDoc, CCell* newCell )
	{ AddHead( newCell ); }

    // Peek at top element of stack
    CCell* Peek()
    { return IsEmpty() ? NULL : GetHead(); }

    // Pop top element off stack
    CCell* Pop()
    { return RemoveHead(); }
};


#endif // !defined(AFX_CELLSTACK_H__BDBDA939_A29D_4B5D_802A_6EEB77347FAA__INCLUDED_)
