// ManageInkJet.cpp: implementation of the CManageInkJet class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "PRI_HeadIF.h"
#include "ManageInkJet.h"

// Add Include
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

CManageInkJet::CManageInkJet()
{
	Init_Var();
}

CManageInkJet::~CManageInkJet()
{
	Clear_Var();
}

void CManageInkJet::Init_Var()
{
//	m_BdInfo.m_nHeadCnt = 0;
	m_strMsg  = _T("");
	m_pParent = NULL;

	m_bOpenInkJet = FALSE;

	m_nHeadType = HD_TYPE_TRIDENT_1;
}
void CManageInkJet::Clear_Var()
{
	
}

void CManageInkJet::Init_Ctrl()
{

}
void CManageInkJet::Clear_Ctrl()
{

}

/********************************************************************
	created:	2008/09/22 - 10:40	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Set_ParentPoint(HWND pParent)
{
	m_pParent = pParent;
}

/********************************************************************
	created:	2008/09/18 - 22:43	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:  

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Boot_Bd()
{
	BOOL bRtn = FALSE;

	return bRtn;
}

/********************************************************************
	created:	2008/09/18 - 22:44	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Close_Bd()
{
	BOOL bRtn = FALSE;

	bRtn = Bs_Pci_Close(m_strMsg);

	if (bRtn == FALSE)
	{
		bRtn = FALSE;
		AfxMessageBox(m_strMsg);
	}
	
	m_bOpenInkJet = FALSE;
	return bRtn;

}

/********************************************************************
	created:	2008/09/18 - 22:46	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution: Head 별 설정   

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDWaveform(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	
//	Hd_Set_WaveForm(1,m_strMsg);

	return bRtn;

}

/********************************************************************
	created:	2008/09/18 - 22:48	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution: Head 별 설정   

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDVoltage(int nHeadNo, int nDataType, char *pRndMsg)
{
	BOOL bRtn = FALSE;

	return bRtn;

}
/********************************************************************
	created:	2008/09/18 - 22:49	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution: Head 별 설정   

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDActNozzle(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = FALSE;

	return bRtn;

}

/********************************************************************
	created:	2008/09/18 - 22:50	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDSlantOffset(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = FALSE;

	return bRtn;

}

/********************************************************************
	created:	2008/09/18 - 23:00	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDSlantAngle(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = FALSE;

	return bRtn;
}

/********************************************************************
	created:	2008/09/18 - 23:02	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Clear_HDImage(int nHeadNo, int nJetDir, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	CString sMsg = _T("");

	bRtn = Hd_Img_Buf_Clr(nHeadNo, nJetDir, sMsg);

	if (bRtn == FALSE)
	{
		AfxMessageBox("Hd_Img_Buf_Clr Error!");

	}

	strcpy(pRndMsg, sMsg);

	return bRtn;
}

/********************************************************************
	created:	2008/09/18 - 23:05	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Download_HDImage_Slant(int nHeadNo, int nJetDir, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	
	return bRtn;
}

/********************************************************************
	created:	2008/09/18 - 23:09	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Download_HDImage_PitchSet(int nHeadNo, int nJetDir, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	
	return bRtn;

}

/********************************************************************
	created:	2008/09/18 - 23:10	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_HDDelay(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	
	return bRtn;
}

/********************************************************************
	created:	2008/09/18 - 23:16	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_BSJet_TrgPosition(int nHeadNo, float fStartPosition, float fEndPostion)
{
	BOOL bRtn = FALSE;
	
	return bRtn;

}

/********************************************************************
	created:	2008/09/19 - 14:51	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    Bs_Pci_Boot() 
				Bs_Head_Create() 
				Bs_Set_EncResolution()
				Bs_Set_ImgPitch()

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Init_BaseBd(char* pRndMsg)
{
	BOOL bRtn = FALSE;
	float fSysImgPitch_um = 0.0f;
	float fEncRes_um	  = 0.0f;
	int nHead_Num = 0;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	char cBootPath[1024];

	memset(cBootPath,'\0',1024);

	pMain->Give_BdDataBuf(&m_BdPara);
	pMain->ReadSysData();
	if (m_bOpenInkJet == TRUE)
	{
		Bs_Pci_Close(m_strMsg);			
	}

	//m_BdPara.nHeadCnt = 1;
	//sprintf(m_BdPara.cBootPath,"%s","D:\\LHJ_Work\\PI_Alpha_Sys\\MainUI\\PRI_HeadIF\\Debug\\ptm2-1head.nli");
	//"D:\\inkjet-download\\ptm2-1head.nli"

#ifdef NOTEBOOK
	m_bOpenInkJet = Bs_Pci_Boot(m_BdPara.cBootPath,1,m_pParent,RUN_MODE_DEBUG_EN | RUN_MODE_LOG_LEVEL_1_EN,m_strMsg); 
#else
 	m_bOpenInkJet = Bs_Pci_Boot(m_BdPara.cBootPath,1,m_pParent,RUN_MODE_NORMAL,m_strMsg); 
	//m_bOpenInkJet = Bs_Pci_Boot(m_BdPara.cBootPath,1,m_pParent,RUN_MODE_NORMAL|RUN_MODE_DATA_SAVE_EN,m_strMsg); 
#endif

	if (m_bOpenInkJet == TRUE)
	{
		bRtn = Bs_Head_Create(m_BdPara.nHeadCnt,HD_TYPE_Q_CLASS_512_1, m_strMsg);// pMain->m_JetDB.nHeadType

		if(bRtn == TRUE)
		{
			fEncRes_um = m_BdPara.fEncRes_um;
			bRtn = Bs_Set_EncResolution(fEncRes_um,m_strMsg);
			
			if(bRtn == TRUE)
			{
				// um 단위환산.
				fSysImgPitch_um = m_BdPara.fSysImgPitch_um;
				bRtn = Bs_Set_ImgPitch(fSysImgPitch_um,m_strMsg);
				
				if(bRtn == TRUE)
				{				
					for(nHead_Num = 0; nHead_Num <m_BdPara.nHeadCnt; nHead_Num++)
					{
						bRtn = Hd_Set_SupplyVoltage(nHead_Num, m_BdPara.fSupplyVolt, m_strMsg);

						if(bRtn == TRUE)
						{
							// OK!
						}
						else
						{
							AfxMessageBox(m_strMsg);
						}
					}
				}
				else
				{
					AfxMessageBox(m_strMsg);
				}
			}
			else
			{
				AfxMessageBox(m_strMsg);
			}
		}
		else
		{
			AfxMessageBox(m_strMsg);			
		}
	}
	else
	{
		AfxMessageBox(m_strMsg);
	}			

	return bRtn;
}

/********************************************************************
	created:	2008/09/19 - 14:52	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    Hd_Set_SupplyVoltage()
				Hd_Set_SlantAngle()
				Hd_Set_SlantOffset()
				Hd_Set_Voltage()
				Hd_Set_VoltageOffset()
				Hd_Set_WaveForm()
				Hd_Set_UseNozzleNum()
				Hd_Set_HeadDelay() 

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Init_HeadObject(int nHeadNo, char* pRndMsg)
{
	BOOL bRtn = FALSE;	
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_BdDataBuf(&m_BdPara);
		pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

		bRtn = Hd_Set_SupplyVoltage(nHeadNo, m_BdPara.fSupplyVolt, m_strMsg);

		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_SlantAngle(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].fSlantAngle, m_strMsg);	
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}
		
		bRtn = Hd_Set_SlantOffset(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].fSlantOffset, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_Voltage(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].fVoltage, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_VoltageOffset(nHeadNo, m_BdPara.fVoltOffset[nHeadNo], m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_WaveForm(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].nWaveForm, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_LiveNozzle(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].nActNzl, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_HeadDelay(nHeadNo, m_HdPara[nHeadNo][SCAN_FORWARD].fHeadDelayDist_mm, m_strMsg); 
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}
	}
	else
	{
		AfxMessageBox("Jetting PRI Board 부팅이 안되었습니다.");
	}

	return bRtn;
}

/********************************************************************
	created:	2008/09/22 - 11:54	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Set_HeadCtrlCnt(int nHeadCnt)
{
	m_BdPara.nHeadCnt = nHeadCnt;
}

/********************************************************************
	created:	2008/09/22 - 12:06	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution: 	Trg_PositionReset() ? Stage Home 후 1회 (stage의 원점 확인)
				Trg_SetErrorMapData()    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Reset_TriggerPos()
{
	CPRI_HeadIFDlg *pMain = NULL;
	CString sMsg = _T("");
	float   fErrMapPrd_um = 0.0f;
	BOOL    bRtn = FALSE;

	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_BdDataBuf(&m_BdPara);

		// Stage Home 후 1회 (stage의 원점 확인)
		bRtn = Trg_PositionReset(sMsg);

		if (bRtn == TRUE)
		{
			fErrMapPrd_um = m_BdPara.fErrMapPrd*1000;
			bRtn = Trg_SetErrorMapData(fErrMapPrd_um, m_BdPara.nErrMapCnt, m_BdPara.nErrMapArr, sMsg);    
			
			if (bRtn == FALSE)
			{
				
			}
		}
		else
		{
			
		}
	}
	else
	{
		
	}

	return bRtn;
}

BOOL CManageInkJet::ZeroSet_TriggerPos()
{
	CString sMsg = _T("");
	BOOL    bRtn = FALSE;

	bRtn = Trg_PositionReset(sMsg);
	return bRtn;
}

int CManageInkJet::Get_TriggerEncCnt()
{

	int rtn_Int = 0;
	CString sMsg = _T("");
	CString rnt_Val;

	rtn_Int = Trg_GetCurrEncoderInCounter(sMsg);
		
	return rtn_Int;
}
/********************************************************************
	created:	2008/09/22 - 12:17	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_ErrorMapData()
{
//	m_BdInfo.m_nErrMapData[0] = 0;
//	m_BdInfo.m_fErrMapPeriod = ERRORMAP_PERIOD;

//	int nErrOffset = (int)(m_BdInfo.m_fErrMapPeriod / m_BdInfo.m_fEncResolution);

//	for(int i=1; 256>i;i++)
//	{
//		m_BdInfo.m_nErrMapData[i] = m_BdInfo.m_nErrMapData[i-1] + nErrOffset;
//	}
}

/********************************************************************
	created:	2008/09/22 - 14:29	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Set_NozzleData(int nHeadNo, int nJetDir, char *pRndMsg, NZL_ACTTYPE nActNzlType)
{
	BOOL bRtn = FALSE;	
	int nNzlNo = 0;
	int nData  = 0;
	int nActNzl [NZL_CNT];

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	
	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

		if(nActNzlType == ACTNZL_CFG)
		{	
			memcpy(nActNzl, m_HdPara[nHeadNo][nJetDir].nActNzl, sizeof(int)*NZL_CNT);
		}
		else if(nActNzlType == ACTNZL_ALL)
		{
			for(nNzlNo = 0; nNzlNo<NZL_CNT; nNzlNo++)
			{
				nActNzl[nNzlNo] = 1;
			}
		}
		else if(nActNzlType == ACTNZL_EVEN)
		{
			for(nNzlNo = 0; nNzlNo<NZL_CNT; nNzlNo++)
			{
				nData = nNzlNo%2; 
				if(nData == 1)
				{
					nActNzl[nNzlNo] = 1;
				}				
				else
				{
					nActNzl[nNzlNo] = 0;
				}
			}
		}
		else if(nActNzlType == ACTNZL_ODD)
		{
			for(nNzlNo = 0; nNzlNo<NZL_CNT; nNzlNo++)
			{
				nData = nNzlNo%2; 
				if(nData == 0)
				{
					nActNzl[nNzlNo] = 1;
				}	
				else
				{
					nActNzl[nNzlNo] = 0;
				}
			}
		}
		
		bRtn = Hd_Set_WaveForm(nHeadNo, m_HdPara[nHeadNo][nJetDir].nWaveForm, m_strMsg);		
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_Voltage(nHeadNo, m_HdPara[nHeadNo][nJetDir].fVoltage, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_LiveNozzle(nHeadNo, nActNzl, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}	
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}
	
	return bRtn;
}

/********************************************************************
	created:	2008/09/22 - 15:06	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_HDDelayBuf(int nHeadNo, float fDelay)
{
	m_HdPara[nHeadNo][SCAN_FORWARD].fHeadDelayDist_mm = fDelay;
}

/********************************************************************
	created:	2008/09/22 - 15:06	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_HDSlantAngleBuf(int nHeadNo, float fSlantAngle)
{
	m_HdPara[nHeadNo][SCAN_FORWARD].fSlantAngle = fSlantAngle;
}

/********************************************************************
	created:	2008/09/22 - 15:08	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_HDSlantOffsetBuf(int nHeadNo, int *pnSlantOffset)
{
	memcpy(m_HdPara[nHeadNo][SCAN_FORWARD].fSlantOffset, pnSlantOffset, sizeof(m_HdPara[nHeadNo][SCAN_FORWARD].fSlantOffset));
}

/********************************************************************
	created:	2008/09/22 - 15:10	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_HDActNozzleBuf(int nHeadNo, int *pnActNzl)
{
	memcpy(m_HdPara[nHeadNo][SCAN_FORWARD].nActNzl, pnActNzl, sizeof(m_HdPara[nHeadNo][SCAN_FORWARD].nActNzl));
}


/********************************************************************
	created:	2008/09/22 - 15:14	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
void CManageInkJet::Put_HDWaveFormBuf(int nHeadNo, int *pnWfData)
{
	memcpy(m_HdPara[nHeadNo][SCAN_FORWARD].nWaveForm, pnWfData, sizeof(m_HdPara[nHeadNo][SCAN_FORWARD].nWaveForm));
}

DWORD CManageInkJet::ThreadMemberFunc()
{
//	while( m_bContinue )
	{
//		WaitForSingleObject( m_hEvent, INFINITE );
		MainFunc();
		//Sleep(100);
		Sleep(10);
	}

	return 0;
}

int CManageInkJet::MainFunc()
{
	
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
//	pMain->Disp_Msg("INKJET",10);
	//TRACE("INKJET");
	return 0;
}

void CManageInkJet::Call_BdParaBuf(PBASEBDPARA BdPara)
{
	memcpy(BdPara, &m_BdPara, sizeof(m_BdPara));
}

void CManageInkJet::Call_HdParaBuf(PHEADCTRLPARA HdPara)
{
	memcpy(HdPara, &m_HdPara, sizeof(m_HdPara));
}

BOOL CManageInkJet::NozzleTest(UINT nHeadNo, float fTimerFreq, char *pRndMsg)
{
	BOOL bRtn;
	CString sMsg=_T("");

	if (m_bOpenInkJet == TRUE)
	{
		bRtn = Set_TestNozzleData(nHeadNo, pRndMsg);

		if (bRtn == TRUE )
		{
			bRtn = Hd_Set_NozzleTestFrequency(nHeadNo,fTimerFreq,sMsg);

			if (bRtn == TRUE)
			{
				bRtn = Hd_Img_SetNozTestJetStart(nHeadNo, sMsg);

				if (bRtn == TRUE )
				{
					bRtn = BS_NozzleTestStart(sMsg);

					if (bRtn == FALSE)
					{
						AfxMessageBox("BS_NozzleTestStart Error!");
					}
				}
				else
				{
					AfxMessageBox("Hd_Img_SetNozTestJetStart Error!");
				}			
			}
			else
			{
				AfxMessageBox("Hd_Set_NozzleTestFrequency Error!");
			}
		}
		else
		{
			AfxMessageBox("Set_TestNozzleData Error!");
		}

		strcpy(pRndMsg, sMsg);
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}
	
	return bRtn;
}

BOOL CManageInkJet::Stop_NozzleTest(char *pRndMsg)
{
	BOOL bRtn = FALSE;
	CString sMsg=_T("");

	if (m_bOpenInkJet == TRUE)
	{
		// 분사중일때 상태확인하여, 분사중이 아니면 그냥 Return, 분사중이면 정지시킨다.
		if (Bs_Get_JetState() == TRUE)
		{
			bRtn = Bs_JetStop(sMsg);

			if (bRtn == FALSE)
			{
				AfxMessageBox("Bs_JetStop Error!");
			}
		}		

		strcpy(pRndMsg, sMsg);
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}

	return bRtn;
}

BOOL CManageInkJet::Set_TestNozzleData(int nHeadNo, char *pRndMsg)
{
	BOOL bRtn = TRUE;

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_TestHdDataBuf(&m_TestHdPara);
		
		bRtn = Hd_Set_WaveForm(nHeadNo, m_TestHdPara.nWaveForm, m_strMsg);
		
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_Voltage(nHeadNo, m_TestHdPara.fVoltage, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_LiveNozzle(nHeadNo, m_TestHdPara.nActNzl, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}
	
	return bRtn;
}


/********************************************************************
	created:	2008/10/28 - 15:29	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
unsigned long CManageInkJet::OpenImgFile(unsigned int nHeadNum, 
										 CString sFolder, 
										 int ImgDnType, 
										 int JetDirection,
										 CString& sRtn)	//Binary Image Download
{
	unsigned long lRtn = 0;
	CString TempText;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	float fOrgPitch_um = 0.0f;

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_BdDataBuf(&m_BdPara);
		
		CFileDialog dlg(TRUE, "bmp", NULL,
						OFN_LONGNAMES |
						OFN_EXPLORER |
						OFN_FILEMUSTEXIST |
						OFN_NONETWORKBUTTON |
						OFN_PATHMUSTEXIST |
						OFN_NOCHANGEDIR |
						OFN_HIDEREADONLY,
						"Bitmap 파일(*.bmp)|*.bmp");

		dlg.m_ofn.lpstrInitialDir = sFolder;

		if(dlg.DoModal() == IDOK)
		{
			CString sFilePath = dlg.GetPathName();
			CFileException FileExcept;
			CFile pFile;


			if(!pFile.Open(sFilePath, CFile::modeRead, &FileExcept))
			{
				char szCause[255];
				FileExcept.GetErrorMessage(szCause, 255);
				sRtn = szCause;
				lRtn = 0;			return lRtn;
			}//if(!pFile.Open(sFilePath, CFile::modeRead, &FileExcept))
			else
			{
				BITMAPFILEHEADER fHead;
				BITMAPINFOHEADER iHead; 
				pFile.Read(&fHead, sizeof(fHead));
				char buf[4];
				memset(buf, '\0', sizeof(buf));
				memcpy(buf, (void*)&fHead.bfType, sizeof(fHead.bfType));	//Specifies the file type. It must be BM

				pFile.Seek(sizeof(fHead), CFile::begin);
				pFile.Read(&iHead, sizeof(iHead));

				if(HD_TYPE_TRIDENT_1 == m_nHeadType)
				{
					// 만약 이미지 폭이 256이 아니면 error 처리
					if (iHead.biWidth != 256)
					{
						pFile.Close();
						sRtn.Format("<< Image의 폭이 %d 입니다. Image의 폭은 256 이어야 합니다.", iHead.biWidth);
						//Put_Log(sRtn);
						lRtn = 0;	return lRtn;
					}
				}//if(HD_TYPE_TRIDENT_1 == m_HeadType)
				else
				{
					// 만약 이미지 폭이 128이 아니면 error 처리
					if (iHead.biWidth != 128)
					{
						pFile.Close();
						sRtn.Format("<< Image의 폭이 %d 입니다. Image의 폭은 128 이어야 합니다.", iHead.biWidth);
						//Put_Log(sRtn);
						lRtn = 0;	return lRtn;
					}
				}//else =>if(HD_TYPE_TRIDENT_1 == m_HeadType)


				// 만약 이미지 타입이 256 흑백 이미지가 아니라면 error 처리.
				if (iHead.biBitCount != 8)
				{
					pFile.Close();
					sRtn.Format("<< Image Type이 256 흑백 이미지가 아닙니다");
					//Put_Log(sRtn);
					lRtn = 0;	return lRtn;
				}//if (iHead.biBitCount != 8)
				else
				{
					unsigned long ImgSize = iHead.biWidth * iHead.biHeight;
					unsigned char *TmpBuf;
					unsigned char *OrgImgBuf;

					TmpBuf = new unsigned char[ImgSize]; memset(TmpBuf,0,sizeof(char)*ImgSize);
					OrgImgBuf = new unsigned char[ImgSize]; memset(OrgImgBuf,0,sizeof(char)*ImgSize);
					pFile.Seek(sizeof(BITMAPFILEHEADER)+sizeof(BITMAPINFOHEADER)+sizeof(byte)*4*256, CFile::begin);
					pFile.Read(TmpBuf, ImgSize);
					pFile.Close();

					for(LONG i=0; i<iHead.biHeight;i++)
					{
						for(LONG j=0;j<iHead.biWidth;j++)
						{
							*(OrgImgBuf+(i*iHead.biWidth)+j) = *(TmpBuf+(ImgSize - ((i+1)*iHead.biWidth))+j);
						}
					}
					delete []TmpBuf;

					// Bin image download
					if(IMG_DN_TYPE_PITCHSET == ImgDnType )
					{
						//lRtn = Bin_Img_Dn_PitchSet(m_OrgImgPitch,OrgImgBuf,ImgSize,JetDirection,sRtn);
						
						// 입력은 mm단위 -> 파라메터는 um이므로 환산하여준다.
						fOrgPitch_um = m_BdPara.fDnImgPitch_um;
						lRtn = Hd_Bin_Img_Dn_PitchSet(nHeadNum,fOrgPitch_um,OrgImgBuf,ImgSize,JetDirection,sRtn);
					}
					//////////////////////////////////////////////////////////////////////////
					// 080715 edit by wonho Test용으로 추가
					//else if(IMG_DN_TYPE_TO_HD == ImgDnType)
					//{
					//	lRtn = Bin_Img_Dn_Hd(OrgImgBuf,ImgSize,JetDirection,sRtn);
					//}
					//////////////////////////////////////////////////////////////////////////
					else //if(IMG_DN_TYPE_SLANT == ImgDnType)
					{
						//lRtn = Bin_Img_Dn_Slant(OrgImgBuf,ImgSize,JetDirection,sRtn);
						lRtn = Hd_Bin_Img_Dn_Slant(nHeadNum,OrgImgBuf,ImgSize,JetDirection,sRtn);
					}
					delete []OrgImgBuf;
					return lRtn;
				}//else => if ((iHead.biBitCount != 8)  && (lRtn != 0))
			}// else =>if(!pFile.Open(sFilePath, CFile::modeRead, &FileExcept))
		}//if(dlg.DoModal() == IDOK)
		else
		{
			sRtn.Format("<< Image를 열지 않았았습니다.");
			//Put_Log(sRtn);
			lRtn = 0;
		}
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}

	return lRtn;
}

BOOL CManageInkJet::Stop_ImageScan(char *pRndMsg)
{
	BOOL bRtn = FALSE;
	CString sMsg = _T("");

	if (m_bOpenInkJet == TRUE)
	{
		// 분사중일때 상태확인하여, 분사중이 아니면 그냥 Return, 분사중이면 정지시킨다.
		if (Bs_Get_JetState() == TRUE)
		{
			bRtn = Bs_JetStop(sMsg);

			if (bRtn == FALSE)
			{
				AfxMessageBox("Bs_JetStop Error!");
			}
		}		

		strcpy(pRndMsg, sMsg);
	}

	return bRtn;
}

BOOL CManageInkJet::Set_NozzleData_T3(int nHeadNo, int nJetDir, int nSNzlNo, int nENzlNo, NZL_ACTTYPE nActNzlType, char *pRndMsg)
{
	BOOL bRtn = FALSE;	
	int nNzlNo = 0;
	int nData  = 0;
	int nActNzl [NZL_CNT];

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	
	memset(nActNzl,0,sizeof(int)*NZL_CNT);

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

		if(nActNzlType == ACTNZL_CFG)
		{	
/*			for(int nNzlNo = (nSNzlNo-1); nNzlNo<nENzlNo; nNzlNo++)
			{
				nActNzl[nNzlNo] = 1;
			}
*/	
			memcpy(nActNzl, m_HdPara[nHeadNo][nJetDir].nActNzl, sizeof(int)*NZL_CNT);
		}
		else if(nActNzlType == ACTNZL_ALL)
		{
			memset(nActNzl,1,sizeof(int)*NZL_CNT);			
		}
		else if(nActNzlType == ACTNZL_EVEN)
		{
			for(nNzlNo = 0; nNzlNo<NZL_CNT; nNzlNo++)
			{
				nData = nNzlNo%2; 
				if(nData == 1)
				{
					nActNzl[nNzlNo] = 1;
				}				
				else
				{
					nActNzl[nNzlNo] = 0;
				}
			}
		}
		else if(nActNzlType == ACTNZL_ODD)
		{
			for(nNzlNo = 0; nNzlNo<NZL_CNT; nNzlNo++)
			{
				nData = nNzlNo%2; 
				if(nData == 0)
				{
					nActNzl[nNzlNo] = 1;
				}	
				else
				{
					nActNzl[nNzlNo] = 0;
				}
			}
		}

		bRtn = Hd_Set_LiveNozzle(nHeadNo, nActNzl, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}	

		bRtn = Hd_Set_WaveForm(nHeadNo, m_HdPara[nHeadNo][nJetDir].nWaveForm, m_strMsg);		
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

		bRtn = Hd_Set_Voltage(nHeadNo, m_HdPara[nHeadNo][nJetDir].fVoltage, m_strMsg);
		if(bRtn == FALSE) 
		{
			AfxMessageBox(m_strMsg);
			return bRtn;
		}

	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}

	return bRtn;
}

