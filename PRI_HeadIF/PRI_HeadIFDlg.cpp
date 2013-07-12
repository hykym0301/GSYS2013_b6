// PRI_HeadIFDlg.cpp : implementation file
//

#include "stdafx.h"
#include "PRI_HeadIF.h"
#include "PRI_HeadIFDlg.h"
#include "ManageInkjet.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFDlg dialog

CPRI_HeadIFDlg::CPRI_HeadIFDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CPRI_HeadIFDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CPRI_HeadIFDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CPRI_HeadIFDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CPRI_HeadIFDlg)
	DDX_Control(pDX, IDC_LIST_MSG, m_listMsg);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CPRI_HeadIFDlg, CDialog)
	//{{AFX_MSG_MAP(CPRI_HeadIFDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTN_EXIT, OnBtnExit)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BTN_BOOT, OnBtnBoot)
	ON_BN_CLICKED(IDC_BTN_SAVE, OnBtnSave)
	ON_COMMAND(IDR_EXIT, OnExit)
	ON_COMMAND(IDR_HIDE, OnHide)
	ON_COMMAND(IDR_RUN, OnRun)
	ON_COMMAND(IDR_SHOW, OnShow)
	ON_COMMAND(IDR_STOP, OnStop)
	ON_BN_CLICKED(IDC_BTN_TEST, OnBtnTest)
	ON_BN_CLICKED(IDC_BTN_INIT_KM, OnBtnInitKm)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFDlg message handlers

BOOL CPRI_HeadIFDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	Init_Var();
	Init_Ctrl();
	SetTimer(1,10,NULL);
	
	// 090813 edit by wonho
	m_Ink.Set_ParentPoint(GetSafeHwnd());	

	char cMsg[256];
	char sTitle[256];

	memset(cMsg,'\0',sizeof(char)*256);
	memset(sTitle,'\0',sizeof(char)*256);
	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_HEADCTRL_TYPE,__RND_HEADCTRL,"0",cMsg,256);
	
	if (atoi(cMsg) == 0)
	{
		m_CtrlType = nKM;
		m_km = new CManageInkJet_KM();
		sprintf(sTitle,"Poongsan System - Head I/F Program( KM )");
	}
	else
	{
		m_CtrlType = nLG_Q;
		sprintf(sTitle,"Poongsan System - Head I/F Program( PRI )");
	}

	SetDlgItemText(IDC_STATIC_TITLE,sTitle);

	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CPRI_HeadIFDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CPRI_HeadIFDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CPRI_HeadIFDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

BOOL CPRI_HeadIFDlg::DestroyWindow() 
{
	// TODO: Add your specialized code here and/or call the base class
		
	KillTimer(1);
	m_TrayIcon.StopAnimation();
	
	Clear_Var();
	return CDialog::DestroyWindow();
}

void CPRI_HeadIFDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	char cRndBuf [100];
	char sData [10];

	memset(cRndBuf,'\0',sizeof(char)*100);
	memset(sData,'\0',sizeof(char)*10);

	m_nCnt++;

	if(m_nCnt > 10)
	{	
		if (m_nCnt > 20)
		{
			m_nCnt = 0;
		}
		sprintf(sData,"*");
	}
	else if(m_nCnt < 10)
	{
		m_nCnt++;
		sprintf(sData,"");
	}
	
	SetDlgItemText(IDC_STC_LIVE,sData);
	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_CMDNO,"0",cRndBuf,100);

	// Registry입력 명령어 번호
	m_nCmdSetNo = atoi(cRndBuf);

	// 입력데이타를 이전 명령과 비교하여 중복명령은 삭제한다.
	if(m_nCmdPrevNo != m_nCmdSetNo)
	{
		if (m_CtrlType == nLG_Q )
		{		
			Execute(m_nCmdSetNo);	
		} else {			
			ExecuteKM(m_nCmdSetNo);	
		}
		m_nCmdPrevNo = m_nCmdSetNo;
	}
	
	CDialog::OnTimer(nIDEvent);
}

void CPRI_HeadIFDlg::Init_Var()
{
	m_nCnt = 0;
	m_nCmdSetNo = 0;
	m_nCmdPrevNo = 0;
	m_nTransparency = 10;
}

