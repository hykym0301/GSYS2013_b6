// Manage_Img.cpp: implementation of the CManage_Img class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "pri_headif.h"
#include "Manage_Img.h"

// Add
#include <math.h>
#include "Global.h"
#include <tchar.h>
#include <io.h>
#include <afx.h>
#include <direct.h>
#include <stdlib.h>
#include <stdio.h>
#include "PRI_HeadIFDlg.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CManage_Img::CManage_Img()
{
	Init_Var();
}

CManage_Img::~CManage_Img()
{
	Clear_Var();
}

void CManage_Img::Init_Var()
{
	m_hImage = NULL;
	m_pImg = NULL;
	m_ulsizeImg.cx = 0;
	m_ulsizeImg.cy = 0;
	m_bImgVer = FALSE;
}

void CManage_Img::Clear_Var()
{

}

void CManage_Img::Free()
{
	if(m_hImage)
	{
		if( GlobalFree(m_hImage) != NULL)
		{
			TRACE("Can't free handle in CImage::Free()");
		}
		m_hImage = NULL;
		m_pImg = NULL;
	}

}

bool CManage_Img::LoadBMP(LPCTSTR lpszFileName, 
						  float fOrgPitch,						  
						  int nHeadNo, 
						  int nSNzlNo, 
						  int nENzlNo, 
						  int nUseNzlCnt, 
						  int nJetDir)
{
	CFile			file;
	CFileException	fe;
//	CSize			ImgSize;
	DWORD			dwFileSize;
	LPSTR			pDIB;
	LPSTR			lpDIBInfo;
	LPSTR			lpDIBbits;
	double			dColors=0;
	HGLOBAL			hBmp;

	unsigned long ulOffBits=0;
	ULSIZE			ulsizeBMP;
	
	bool			bRtn = false;

	Free();
	
	// File Open /////////////////////////////////////////////////////////////
	if(!file.Open(lpszFileName, CFile::modeRead|CFile::shareDenyWrite, &fe))
		return FALSE;

	dwFileSize = file.GetLength();	// 파일의 길이를 구함.

	if((hBmp = ::GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, dwFileSize)) == NULL) 
		return FALSE;

	pDIB = (LPSTR)::GlobalLock((HGLOBAL)hBmp);	// 메모리 고정, pDIB는 메모리 포인터
	file.ReadHuge(pDIB, dwFileSize);


	///////////////////////////////////////////////////////////////////////////////////////////////////
	LPBITMAPINFO pInfo;
	DWORD size=0;

	lpDIBInfo = pDIB + sizeof(BITMAPFILEHEADER);
	pInfo = (LPBITMAPINFO)lpDIBInfo;
	ulsizeBMP.cx = pInfo->bmiHeader.biWidth;
	ulsizeBMP.cy = pInfo->bmiHeader.biHeight;

	// Width가 4의 배수인지 확인하여 아니면 4의 배수로 Width변경
	if(ulsizeBMP.cx % 4)
	{
		ulsizeBMP.cx = ulsizeBMP.cx + (4-(ulsizeBMP.cx % 4));
	}
	m_ulsizeImg = ulsizeBMP;

	m_strImgSize.Format("%ld x %ld",ulsizeBMP.cx,ulsizeBMP.cy);

	// Bits 영역 포인터 취득
	//ulOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER)	+ ((pInfo->bmiHeader.biClrUsed) * sizeof(RGBQUAD));
	dColors = pow(2.0,(double)pInfo->bmiHeader.biBitCount);

	if(dColors != 256)
	{
		//AfxMessageBox("BMP파일은 256컬러만 지원합니다.");
		// Free
		Free();

		return FALSE;
	}

	ulOffBits = sizeof(BITMAPFILEHEADER) + 
				sizeof(BITMAPINFOHEADER) + 
				(unsigned long)(dColors * sizeof(RGBQUAD));
	lpDIBbits = (pDIB+ulOffBits);


	// Source Buffer에 Bits영역만 Copy
	if((m_hImage = ::GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, (m_ulsizeImg.cx * m_ulsizeImg.cy) )) == NULL) 
		return FALSE;

	m_pImg = (LPSTR)::GlobalLock((HGLOBAL)m_hImage);

	for(unsigned long row=0; row<m_ulsizeImg.cy; row++)
	{
		memmove( (m_pImg + (row * m_ulsizeImg.cx)),
				((lpDIBbits+(m_ulsizeImg.cx * m_ulsizeImg.cy)-1) - ( ((row+1)*m_ulsizeImg.cx) - 1) ), sizeof(BYTE)*m_ulsizeImg.cx);
	}