/********************************************************************
	created:	2008/11/11 - 17:08	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Jet_ImageScan_T3(BOOL *bUseHead,
									 int nJetDir,
									 NZL_ACTTYPE nActNzlType, 
									 int *nSNzlNoArr, 
									 int *nENzlNoArr, 
									 double dTrgOn_Xmm, 
									 double dTrgOff_Xmm, 
									 BOOL bIsSetNzlPara,
									 char *pRndMsg)
{
	BOOL  bBreak = FALSE;
	UINT  nHeadNo = 0;
	BOOL  bRtn = FALSE;
	float fTrgOn_Xum = 0.0f;
	float fTrgOff_Xum = 0.0f;
	float fHeadDelay_um = 0.0f;	
	CString sMsg = _T("");
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	for(nHeadNo = HEAD1; nHeadNo <= HEAD4; nHeadNo++)
	{
		// 화면에 체크되어진 것만을 Jetting명령을 지령한다.
		if(bUseHead[nHeadNo] == TRUE)
		{
			if (bIsSetNzlPara == TRUE)
			{
				// WaveForm, Active Nozzle, Voltage설정
				bRtn = Set_NozzleData_T3(nHeadNo, nJetDir, nSNzlNoArr[nHeadNo], nENzlNoArr[nHeadNo], nActNzlType, pRndMsg);
			}	
			else
			{
				bRtn = TRUE;
			}

			if (bRtn == TRUE)
			{
				if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
				{
#ifdef NOTEBOOK
					bRtn = TRUE;
#else
					bRtn = Hd_Img_SetForwardJetStart(nHeadNo, sMsg);
#endif

					if (bRtn == FALSE)
					{
						MessageBox(NULL,"Jet 정방향설정 함수에러발생","Warning",MB_ICONWARNING);
						return FALSE;
					}
				}
				else
				{
#ifdef NOTEBOOK
					bRtn = TRUE;
#else
					bRtn = Hd_Img_SetBackwardJetStart(nHeadNo, sMsg);
#endif

					if (bRtn == FALSE)
					{
						MessageBox(NULL,"Jet 역방향설정 함수에러발생","Warning",MB_ICONWARNING);
						return FALSE;
					}
				}

//				pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

				// mm -> um
				//fHeadDelay_um = m_HdPara[nHeadNo][nJetDir].fHeadDelayDist_mm * 1000;

//				fHeadDelay_um = (pMain->m_Data.fCalcHDDelay_mm[nHeadNo][nJetDir] + m_HdPara[nHeadNo][nJetDir].fHeadDelayDist_mm) * 1000;

				bRtn = Hd_Set_HeadDelay(nHeadNo, fHeadDelay_um, sMsg);	

				if (bRtn == FALSE)
				{
					MessageBox(NULL,"Head Delay Setting시도중 에러발생","Warning",MB_ICONWARNING);
					return FALSE;
				}			
			}
			else
			{
				return FALSE;
			}
		}

		// All Head사용시 Nozzle Parameter를 모두 세팅하여도 여기서 break됨으로 나머지 뒤에 잔여헤드는 Jetting을 하지않게된다.
		if(bBreak == TRUE)
		{
			break;
		}
	}

	// mm입력이고, um로 단위환산.
	fTrgOn_Xum  = float(dTrgOn_Xmm  * 1000);
	fTrgOff_Xum = float(dTrgOff_Xmm * 1000);

	bRtn = Trg_SetStartPosition(fTrgOn_Xum,sMsg);

	if(bRtn == TRUE)
	{
		bRtn = Trg_SetEndPosition(fTrgOff_Xum,sMsg); 

		if(bRtn == TRUE)
		{
			bRtn = BS_PC_ImageJetStart(sMsg); 

			if(bRtn == FALSE)
			{
				//AfxMessageBox("BS_PC_ImageJetStart Error!");
				MessageBox(NULL,"BS_PC_ImageJetStart Error!","Warning",MB_ICONWARNING);
				return FALSE;
			}
		}
		else
		{
			//AfxMessageBox("Trg_SetEndPosition Error!");
			MessageBox(NULL,"Trg_SetEndPosition Error!","Warning",MB_ICONWARNING);
			return FALSE;
		}
	}
	else
	{
		//AfxMessageBox("Trg_SetStartPosition Error!");
		MessageBox(NULL,"Trg_SetStartPosition Error!","Warning",MB_ICONWARNING);
		return FALSE;
	}

	strcpy(pRndMsg, sMsg);

	return TRUE;
}

/********************************************************************
	created:	2008/11/04 - 13:41	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Jet_ImageScan_T2(BOOL *bUseHead, UINT nHeadCnt, 
								  UINT nJetDir, NZL_ACTTYPE nActNzlType, 
								  double dTrgOn_Xmm, double dTrgOff_Xmm, 
								  UINT nLastHDNo, UINT nLastNzlCnt, 
								  BOOL nLastSetting, char *pRndMsg)
{
	BOOL  bBreak = FALSE;
	UINT  nHeadNo = 0;
	BOOL bRtn = FALSE;
	float fTrgOn_Xum;
	float fTrgOff_Xum;
	CString sMsg = _T("");
	float fHeadDelay_um = 0.0f;	
	int   nLastActNzl[NZL_CNT];
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	memset(nLastActNzl,0,sizeof(int)*NZL_CNT);

	for(nHeadNo = 0; nHeadNo < nHeadCnt; nHeadNo++)
	{
		// 화면에 체크되어진 것만을 Jetting명령을 지령한다.
		if(bUseHead[nHeadNo] == TRUE)
		{
			// WaveForm, Active Nozzle, Voltage설정
			bRtn = Set_NozzleData(nHeadNo, nJetDir, pRndMsg, nActNzlType);

			if (bRtn == TRUE)
			{
				// 마지막 제팅구간에서 마지막 헤드에 설정을 하여준다.
				if(nLastSetting == TRUE)
				{
					if(nHeadNo == nLastHDNo)
					{
						// Jetting구간이 딱맞아 떨어졌을때는 그대로 진행한다. 여기서는 Skip!
						if( nLastNzlCnt != 0 )
						{				
							for (UINT nNzlNo = 0; nNzlNo < nLastNzlCnt; nNzlNo++)
							{
								nLastActNzl[nNzlNo] = 1;
							}
													
							bRtn = Hd_Set_LiveNozzle(nHeadNo, nLastActNzl, m_strMsg);

							if(bRtn == FALSE) 
							{
								AfxMessageBox(m_strMsg);
								//return bRtn;
							}
						}

						// 마지막헤드 세팅이 끝나면 밑에 Jetting 설정을 마치고 끝날수있도록 우선 Flag를 TRUE시켜준다.						 
						bBreak = TRUE;
					}
				}
			}
			else
			{
				return FALSE;
			}

			if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
			{
				bRtn = Hd_Img_SetForwardJetStart(nHeadNo, sMsg);

#ifdef NOTEBOOK
				bRtn = TRUE;
#endif

				if (bRtn == FALSE)
				{
					return FALSE;
				}
			}
			else
			{
				bRtn = Hd_Img_SetBackwardJetStart(nHeadNo, sMsg);
				
#ifdef NOTEBOOK
				bRtn = TRUE;
#endif

				if (bRtn == FALSE)
				{
					return FALSE;
				}
			}

//			pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

			// mm -> um
			//fHeadDelay_um = m_HdPara[nHeadNo][nJetDir].fHeadDelayDist_mm * 1000;
//			fHeadDelay_um = (pMain->m_Data.fCalcHDDelay_mm[nHeadNo][nJetDir] + m_HdPara[nHeadNo][nJetDir].fHeadDelayDist_mm) * 1000;

			bRtn = Hd_Set_HeadDelay(nHeadNo, fHeadDelay_um, sMsg);	

			if (bRtn == FALSE)
			{
				return FALSE;
			}
		}

		// All Head사용시 Nozzle Parameter를 모두 세팅하여도 여기서 break됨으로 나머지 뒤에 잔여헤드는 Jetting을 하지않게된다.
		if(bBreak == TRUE)
		{
			break;
		}
	}

	// mm입력이고, um로 단위환산.
	fTrgOn_Xum  = float(dTrgOn_Xmm  * 1000);
	fTrgOff_Xum = float(dTrgOff_Xmm * 1000);

	bRtn = Trg_SetStartPosition(fTrgOn_Xum,sMsg);

	if(bRtn == TRUE)
	{
		bRtn = Trg_SetEndPosition(fTrgOff_Xum,sMsg); 

		if(bRtn == TRUE)
		{
			bRtn = BS_PC_ImageJetStart(sMsg); 

			if(bRtn == FALSE)
			{
				AfxMessageBox("BS_PC_ImageJetStart Error!");
			}
		}
		else
		{
			AfxMessageBox("Trg_SetEndPosition Error!");
		}
	}
	else
	{
		AfxMessageBox("Trg_SetStartPosition Error!");
	}

	strcpy(pRndMsg, sMsg);

	return TRUE;
}

/********************************************************************
	created:	2008/10/28 - 15:37	
	file name:	ManageInkJet.cpp
	function name:	    
    argument:     
    return:     	
	purpose:	
    caution:    

	author:	Kim HwanYong GJ(PoongSan Co.Ltd)
*********************************************************************/
BOOL CManageInkJet::Jet_ImageScan_T1(UINT nHeadNo, UINT nJetDir, float fScanStartPos_mm, float fScanEndPos_mm, char *pRndMsg, BOOL bSetImg)
{
	BOOL bRtn = FALSE;
	CString sMsg = _T("");
	float fScanStartPos_um;
	float fScanEndPos_um;
	
	if (m_bOpenInkJet == TRUE)
	{
		// WaveForm, Active Nozzle, Voltage설정
		bRtn = Set_NozzleData(nHeadNo, nJetDir, pRndMsg);	
		
		if (bRtn == TRUE)
		{
			if (bSetImg == TRUE)
			{
				Download_Image(nHeadNo, nJetDir,pRndMsg);
			}		

			if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
			{
				bRtn = Hd_Img_SetForwardJetStart(nHeadNo, sMsg);
			}
			else
			{
				bRtn = Hd_Img_SetBackwardJetStart(nHeadNo, sMsg);
			}

			if(bRtn == TRUE)
			{
				// mm입력이고, um로 단위환산.
				fScanStartPos_um = fScanStartPos_mm * 1000;
				fScanEndPos_um = fScanEndPos_mm * 1000;

				bRtn = Trg_SetStartPosition(fScanStartPos_um,sMsg);

				if(bRtn == TRUE)
				{
					bRtn = Trg_SetEndPosition(fScanEndPos_um,sMsg); 

					if(bRtn == TRUE)
					{
						bRtn = BS_PC_ImageJetStart(sMsg); 

						if(bRtn == FALSE)
						{
							AfxMessageBox("BS_PC_ImageJetStart Error!");
						}
					}
					else
					{
						AfxMessageBox("Trg_SetEndPosition Error!");
					}
				}
				else
				{
					AfxMessageBox("Trg_SetStartPosition Error!");
				}
			}
			else
			{
				AfxMessageBox("Hd_Img_SetForwardJetStart, Hd_Img_SetBackwardJetStart Error!");
			}			
		}		
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}

	strcpy(pRndMsg, sMsg);

	return bRtn;	
}