void CPRI_HeadIFDlg::Init_Ctrl()
{
	if (!m_TrayIcon.Create(NULL,                            // Parent window
                           WM_ICON_NOTIFY,                  // Icon notify message to use
                           _T("Run HeadCtrl..."),  // tooltip
                           ::LoadIcon(NULL, IDI_ASTERISK),  // Icon to use
                           IDR_MENU))                 // ID of tray icon
	{
		return;
	}	
	
	m_TrayIcon.SetMenuDefaultItem(5, TRUE);

	Animate();
	
	RECT rect;

	GetClientRect(&rect);
	SetWindowPos(&wndTopMost, rect.left, rect.top, rect.right, rect.bottom, SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOSIZE | SWP_SHOWWINDOW); 
	
/* 투명화 */
	
	if (m_nTransparency>0)
	{
		//반투명하게 만드는 루틴.
		enum {WS_EX_LAYERED = 0x00080000, LWA_COLORKEY=1, LWA_ALPHA=2, ULW_COLORKEY=1, ULW_ALPHA=2, ULW_OPAQUE=4};
		typedef BOOL(WINAPI *SLWA)(HWND, COLORREF, BYTE, DWORD);

		SLWA pSetLayeredWindowAttributes = NULL;  // 함수포인터 선언, 초기화.

		HINSTANCE hmodUSER32 = LoadLibrary("USER32.DLL"); // 인스턴스 얻음.

		pSetLayeredWindowAttributes=(SLWA)GetProcAddress(hmodUSER32,"SetLayeredWindowAttributes");

		//함수포인터 얻음.

		HWND hwnd = this->m_hWnd; //다이얼로그의 핸들 얻음.

		SetWindowLong(hwnd, GWL_EXSTYLE,GetWindowLong(hwnd, GWL_EXSTYLE) | WS_EX_LAYERED);

		pSetLayeredWindowAttributes(hwnd, 0, 255*(100-m_nTransparency)/100, LWA_ALPHA);
	}

}

void CPRI_HeadIFDlg::Clear_Ctrl()
{
	CString strMsg;
	CString strLib;
//	m_Ink.Destory(strMsg, strLib);
}

void CPRI_HeadIFDlg::Clear_Var()
{
}

void CPRI_HeadIFDlg::Animate()
{
    m_TrayIcon.SetIconList(IDI_ICON1, IDI_ICON4);
    m_TrayIcon.Animate(30,1);
}

void CPRI_HeadIFDlg::OnBtnExit() 
{
	// TODO: Add your control notification handler code here
	EndDialog(0);
}


void CPRI_HeadIFDlg::Execute(int nCmdNo)
{
	CString strWMsg;
	CString strMsg;
	CString strLib;
	CString strPath;

	char cDBPath [256];
	char cMsg[256];
	char cMsg2[256];
	char cMsg3[256];
	char cMsg4[256];

	BOOL bRtn;

	int  nActive[NZL_CNT];
	int  nWave[NZL_CNT];
	int  nSlantOffset[NZL_CNT];
	float fVolt[NZL_CNT];

	char szFilePath[1024];
	HEAD_SETNO nHeadNo; 

	int nHeadList;
//	int tHeadNo;
	int nSlantDIR;

	nHeadNo = HEAD1;

	float fHDDelay_um;
	float fHd12_Dis;

	float fSysPitch_um = 0;
	float fDropPitch_um = 0;			
	float fImageLength_um = 0;

	memset(cDBPath,'\0',sizeof(char)*256);

	memset(cMsg,'\0',sizeof(char)*256);
	memset(cMsg2,'\0',sizeof(char)*256);
	memset(cMsg3,'\0',sizeof(char)*256);
	memset(cMsg4,'\0',sizeof(char)*256);

	memset(nActive,0,sizeof(int)*NZL_CNT);
	memset(nWave,0,sizeof(int)*NZL_CNT);
	memset(nSlantOffset,0,sizeof(int)*NZL_CNT);
	memset(fVolt,0,sizeof(float)*NZL_CNT);
	
	memset(szFilePath,'\0',sizeof(szFilePath));
	memset(m_cMsg,'\0',sizeof(m_cMsg));
	
	fHDDelay_um = 0.0f;
	fHd12_Dis = 0.0f;

	//System Registry Reading부 
	Read_SysData();


	switch(nCmdNo) 
	{
		case NONE_CMD:
			break;

		case HIDE_TRAYICON:
			SendJudge(JUDGEING);
			m_TrayIcon.HideIcon();
			SendJudge(JUDGEOK);
			break;
		
		case SET_SYSTEM_PITCH:

			bRtn = m_Ink.Set_SystemPitch(m_cMsg);
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Set System Pitch OK!");
			}

			break;

		case EXE_BOOT:
			
			SendJudge(JUDGEING);
			
			bRtn = m_Ink.Init_BaseBd(m_cMsg);

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Base Board Initial OK!");
			}
			
			break;

		case EXE_CLOSE:

			SendJudge(JUDGEING);
			bRtn = m_Ink.Close_Bd();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Base Board Close OK!");
			}

			break;
		
		case RESET_TRIGGERPOS:
			
			SendJudge(JUDGEING);
			
			m_Reg.Read_ErrMap(m_BdPara.nErrMapArr, m_BdPara.nErrMapCnt);

			bRtn = m_Ink.Reset_TriggerPos();
			
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error Reset_TriggerPos.");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Reset_TriggerPos OK!");
			}

			break;

		case SET_VOLT:
			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();
			
			m_Reg.Read_VoltNzl(fVolt,nHeadNo);

			bRtn = m_Ink.Hd_Set_Voltage(nHeadNo,fVolt,strMsg);
						
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetVoltage");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Voltage Upate OK!");
				SendJudge(JUDGEOK);
				//DispMsg("Head Voltage Upate OK!");
				DispMsg(strWMsg);
			}

			break;

		case SET_WAVEFORM:

			SendJudge(JUDGEING);

			nHeadNo = Read_HeadNo();
			m_Reg.Read_WaveNzl(nWave,nHeadNo);

			bRtn = m_Ink.Hd_Set_WaveForm(nHeadNo,nWave,strMsg);

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Set WaveForm");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Head WaveForm Upate OK!");
			}

			break;

		case SET_ACTIVE:

			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();
			m_Reg.Read_ActiveNzl(nActive,nHeadNo);
			
			memcpy(m_HdPara[nHeadNo].nActNzl, nActive, sizeof(nActive));

			bRtn = m_Ink.Hd_Set_LiveNozzle(nHeadNo,nActive,strMsg);
					
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Set Active");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Head Active Upate OK!");
				SendJudge(JUDGEOK);
				//DispMsg("Head Active Upate OK!");
				DispMsg(strWMsg);
			}

			break;

		// edit by wonho
		case SET_DELAY:

			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();
			fHDDelay_um = m_Reg.Read_HeadDelay(nHeadNo);
			
			bRtn = m_Ink.Hd_Set_HeadDelay(nHeadNo,fHDDelay_um,strMsg);
					
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error Set Delay");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Head Delay Upate OK!");
				SendJudge(JUDGEOK);
				//DispMsg("Head Active Upate OK!");
				DispMsg(strWMsg);
			}

			break;

		// edit by wonho
		case SET_SLANTOFFSET:

			SendJudge(JUDGEING);

			nHeadNo = Read_HeadNo();

			float fNzlDelay[NZL_CNT];
			memset(fNzlDelay,0,sizeof(float)*NZL_CNT);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_SLANTOFF_DIR,"0",cMsg,256);
			m_Reg.Read_NzlDelay(fNzlDelay,nHeadNo);
			nSlantDIR=atoi(cMsg);
			bRtn = m_Ink.Hd_Set_SlantOffset(nHeadNo,nSlantDIR,fNzlDelay,strMsg);
			//
			//bRtn = m_Ink.Hd_Set_SlantOffset(nHeadNo,fNzlDelay,strMsg);
			
			bRtn = TRUE;
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetSlantOffset");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Head SlantOffset Upate OK!");
			}

 			break;


			
		case SET_All:

			SendJudge(JUDGEING);
			
