// Dlg_SetGlass.cpp : implementation file
//

#include "stdafx.h"
#include "imggenerator.h"
#include "Dlg_SetGlass.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetGlass dialog

#include "ImgGeneratorDoc.h"
#include "Cell.h"

CDlg_SetGlass::CDlg_SetGlass(CWnd* pParent /*=NULL*/)
	: CDialog(CDlg_SetGlass::IDD, pParent)
{
	m_nPitchCount = 0;
	m_dMinSpacePitch = 0;
	//{{AFX_DATA_INIT(CDlg_SetGlass)
	m_nPanelCount = 1;
	m_strPanelNo = _T("");
	m_dPitch = 0.0;
	m_nPixelCount = 1;
	m_nDropCount = 0;
	m_nEmpCount = 0;
	//}}AFX_DATA_INIT
}


void CDlg_SetGlass::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDlg_SetGlass)
	DDX_Control(pDX, IDC_EDIT_PITCH, m_ctrlPitch);
	DDX_Control(pDX, IDC_LIST_GLASSDATA, m_ctrlListGlassData);
	DDX_Text(pDX, IDC_EDIT_PANELCOUNT, m_nPanelCount);
	DDX_Text(pDX, IDC_EDIT_PANELNO, m_strPanelNo);
	DDX_Text(pDX, IDC_EDIT_PITCH, m_dPitch);
	DDX_Text(pDX, IDC_EDIT_PIXELCOUNT, m_nPixelCount);
	DDX_Text(pDX, IDC_EDIT_DROPCOUNT, m_nDropCount);
	DDX_Text(pDX, IDC_EDIT_EMPCOUNT, m_nEmpCount);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CDlg_SetGlass, CDialog)
	//{{AFX_MSG_MAP(CDlg_SetGlass)
	ON_BN_CLICKED(IDC_BUTTON_PANELCOUNT, OnButtonPanelcount)
	ON_NOTIFY(NM_CLICK, IDC_LIST_GLASSDATA, OnClickListGlassdata)
	ON_BN_CLICKED(IDC_BUTTON_COMMIT, OnButtonCommit)
	ON_EN_CHANGE(IDC_EDIT_PITCH, OnChangeEditPitch)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlg_SetGlass message handlers