//- 필요 시 Nozzle wave form 변경 - Hd_Set_WaveForm( )
//- 필요 시 Nozzle Voltage 변경 - Hd_Set_Voltage( )
//- 필요 시 Head Use nozzle Num 설정 - Hd_Set_LiveNozzle () ? ㈜1 081015 변경

//- 필요 시 Head slant angle 변경 - Hd_Set_SlantAngle( )
//- 필요 시 Nozzle slant offset 변경 - Hd_Set_SlantOffset ()
//- 필요 시 Head image buffer clear - Hd_Img_Buf_Clr ()
//- 필요 시 Head image download - Hd_Bin_Img_Dn_Slant() / Hd_Bin_Img_Dn_PitchSet() 
//- 필요시 Head Delay 설정 -Hd_Set_HeadDelay()
//- 반드 시 Head image jet  start 설정  - Hd_Img_SetForwardJetStart()/ Hd_Img_SetBackwardJetStart()

ULONG CManageInkJet::Download_Image(UINT nHeadNo, UINT nJetDir, char *pRndMsg)
{
	BOOL bRtn = FALSE;
	CString sMsg = _T("");
	ULONG nLine = 0;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	if (m_bOpenInkJet == TRUE)
	{
		pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

		bRtn = Hd_Set_SlantAngle(nHeadNo, m_HdPara[nHeadNo][nJetDir].fSlantAngle, sMsg);

		if (bRtn == TRUE)
		{
			bRtn = Hd_Set_SlantOffset(nHeadNo,m_HdPara[nHeadNo][nJetDir].fSlantOffset,sMsg);

			if (bRtn == TRUE)
			{
				bRtn = Hd_Img_Buf_Clr(nHeadNo,nJetDir,sMsg);

				if (bRtn == TRUE)
				{
					nLine = OpenImgFile(nHeadNo, ".\\InkJet\\", IMG_DN_TYPE_PITCHSET, nJetDir, sMsg);
				}
			}
		}

		sprintf(pRndMsg,"%s",sMsg);
	}
	else
	{
		AfxMessageBox("Jet PRI Board 부팅이 안되었습니다.");
	}

	return nLine;	
}