//			bRtn = m_Ink.SetVoltage(0,m_JetDB.HEAD[0].fVoltage,strMsg);
			bRtn = TRUE;
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetVoltage");
				DispMsg(strMsg);
				break;
			}
			else
			{
				DispMsg("Head SlantOffset Upate OK!");
			}
			
//			bRtn = m_Ink.SetWaveForm(0,m_JetDB.HEAD[0].nWaveForm,strMsg);
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetWaveForm");
				DispMsg(strMsg);
				break;
			}
			else
			{
				DispMsg("Head WaveForm Upate OK!");
			}
			
//			bRtn = m_Ink.SetActive(0,m_JetDB.HEAD[0].bActive,strMsg);
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetActive");
				DispMsg(strMsg);
				break;
			}
			else
			{
				DispMsg("Head Active Upate OK!");
			}
			
//			bRtn = m_Ink.SetSlantOffset(0,m_JetDB.HEAD[0].fSlantOffset,strMsg);
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetSlantOffset");
				DispMsg(strMsg);
				break;
			}
			else
			{
				DispMsg("Head SlantOffset Upate OK!");
			}
			
			SendJudge(JUDGEOK);

			break;
		
		case EXE_TIMERJET:
			
			//Edit by LHJ--------------------------------------------------------------------
// 			nHeadList = Read_HeadList();
// 			
// 			SendJudge(JUDGEOK);
// 			strWMsg.Format("Head%d:%s",nHeadNo," Timer Jet Start...Ack!");
// 			DispMsg(strWMsg);
// 
// 			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TIMER_KHZ,"0",cMsg2,256);
// 
// 			for(tHeadNo=0;tHeadNo<m_BdPara.nHeadCnt;tHeadNo++)
// 			{
// 				if(nHeadList&(1<<tHeadNo))
// 				{
// 					bRtn = m_Ink.Hd_Set_NozzleTestFrequency(tHeadNo,(float)atof(cMsg2),strMsg);
// 					if (bRtn == FALSE)
// 					{				
// 						break;
// 					}
// 					bRtn = m_Ink.Hd_Img_SetNozTestJetStart(tHeadNo, strMsg);
// 					if (bRtn == FALSE)
// 					{				
// 						break;
// 					}
// 				}
// 			}
// 			if (bRtn == TRUE)
// 			{
// 				bRtn = m_Ink.BS_NozzleTestStart(strMsg);
// 			}

			//Edit by LHJ--------------------------------------------------------------------

			nHeadNo = Read_HeadNo();

			SendJudge(JUDGEING);
			strWMsg.Format("Head%d:%s",nHeadNo," Timer Jet Start...Ack!");
			DispMsg(strWMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TIMER_KHZ,"0",cMsg2,256);

			bRtn = m_Ink.Stop_ImageScan(cMsg);
			bRtn = m_Ink.Hd_Set_NozzleTestFrequency(nHeadNo,(float)atof(cMsg2),strMsg);
			bRtn = m_Ink.Hd_Img_SetNozTestJetStart(nHeadNo, strMsg);
			bRtn = m_Ink.BS_NozzleTestStart(strMsg);

			if (bRtn == FALSE)
			{				
				SendJudge(JUDGENG);
				strWMsg.Format("Head%d:%s",nHeadNo," Nzl Test Start...ERROR!");
				DispMsg(strWMsg);
			}
			else
			{					
				SendJudge(JUDGEOK);
				strWMsg.Format("Head%d:%s%s",nHeadNo,cMsg2,"KHz-Nzl Test Start.");
				DispMsg(strWMsg);
			}
			
			break;

		case EXE_TRIGJET:

			SendJudge(JUDGEING);
			
			nHeadList = Read_HeadList();

			SendJudge(JUDGEOK);
			strWMsg.Format("HeadList0x%x:%s",nHeadList," Enc Jet Start...Ack!");
			DispMsg(strWMsg);			

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENC_DIR,"0",cMsg,256);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TRIGON_UM,"0",cMsg2,256);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TRIGOFF_UM,"0",cMsg3,256);

			//fHDDelay_um = m_Reg.Read_HeadDelay(nHeadNo); // edit by wonho, head delay는 별도로 설정한다.
			//bRtn = m_Ink.TrigJet(nHeadList, atoi(cMsg),fHDDelay_um,(float)atof(cMsg2),(float)atof(cMsg3));
			bRtn = m_Ink.TrigJet(nHeadList, atoi(cMsg),(float)atof(cMsg2),(float)atof(cMsg3));

			if (bRtn == FALSE)
			{				
				SendJudge(JUDGENG);
				strWMsg.Format("HeadList0x%x:%s",nHeadList," Enc Jet Start...ERROR!");
				DispMsg(strWMsg);
			}
			else
			{					
				SendJudge(JUDGEOK);
				strWMsg.Format("HeadList0x%x:%s",nHeadList," Enc Jet Start...OK!");
				DispMsg(strWMsg);
			}

			break;

		case EXE_ImgTimerJetStart:

			SendJudge(JUDGEING);
			
			// edit by wonho
			nHeadList = Read_HeadList();

			SendJudge(JUDGEOK);
			strWMsg.Format("Head%d:%s",nHeadNo," ImgTimer Jet Start...Ack!");
			DispMsg(strWMsg);
			
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TIMER_KHZ,"0",cMsg4,256);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENC_DIR,"0",cMsg,256);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TRIGON_UM,"0",cMsg2,256);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_TRIGOFF_UM,"0",cMsg3,256);

			//fHDDelay_um = m_Reg.Read_HeadDelay(nHeadNo); // edit by wonho

			//edit by woho
			//bRtn = m_Ink.ImageTimerJetStart(nHeadNo, atoi(cMsg),fHDDelay_um,(float)atof(cMsg2),(float)atof(cMsg3),(float)atof(cMsg4));
			bRtn = m_Ink.ImageTimerJetStart(nHeadList, atoi(cMsg),(float)atof(cMsg4));
			
			if (bRtn == FALSE)
			{				
				SendJudge(JUDGENG);
				strWMsg.Format("Head%d:%s",nHeadList," ImgTimer Jet Start...ERROR!");
				DispMsg(strWMsg);
			}
			else
			{					
				SendJudge(JUDGEOK);
				strWMsg.Format("Head%d:%s",nHeadList," ImgTimer Jet Start...OK!");
				DispMsg(strWMsg);
			}

			break;

		case EXE_STOPJET:
			
			SendJudge(JUDGEING);

			bRtn = m_Ink.Stop_ImageScan(cMsg);

			if (bRtn == FALSE)
			{				
				SendJudge(JUDGENG);
				strWMsg.Format("Head%d:%s",nHeadNo," Jetting Stop...ERROR!");
				DispMsg(strWMsg);
			}
			else
			{					
				SendJudge(JUDGEOK);
				strWMsg.Format("Head%d:%s",nHeadNo," Jetting Stop");
				DispMsg(strWMsg);
			}

			break;

		case UPLOAD_IMG:
			
			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ORG_PITCH,"0",cMsg,256);
			m_DB.m_JetDB.fOrgPitch = (float)atof(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_STARTNZL_NO,"0",cMsg,256);			
			m_DB.m_JetDB.nJetStartNzlNo = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENDNZL_NO,"0",cMsg,256);			
			m_DB.m_JetDB.nJetEndNzlNo = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_USENZL_CNT,"0",cMsg,256);			
			m_DB.m_JetDB.nJetUseNzlCnt = atoi(cMsg);
			
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENC_DIR,"0",cMsg,256);		
			m_DB.m_JetDB.nEncDir = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_IMG_PATH,"0",cMsg,256);	

			bRtn = m_Img.LoadBMP(cMsg,
								 m_DB.m_JetDB.fOrgPitch,
								 nHeadNo,
								 m_DB.m_JetDB.nJetStartNzlNo,
								 m_DB.m_JetDB.nJetEndNzlNo,
								 m_DB.m_JetDB.nJetUseNzlCnt, 
								 m_DB.m_JetDB.nEncDir);


			if (bRtn == FALSE)
			{
				SendImgInfo(0,0,"",0,0);
				SendJudge(JUDGENG);
				strWMsg.Format("Head%d:%s",nHeadNo," Image Upload Fail!");
				DispMsg(strWMsg);

			}
			else
			{	
				SendImgInfo(m_Img.m_nBlkCnt,
							m_Img.m_ulngVerCnt,
							m_Img.m_strImgTitle,
							m_Img.m_ulsizeImg.cx,
							m_Img.m_ulsizeImg.cy);


				SendJudge(JUDGEOK);
				strWMsg.Format("Head%d:%s",nHeadNo," Image Upload OK");
				DispMsg(strWMsg);
				
				//Return된 ine Count를 Dialog에 Display하기 위함.20090817 이혁진
				strWMsg.Format("Head%d:%s%d",nHeadNo," Return LineCounts = ",m_Img.m_ulngVerCnt);
				DispMsg(strWMsg);
			}

			break;

		case SET_SLANTANGLE:
			
			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_SLANTANGLE,"0",cMsg,256);
			
			m_DB.m_JetDB.fSlantAngle = (float)atof(cMsg);

			bRtn = m_Ink.Hd_Set_SlantAngle(nHeadNo,m_DB.m_JetDB.fSlantAngle,strMsg);// SetSlantAngle(0,m_DB.m_JetDB.fSlantAngle,strMsg);

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
			}
			else
			{	
				SendJudge(JUDGEOK);
			}
			break;

		case SET_ORGPITCH:
			
			SendJudge(JUDGEING);
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ORG_PITCH,"0",cMsg,256);			
			m_DB.m_JetDB.fOrgPitch = (float)atof(cMsg);
			SendJudge(JUDGEOK);

			break;
		case GET_ENC_COUNT_POS:

			int rtn_Count;

			char cValue[256];
			char cKey[256];
			char cSubKey[256];
			
			SendJudge(JUDGEING);
			rtn_Count = m_Ink.Get_TriggerEncCnt();
			

			sprintf(cKey,"%s",_SEND);
			sprintf(cSubKey,"%s",__SEND_READENCPOS);
			sprintf(cValue,"%d",rtn_Count);

			m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
			
			DispMsg("Readed Encoder Counter.");
			SendJudge(JUDGEOK);
			
			break;

		case ZERO_SET_TRIGPOS:

			SendJudge(JUDGEING);

			bRtn = m_Ink.ZeroSet_TriggerPos();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				DispMsg("ZERO Set Encoder Counter NG");
			}
			else
			{	
				SendJudge(JUDGEOK);
				DispMsg("ZERO Set Encoder Counter OK");
			}

			break;
		case SET_HD_12_OFFSET:

			SendJudge(JUDGEING);

			nHeadNo = Read_HeadNo();
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_HD12_DIS,"0",cMsg,256);
			
			fHd12_Dis = (float)atof(cMsg);

			bRtn = m_Ink.Hd_Set_Head_1_2_Offset(nHeadNo,fHd12_Dis,strMsg);

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				DispMsg("Head 1,2 Offset Function ERROR!");
			}
			else
			{	
				SendJudge(JUDGEOK);
				DispMsg("Head 1,2 Offset Function OK");
			}

			break;

		case UPLOAD_HEAD_ZERO_TEACHING_IMG:

			SendJudge(JUDGEING);
			
			nHeadNo = Read_HeadNo();

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ORG_PITCH,"0",cMsg,256);
			m_DB.m_JetDB.fOrgPitch = (float)atof(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_STARTNZL_NO,"0",cMsg,256);			
			m_DB.m_JetDB.nJetStartNzlNo = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENDNZL_NO,"0",cMsg,256);			
			m_DB.m_JetDB.nJetEndNzlNo = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_USENZL_CNT,"0",cMsg,256);			
			m_DB.m_JetDB.nJetUseNzlCnt = atoi(cMsg);
			
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_ENC_DIR,"0",cMsg,256);		
			m_DB.m_JetDB.nEncDir = atoi(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_SYSTEM_PITCH_UM,"0",cMsg,256);
			fSysPitch_um = (float)atof(cMsg);
			
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_DROP_PITCH_UM,"0",cMsg,256);
			fDropPitch_um = (float)atof(cMsg);

			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_IMAGE_LENGTH_UM,"0",cMsg,256);
			fImageLength_um = (float)atof(cMsg);
			
			m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_IMG_PATH,"0",cMsg,256);

			bRtn = m_Img.Write_ZeroAndTeachingImage( cMsg,		
													 m_DB.m_JetDB.fOrgPitch,
													 fSysPitch_um, 
													 fDropPitch_um, 
													 fImageLength_um,
													 nHeadNo,
													 m_DB.m_JetDB.nJetStartNzlNo,
													 m_DB.m_JetDB.nJetEndNzlNo,
													 m_DB.m_JetDB.nJetUseNzlCnt,
													 m_DB.m_JetDB.nEncDir);


			if (bRtn == FALSE)
			{
				SendImgInfo(0,0,"",0,0);
				SendJudge(JUDGENG);
				strWMsg.Format("Head%d:%s",nHeadNo," Image Upload Fail!");
				DispMsg(strWMsg);

			}
			else
			{	
				SendImgInfo(m_Img.m_nBlkCnt,
							m_Img.m_ulngVerCnt,
							m_Img.m_strImgTitle,
							(NZL_CNT / 2),
							500);


				SendJudge(JUDGEOK);
				strWMsg.Format("Head%d:%s",nHeadNo," Image Upload OK");
				DispMsg(strWMsg);
				
				//Return된 ine Count를 Dialog에 Display하기 위함.20090817 이혁진
				strWMsg.Format("Head%d:%s%d",nHeadNo," Return LineCounts = ",m_Img.m_ulngVerCnt);
				DispMsg(strWMsg);
			}

			break;

		default:
			break;
	}

	SendMessage(WM_ICON_NOTIFY);
}

