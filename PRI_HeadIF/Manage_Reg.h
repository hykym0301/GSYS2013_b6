// Manage_Reg.h: interface for the CManage_Reg class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MANAGE_REG_H__72BCD6FA_41FC_48A2_9B4F_9F7B42FA439D__INCLUDED_)
#define AFX_MANAGE_REG_H__72BCD6FA_41FC_48A2_9B4F_9F7B42FA439D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CManage_Reg  
{
public:
	CManage_Reg();
	virtual ~CManage_Reg();

// Attribute
public:

// Operate
public:

	void Clear_Var();
	void Init_Var();

	BOOL SHRegReadInt(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, int _nDefault, UINT* _nRet);
	BOOL SHRegReadString(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, LPCTSTR _lpDefault, LPTSTR _lpRet, DWORD _nSize);
	BOOL SHRegWriteInt(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, UINT _nData);
	BOOL SHRegWriteString(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, LPCTSTR _lpData);
	
	BOOL Read_SysData();
	BOOL Read_ActiveNzl(int *pActive, int nHeadNo);
	BOOL Read_VoltNzl(float *pVolt, int nHeadNo);
	
	BOOL Read_NzlDelay(float *pNzlDelay, int nHeadNo); // edit by wonho

	BOOL Read_WaveNzl(int *pWave, int nHeadNo);
	BOOL Read_ErrMap(int *pErrMap,int nErrMapCnt);
	float Read_HeadDelay(int nHeadNo);



};

#endif // !defined(AFX_MANAGE_REG_H__72BCD6FA_41FC_48A2_9B4F_9F7B42FA439D__INCLUDED_)
