// Dlg_SetJetPattern.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_SetJetPattern.h"
#include "Dlg_GetaValue.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetJetPattern dialog


CDlg_SetJetPattern::CDlg_SetJetPattern(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_SetJetPattern::IDD, pParent)
{
	memset(m_dArrNzlDelay, 0, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	memset(m_dArrNzlDelayPettern, 0, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	//{{AFX_DATA_INIT(CDlg_SetJetPattern)
	m_dInterval = 0.0;
	m_nPeriod = 1;
	//}}AFX_DATA_INIT
}


void CDlg_SetJetPattern::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_SetJetPattern)
	DDX_Control(pDX, IDC_LIST_HEADPATTERN, m_ctrlListHeadPtn);
	DDX_Control(pDX, IDC_LIST_PATTERN, m_ctrlListPattern);
	DDX_Text(pDX, IDC_EDIT_INTERVAL, m_dInterval);
	DDX_Text(pDX, IDC_EDIT_PERIOD, m_nPeriod);
	DDV_MinMaxUInt(pDX, m_nPeriod, 1, MAKE_X_WIDTH_PIXELCOUNT);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_SetJetPattern, CDialog)
	//{{AFX_MSG_MAP(CDlg_SetJetPattern)
	ON_BN_CLICKED(IDC_BUTTON_COMMIT, OnButtonCommit)
	ON_NOTIFY(NM_CLICK, IDC_LIST_PATTERN, OnClickListPattern)
	ON_NOTIFY(NM_CLICK, IDC_LIST_HEADPATTERN, OnClickListHeadpattern)
	ON_BN_CLICKED(IDC_BUTTON_CREATEHEADLIST, OnButtonCreateheadlist)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetJetPattern message handlers