void CPRI_HeadIFDlg::SendJudge(JUDGETYPE nJudge)
{
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	
	sprintf(cKey,"%s",_SEND);
	sprintf(cSubKey,"%s",__SEND_JUDGE);
	sprintf(cValue,"%d",nJudge);

	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	sprintf(cKey,"%s",_RECEIVE);
	sprintf(cSubKey,"%s",__RND_CMDNO);
	sprintf(cValue,"0");

	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
}

void CPRI_HeadIFDlg::SendErrMsg(CString strMsg, CString strLib)
{
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	
	sprintf(cKey,"%s",_SEND);
	sprintf(cSubKey,"%s",__SEND_MSG);
	sprintf(cValue,"%s",strMsg);
	
	// Message 
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	sprintf(cKey,"%s",_SEND);
	sprintf(cSubKey,"%s",__SEND_LIB);
	sprintf(cValue,"%s",strLib);
	
	// Error Function
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
}

void CPRI_HeadIFDlg::SendImgLine(double dImgLine)
{
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	
	sprintf(cKey,"%s",_SEND);
	sprintf(cSubKey,"%s",__SEND_IMGLINE);
	sprintf(cValue,"%.0f",dImgLine);
	
	// Image line 
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
}

void CPRI_HeadIFDlg::OnBtnBoot() 
{
	// TODO: Add your control notification handler code here
	
	if (m_CtrlType == nLG_Q )
	{	
		Execute(EXE_BOOT);		
	} else {	
		ExecuteKM(KM_BOOT);		
	}
}