BOOL CDlg_SetGlass::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	CRect rect;

	m_ctrlListGlassData.SetExtendedStyle(m_ctrlListGlassData.GetExtendedStyle() | LVS_EX_FULLROWSELECT);

	m_ctrlListGlassData.GetClientRect(&rect);

	// 컬럼에 대한 정보를 저장하는 구조체
	LV_COLUMN lvcolumn;

	// 설정할 항목들을 명시함
	lvcolumn.mask = LVCF_FMT|LVCF_SUBITEM|LVCF_TEXT|LVCF_WIDTH;

	// 컬럼 헤더를 중앙에 출력하도록 함.
	lvcolumn.fmt = LVCFMT_CENTER;

	for(int i=0; i<3; i++)
	{
		lvcolumn.iSubItem = i;
		switch(i)
		{
		case 0:	// 첫번째 컬럼 No
			lvcolumn.cx = 80;
			lvcolumn.pszText = "Panel No.";
			break;

		case 1:	// 두번째 컬럼	Pitch
			lvcolumn.cx = 80;
			lvcolumn.pszText = "Pitch(um)";
			break;

		case 2:	// 세번째 컬럼  Pixel수
			lvcolumn.cx = rect.Width() - 160;
			lvcolumn.pszText = "Pixel Count";

			break;

		}

		m_ctrlListGlassData.InsertColumn(i, &lvcolumn);	// 컬럼 추가
	}


	// Item 추가 ------------------------------------------------------
	LV_ITEM lvitem;
	CString strCount="", strPitch="", strCellCount="";
	POSITION aPos=NULL;
	CPanel* pPanel=NULL;
	int nLoopCnt=0;

	UpdateData(TRUE);

	aPos = m_pListPanel.GetHeadPosition();
	while(aPos)
	{
		pPanel = m_pListPanel.GetNext(aPos);
		if(pPanel)
		{
			strCount.Format("%d", ++nLoopCnt);
			lvitem.mask = LVIF_TEXT;
			lvitem.iItem = m_ctrlListGlassData.GetItemCount();
			lvitem.iSubItem = 0;
			lvitem.pszText = (LPTSTR)(LPCTSTR)strCount;

			m_ctrlListGlassData.InsertItem(&lvitem);

			strPitch.Format("%.3lf", pPanel->m_dPitch);
			strCellCount.Format("%d", pPanel->m_nPixelCount);

			m_ctrlListGlassData.SetItemText(lvitem.iItem, 1, (LPTSTR)(LPCTSTR)strPitch);
			m_ctrlListGlassData.SetItemText(lvitem.iItem, 2, (LPTSTR)(LPCTSTR)strCellCount);

		}
	}

	m_dPitch = m_dMinSpacePitch;

	UpdateData(FALSE);

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CDlg_SetGlass::OnButtonPanelcount() 
{
	// TODO: Add your control notification handler code here
	LV_ITEM lvitem;
	CString str="", str2="", str3="";
	int	m_nOldCount=0;
	char strItem[3][10];

	UpdateData(TRUE);

	m_nOldCount = m_ctrlListGlassData.GetItemCount();



	if(m_nOldCount < m_nPanelCount)
	{
		if(m_nOldCount < 1)
		{
			str2.Format("%.3lf", m_dPitch);
			str3.Format("%d", m_nPixelCount);
			strncpy(strItem[1], (LPSTR)(LPCTSTR)str2, 10);
			strncpy(strItem[2], (LPSTR)(LPCTSTR)str3, 10);
		}
		else if(m_nOldCount == 1)
		{
			str2.Format("%.3lf", m_dPitch);
			str3.Format("%d", m_nPixelCount);
			strncpy(strItem[1], (LPSTR)(LPCTSTR)str2, 10);
			strncpy(strItem[2], (LPSTR)(LPCTSTR)str3, 10);
			m_ctrlListGlassData.SetItemText((m_nOldCount - 1), 1, strItem[1]);
//			m_ctrlListGlassData.GetItemText(m_nOldCount-1, 1, strItem[1], sizeof(strItem[1]));
//			m_ctrlListGlassData.GetItemText(m_nOldCount-1, 2, strItem[2], sizeof(strItem[2]));
		}
		else if(m_nOldCount > 1)
		{
			m_ctrlListGlassData.GetItemText(m_nOldCount-2, 1, strItem[1], sizeof(strItem[1]));
			m_ctrlListGlassData.GetItemText(m_nOldCount-1, 2, strItem[2], sizeof(strItem[2]));

			m_ctrlListGlassData.SetItemText((m_nOldCount - 1), 1, strItem[1]);
		}

		for(int i=m_nOldCount; i<m_nPanelCount; i++)
		{
			str.Format("%d", (i+1));
			lvitem.mask = LVIF_TEXT;
			lvitem.iItem = m_ctrlListGlassData.GetItemCount();
			lvitem.iSubItem = 0;
			lvitem.pszText = (LPTSTR)(LPCTSTR)str;

			m_ctrlListGlassData.InsertItem(&lvitem);

			if(i == (m_nPanelCount-1))
				m_ctrlListGlassData.SetItemText(lvitem.iItem, 1, _T(""));
			else
			m_ctrlListGlassData.SetItemText(lvitem.iItem, 1, strItem[1]);

			m_ctrlListGlassData.SetItemText(lvitem.iItem, 2, strItem[2]);
		}
	}
	else if(m_nOldCount > m_nPanelCount)
	{
		do
		{
			m_ctrlListGlassData.DeleteItem(--m_nOldCount);
		}while(m_nOldCount != m_nPanelCount);
		m_ctrlListGlassData.SetItemText((m_nOldCount - 1), 1, _T(""));
	}

	UpdateData(FALSE);
}


void CDlg_SetGlass::OnClickListGlassdata(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
	char strItem[3][10];
	int nItem = 0;
	POSITION pos = m_ctrlListGlassData.GetFirstSelectedItemPosition();
	if (pos == NULL)
	   TRACE0("No items were selected!\n");
	else
	{
		nItem = m_ctrlListGlassData.GetNextSelectedItem(pos);
		//TRACE1("Item %d was selected!\n", nItem);
		// you could do your own processing on nItem here

		if(nItem >= 0)
		{
			UpdateData(TRUE);
			m_ctrlListGlassData.GetItemText(nItem, 0, strItem[0], sizeof(strItem[0]));
			m_ctrlListGlassData.GetItemText(nItem, 1, strItem[1], sizeof(strItem[1]));
			m_ctrlListGlassData.GetItemText(nItem, 2, strItem[2], sizeof(strItem[2]));

			m_strPanelNo = (LPCTSTR)(LPSTR)strItem[0];

			m_dPitch = (double)atof(strItem[1]);
			m_nPixelCount = atoi(strItem[2]);
				
		}
	}

	UpdateData(FALSE);


	*pResult = 0;
}