BOOL CDlg_SetJetPattern::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	// Pattern 작성 리스트 컬럼 정의==============================================================
	CRect rect;
	m_ctrlListPattern.SetExtendedStyle(m_ctrlListPattern.GetExtendedStyle() | LVS_EX_FULLROWSELECT);
	m_ctrlListPattern.GetClientRect(&rect);

	// 컬럼에 대한 정보를 저장하는 구조체
	LV_COLUMN lvcolumn;

	// 설정할 항목들을 명시함
	lvcolumn.mask = LVCF_FMT|LVCF_SUBITEM|LVCF_TEXT|LVCF_WIDTH;

	// 컬럼 헤더를 중앙에 출력하도록 함.
	lvcolumn.fmt = LVCFMT_CENTER;

	for(int i=0; i<2; i++)
	{
		lvcolumn.iSubItem = i;
		switch(i)
		{
		case 0:	// 첫번째 컬럼 어디 Pitch
			lvcolumn.cx = 100;
			lvcolumn.pszText = "Nozzle No.";
			break;

		case 1:	// 두번째 컬럼	Pitch
			lvcolumn.cx = rect.Width() - 100;
			lvcolumn.pszText = "Delay(um)";
			break;
		}

		m_ctrlListPattern.InsertColumn(i, &lvcolumn);	// 컬럼 추가
	}

	//m_ctrlListHeadPtn

	// 해드 Delay 리스트 컬럼 정의==============================================================
	m_ctrlListHeadPtn.SetExtendedStyle(m_ctrlListPattern.GetExtendedStyle() | LVS_EX_FULLROWSELECT);
	m_ctrlListHeadPtn.GetClientRect(&rect);

	lvcolumn.mask = LVCF_FMT|LVCF_SUBITEM|LVCF_TEXT|LVCF_WIDTH;
	lvcolumn.fmt = LVCFMT_CENTER;

	for(int j=0; j<2; j++)
	{
		lvcolumn.iSubItem = j;
		switch(j)
		{
		case 0:	// 첫번째 컬럼 어디 Pitch
			lvcolumn.cx = 100;
			lvcolumn.pszText = "Nozzle No.";
			break;

		case 1:	// 두번째 컬럼	Pitch
			lvcolumn.cx = rect.Width() - 100;
			lvcolumn.pszText = "Delay(um)";
			break;
		}

		m_ctrlListHeadPtn.InsertColumn(i, &lvcolumn);	// 컬럼 추가
	}


	// Item 추가 ------------------------------------------------------
	LV_ITEM lvitem;
	CString strNzlNo="", strDelay="";

	for(int k=0; k<MAKE_X_WIDTH_PIXELCOUNT; k++)
	{
		strNzlNo.Format("%d", (k+1));
		lvitem.mask = LVIF_TEXT;
		lvitem.iItem = m_ctrlListHeadPtn.GetItemCount();
		lvitem.iSubItem = 0;
		lvitem.pszText = (LPTSTR)(LPCTSTR)strNzlNo;

		m_ctrlListHeadPtn.InsertItem(&lvitem);

		strDelay="";
		strDelay.Format("%.3lf", m_dArrNzlDelay[k]);

		m_ctrlListHeadPtn.SetItemText(lvitem.iItem, 1, (LPTSTR)(LPCTSTR)strDelay);
	}

	for(int kk=0; kk<(int)m_nPeriod; kk++)
	{
		strNzlNo.Format("%d", (kk+1));
		lvitem.mask = LVIF_TEXT;
		lvitem.iItem = m_ctrlListPattern.GetItemCount();
		lvitem.iSubItem = 0;
		lvitem.pszText = (LPTSTR)(LPCTSTR)strNzlNo;

		m_ctrlListPattern.InsertItem(&lvitem);

		strDelay="";
		strDelay.Format("%.3lf", m_dArrNzlDelayPettern[kk]);

		m_ctrlListPattern.SetItemText(lvitem.iItem, 1, (LPTSTR)(LPCTSTR)strDelay);
	}

	UpdateData(FALSE);
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CDlg_SetJetPattern::OnButtonCommit() 
{
	// TODO: Add your control notification handler code here
	double dDelay=0.0;
	CString str="";
	CString strNzlNo="", strDelay="";
	LV_ITEM lvitem;

	UpdateData(TRUE);

	m_ctrlListPattern.DeleteAllItems();
	
	for(UINT j=0; j<m_nPeriod; j++)
	{
		strNzlNo.Format("%d", (j+1));
		lvitem.mask = LVIF_TEXT;
		lvitem.iItem = m_ctrlListPattern.GetItemCount();
		lvitem.iSubItem = 0;
		lvitem.pszText = (LPTSTR)(LPCTSTR)strNzlNo;

		m_ctrlListPattern.InsertItem(&lvitem);

		str.Format("%d", (j+1));
		m_ctrlListPattern.SetItemText((j+1), 1, str);

		// 2006. 11. 04 edit by wonho start
			//dDelay = (double)j * m_dInterval;
		// 양수이면.
		if (m_dInterval >= 0)
		{
			dDelay = (double)j * m_dInterval;
		}
		// 음수 이면
		else
		{
			dDelay = ((double)j * m_dInterval) - (((double)m_nPeriod-1)*m_dInterval);
		}
		// 2006. 11. 04 edit by wonho end
		strDelay.Format("%.3lf", dDelay);

		m_ctrlListPattern.SetItemText(lvitem.iItem, 1, (LPTSTR)(LPCTSTR)strDelay);
	}

	UpdateData(FALSE);
}

void CDlg_SetJetPattern::OnClickListPattern(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
	CDlg_GetaValue aDlg;
	CString str="";
	int nItem = 0;

	char strItem[7];
	memset(strItem, '\0', sizeof(strItem));
		
	UpdateData(TRUE);

	POSITION pos = m_ctrlListPattern.GetFirstSelectedItemPosition();
	if (pos == NULL)
	   TRACE0("No items were selected!\n");
	else
	{
		nItem = m_ctrlListPattern.GetNextSelectedItem(pos);
		m_ctrlListPattern.GetItemText(nItem, 1, strItem, sizeof(strItem));
		aDlg.m_dValue = (double) atof(strItem);
	}
	
	
	if(aDlg.DoModal() == IDOK)
	{

		if(nItem >= 0)
		{
			str.Format("%.3lf", aDlg.m_dValue);
			m_ctrlListPattern.SetItemText(nItem, 1, str);
		}

		UpdateData(FALSE);
	}


	*pResult = 0;
}