void CPRI_HeadIFDlg::DispMsg(CString strMsg)
{
	m_listMsg.AddString(strMsg);
}

void CPRI_HeadIFDlg::ReadSysData()
{
	char cRndBuf [100];
	memset(cRndBuf,'\0',sizeof(char)*100);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_HEADCNT,"0",cRndBuf, 100);	
	m_BdPara.nHeadCnt = atoi(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_ENCRES,"0",cRndBuf, 100);	
	m_BdPara.fEncRes_um = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_IMGPITCH,"0",cRndBuf, 100);	
	m_BdPara.fSysImgPitch_um = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_SUPPLYVOLT,"0",cRndBuf, 100);	
	m_BdPara.fSupplyVolt = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_SLANTANGLE,"0",cRndBuf, 100);	
	m_JetDB.fSlantAngle  = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_VOLTOFFSET,"0",cRndBuf, 100);	
	m_JetDB.fVoltOffset  = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_JETDELAY,"0",cRndBuf, 100);	
	m_JetDB.fJetDelay_um = (float)atof(cRndBuf);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_HEADTYPE,"0",cRndBuf, 100);	
	m_JetDB.nHeadType = atoi(cRndBuf);

	//
	//m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_HEADDELAY,"0",cRndBuf, 100);	
	//m_JetDB.fHeadDelay_um = (float)atof(cRndBuf);

