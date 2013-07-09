// ManageInkJet.h: interface for the CManageInkJet class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(CMANAGEINKJET)
#define CMANAGEINKJET

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "InkJet_Base.h"
#include "Global.h"

/*

  DSP : 디지털 신호를 기계장치가 빠르게 처리할 수 있도록 하는 집적회로를 말한다. 
		아날로그 신호인 음성을 디지털화 하는 음성 코딩에 사용되기도 한다.
*/

class CManageInkJet : public CInkJet_Base
{

// Construction
public:
	CManageInkJet();
	virtual ~CManageInkJet();

// Attribute
public:

	// Return Message
	CString m_strMsg;

	// Main Dialog Handle
	HWND m_pParent;

	int   m_nHeadType;
	BOOL  m_bOpenInkJet;

	BASEBDPARA		m_BdPara;
	HEADCTRLPARA	m_TestHdPara;
	HEADCTRLPARA	m_HdPara[HEAD_CNT][SCANDIR_CNT];


protected:

	//m_bBootFlag


private:

//	ManageData::DATAPARAMS::BASEBDPARA m_BdPara;
//	ManageData::DATAPARAMS::HEADCTRLPARA m_HdPara[HEADCTRL_CNT][SCANDIR_CNT];

// Operation
public:
	//edit by wonho
	//BOOL ImageTimerJetStart(int nHeadNo, int nJetDir, float fHDDelay_um, float TrgOn_Xum, float TrgOff_Xum, float SetFreq);
	BOOL ImageTimerJetStart(int nHeadNo, int nJetDir, float SetFreq);

	//edit by wonho, head delay는 별도로 설정
	//BOOL TrigJet(int nHeadNo, int nJetDir, float fHDDelay_um, float TrgOn_Xum, float TrgOff_Xum);
	BOOL TrigJet(int nHeadNo, int nJetDir, float TrgOn_Xum, float TrgOff_Xum);

	BOOL Set_HeadDelay(BOOL *bUseHead, SCAN_DIR Scan_Dir);
	BOOL Jet_ImageScan_T3(BOOL *bUseHead, 
						  int nJetDir, 
						  NZL_ACTTYPE nActNzlType,
					      int *nSNzlNoArr, 
						  int *nENzlNoArr, 
					      double dTrgOn_Xmm, 
						  double dTrgOff_Xmm, 
						  BOOL bIsSetNzlPara,
						  char *pRndMsg);

	BOOL Jet_ImageScan_T2(BOOL *bUseHead, UINT nHeadCnt, 
						UINT nJetDir, NZL_ACTTYPE nActNzlType,
						double dTrgOn_Xmm, double dTrgOff_Xmm, 
						UINT nLastHDNo, UINT nLastNzlCnt, 
						BOOL nLastSetting , char *pRndMsg);
	BOOL IsOpenInkjet();
	BOOL Stop_ImageScan(char *pRndMsg);
	ULONG Download_Image(UINT nHeadNo, UINT nJetDir, char *pRndMsg);
	BOOL Jet_ImageScan_T1(UINT nHeadNo, UINT nJetDir, float fScanStartPos_mm, float fScanEndPos_mm, char *pRndMsg, BOOL bSetImg = TRUE);

	unsigned long OpenImgFile(unsigned int nHeadNum, 
							  CString sFolder, 
							  int ImgDnType, 
							  int JetDirection,
							  CString& sRtn);	//Binary Image Download

	BOOL Set_TestNozzleData(int nHeadNo, char *pRndMsg);
	BOOL Stop_NozzleTest(char *pRndMsg);
	BOOL NozzleTest(UINT nHeadNo, float fTimerFreq, char *pRndMsg);

	void Call_HdParaBuf(PHEADCTRLPARA HdPara);
	void Call_BdParaBuf(PBASEBDPARA BdPara);
	
	DWORD ThreadMemberFunc();
	int	  MainFunc();

	void Put_ErrorMapData();
	BOOL Reset_TriggerPos();
	int	 Get_TriggerEncCnt();
	BOOL ZeroSet_TriggerPos();

	void Set_HeadCtrlCnt(int nHeadCnt);
	
	// Head별 세팅파라메터
	BOOL Download_HDImage_PitchSet(int nHeadNo, int nJetDir, char *pRndMsg);
	BOOL Download_HDImage_Slant(int nHeadNo, int nJetDir, char *pRndMsg);
	BOOL Clear_HDImage(int nHeadNo, int nJetDir, char* pRndMsg);
	
	BOOL Set_HDDelay(int nHeadNo, char *pRndMsg);
	void Put_HDDelayBuf(int nHeadNo, float fDelay);

	BOOL Set_HDSlantAngle(int nHeadNo, char *pRndMsg);
	void Put_HDSlantAngleBuf(int nHeadNo, float fSlantAngle);

	BOOL Set_HDSlantOffset(int nHeadNo, char *pRndMsg);
	void Put_HDSlantOffsetBuf(int nHeadNo, int *pnSlantOffset);

	BOOL Set_HDActNozzle(int nHeadNo, char *pRndMsg);
	void Put_HDActNozzleBuf(int nHeadNo, int *pnActNzl);

	BOOL Set_HDVoltage(int nHeadNo, int nDataType, char *pRndMsg);
	void Put_HDVoltageBuf(int nHeadNo, int *pnActNzl);
	void Put_HDVoltageBuf(int nHeadNo, float *pfVoltData);

	BOOL Set_HDWaveform(int nHeadNo, char *pRndMsg);
	void Put_HDWaveFormBuf(int nHeadNo, int *pnWfData);

	BOOL Set_NozzleData(int nHeadNo, int nJetDir, char* pRndMsg, NZL_ACTTYPE nActNzlType = ACTNZL_CFG);
	BOOL Set_NozzleData_T3(int nHeadNo, int nJetDir, int nSNzlNo, int nENzlNo, NZL_ACTTYPE nActNzlType, char *pRndMsg);	
	
	// Base Board
	BOOL Close_Bd();
	BOOL Boot_Bd();
	
	BOOL Init_HeadObject(int nHeadNo, char *pRndMsg);
	BOOL Init_BaseBd(char *pRndMsg);
	BOOL Set_BSJet_TrgPosition(int nHeadNo, float fStartPosition, float fEndPostion);	
	

	// Create Class
	void Init_Var();
	void Clear_Var();
	void Init_Ctrl();
	void Clear_Ctrl();

	void Set_ParentPoint(HWND pParent);

	BOOL Set_SystemPitch(char* pRndMsg);
};

#endif // !defined(AFX_MANAGEINKJET_H__783BD8E9_1E29_45E7_A67B_DD0E3C564F3B__INCLUDED_)