BOOL CManageInkJet::IsOpenInkjet()
{
	return m_bOpenInkJet;
}

BOOL CManageInkJet::Set_HeadDelay(BOOL *bUseHead, SCAN_DIR Scan_Dir)
{
	BOOL bRtn = FALSE;	
	int  nJetDir = 0; 
	int  nHeadNo = 0;
	float fHeadDelay_um = 0.0f;
	char sMsg[100];

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	
	memset(sMsg, '\0',sizeof(char)*100);

	if(Scan_Dir == SCAN_FORWARD)
	{
		nJetDir = 0;
	}
	else if(Scan_Dir == SCAN_BACKWARD)
	{
		nJetDir = 1;	
	}


	if (IsOpenInkjet() == TRUE)
	{
		for(nHeadNo = HEAD1; nHeadNo<HEAD_CNT; nHeadNo++)
		{
			pMain->Give_HdDataBuf(m_HdPara[nHeadNo], nHeadNo);

			// mm -> um
			fHeadDelay_um = m_HdPara[nHeadNo][nJetDir].fHeadDelayDist_mm * 1000;
			//bRtn = Hd_Set_HeadDelay(nHeadNo, fHeadDelay_um, (LPSTR)(LPCSTR)sMsg);	

			if (bRtn == FALSE)
			{
				sprintf(sMsg,"Jet Head%d_Delay 설정중 에러발생",nHeadNo+1);
				MessageBox(NULL,sMsg,"Warning",MB_ICONWARNING);
				break;
			}
		}
	}
	else
	{
		bRtn = FALSE;
	}

	return bRtn;
}