////////////////

 
//
//
//m_BdPara.fDnImgPitch_mm
//m_BdPara.fErrMapPrd
//
//m_BdPara.fVoltOffset[HEAD1]
//m_BdPara.fVoltOffset[HEAD2]
//m_BdPara.fVoltOffset[HEAD3]
//m_BdPara.fVoltOffset[HEAD4]
//m_BdPara.nErrMapCnt
//m_BdPara.nErrMapArr[nReadLine]
//
//m_HdPara[nHeadCnt][nDir].fSlantAngle
//m_HdPara[nHeadCnt][nDir].fHeadDelayDist_mm
//
//m_HdPara[nHeadCnt][nDir].nActNzl[nNzlCnt]
//m_HdPara[nHeadCnt][nDir].fVoltage[nNzlCnt]
//m_HdPara[nHeadCnt][nDir].nWaveForm[nNzlCnt]
//m_HdPara[nHeadCnt][nDir].fSlantOffset[nNzlCnt]

}

HEAD_SETNO CPRI_HeadIFDlg::Read_HeadNo()
{	
	char cRndBuf [100];
	memset(cRndBuf,'\0',sizeof(char)*100);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_HEADNO,"0",cRndBuf, 100);	
	m_JetDB.nHeadNo = (HEAD_SETNO)atoi(cRndBuf);

	return m_JetDB.nHeadNo;
}

