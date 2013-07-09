// Manage_Reg.cpp: implementation of the CManage_Reg class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Manage_Reg.h"
#include "Global.h"

#include "resource.h"
#include "PRI_HeadIFDlg.h"


#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CManage_Reg::CManage_Reg()
{
	Init_Var();		
}

CManage_Reg::~CManage_Reg()
{
	Clear_Var();
}

/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: Clear_Var	
    
    argument: 
     	
	purpose: Class Member Variable Destory		

    caution:    

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
void CManage_Reg::Clear_Var()
{

}

/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: Init_Var
    
    argument: 
     	
	purpose: Class Member Variable Init	

    caution:    

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
void CManage_Reg::Init_Var()
{
	
}

/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: SHRegReadInt	
    
    argument: _hKey(Registry Main Key), _lpKey(Sub Key), _lpValue( Value Name ), _nDefault( 기본값 설정), _nRet( 반환값 )
     	
	purpose: 숫자형 데이타를 지정 Registry에서 읽어올때 쓴다.	

    caution: 분명 숫자형으로 되어져 있어야 자료형이 맞는다. 만일 데이타가 없을시 지정 기본값으로 값이 반환되어진다.   

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManage_Reg::SHRegReadInt(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, int _nDefault, UINT* _nRet)
{	
	HKEY key = NULL;
	DWORD dwDisp = 0;
	UINT  unResult = 0;
	DWORD dwSize = 0;

	if(RegCreateKeyEx(_hKey, _lpKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_READ, NULL, &key, &dwDisp) != ERROR_SUCCESS)
	{		
		return FALSE;
	}
	
	dwSize = sizeof(LONG);

	if(RegQueryValueEx(key, _lpValue, 0, NULL, (LPBYTE)&unResult, &dwSize) != ERROR_SUCCESS)
	{
		*_nRet = _nDefault;
	}
	
	*_nRet = unResult;

	RegCloseKey(key);

	return TRUE;
		
}
/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: SHRegReadString	
    
    argument: _hKey(Registry Main Key), _lpKey(Sub Key), _lpValue( Value Name ), _nDefault( 기본값 설정), _lpRet( 반환값 ), _nSize( 문자형 길이 )
     	
	purpose: 문자형 데이타를 지정 Registry에서 읽어올때 쓴다.		

    caution: _nSize은 _lpRet의 Buf Size    

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManage_Reg::SHRegReadString(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, LPCTSTR _lpDefault, LPTSTR _lpRet, DWORD _nSize)
{	
	HKEY key = NULL;
	DWORD dwDisp = 0;
	UINT  unResult = 0;
	DWORD dwSize = 0;

	if(RegCreateKeyEx(_hKey, _lpKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_READ, NULL, &key, &dwDisp) != ERROR_SUCCESS)
	{		
		return FALSE;
	}
	
	dwSize = _nSize;

	if(RegQueryValueEx(key, _lpValue, 0, NULL, (LPBYTE)_lpRet, &dwSize) != ERROR_SUCCESS)
	{
		lstrcpy(_lpRet,_lpDefault);
		
		return FALSE;
	}

	RegCloseKey(key);

	return TRUE;
}
/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: SHRegWriteInt	
    
    argument: _hKey(Registry Main Key), _lpKey(Sub Key), _lpValue( Value Name ), _nData( Value Name에 써질 데이타) 
     	
	purpose: 지정 Registry Key에 숫자형 데이타를 써준다.	

    caution: _nData는 꼭 숫자형 이어야 한다.   

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManage_Reg::SHRegWriteInt(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, UINT _nData)
{	
	HKEY key = NULL;
	DWORD dwDisp = 0;
	UINT  unResult = 0;
	DWORD dwSize = 0;

	if(RegCreateKeyEx(_hKey, _lpKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &key, &dwDisp) != ERROR_SUCCESS)
	{		
		return FALSE;
	}
	else
	{
		if(RegSetValueEx(key, _lpValue, 0, REG_DWORD, (LPBYTE)&_nData, sizeof(UINT)) != ERROR_SUCCESS)
		{
			return FALSE;
		}
	}

	RegCloseKey(key);	

	return TRUE;
}