//	memcpy(m_pImg, lpDIBbits, (m_ulsizeImg.cx * m_ulsizeImg.cy));

	::GlobalUnlock((HGLOBAL)m_hImage);	// Source Image 메모리를 풀어줌
	

	::GlobalUnlock((HGLOBAL)hBmp);	// Bmp Load 메모리를 풀어줌
	if( GlobalFree(hBmp) != NULL)
	{
		TRACE("Can't free handle in CImage::Free()");
	}
	
	// Destination Raw
	bRtn = BmptoDivideRaw(	lpszFileName, 
							m_pImg, 
							m_ulsizeImg, 
							NZL_CNT, 
							fOrgPitch, 
							nHeadNo,
							nSNzlNo,
							nENzlNo,
							nUseNzlCnt, 
							nJetDir);

	// Free
	Free();

	return bRtn;
}

bool CManage_Img::BmptoDivideRaw(LPCTSTR lpszFileName, 
								 LPSTR pImg,
								 ULSIZE ulsizeImg, 
								 int nSliceCnt, 
								 float fOrgPitch, 
								 int nHeadNo,
								 int nSNzlNo, 
								 int nENzlNo, 
								 int nUseNzlCnt, 
								 int nJetDir)
{
	bool bRtn = false;
	bRtn = Write_Image( pImg,
						m_ulsizeImg,
						lpszFileName, 
						fOrgPitch, 
						nHeadNo,					
						nSNzlNo,
						nENzlNo,
						nUseNzlCnt, 
						nJetDir);
	return bRtn;
}

