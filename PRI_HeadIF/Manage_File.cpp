// Manage_File.cpp: implementation of the CManage_File class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "PRI_HeadIF.h"
#include "Manage_File.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CManage_File::CManage_File()
{
	memset(&m_JetDB,0,sizeof(m_JetDB));
}

CManage_File::~CManage_File()
{

}

PRIDB CManage_File::Read_JetDB(char *psPath, int nHeadNo, int nReadLine)
{
	char *ctoken;	  //token
	char strDB[256]; //파일의 한 줄을 저장할 문자열공간
	int i = 0;
	int nData = 0;
	int nActive = 0;
	int nNzlNo = 0;	
	FILE *ifp;

	memset(&m_JetDB,0,sizeof(m_JetDB));
	memset(strDB,'\0',sizeof(char)*256);

	ifp = fopen(psPath,"r");

	if (ifp == NULL )
	{
		return m_JetDB;
	}

	while(fgets(strDB,256,ifp) != NULL) //<-----------------------------------이부분
	{
		ctoken = strtok(strDB,"="); // '='으로 토큰을 나눔
		ctoken = strtok(NULL," ");

		if(i>=nReadLine)
		{
			switch(nData) 
			{
				case 0:
					
					if(ctoken) 
					{ 
						nActive = atoi(ctoken);
						if(nActive == 1) 
						{
							m_JetDB.HEAD[nHeadNo].bActive[nNzlNo] = true;
						}
						else
						{
							m_JetDB.HEAD[nHeadNo].bActive[nNzlNo] = false;
						}
					}

					nData = 1;
					break;

				case 1:
					
					if(ctoken) 
					{ 
						m_JetDB.HEAD[nHeadNo].fVoltage[nNzlNo] = (float)atof(ctoken);
					}

					nData = 2;
					break;

				case 2:
					
					if(ctoken) 
					{
						m_JetDB.HEAD[nHeadNo].nWaveForm[nNzlNo] = atoi(ctoken);
					}

					nData = 3;
					break;

				case 3:
					
					if(ctoken) 
					{
						m_JetDB.HEAD[nHeadNo].fSlantOffset[nNzlNo] = (float)atof(ctoken);
					}

					nData = 0;
					nNzlNo++;
					break;

				default:
					break;
			}
		}
		
		i++;
		memset(strDB,'\0',sizeof(char)*256);
	}
    
	fclose(ifp);
	return m_JetDB;
}

BOOL CManage_File::Open(CFile *pRtnFile, char *psPath, int nAttribute)
{
	int nPathLen = 0;
	BOOL bOpen = FALSE;

	if(CFile::hFileNull != pRtnFile->m_hFile)
	{
		pRtnFile->Close();
		return FALSE;
	}

	if (nAttribute == Write_Attr)
	{
		nAttribute = CFile::modeCreate | CFile::modeWrite | CFile::shareDenyWrite;
	}
	else
	{
		nAttribute = CFile::modeRead;	
	}

	nPathLen = strlen(psPath);

	if (nPathLen <= 0)
	{
		AfxMessageBox( "지정된 파일경로가 지정이 안되었습니다." );
		pRtnFile = NULL;
		return FALSE;
	}

	bOpen = pRtnFile->Open(psPath, nAttribute);
	if(bOpen == FALSE)
	{
		AfxMessageBox( "지정된 파일을 열수 없습니다." );

		pRtnFile = NULL;
		return FALSE;
	}

	return TRUE;
}

BOOL CManage_File::ReadLine(CFile *file, char* pcStream)
{
    char buffer[1024];
    BOOL bNEWLINE=FALSE;
    BOOL bEOF = FALSE;

	memset(buffer,'\0',sizeof(buffer));

    while (!bNEWLINE) 
	{
		// 1k Byte = 1024 character
        DWORD read = file->Read(buffer, 1024);

        for (DWORD i=0; i<read; i++) 
		{
			// ASCII 문자라면 0000 0000 ~ 0111 1111 의 범위. : 0~127 (상위 아스키 1BYTE처럼)
			// Extend ASCII 문자라면 1000 0000 ~ 1111 1111 의 범위. : 128~255 (하위 아스키 1BYTE처럼)
			// 2Byte 조합처럼 한글은 입출력된다.
			// ASCII가 아닌 문자일 경우 TRUE가 되고, ASCII 문자는 모두 FALSE 값

			// 한글처리
            if (buffer[i] & 0x80) 
			{ 
				//한글 : 2Byte
				pcStream[i] = buffer[i];
				pcStream[i++] = buffer[i++];
            } 

			// Carriage Return 
			else if (buffer[i] == '\r' || buffer[i] == '\n') 
			{
                i++; //skip 
                
				if (buffer[i] == '\r' || buffer[i] == '\n') 
				{
					i++; //skip
				}
				
				// 처음 파일의 시작포인트로 이동한다.
                file->Seek(-(long)((read-i)), CFile::current);
                bNEWLINE = TRUE;
                break;
            }

			// 영문처리
			else
			{
				pcStream[i] = buffer[i];
			}
        }

		// 읽은 라인이 1024문자내로 들어왔다면 bNEWLINE에 넘어간다는 리턴값을 처리한다.
        if (read < 1024) 
		{ 
			//파일 끝
            bNEWLINE = TRUE;

			// 현재 파일을 읽은 문자열의 포인터와 전체 문자갯수가 맞다면 현재 오픈되어진 
			// 파일의 문자는 모두읽은것으로 간주한다.
            if (file->GetPosition() == file->GetLength()) 
			{
				bEOF = TRUE;
			}
        } 
    }

    return !bEOF;
} 