/********************************************************************
	created:	2008/03/15 - 13:35	
	file name:	Manage_Reg.cpp

	function name: SHRegWriteString	
    
    argument: _hKey(Registry Main Key), _lpKey(Sub Key), _lpValue( Value Name ), _lpData( Value Name에 써질 데이타)  
     	
	purpose: 지정 Registry Key에 문자형 데이타를 써준다.		

    caution: _lpData 꼭 String형 버퍼 어드레스이어야 한다.  

	author:	Kim HwanYong SI(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManage_Reg::SHRegWriteString(HKEY _hKey, LPCTSTR _lpKey, LPCTSTR _lpValue, LPCTSTR _lpData)
{
	HKEY  key = NULL;
	DWORD dwDisp = 0;
	UINT  unResult = 0;
	DWORD dwSize = 0;

	if(RegCreateKeyEx(_hKey, _lpKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &key, &dwDisp) != ERROR_SUCCESS)
	{		
		return FALSE;
	}
	else
	{
		if(RegSetValueEx(key, _lpValue, 0, REG_SZ, (LPBYTE)_lpData, lstrlen(_lpData) + 1) != ERROR_SUCCESS)
		{
			return FALSE;
		}
	}

	RegCloseKey(key);	

	return TRUE;
}

BOOL CManage_Reg::Read_SysData()
{
	CString strValue = _T("");
	char cData[100];
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	BOOL bRtn = FALSE;
	
	memset(cData,'\0',sizeof(char)*100);


	strValue.Format("%s",__SYS_BOOTPATH);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 1024);	
	sprintf(pMain->m_BdPara.cBootPath,"%s",cData);

	strValue.Format("%s",__SYS_HEADCNT);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 10);	
	pMain->m_BdPara.nHeadCnt = atoi(cData);
	
	strValue.Format("%s",__SYS_IMGPITCH);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 100);	
	pMain->m_BdPara.fSysImgPitch_um	= (float)atof(cData);
	
	strValue.Format("%s",__SYS_ENCRES);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 100);	
	pMain->m_BdPara.fEncRes_um	= (float)atof(cData);
	
	strValue.Format("%s",__SYS_SUPPLYVOLT);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 100);	
	pMain->m_BdPara.fSupplyVolt	= (float)atof(cData);	
	
	strValue.Format("%s",__SYS_HEADTYPE);
	SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 10);	
	pMain->m_BdPara.nHeadType = atoi(cData);

	return bRtn;
}

BOOL CManage_Reg::Read_ActiveNzl(int *pActive, int nHeadNo)
{
	int nNzlNo = 0;
	char cData[100];
	CString strValue;
	int nRtn = 0;
	int nBufCnt = 0;
	int nMaxBufCnt = 0;
	nMaxBufCnt = NZL_CNT/2;
	
	memset(cData,'\0',sizeof(char)*100);
	
	for (nNzlNo = 0; nNzlNo < nMaxBufCnt; nNzlNo++)
	{
		strValue.Format("Head%d_%s_%d",nHeadNo,__RND_NZLACT,nNzlNo);
		SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,strValue,"0",cData, 100);	
		
		nRtn = strncmp( cData, "1" , 1);
				
		if (nRtn == 0 )
		{	
			pActive[nBufCnt] = 1;
			nBufCnt++;
			pActive[nBufCnt] = 1;
		}
		else
		{
			pActive[nBufCnt] = 0;
			nBufCnt++;
			pActive[nBufCnt] = 0;
		}	

		nBufCnt++;
	}

	return TRUE;
}

BOOL CManage_Reg::Read_WaveNzl(int *pWave, int nHeadNo)
{
	char cData[100];
	CString strValue;
	int nRtn = 0;
	int nNzlNo = 0;

	memset(cData,'\0',sizeof(char)*100);
	
	for (nNzlNo = 0; nNzlNo<(NZL_CNT/2); nNzlNo++)
	{
		strValue.Format("Head%d_%s_%d",nHeadNo,__RND_NZLWAVE,nNzlNo);
		SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,strValue,"0",cData, 100);	
				
		pWave[nNzlNo] = atoi(cData);
	}


	return TRUE;
}

BOOL CManage_Reg::Read_VoltNzl(float *pVolt, int nHeadNo)
{
	int nNzlNo = 0;
	char cData[100];
	CString strValue;
	int nRtn = 0;

	memset(cData,'\0',sizeof(char)*100);//VOLT_CNT
	
	//20090814-hyoukjin
	//for (nNzlNo = 0; nNzlNo<(NZL_CNT/2); nNzlNo++) //원본 : 노즐갯수를 따라가도록 되어있어 바꾸었슴 

	for (nNzlNo = 0; nNzlNo<(VOLT_CNT); nNzlNo++)
	{
		strValue.Format("Head%d_%s_%d",nHeadNo,__RND_NZLVOLT,nNzlNo);
		SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,strValue,"0",cData, 100);	
				
		pVolt[nNzlNo] = (float)atof(cData);
	}

	return TRUE;
}

// edit by wonho
BOOL CManage_Reg::Read_NzlDelay(float *pNzlDelay, int nHeadNo)
{
	int nNzlNo = 0;
	char cData[100];
	CString strValue;
	int nRtn = 0;
	int nBufCnt = 0;
	int nMaxBufCnt = 0;
	
	nMaxBufCnt = NZL_CNT/2;
	memset(cData,'\0',sizeof(char)*100);//VOLT_CNT
	
	for (nNzlNo = 0; nNzlNo < nMaxBufCnt; nNzlNo++)
	{
		strValue.Format("Head%d_%s_%d",nHeadNo,__RND_NZLDELAY,nNzlNo);
		SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,strValue,"0",cData, 100);	
				
		pNzlDelay[nBufCnt] = (float)atof(cData);
		nBufCnt++;
		pNzlDelay[nBufCnt] = (float)atof(cData);
		nBufCnt++;
	}

	return TRUE;
}

BOOL CManage_Reg::Read_ErrMap(int *pErrMap,int nErrMapCnt)
{
	int nErrMapNo = 0;
	char cData[100];
	CString strValue;
	int nRtn = 0;

	memset(cData,'\0',sizeof(char)*100);
	
	for (nErrMapNo = 0; nErrMapNo<ERRORMAP_CNT; nErrMapNo++)
	{
		strValue.Format("%s_%d",__SYS_ERRMAP,nErrMapNo);
		SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,strValue,"0",cData, 100);	
				
		pErrMap[nErrMapNo] = atoi(cData);
	}

	return TRUE;
}

float CManage_Reg::Read_HeadDelay(int nHeadNo)
{
	char cData[100];
	CString strValue;
	float fData = 0.0f;

	strValue.Format("Head%d_%s",nHeadNo,__RND_HEAD_DELAY);
	SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,strValue,"0",cData, 100);	
	
	fData = (float)atof(cData);

	return fData;
}

 