// Manage_File.h: interface for the CManage_File class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MANAGE_FILE_H__EF893CEA_D9F7_4558_ABB9_9469D7E1D0C4__INCLUDED_)
#define AFX_MANAGE_FILE_H__EF893CEA_D9F7_4558_ABB9_9469D7E1D0C4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Global.h"

// File
typedef enum tagAttribute
{
	Read_Attr=0,
	Write_Attr
} ATTR, *PATTR;

class CManage_File  
{
// Construction
public:
	CManage_File();
	virtual ~CManage_File();

// Attribute
public:
	PRIDB m_JetDB;

// Operation
public:
	PRIDB Read_JetDB(char *psPath, int nHeadNo, int nReadLine);
	BOOL Open(CFile *pRtnFile, char *psPath, int nAttribute);
	BOOL ReadLine(CFile *file, char* pcStream);
};

#endif // !defined(AFX_MANAGE_FILE_H__EF893CEA_D9F7_4558_ABB9_9469D7E1D0C4__INCLUDED_)
