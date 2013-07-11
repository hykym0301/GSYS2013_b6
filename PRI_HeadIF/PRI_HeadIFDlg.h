// PRI_HeadIFDlg.h : header file
//

#if !defined(AFX_PRI_HEADIFDLG_H__F2296C2C_63CF_47A0_BC35_EDA828EC129B__INCLUDED_)
#define AFX_PRI_HEADIFDLG_H__F2296C2C_63CF_47A0_BC35_EDA828EC129B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CPRI_HeadIFDlg dialog

#include "Manage_Reg.h"
#include "ManageInkjet.h"
#include "Manage_File.h"
#include "Manage_Img.h"
#include "Global.h"
#include "SystemTray.h"
#include "ManageInkjet_KM.h"

enum HeadCtrlType
{
	nKM = 0,
	nLG_Q
};

class CPRI_HeadIFDlg : public CDialog
{
// Construction
public:
	void SendImgInfo(int nBlkCnt, ULONG lngVerCnt, CString strFileName, ULONG ulXSize, ULONG ulYSize);
	void ReadSysData();
	void DispMsg(CString strMsg);
	void Clear_Ctrl();
	void Init_Ctrl();
	CPRI_HeadIFDlg(CWnd* pParent = NULL);	// standard constructor

// Attribute
public:
	
	int m_nCnt;
	int m_nCmdSetNo;
	int m_nCmdPrevNo;
	CManage_Reg	m_Reg;
	CManageInkJet m_Ink;
	CManage_File m_DB;
	CManage_Img  m_Img;

	CManageInkJet_KM* m_km;

	PRIDB m_JetDB; 
	PPRIDB m_JetDB2; 
	CSystemTray m_TrayIcon;

	int	m_nTransparency;

	char m_cMsg [100];

	BASEBDPARA   m_BdPara;
	HEADCTRLPARA m_TestHdPara;
	HEADCTRLPARA m_HdPara[HEAD_CNT];
	
	HeadCtrlType m_CtrlType;
		
// Operate
public:
	void ExecuteKM(int nCmdNo);
	BOOL Read_SysData();
	void Execute(int nCmdNo);
	void Clear_Var();
	void Init_Var();
	void SendImgLine(double dImgLine);
	void SendErrMsg(CString strMsg, CString strLib);
	void SendJudge(JUDGETYPE nJudge);
	void Animate();

	HEAD_SETNO Read_HeadNo();
	int Read_HeadList();

	void Give_BdDataBuf(PBASEBDPARA pBdData);
	void Give_HdDataBuf(PHEADCTRLPARA pHdData,	int nHeadNo);
	void Give_TestHdDataBuf(PHEADCTRLPARA pTestHdData);





// Dialog Data
	//{{AFX_DATA(CPRI_HeadIFDlg)
	enum { IDD = IDD_PRI_HEADIF_DIALOG };
	CListBox	m_listMsg;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPRI_HeadIFDlg)
	public:
	virtual BOOL DestroyWindow();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	virtual void PostNcDestroy();
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CPRI_HeadIFDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnExit();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnBtnBoot();
	afx_msg void OnBtnSave();
	afx_msg void OnExit();
	afx_msg void OnHide();
	afx_msg void OnRun();
	afx_msg void OnShow();
	afx_msg void OnStop();
	afx_msg void OnBtnTest();
	afx_msg void OnBtnInitKm();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PRI_HEADIFDLG_H__F2296C2C_63CF_47A0_BC35_EDA828EC129B__INCLUDED_)