bool CManage_Img::Write_Image(LPSTR pImg, 
							  ULSIZE ulsizeImg,
							  LPCTSTR lpszFileName, 
							  float fOrgPitch, 
							  int nHeadNo,
							  int nSNzlNo, 
							  int nENzlNo, 
							  int nUseNzlCnt,
							  int nJetDir)
{
	int   nDvdNo = 0;
	int   nBuffNo = 0;
	int	  nDvdTmpCnt = 0;
	float fDvdCnt = 0;
	ULONG nRow,nCol = 0;
	int   nDvdTotCnt = 0;
	int	  nLastFillCnt = 0;
	UCHAR *cRawImg;
	char sFileName[100];
	char sFilePath[256];
	CString strMsg = _T("");
	FILE *ifp;
	char path_buffer[_MAX_PATH];
	char drive[_MAX_DRIVE];
	char dir[_MAX_DIR];
	char fname[_MAX_FNAME];
	char ext[_MAX_EXT];
	CFileStatus        fileStatus;
	ULONG ulngLineCnt = 0;
	bool bRtn = false;	
	
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	int  nPercent = 0;

	ULONG nMaxNzlCnt = (NZL_CNT/2);

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	fileStatus.m_attribute    = 0;
	cRawImg = NULL;
	
	if (DEBUG_MODE == 1)
	{
		bRtn = true;
	}
	else
	{
		bRtn = pMain->m_Ink.Hd_Img_Buf_Clr(nHeadNo,nJetDir,strMsg);
	}

	if (bRtn == false)
	{
		return bRtn;
	}

	_splitpath( lpszFileName, drive, dir, fname, ext );
	sprintf(path_buffer,"%s\\%s\\%s_Divide",drive,dir,fname);

	m_strImgTitle.Format("%s%s",fname,ext);
	
	CFile::GetStatus( path_buffer, fileStatus );

	if ( fileStatus.m_attribute != 0x10 )
	{
		_mkdir( path_buffer );
	}
	else
	{
		RemoveDir(path_buffer);
		_mkdir( path_buffer );
	}

	fDvdCnt = 1;//((float)ulsizeImg.cx / nUseNzlCnt);
	nDvdTotCnt = (int)fDvdCnt;
	nDvdTmpCnt = nDvdTotCnt;

	if((fDvdCnt - nDvdTotCnt) > 0)
	{
		nDvdTotCnt = nDvdTotCnt + 1;
	}

	nLastFillCnt = (int)(ulsizeImg.cx - (nUseNzlCnt*nDvdTmpCnt));

	cRawImg = new UCHAR[NZL_CNT * ulsizeImg.cy];
	memset(cRawImg,'\0',sizeof(UCHAR)*NZL_CNT*ulsizeImg.cy);

	sprintf(cKey,"%s",_SEND);

	// Divide image max count 
	sprintf(cSubKey,"%s",__SEND_IMGMAXCNT);
	sprintf(cValue,"%d",nDvdTotCnt);	
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Current Send Divide Image count
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);
	sprintf(cValue,"0");
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
	
	// Image Send command number
	sprintf(cSubKey,"%s",__SEND_CMDNO);
	sprintf(cValue,"%d",UPLOAD_IMG_DOWNLOAD);
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER,cKey,cSubKey, cValue);		
	
	// Divide Image Subkey
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);
	char tSRtnValue[256];
	memset(tSRtnValue,'\0',sizeof(tSRtnValue));

	for(nDvdNo=0; nDvdNo<nDvdTotCnt; nDvdNo++)
	{
		// Current download image count
		sprintf(cValue,"%d",nDvdNo+1);
		pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

		sprintf(sFileName,"%d.raw",nDvdNo+1);
		sprintf(sFilePath, "%s\\%s_%s",path_buffer,fname,sFileName);

		if((ifp=fopen(sFilePath,"wb"))==NULL)
		{
		   AfxMessageBox("파일을 열수 없습니다.");
		   return false;
		}	

		sprintf(cSubKey,"%s",__SEND_IMGPERCENT);

		// 마지막 분할이미지
		if(nDvdNo == (nDvdTotCnt-1))
		{
			if(nDvdTotCnt == 1)
			{
				for(nRow=0; nRow<m_ulsizeImg.cy; nRow++)
				{
					for(nCol=0; nCol<nMaxNzlCnt; nCol++)
					{
						if ((nCol >= (ULONG)(nSNzlNo-1)) && (nCol <= (ULONG)(nENzlNo-1)))
						{
							cRawImg[nBuffNo] = pImg[(ulsizeImg.cx*nRow) + (nUseNzlCnt*nDvdNo) + nCol]; // 짝수 버퍼
							nBuffNo++;
							cRawImg[nBuffNo] = pImg[(ulsizeImg.cx*nRow) + (nUseNzlCnt*nDvdNo) + nCol]; // 짝수 버퍼
						}						
						
						nBuffNo++;

// 						nPercent = (((nRow+1)*(nCol+1))/(256 * ulsizeImg.cy))*70;
// 						sprintf(tSRtnValue,"%d",nPercent);		
// 						pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, tSRtnValue);
					}
				}
			}
			else
			{
				for(nRow=0; nRow<m_ulsizeImg.cy; nRow++)
				{
					for(nCol=0; nCol<NZL_CNT; nCol++)
					{
						if ((nCol >= (ULONG)(nSNzlNo-1)) && (nCol <= (ULONG)(nENzlNo-1)))
						{
							if(nCol >= (ULONG)nLastFillCnt)
							{
								cRawImg[nBuffNo] = 0;
								//cRawImg[nBuffNo] = 0;
							}	
							else
							{								
								if(pImg[(ulsizeImg.cx*nRow) + (nUseNzlCnt*nDvdNo) + nCol] !=0)
								{
									cRawImg[nBuffNo] = 0;
									//cRawImg[nBuffNo] = 255;
								}
								else
								{
									cRawImg[nBuffNo] = 255;
									//cRawImg[nBuffNo] = 0;
								}
							}
						}
						else
						{
							cRawImg[nBuffNo] = 0;
							//cRawImg[nBuffNo] = 0;
						}

						nBuffNo++;
					}
				}			
			}
		}
		else
		{
			for(nRow=0; nRow<m_ulsizeImg.cy; nRow++)
			{
				for(nCol=0; nCol<NZL_CNT; nCol++)
				{
					if (m_bImgVer == FALSE)
					{
						if ((nCol >= (ULONG)(nSNzlNo-1)) && (nCol <= (ULONG)(nENzlNo-1)))
						{
							if(pImg[(ulsizeImg.cx*nRow) + (nUseNzlCnt*nDvdNo) + nCol] !=0)
							{
								cRawImg[nBuffNo] = 0;	
								//cRawImg[nBuffNo] = 255;	
							}
							else
							{
								cRawImg[nBuffNo] = 255;
								//cRawImg[nBuffNo] = 0;	
							}								
						}
						else
						{
							cRawImg[nBuffNo] = 0;
							//cRawImg[nBuffNo] = 0;	
						}
					}

					nBuffNo++;
				}
			}		
		}
		
		if (DEBUG_MODE == 1)
		{
			ulngLineCnt = ulsizeImg.cy ;
			Sleep(10);
		}
		else
		{
			ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_Slant(	nHeadNo, 
															cRawImg,
															(NZL_CNT * ulsizeImg.cy),
															nJetDir,
															strMsg);

			
			nPercent = 100;
			sprintf(tSRtnValue,"%d",nPercent);		
			pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, tSRtnValue);

// 			ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_PitchSet(nHeadNo, 
// 															  fOrgPitch,
// 															  cRawImg ,
// 															  (NZL_CNT * ulsizeImg.cy),
// 															  pMain->m_DB.m_JetDB.nEncDir,
// 															  strMsg);

			//ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_PitchSet(nHeadNum,fOrgPitch_um,OrgImgBuf,ImgSize,JetDirection,sRtn);
		}

		if (ulngLineCnt == 0)
		{
			fwrite(cRawImg, sizeof(UCHAR), (NZL_CNT*m_ulsizeImg.cy), ifp);		
			fclose(ifp);

			memset(cRawImg,'\0',sizeof(UCHAR) * NZL_CNT * ulsizeImg.cy);

			ifp = NULL;
			nBuffNo = 0; 
			delete []cRawImg;
			bRtn = false;
			return bRtn;

		}
		else
		{
			// True로 리턴 하는 부분이 없어 Else구문 추가함 20090817이혁진
			bRtn = true;
		}
		fwrite(cRawImg, sizeof(UCHAR), (NZL_CNT*m_ulsizeImg.cy), ifp);		
		fclose(ifp);

		memset(cRawImg,'\0',sizeof(UCHAR) * NZL_CNT * ulsizeImg.cy);

		ifp = NULL;
		nBuffNo = 0;
	}

	delete []cRawImg;
	cRawImg = NULL;
	m_nBlkCnt = nDvdTotCnt;
	m_ulngVerCnt = ulngLineCnt;
	
	//Image Count가 Return되지 않아 추가함. 20090817이혁진 
	// Current Send Divide Image count
	memset(tSRtnValue,'\0',sizeof(tSRtnValue));
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);
	sprintf(tSRtnValue,"%d",ulngLineCnt);		//Data형변환 Unsigned long>>Char로 
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, tSRtnValue);
	//Image Count가 Return되지 않아 추가함. 20090817이혁진 

	return bRtn;
}