// edit by wonho
int CPRI_HeadIFDlg::Read_HeadList()
{	
	char cRndBuf [100];
	memset(cRndBuf,'\0',sizeof(char)*100);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_RECEIVE,__RND_HEADLIST,"0",cRndBuf, 100);	
	m_JetDB.nHeadList = (HEAD_SETNO)atoi(cRndBuf);

	return m_JetDB.nHeadList;
}


void CPRI_HeadIFDlg::OnBtnSave() 
{
	// TODO: Add your control notification handler code here
	//m_Img.LoadBMP("D:\\Poongsan\\Project\\Dimatix\\DMP3000 Project\\XGA_Bus.40x40pmm.x0.y0.r0.bmp",2,0);
	//m_Img.LoadBMP("D:\\Poongsan\\Project\\Dimatix\\DMP3000 Project\\Project\\Main\\20090317_1\\Data\\Jet\\test.bmp",2,0);
}

void CPRI_HeadIFDlg::SendImgInfo(int nBlkCnt, ULONG lngVerCnt, CString strFileName, ULONG ulXSize, ULONG ulYSize)
{
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	
	sprintf(cKey,"%s",_SEND);

	// Image Block Count 
	sprintf(cSubKey,"%s",__SEND_IMGBLKCNT);
	sprintf(cValue,"%d",nBlkCnt);
	
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Image Vertical line 
	sprintf(cSubKey,"%s",__SEND_IMGVERCNT);
	sprintf(cValue,"%ld",lngVerCnt);
	
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Image Title 
	sprintf(cSubKey,"%s",__SEND_IMGTITLE);
	sprintf(cValue,"%s",strFileName);
	
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Image X Size 
	sprintf(cSubKey,"%s",__SEND_IMGXSIZE);
	sprintf(cValue,"%ld",ulXSize);
	
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Image Y Size 
	sprintf(cSubKey,"%s",__SEND_IMGYSIZE);
	sprintf(cValue,"%ld",ulYSize);
	
	m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
}

void CPRI_HeadIFDlg::Give_BdDataBuf(PBASEBDPARA pBdData)
{
	memcpy(pBdData, &m_BdPara, sizeof(m_BdPara));
}

void CPRI_HeadIFDlg::Give_HdDataBuf(PHEADCTRLPARA pHdData,	int nHeadNo)
{
	memcpy(pHdData, &m_HdPara[nHeadNo], sizeof(m_HdPara[nHeadNo]));
}


void CPRI_HeadIFDlg::Give_TestHdDataBuf(PHEADCTRLPARA pTestHdData)
{
	memcpy(pTestHdData, &m_TestHdPara, sizeof(m_TestHdPara));
}

void CPRI_HeadIFDlg::OnExit() 
{
	// TODO: Add your command handler code here
		
	KillTimer(1);
	m_TrayIcon.StopAnimation();
	EndDialog(0);
	delete this;
}

void CPRI_HeadIFDlg::OnHide() 
{
	// TODO: Add your command handler code here
	ShowWindow(SW_HIDE);
}

void CPRI_HeadIFDlg::OnRun() 
{
	// TODO: Add your command handler code here
	SetTimer(1,10,NULL);
	Animate();
}

void CPRI_HeadIFDlg::OnShow() 
{
	// TODO: Add your command handler code here
	ShowWindow(SW_SHOW);
}

void CPRI_HeadIFDlg::OnStop() 
{
	// TODO: Add your command handler code here
	KillTimer(1);
	m_TrayIcon.StopAnimation();
}

void CPRI_HeadIFDlg::PostNcDestroy() 
{
	// TODO: Add your specialized code here and/or call the base class
	
	delete this;

	CDialog::PostNcDestroy();
}

void CPRI_HeadIFDlg::OnBtnTest() 
{
	// TODO: Add your control notification handler code here
	//m_TrayIcon.HideIcon();
	
	CString strMsg;
//	bool bRtn;

	//bRtn = m_Ink.Hd_Img_Buf_Clr(0,strMsg);

	SendMessage(WM_ICON_NOTIFY);

}

