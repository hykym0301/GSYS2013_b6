// Manage_Img.h: interface for the CManage_Img class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MANAGE_IMG_H__D42B61AA_6821_4D4E_9088_43C54948CF47__INCLUDED_)
#define AFX_MANAGE_IMG_H__D42B61AA_6821_4D4E_9088_43C54948CF47__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define DIB_HEADER_MARKER		((WORD)('M' << 8) | 'B')	// BM MARKER

struct ULSIZE{
	unsigned long cx;
	unsigned long cy;
};

struct LPOINT{
	long x;
	long y;
};

struct ULPOINT{
	unsigned long x;
	unsigned long y;
};

struct ULRECT{
	unsigned long x;
	unsigned long y;
	unsigned long width;
	unsigned long height;
};

struct ULEDITOR{
	BOOL m_CopyOK;
	BOOL m_PasteOK;
	BOOL m_IsItCpy;
	int m_sCol;
	int m_eCol;
	long m_gRow;
	int m_sCol1;
	int m_eCol1;
	long m_gRow1;
	unsigned char* code_image;
	unsigned long m_cy;
	//LPBYTE code_image;
};

#include "ManageInkJet.h"

class CManage_Img : public CManageInkJet 
{
// Constructor
public:
	CManage_Img();
	virtual ~CManage_Img();

// Attribution
public:
	
	HGLOBAL				m_hImage;
	LPSTR				m_pImg;
	ULSIZE				m_ulsizeImg;
	int					m_nBlkCnt;
	ULONG				m_ulngVerCnt;
	CString				m_strImgTitle;
	CString				m_strImgSize;
	BOOL				m_bImgVer;

// Operator
public:
	void Free();
	void Clear_Var();
	void Init_Var();
	bool BmptoDivideRaw(LPCTSTR lpszFileName, 
						LPSTR pImg, 
						ULSIZE ulsizeImg, 
						int nSliceCnt, 
						float fOrgPitch, 
						int nHeadNo,
						int nSNzlNo, 
						int nENzlNo, 
						int nUseNzlCnt,
						int nJetDir);

	bool LoadBMP(LPCTSTR lpszFileName, 
						  float fOrgPitch, 
						  int nHeadNo, 
						  int nSNzlNo, 
						  int nENzlNo, 
						  int nUseNzlCnt,
						  int nJetDir);

	bool Write_Image(LPSTR pImg,  
		             ULSIZE ulsizeImg, 
					 LPCTSTR lpszFileName, 
					 float fOrgPitch, 
					 int nHeadNo,
					 int nSNzlNo, 
					 int nENzlNo, 
					 int nUseNzlCnt,
					 int nJetDir);

	void RemoveDir(CString strDir);

	bool Write_ZeroAndTeachingImage( LPCTSTR lpszFileName, 
									 float fOrgPitch,
									 float fSystemPitch_um,
									 float fDropPitch_um,
									 float fImageLength_um,
									 int nHeadNo,
									 int nSNzlNo, 
									 int nENzlNo, 
									 int nUseNzlCnt,
									 int nJetDir);
};

#endif // !defined(AFX_MANAGE_IMG_H__D42B61AA_6821_4D4E_9088_43C54948CF47__INCLUDED_)