void CManage_Img::RemoveDir(CString strDir)
{

    CFileFind finder;

    BOOL bWorking = TRUE;

    CString strDirFile = strDir + CString("\\*.*");

    bWorking = finder.FindFile(strDirFile);

    while(bWorking)

    {

        bWorking = finder.FindNextFile();

        if(finder.IsDots()) continue;

        if(finder.IsDirectory())    RemoveDir(finder.GetFilePath());

        else    ::DeleteFile(finder.GetFilePath());

    }

    finder.Close();

    ::RemoveDirectory(strDir);
}

// 256노즐 이미지로 특성화된 함수입니다.
bool CManage_Img::Write_ZeroAndTeachingImage( LPCTSTR lpszFileName, 
											  float fOrgPitch,
											  float fSystemPitch_um,
											  float fDropPitch_um,
											  float fImageLength_um,
											  int nHeadNo,
											  int nSNzlNo, 
											  int nENzlNo, 
											  int nUseNzlCnt,
											  int nJetDir)
{
	int   nDvdNo = 0;
	int   nBuffNo = 0;
	int	  nDvdTmpCnt = 0;
	float fDvdCnt = 0;
	ULONG nRow,nCol = 0;
	int   nDvdTotCnt = 0;
	int	  nLastFillCnt = 0;
	UCHAR *cRawImg;
	char sFileName[100];
	char sFilePath[256];
	CString strMsg = _T("");
	FILE *ifp;
	char path_buffer[_MAX_PATH];
	char drive[_MAX_DRIVE];
	char dir[_MAX_DIR];
	char fname[_MAX_FNAME];
	char ext[_MAX_EXT];
	CFileStatus        fileStatus;
	ULONG ulngLineCnt = 0;
	bool bRtn = false;	
	
	char cValue[256];
	char cKey[256];
	char cSubKey[256];
	
	ULONG  nMaxNzlCnt = (NZL_CNT/2);

// 	int    nSystemDropPitch_um = 2;
// 	int    nFiringDropPitch_um = 50;
// 	int    nImageLength_um = 10000;

	int    nIntervalDropCnt = int(fDropPitch_um / fSystemPitch_um);
	ULONG  nImg_YCnt = ULONG(fImageLength_um / fSystemPitch_um) + 1;
	
	int    nInputDropPixel = 0;

	CPRI_HeadIFDlg *pMain = NULL;
	pMain = (CPRI_HeadIFDlg*)AfxGetMainWnd();

	fileStatus.m_attribute    = 0;
	cRawImg = NULL;
	
	if (DEBUG_MODE == 1)
	{
		bRtn = true;
	}
	else
	{
		bRtn = pMain->m_Ink.Hd_Img_Buf_Clr(nHeadNo,nJetDir,strMsg);
	}

	if (bRtn == false)
	{
		return bRtn;
	}

	_splitpath( lpszFileName, drive, dir, fname, ext );
	sprintf(path_buffer,"%s\\%s\\%s_Divide",drive,dir,fname);
	
	m_strImgTitle.Format("%s%s",fname,ext);
	
	CFile::GetStatus( path_buffer, fileStatus );

	if ( fileStatus.m_attribute != 0x10 )
	{
		_mkdir( path_buffer );
	}
	else
	{
		RemoveDir(path_buffer);
		_mkdir( path_buffer );
	}

	fDvdCnt = 1;//((float)ulsizeImg.cx / nUseNzlCnt);
	nDvdTotCnt = (int)fDvdCnt;
	nDvdTmpCnt = nDvdTotCnt;

	if((fDvdCnt - nDvdTotCnt) > 0)
	{
		nDvdTotCnt = nDvdTotCnt + 1;
	}

	nLastFillCnt = (int)(NZL_CNT - (nUseNzlCnt*nDvdTmpCnt));

	cRawImg = new UCHAR[NZL_CNT * nImg_YCnt];
	memset(cRawImg,'\0',sizeof(UCHAR)*NZL_CNT*nImg_YCnt);

	sprintf(cKey,"%s",_SEND);

	// Divide image max count 
	sprintf(cSubKey,"%s",__SEND_IMGMAXCNT);
	sprintf(cValue,"%d",nDvdTotCnt);	
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

	// Current Send Divide Image count
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);
	sprintf(cValue,"0");
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);
	
	// Image Send command number
	sprintf(cSubKey,"%s",__SEND_CMDNO);
	sprintf(cValue,"%d",UPLOAD_IMG_DOWNLOAD);
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER,cKey,cSubKey, cValue);		
	
	// Divide Image Subkey
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);

	for(nDvdNo=0; nDvdNo<nDvdTotCnt; nDvdNo++)
	{
		// Current download image count
		sprintf(cValue,"%d",nDvdNo+1);
		pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, cValue);

		sprintf(sFileName,"%d.raw",nDvdNo+1);
		sprintf(sFilePath, "%s\\%s_%s",path_buffer,fname,sFileName);

		if((ifp=fopen(sFilePath,"wb"))==NULL)
		{
		   AfxMessageBox("파일을 열수 없습니다.");
		   return false;
		}	

		for(nRow=0; nRow<nImg_YCnt; nRow++)
		{
			for(nCol=0; nCol<nMaxNzlCnt; nCol++)
			{
				if ((nCol >= (ULONG)(nSNzlNo-1)) && (nCol <= (ULONG)(nENzlNo-1)))
				{
					if (nRow == (nImg_YCnt-1))
					{
						// 마지막 1Drop 출력시켜준다. 길이를 알아보기 쉽게 하기위해서.
						cRawImg[nBuffNo] = 255;
						nBuffNo++;
						cRawImg[nBuffNo] = 255; 
					}
					else
					{
						nInputDropPixel = nRow % nIntervalDropCnt;
						if (nInputDropPixel == 0 )
						{
							// Print Drop
							cRawImg[nBuffNo] = 255;
							nBuffNo++;
							cRawImg[nBuffNo] = 255; 
						} else {
							cRawImg[nBuffNo] = 0;
							nBuffNo++;
							cRawImg[nBuffNo] = 0; 
						}
					}
				}		
				nBuffNo++;
			}
		}

 		ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_Slant(	nHeadNo, 
 														cRawImg,
 														(NZL_CNT * nImg_YCnt),
 														nJetDir,
 														strMsg);
		
