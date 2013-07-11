//Insert file header:
/********************************************************************
	created:	2008/03/14
	created:	14:3:2008   14:55
	file base:	MainHeader
	file ext:	h
	author:		Kim HwanYong SI(PoongSan Co.Ltd)
	
	purpose:	Main Define 
*********************************************************************/


#ifndef _GLOBAL_H_BY_HYKIM
#define _GLOBAL_H_BY_HYKIM

#pragma once
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//	Definition for system 
///////////////////

//// Notebook 작업시
//#define NOTEBOOK
//#define DEBUG_MODE				(1)

// 실작업시
//#define NOTEBOOK
#define DEBUG_MODE				(0)

#define SPECTRA_NZLCNT			(128)
#define HEAD_COUNT				(1)
#define DIVISION_WIDTH			(256)//(128)
#define NZL_CNT					(512)//(256) //(128)   // 하나의 헤드에 노즐 전체갯수
#define VOLT_CNT				(128)
#define ERRORMAP_PERIOD			(10000)
#define ERRORMAP_CNT			(256) //최대 ErrorMap 분할된 만큼의 갯수.

#define	WM_ICON_NOTIFY			WM_USER + 10

// APPLICATION NAME
#define REG_PRINAME			("Software\\VB and VBA Program Settings\\PI_ALPHA_SYSTEM_HEAD_IF")

// REGISTRY SECTION NAME
#define _SYSDATA		("Software\\VB and VBA Program Settings\\PI_ALPHA_SYSTEM_HEAD_IF\\SYS_DATA\\")
#define _SEND			("Software\\VB and VBA Program Settings\\PI_ALPHA_SYSTEM_HEAD_IF\\RECEIVE\\")
#define _RECEIVE		("Software\\VB and VBA Program Settings\\PI_ALPHA_SYSTEM_HEAD_IF\\SEND\\")
#define _HEADCTRL_TYPE	("Software\\VB and VBA Program Settings\\G_Sys_2009\\SYSTEM\\")

// REGISTRY _SYSDATA SECTION KEY NAME
#define __SYS_HEADCNT	 ("HEAD_QTY")
#define __SYS_SELENC	 ("ENC_Phase")
#define __SYS_ENCRES	 ("ENC_RES")
#define __SYS_IMGPITCH	 ("System_Image_Pitch")
#define __SYS_JETDELAY	 ("JET_DELAY")
#define __SYS_HEADTYPE	 ("HEAD_TYPE")
#define __SYS_SUPPLYVOLT ("SUPPLY_VOLT")
#define __SYS_HEADDELAY	 ("HEAD_DELAY")
#define __SYS_SLANTANGLE ("SLANT_ANGLE")
#define __SYS_VOLTOFFSET ("VOLT_OFFSET")
#define __SYS_BOOTPATH   ("BOOT_PATH")
#define __SYS_ERRMAP	 ("ERR_MAP")

// REGISTRY _SEND SECTION KEY NAME
#define __RND_HEADNO		("HEAD_NO")
#define __RND_HEADLIST		("HEAD_LIST") // edit by wonho
#define __RND_CMDNO			("CMD_NO")			
#define __RND_DBPATH		("DB_PATH")
#define __RND_START_LINE	("START_LINE")
#define __RND_END_LINE		("END_LINE")
#define __RND_ENC_DIR		("ENC_DIR")
#define __RND_HEAD_DELAY	("HEAD_DELAY")
#define __RND_ORG_PITCH		("ORG_PITCH")
#define __RND_SLANTANGLE	("SLANT_ANGLE")
#define __RND_IMG_PATH		("IMG_PATH")
#define __RND_TIMER_KHZ		("TIMER_KHZ")
#define __RND_JETACCDIST	("JET_ACCDIST")
#define __RND_DROPENC_RES   ("DROP_ENCRES")
#define __RND_STGENC_RES    ("STG_ENCRES")
#define __RND_STARTNZL_NO   ("START_NZLNO")
#define __RND_ENDNZL_NO     ("END_NZLNO")
#define __RND_USENZL_CNT    ("USE_NZLCNT")
#define __RND_NZLACT	    ("SETNZL_ENABLE")
#define __RND_NZLVOLT	    ("SETNZL_VOLT")
#define __RND_NZLDELAY		("SETNZL_DELAY") // edit by wonho  SETNZL_DELAY_0  ~  255
#define __RND_NZLWAVE	    ("SETNZL_WAVE")
#define __RND_TRIGON_UM		("TRIGGER_ON_UM")
#define __RND_TRIGOFF_UM	("TRIGGER_OFF_UM")
#define __RND_SLANTOFF_DIR	("SLANTOFF_DIR")
#define __RND_HD12_DIS  	("HD12_DIS")
#define __RND_SYSTEM_PITCH_UM ("SYSTEMP_PITCH_UM")
#define __RND_DROP_PITCH_UM	  ("DROP_PITCH_UM")
#define __RND_IMAGE_LENGTH_UM ("IMAGE_LENGTH_UM")

