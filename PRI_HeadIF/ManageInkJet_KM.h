// ManageInkJet_KM.h: interface for the CManageInkJet_KM class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MANAGEINKJET_KM_H__1970FD6A_E838_49D9_A177_F415FC10CEA5__INCLUDED_)
#define AFX_MANAGEINKJET_KM_H__1970FD6A_E838_49D9_A177_F415FC10CEA5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define DU_MAX				(1)		// Drive Unit Max
#define	KMDB_MAX			(2)		// KMDB Max

#define NOZZLES				(1024)	//512

#define IMAGE_COUNT			(8)		//image num
#define HEADS				(4)		//heads

//Level Definition  2:2Level 4:4Level 
//#define LEVEL				2		// Level
#define LEVEL				(4)		// Level

#if (LEVEL==4)
#define IMAGE_DEPTH			(2)		//2bit

//File format is BMP
//Color type is 16 index color(4bit)
#define FILE_NAME_1_K	"Testimage\\W0512_Level4\\W0512_Level4_Head1_1.bmp"
#define FILE_NAME_1_Y	"Testimage\\W0512_Level4\\W0512_Level4_Head2_1.bmp"
#define FILE_NAME_1_M	"Testimage\\W0512_Level4\\W0512_Level4_Head3_1.bmp"
#define FILE_NAME_1_C	"Testimage\\W0512_Level4\\W0512_Level4_Head4_1.bmp"

#define FILE_NAME_2_K	"Testimage\\W0512_Level4\\W0512_Level4_Head1_2.bmp"
#define FILE_NAME_2_Y	"Testimage\\W0512_Level4\\W0512_Level4_Head2_2.bmp"
#define FILE_NAME_2_M	"Testimage\\W0512_Level4\\W0512_Level4_Head3_2.bmp"
#define FILE_NAME_2_C	"Testimage\\W0512_Level4\\W0512_Level4_Head4_2.bmp"
#else
#define IMAGE_DEPTH			1		//1bit
//File format is BMP
//Color type is (1bit)

#define FILE_NAME_1_K	"Testimage\\W0512_Level2\\W0512_Level2_Head1_1.bmp"
#define FILE_NAME_1_Y	"Testimage\\W0512_Level2\\W0512_Level2_Head2_1.bmp"
#define FILE_NAME_1_M	"Testimage\\W0512_Level2\\W0512_Level2_Head3_1.bmp"
#define FILE_NAME_1_C	"Testimage\\W0512_Level2\\W0512_Level2_Head4_1.bmp"

#define FILE_NAME_2_K	"Testimage\\W0512_Level2\\W0512_Level2_Head1_2.bmp"
#define FILE_NAME_2_Y	"Testimage\\W0512_Level2\\W0512_Level2_Head2_2.bmp"
#define FILE_NAME_2_M	"Testimage\\W0512_Level2\\W0512_Level2_Head3_2.bmp"
#define FILE_NAME_2_C	"Testimage\\W0512_Level2\\W0512_Level2_Head4_2.bmp"
#endif

class CManageInkJet_KM  
{
	struct ijcs_status {
		DWORD	print_status;			
		DWORD	flush_status;			
		DWORD	print_trigger_enable;	
		DWORD	flush_trigger_enable;	
		DWORD	print_num;				
		DWORD	head_lr_print_num[32];	
		DWORD	sensor_status;			
		DWORD	phase_counter;			
		DWORD	command_exec_result;	
		DWORD	command_error_detail;	
		DWORD	error_ep2;				
		DWORD	error_ddr_read;			
		DWORD	error_data_transfer;	
		DWORD	error_mmb_board;		
		DWORD	error_change_direction;	
		DWORD	error_fpga;				
	};


public:
	BOOL DummyForCommunication();
	CManageInkJet_KM();
	virtual ~CManageInkJet_KM();

// Attribute
	HINSTANCE	m_hDll;
	BYTE m_index[256];	//index

// Function
	BOOL Initialize();//-
	BOOL HeadSetup();
	BOOL WaveformSetup();
	BOOL FireSetup();
	BOOL DelaySetup();
	BOOL TemperatureSetup();
	BOOL FlushingSetup();

	BOOL ImageInfo();
	BOOL ImageData();
	BOOL StarPrint();

	BOOL GetStatus(int in_mmb);

	BOOL ImageReadAndSend(int memory_size, int line_bytes, int height);

	// BMP file access
	BOOL GetImageProperty(FILE *fp,int &width,int &height,int &offset,int &bits,int &byte_per_line);
	BOOL GetImageData(FILE *fp,BYTE* buf,int size,BOOL back);

	//DLL Access functions
	BOOL LoadFunction();//-
	BOOL IJCS_Open(); //-
	BOOL IJCS_Close();//-
	BOOL IJCS_Reset();//????????????????????
	//BOOL IJCS_GetSysInfo();
	BOOL IJCS_GetStatus(DWORD mmb, void *status, DWORD size);//-
	BOOL IJCS_SendCommand(DWORD mmb, DWORD cmd, void *buffer, DWORD size); //-
	BOOL IJCS_SendImage(DWORD mmb, DWORD dbm, DWORD head, DWORD rl, void *image, DWORD size); //-
	DWORD IJCS_GetErrorCode(void); //-
	
	BOOL (__stdcall* DLL_Open)(void);
	BOOL (__stdcall* DLL_Close)(void);
	BOOL (__stdcall* DLL_Reset)(void);
	//BOOL (__stdcall* DLL_GetSysInfo)(struct ijcs_sysinfo *info);
	BOOL (__stdcall* DLL_GetStatus)(DWORD mmb, void *status, DWORD size);
	BOOL (__stdcall* DLL_SendCommand)(DWORD mmb, DWORD cmd, void *buffer, DWORD size);
	BOOL (__stdcall* DLL_SendImage)(DWORD mmb, DWORD dbm, DWORD head, DWORD rl, void *image, DWORD size);

	BOOL (__stdcall* DLL_GetErrorCode)(void);

};

#endif // !defined(AFX_MANAGEINKJET_KM_H__1970FD6A_E838_49D9_A177_F415FC10CEA5__INCLUDED_)