void CDlg_SetJetPattern::OnClickListHeadpattern(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
	CDlg_GetaValue aDlg;
	CString str="";
	int nItem = 0;

	char strItem[7];
	memset(strItem, '\0', sizeof(strItem));
		
	UpdateData(TRUE);

	POSITION pos = m_ctrlListHeadPtn.GetFirstSelectedItemPosition();
	if (pos == NULL)
	   TRACE0("No items were selected!\n");
	else
	{
		nItem = m_ctrlListHeadPtn.GetNextSelectedItem(pos);
		m_ctrlListHeadPtn.GetItemText(nItem, 1, strItem, sizeof(strItem));
		aDlg.m_dValue = (double) atof(strItem);
	}
	
	
	if(aDlg.DoModal() == IDOK)
	{

		if(nItem >= 0)
		{
			str.Format("%.3lf", aDlg.m_dValue);
			m_ctrlListHeadPtn.SetItemText(nItem, 1, str);
		}

		UpdateData(FALSE);
	}

	*pResult = 0;
}

void CDlg_SetJetPattern::OnButtonCreateheadlist() 
{
	// TODO: Add your control notification handler code here
	int nCntInPtn=0;
	int nCurrentNzlNo=0;
	int LoopCnt=0;
//	double dDelay=0.0;
	CString str="";
	CString strNzlNo="", strDelay="";
	char strItem[7];
	LV_ITEM lvitem;

	

	UpdateData(TRUE);

	

	nCntInPtn = m_ctrlListPattern.GetItemCount();

	if(nCntInPtn > 0)
	{
		LoopCnt = MAKE_X_WIDTH_PIXELCOUNT / nCntInPtn;
		if((MAKE_X_WIDTH_PIXELCOUNT % nCntInPtn) > 0)
			++LoopCnt;
	}
	else
	{
		return;
	}

	if(LoopCnt <= 0) return;

	m_ctrlListHeadPtn.DeleteAllItems();
	for(int j=0; j<LoopCnt; j++)
	{
		for(int i=0; i< nCntInPtn; i++)
		{
			if(nCurrentNzlNo < MAKE_X_WIDTH_PIXELCOUNT)
			{
				strNzlNo.Format("%d", (nCurrentNzlNo+1));
				lvitem.mask = LVIF_TEXT;
				lvitem.iItem = m_ctrlListHeadPtn.GetItemCount();
				lvitem.iSubItem = 0;
				lvitem.pszText = (LPTSTR)(LPCTSTR)strNzlNo;

				m_ctrlListHeadPtn.InsertItem(&lvitem);

				//strDelay.Format("%.3lf", dDelay);
				m_ctrlListPattern.GetItemText(i, 1, strItem, sizeof(strItem));
				m_ctrlListHeadPtn.SetItemText(lvitem.iItem, 1, strItem);

				++nCurrentNzlNo;
			}
		}
	}	
	
	UpdateData(FALSE);
	
}

void CDlg_SetJetPattern::OnOK() 
{
	// TODO: Add extra validation here
	char strItem[7];
	memset(strItem, '\0', sizeof(char)*7);

	for(int i=0; i<MAKE_X_WIDTH_PIXELCOUNT; i++)
	{
		m_ctrlListHeadPtn.GetItemText(i, 1, strItem, sizeof(strItem));
		m_dArrNzlDelay[i] = atof(strItem);
	}


	memset(m_dArrNzlDelayPettern, 0, sizeof(double)*MAKE_X_WIDTH_PIXELCOUNT);
	for(int j=0; j<(int)m_nPeriod; j++)
	{
		m_ctrlListPattern.GetItemText(j, 1, strItem, sizeof(strItem));
		m_dArrNzlDelayPettern[j] = atof(strItem);
	}
	CDialog::OnOK();
}