// edit by wonho
//BOOL CManageInkJet::TrigJet(int nHeadList, int nJetDir, float fHDDelay_um, float fTrgOn_Xum, float fTrgOff_Xum)
BOOL CManageInkJet::TrigJet(int nHeadList, int nJetDir, float fTrgOn_Xum, float fTrgOff_Xum)
{

	// nHeadList에는 선택된 헤드의 비트가 세트 되어 있어야함.

	CString sMsg = _T("");
//	int tHeadNo;

	//int nHeadNo = 0;
	BOOL bRtn = FALSE;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	
	pMain->Give_BdDataBuf(&m_BdPara);

// 	for(tHeadNo=0;tHeadNo<m_BdPara.nHeadCnt;tHeadNo++)
// 	{
// 		if(nHeadList&(1<<tHeadNo))
// 		{
// 			pMain->Give_HdDataBuf(&pMain->m_HdPara[tHeadNo], tHeadNo);
// 
// 			if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
// 			{
// 				bRtn = Hd_Img_SetForwardJetStart(tHeadNo, sMsg);
// 			}
// 			else
// 			{
// 				bRtn = Hd_Img_SetBackwardJetStart(tHeadNo, sMsg);
// 			}
// 		}//if(nHeadList&(1<<tHeadNo))
// 
// 
// 		// edit by wonho, head delay는 별도로 설정한다.
// 		//if(bRtn == TRUE)
// 		//{
// 		//	bRtn = Hd_Set_HeadDelay(tHeadNo, fHDDelay_um, sMsg);
// 		//}
// 	}//for(tHeadNo=0;tHeadNo<m_BdPara.nHeadCnt;tHeadNo++)
// 	
// 	if (bRtn == FALSE)
// 	{
// 		return bRtn;
// 	}

	pMain->Give_HdDataBuf(&pMain->m_HdPara[0], 0);

	if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
	{
		bRtn = Hd_Img_SetForwardJetStart(0, sMsg);
	}
	else
	{
		bRtn = Hd_Img_SetBackwardJetStart(0, sMsg);
	}

	bRtn = Trg_SetStartPosition(fTrgOn_Xum,sMsg);
	
	if (bRtn == TRUE)
	{
		bRtn = Trg_SetEndPosition(fTrgOff_Xum,sMsg); 
		
		if (bRtn == TRUE)
		{
			bRtn = BS_PC_ImageJetStart(sMsg);
		}
	}	

	return bRtn;
}