// 		ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_PitchSet(nHeadNo, 
// 														  fOrgPitch,
// 														  cRawImg ,
// 														  (NZL_CNT * nImg_YCnt),
// 														  pMain->m_DB.m_JetDB.nEncDir,
// 														  strMsg);

		//ulngLineCnt = pMain->m_Ink.Hd_Bin_Img_Dn_PitchSet(nHeadNo ,fOrgPitch ,cRawImg ,(NZL_CNT * nImg_YCnt),pMain->m_DB.m_JetDB.nEncDir,strMsg);

	    if (ulngLineCnt == 0)
		{			
			fwrite(cRawImg, sizeof(UCHAR), (NZL_CNT*nImg_YCnt), ifp);		
			fclose(ifp);

			memset(cRawImg,'\0',sizeof(UCHAR) * NZL_CNT * nImg_YCnt);

			ifp = NULL;
			nBuffNo = 0;
			delete []cRawImg;
			bRtn = false;
			return bRtn;

		}
		else
		{
			// True로 리턴 하는 부분이 없어 Else구문 추가함 20090817이혁진
			bRtn = true;
		}
 		fwrite(cRawImg, sizeof(UCHAR), (NZL_CNT*nImg_YCnt), ifp);		
 		fclose(ifp);

		memset(cRawImg,'\0',sizeof(UCHAR) * NZL_CNT * nImg_YCnt);

		ifp = NULL;
		nBuffNo = 0;
	}

	delete []cRawImg;
	cRawImg = NULL;
	m_nBlkCnt = nDvdTotCnt;
	m_ulngVerCnt = ulngLineCnt;
	char tSRtnValue[256];

	//Image Count가 Return되지 않아 추가함. 20090817이혁진 
	// Current Send Divide Image count
	sprintf(cSubKey,"%s",__SEND_IMGCURCNT);
	sprintf(tSRtnValue,"%d",ulngLineCnt);		//Data형변환 Unsigned long>>Char로 
	pMain->m_Reg.SHRegWriteString(HKEY_CURRENT_USER, cKey, cSubKey, tSRtnValue);
	//Image Count가 Return되지 않아 추가함. 20090817이혁진 

	return bRtn;
}