void CDlg_SetGlass::OnButtonCommit() 
{
	// TODO: Add your control notification handler code here

	CString strPitch="", strPixelCnt="";
	int nItem = 0;
	
	UpdateData(TRUE);
	if(m_dPitch < m_dMinSpacePitch)
	{
		CString str;
		str.Format("판넬사이 거리가 %.1lf 보다 커야 합니다.", m_dMinSpacePitch);
		AfxMessageBox((LPCTSTR)str);
		m_dPitch = m_dMinSpacePitch;
	}

	strPitch.Format("%.3lf", m_dPitch);
	strPixelCnt.Format("%d", m_nPixelCount);

	POSITION pos = m_ctrlListGlassData.GetFirstSelectedItemPosition();
	if (pos == NULL)
	   TRACE0("No items were selected!\n");
	else
	{
		while (pos)
		{
			nItem = m_ctrlListGlassData.GetNextSelectedItem(pos);
			// you could do your own processing on nItem here

			if(nItem >= 0)
			{
				if(nItem != (m_ctrlListGlassData.GetItemCount()-1))
					m_ctrlListGlassData.SetItemText(nItem, 1, strPitch);

				m_ctrlListGlassData.SetItemText(nItem, 2, strPixelCnt);
				
			}
	   }
	}

	UpdateData(FALSE);

	
}

void CDlg_SetGlass::OnOK() 
{
	// TODO: Add extra validation here
	char strItem[2][10];
	CPanel*	pPanel;
	int		nPitchCount=0;

	Clear_Panel();

	m_nPitchCount = m_ctrlListGlassData.GetItemCount();
	for(int i=0; i<m_nPitchCount; i++)
	{
		pPanel = new CPanel();

		m_ctrlListGlassData.GetItemText(i, 1, strItem[0], sizeof(strItem[0]));
		m_ctrlListGlassData.GetItemText(i, 2, strItem[1], sizeof(strItem[1]));
		pPanel->m_dPitch = (double)atof(strItem[0]);
		pPanel->m_nPixelCount = atoi(strItem[1]);

		m_pListPanel.AddTail(pPanel);

		pPanel = NULL;
	}


	CDialog::OnOK();
}


void CDlg_SetGlass::Clear_Panel()
{
	CPanel* pPanel;
	POSITION aPosition = m_pListPanel.GetHeadPosition();

	// Now delete the element pointed to by each list entry
	while(aPosition)
	{
		pPanel = m_pListPanel.GetNext(aPosition);
		
		if(pPanel)
			delete pPanel;
	}

	m_pListPanel.RemoveAll();	// Finally delete all pointers
}

//DEL void CDlg_SetGlass::ListBoxBkUpdate()
//DEL {
//DEL 	POSITION pos = NULL;
//DEL 	int nItem = 0;
//DEL 	int nItemCount=0;
//DEL 
//DEL 	nItemCount = m_ctrlListGlassData.GetItemCount();
//DEL 
//DEL 	for(int i=0; i<nItemCount; i++)
//DEL 	{
//DEL 		m_ctrlListGlassData.SetCheck(i, FALSE);
//DEL 	}
//DEL 
//DEL 	pos = m_ctrlListGlassData.GetFirstSelectedItemPosition();
//DEL 	if (pos == NULL)
//DEL 	   TRACE("No items were selected!\n");
//DEL 	else
//DEL 	{
//DEL 		while (pos)
//DEL 		{
//DEL 			nItem = m_ctrlListGlassData.GetNextSelectedItem(pos);
//DEL 
//DEL 			m_ctrlListGlassData.SetCheck(nItem, TRUE);
//DEL 		}
//DEL 	}
//DEL }

void CDlg_SetGlass::OnChangeEditPitch() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	// send this notification unless you override the CDialog::OnInitDialog()
	// function and call CRichEditCtrl().SetEventMask()
	// with the ENM_CHANGE flag ORed into the mask.
	
	// TODO: Add your control notification handler code here
	
	
}