#define __RND_HEADCTRL		("HEAD_TYPE")

// REGISTRY _RECEIVE SECTION KEY NAME
#define __SEND_MSG			("RETURN_MESSAGE")
#define __SEND_LIB			("RETURN_LIB")
#define __SEND_IMGLINE		("RETURN_IMGLINE")
#define __SEND_JUDGE		("RETURN_JUDGE")
#define __SEND_IMGBLKCNT	("RETURN_IMG_BLOCKCNT")
#define __SEND_IMGVERCNT	("RETURN_IMG_VERCNT")
#define __SEND_IMGTITLE		("RETURN_IMG_TITLE")
#define __SEND_IMGXSIZE  	("RETURN_IMG_XSIZE")
#define __SEND_IMGYSIZE  	("RETURN_IMG_YSIZE")
#define __SEND_IMGMAXCNT  	("RETURN_MAX_IMGCOUNT")
#define __SEND_IMGCURCNT  	("RETURN_CUR_IMGCOUNT")
#define __SEND_CMDNO		("RETURN_CMDNO")
#define __SEND_READENCPOS	("RETURN_ENCPOS")
#define __SEND_IMGPERCENT   ("RETURN_PERCENT")

// COMMAND Define Case Number
typedef enum RNDTYPE
{

    NONE_CMD = 0,

	// PRI
    EXE_BOOT,
	EXE_CLOSE,
    SET_VOLT,
    SET_WAVEFORM,
    SET_ACTIVE,
    SET_SLANTOFFSET,
    SET_All,
    EXE_TIMERJET,
    EXE_ENCJET,
	EXE_STOPJET,
	UPLOAD_IMG,
	SET_JETDIR,
	SET_JET_IMGLINE,
	SET_SLANTANGLE,
    SET_ORGPITCH,
	SET_TIMER_KHZ,
	HIDE_TRAYICON,
	EXE_TRIGJET,

	SET_ACTIVE2,
    SET_VOLT2,

	RESET_TRIGGERPOS,
	EXE_ImgTimerJetStart,
	GET_ENC_COUNT_POS,
	ZERO_SET_TRIGPOS,
	EXE_TRIGJET_MULTI_SET,
	EXE_TRIGJET_MULTI,
	SET_DELAY,	// edit by wonho
	SET_HD_12_OFFSET,

	UPLOAD_HEAD_ZERO_TEACHING_IMG,
	SET_SYSTEM_PITCH,

	// KM
	EXE_KM_BOOT,
	EXE_KM_CLOSE,
	EXE_KM_RESET,
	SET_KM_IMAGEDATA,
	SET_KM_DELAY,
	SET_KM_FIRETIME,
	SET_KM_HEADPARA,
	SET_KM_IMAGEINFO,
	SET_KM_WAVEFORMPARA,
	SET_KM_PRINT
};
//20090816 LHJ EXE_ImgTimerJetStart추가함.

typedef enum SENDTYPE
{
	NONE_SEND = 0,
	IMG_LINE,
	UPLOAD_IMG_BLOCKCNT,
    UPLOAD_IMG_VERCNT,
	UPLOAD_IMG_TITLE,
    UPLOAD_IMG_XSIZE,
    UPLOAD_IMG_YSIZE,

	UPLOAD_IMG_DOWNLOAD
};

// Judge
typedef enum JUDGETYPE
{
	JUDGEOK = 1,
	JUDGENG = -1,
	JUDGEING = 0	
};

// Head 갯수.
typedef enum HEAD_SETNO
{
	HEAD1=0,
	HEAD2,
	HEAD3,
	HEAD4,
	HEAD5,
	//HEAD6,
	//HEAD7,
	//HEAD8,
	//HEAD9,
	//HEAD10,	
	HEAD_CNT
};

typedef struct tagHeadDB
{
	float fSlantOffset[SPECTRA_NZLCNT];
	float fVoltage[SPECTRA_NZLCNT];
	int   nWaveForm[SPECTRA_NZLCNT];
	bool  bActive[SPECTRA_NZLCNT];
	
	tagHeadDB()
	{
		memset(fSlantOffset, 0, sizeof(float)*SPECTRA_NZLCNT);
		memset(fVoltage, 0, sizeof(float)*SPECTRA_NZLCNT);
		memset(nWaveForm, 0, sizeof(int)*SPECTRA_NZLCNT);
		memset(bActive, 0, sizeof(bool)*SPECTRA_NZLCNT);
	}

} HEADDB, *PHEADDB;