// edit by wonho
BOOL CManageInkJet::ImageTimerJetStart(int nHeadList, int nJetDir, float fFreqKHz)
{

	// nHeadList에는 선택된 헤드의 비트가 세트 되어 있어야함.

	CString sMsg = _T("");
	int tHeadNo;

	BOOL bRtn = FALSE;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();
	
	pMain->Give_BdDataBuf(&m_BdPara);
	
	for(tHeadNo=0;tHeadNo<m_BdPara.nHeadCnt;tHeadNo++)
	{
		if(nHeadList&(1<<tHeadNo))
		{
			pMain->Give_HdDataBuf(&pMain->m_HdPara[tHeadNo], tHeadNo);

			if (nJetDir == HD_JET_TYPE_IMAGE_FORWARD)
			{
				bRtn = Hd_Img_SetForwardJetStart(tHeadNo, sMsg);
			}
			else
			{
				bRtn = Hd_Img_SetBackwardJetStart(tHeadNo, sMsg);
			}
		}//if(nHeadList&(1<<tHeadNo))
	}//for(tHeadNo=0;tHeadNo<m_BdPara.nHeadCnt;tHeadNo++)
	
	if (bRtn == FALSE)
	{
		return bRtn;
	}

	bRtn = BS_TimerJetStart(fFreqKHz,sMsg);

	return bRtn;
}

BOOL CManageInkJet::Set_SystemPitch(char* pRndMsg)
{
	BOOL bRtn = FALSE;
	float fSysImgPitch_um = 0.0f;
	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	pMain->Give_BdDataBuf(&m_BdPara);
	pMain->ReadSysData();
	
	// um 단위환산.
	fSysImgPitch_um = m_BdPara.fSysImgPitch_um;
	bRtn = Bs_Set_ImgPitch(fSysImgPitch_um,m_strMsg);
	if(bRtn == FALSE)
	{
		AfxMessageBox(m_strMsg);
	}
	
	return bRtn;
}