BOOL CPRI_HeadIFDlg::Read_SysData()
{
	char cData[1024];
	BOOL bRtn = FALSE;

	memset(cData,'\0',sizeof(char)*1024);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_BOOTPATH,"0",cData, 1024);	
	sprintf(m_BdPara.cBootPath,"%s",cData);

	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_HEADCNT,"0",cData, 1024);	
	m_BdPara.nHeadCnt = atoi(cData);
	
	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_IMGPITCH,"0",cData, 1024);	
	m_BdPara.fSysImgPitch_um	= (float)atof(cData);
	
	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_ENCRES,"0",cData, 1024);	
	m_BdPara.fEncRes_um	= (float)atof(cData);
	
	m_Reg.SHRegReadString(HKEY_CURRENT_USER,_SYSDATA,__SYS_SUPPLYVOLT,"0",cData, 1024);	
	m_BdPara.fSupplyVolt	= (float)atof(cData);	
	
	bRtn = TRUE;

	return bRtn;
}

void CPRI_HeadIFDlg::OnBtnInitKm() 
{
	// TODO: Add your control notification handler code here	
			
}

void CPRI_HeadIFDlg::ExecuteKM(int nCmdNo)
{
	CString strMsg;
	CString strLib;
	CString strWMsg;
	char cDBPath [256];
	char cMsg[256];
	char szFilePath[1024];
	BOOL bRtn;
	int nHeadNo = 0;

	memset(cDBPath,'\0',sizeof(char)*256);
	memset(cMsg,'\0',sizeof(char)*256);	
	memset(szFilePath,'\0',sizeof(szFilePath));
	memset(m_cMsg,'\0',sizeof(m_cMsg));

	//System Registry Reading부 
	Read_SysData();

	switch(nCmdNo) 
	{
		case NONE_CMD:
			break;

		case HIDE_TRAYICON:
			SendJudge(JUDGEING);
			m_TrayIcon.HideIcon();
			SendJudge(JUDGEOK);
			break;
		
		case KM_BOOT:
			
			bRtn = m_km->Initialize();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("KM Init OK OK!");
			}

			break;

		case KM_CLOSE:
			
			SendJudge(JUDGEING);
			
			bRtn = m_km->IJCS_Close();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Base Board Initial OK!");
			}
			
			break;

		case KM_RESET:

			SendJudge(JUDGEING);
			bRtn = m_km->IJCS_Reset();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,strLib);
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Base Board Close OK!");
			}

			break;

		case KM_HEADSETUP:

			SendJudge(JUDGEING);
	
			bRtn = m_km->HeadSetup();
					
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Set Active");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Head Active Upate OK!");
				SendJudge(JUDGEOK);				
				DispMsg(strWMsg);
			}

			break;

		case KM_WAVEFORMSETUP:

			SendJudge(JUDGEING);

			bRtn = m_km->WaveformSetup();
					
			bRtn = TRUE;
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetSlantOffset");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Head SlantOffset Upate OK!");
			}

 			break;

		case KM_FIRESETUP:

			SendJudge(JUDGEING);

			bRtn = m_km->FireSetup();

			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Set WaveForm");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Head WaveForm Upate OK!");
			}

			break;

		case KM_DELAYSETUP:
			SendJudge(JUDGEING);
			
			bRtn = m_km->DelaySetup();
						
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetVoltage");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Voltage Upate OK!");
				SendJudge(JUDGEOK);
				//DispMsg("Head Voltage Upate OK!");
				DispMsg(strWMsg);
			}

			break;

		case KM_TEMPERATURESETUP:

			SendJudge(JUDGEING);
			
			bRtn = m_km->TemperatureSetup();
			
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error TemperatureSetup.");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("TemperatureSetup OK!");
			}

			break;

		case KM_FLUSHINGSETUP:

			SendJudge(JUDGEING);
			
			bRtn = m_km->FlushingSetup();
			
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error FlushingSetup.");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("FlushingSetup OK!");
			}
			break;

		case KM_IMAGEINFO:

			SendJudge(JUDGEING);
			
			bRtn = m_km->ImageInfo();
					
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error Set Delay");
				DispMsg(strMsg);
			}
			else
			{
				strWMsg.Format("Head%d:%s",nHeadNo," Head Delay Upate OK!");
				SendJudge(JUDGEOK);
				//DispMsg("Head Active Upate OK!");
				DispMsg(strWMsg);
			}

			break;

		case KM_IMAGEDATA:
			
			SendJudge(JUDGEING);
			
			bRtn = m_km->ImageData();
			
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"Error Reset_TriggerPos.");
				DispMsg(strMsg);
			}
			else
			{
				SendJudge(JUDGEOK);
				DispMsg("Reset_TriggerPos OK!");
			}

			break;
			
		case KM_PRINT:

			SendJudge(JUDGEING);
			
			bRtn = m_km->StarPrint();
			
			if (bRtn == FALSE)
			{
				SendJudge(JUDGENG);
				SendErrMsg(strMsg,"SetVoltage");
				DispMsg(strMsg);
				break;
			}
			else
			{
				DispMsg("Head SlantOffset Update OK!");
			}		

		default:
			break;
	}

	SendMessage(WM_ICON_NOTIFY);
}