#define SCANDIR_CNT		(2)

typedef enum Scan_Dir
{
	SCAN_FORWARD = 0,
	SCAN_BACKWARD,	
	SCAN_FBWARD,
	SCAN_DIRCNT
} SCAN_DIR, *PSCAN_DIR;

typedef enum Nzl_ActType
{
	ACTNZL_ALL = 0,
	ACTNZL_CFG,
	ACTNZL_EVEN,
	ACTNZL_ODD,
	ACTNZL_CNT
}NZL_ACTTYPE, *PNZL_ACTTYPE;

typedef struct  tagPRIDB
{		
	int nHeadCnt;
	int nSelEnc;
	int nEncDir;
	float fEncRes_um;
	float fImgPitch_um;
	float fJetDelay_um;
	float fHeadDelay_um;
	float fSlantAngle;
	float fVoltOffset;

	int nHeadType;
	float fSupplyVolt;
	
	float fOrgPitch;

	int	  nBlkCnt;
	ULONG ulngVerCnt;

	int   nJetStartNzlNo;
	int   nJetEndNzlNo;
	int   nJetUseNzlCnt;

	HEAD_SETNO nHeadNo;

	int nHeadList; //edit by wonho
	
	HEADDB HEAD[HEAD_COUNT];
	
	tagPRIDB()
	{
		nSelEnc = 0;
		nHeadCnt = 0;
		nEncDir = 0;
		fEncRes_um = 0.0f;
		fImgPitch_um = 0.0f;
		fJetDelay_um = 0.0f;

		nHeadType = 0;
		fSupplyVolt = 0.0f;

		fOrgPitch = 0.0f;

		nJetStartNzlNo = 0;
		nJetEndNzlNo = 0;
		nJetUseNzlCnt = 0;

		nHeadNo = HEAD1;
		nHeadList = 0; // edit by wonho

	}	

}PRIDB,*PPRIDB;

typedef struct _BaseBdPara
{
	// Head Ctrl Count
	int nHeadCnt;

	// Encorder Resolution
	float fEncRes_um;
	
	// System Image Pitch
	float fSysImgPitch_um;

	// Download Image Pitch
	float fDnImgPitch_um;

	// ErrorMap Period
	float fErrMapPrd;

	// ErrorMap Count
	int nErrMapCnt;

	// Error Map Data
	int	  nErrMapArr[ERRORMAP_CNT];

	// Supply Voltage
	float fSupplyVolt;

	// Voltage Offset
	float fVoltOffset[HEAD_CNT];

	// Boot File Path
	char  cBootPath[1024];

	// ErrorMap Count
	int nHeadType;

	_BaseBdPara()
	{
		nHeadCnt = 0;
		fEncRes_um = 0.1f;			
		fSysImgPitch_um = 20.0f;
		nErrMapCnt = 256;
		fErrMapPrd = 100.0f;
		fSupplyVolt = 125.0f;	
		fDnImgPitch_um = 20.0f;
		nHeadType = 10;// Default NOVA Head = 10

		memset(nErrMapArr, 0, sizeof(float)*ERRORMAP_CNT);			
		memset(fVoltOffset, 0, sizeof(float)*HEAD_CNT);			
		memset(cBootPath, '\0', sizeof(char)*1024);			
	}

}BASEBDPARA, *PBASEBDPARA;

typedef struct _HeadCtrlPara
{
	// Slant Angle
	float fSlantAngle;

	// Head Delay Distance
	float fHeadDelayDist_mm;

	// Nozzle Slant Offset
	float fSlantOffset[NZL_CNT];
	
	// Nozzle Voltage
	float fVoltage[NZL_CNT];

	// Nozzle Voltage
	float nVoltage[NZL_CNT];

	// Nozzle WaveForm
	int   nWaveForm[NZL_CNT];
	
	// Nozzle Active
	int   nActNzl[NZL_CNT];

	_HeadCtrlPara()
	{
		fSlantAngle = 0.0f;
		fHeadDelayDist_mm = 0.0f;

		memset(fSlantOffset, 0, sizeof(fSlantOffset));			
		memset(fVoltage, 0, sizeof(fVoltage));			
		memset(nVoltage, 0, sizeof(nVoltage));			
		memset(nWaveForm, 0, sizeof(nWaveForm));			
		memset(nActNzl, 0, sizeof(nActNzl));			
	}

}HEADCTRLPARA, *PHEADCTRLPARA;

///////////////////
#endif		// #ifndef _MAINHEADER_H_BY_HYKIM
// Define description by hykim(Poongsan Systems)
