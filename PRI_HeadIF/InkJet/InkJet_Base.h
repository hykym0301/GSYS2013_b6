// InkJet_Base.h: interface for the CInkJet_Base class.
//
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// 함수의 리턴 값이 거짓일 경우 "sRtn"에 error message가 포함되어 리턴됩니다.
/// 함수가 값을 리턴 하는 경우에는 "0" 또는 "0.0"를 리턴 할 경우 error message가 포함되어 리턴됩니다.
/// 정상적인 리턴값이 "0" 또는 "0.0"일 경우 "Non Error"라는 message가 포함됩니다.
/// 거리를 입력출력은 um 단위 이며, 소숫점 허용일 경우 유효 숫자는 소숫점 이하 1자리 입니다.
/// 각각의 함수 들은 서로 연관성이 있으므로 사용시 설명서의 순서를 반드시 지켜주시기 바랍니다.
/// Data의 개수는 HD_TYPE_SPECTRA_1,2 : 128개, HD_TYPE_TRIDENT_1 : 256개입니다.
/// Trident Head 사용 시 DSP 관련 함수는 사용하지 마세요
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#ifndef INKJET_BASE_H
#define INKJET_BASE_H

#if !defined(AFX_INKJET_BASE_H__F74BE705_A71C_4B43_A406_AA93046D8567__INCLUDED_)
#define AFX_INKJET_BASE_H__F74BE705_A71C_4B43_A406_AA93046D8567__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef HD_TYPE 
#define HD_TYPE
#define HD_TYPE_SPECTRA_1	1 // PTM/PPM/Spectra 128 Head controller 있는 type : C/F 장비
#define HD_TYPE_TRIDENT_1	2 // PTM/Trident 256 Head controller 있고, PPM 없는 Type: Trident head Type (G장비, Test)
#define HD_TYPE_SPECTRA_2	3 // PTM/Spectra 128 Head만 있고, DSP없는 Head type으로 변경 : EPD 장비
#define HD_TYPE_SPECTRA_3	4 // Spectra 128 Head controller만 있고, PTM/PPM 없는 Type : 드롭워쳐용
#define HD_TYPE_NOVA_1		10 // PTM/Nova 256 Head만 있고, PPM 없는 Type : nozzle 256개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us
#define HD_TYPE_NOVA_2		11 // Nova 256 Head만 있고, PTM/PPM없는 Type : Nova Head Drop watcher용, 상동
#define HD_TYPE_NOVA_512_1	20 // PTM/Nova nozzle 512개, PPM 없는 Type : 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us
#define HD_TYPE_NOVA_512_2	21 // PTM/Nova nozzle 512개, PPM 없는 Type : Nova Head Drop watcher용, 상동
#define HD_TYPE_Q_CLASS_512_1	30 // Q-class nozzle 512개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us <== Nova512와 동일
#define HD_TYPE_Q_CLASS_512_2	31 // Q-class Head Drop watcher용 추가. nozzle 512개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us
#endif //HD_TYPE

// image download type 설정 추가.
#ifndef IMG_DN_TYPE
#define IMG_DN_TYPE
#define IMG_DN_TYPE_PITCHSET	0x0001
#define IMG_DN_TYPE_SLANT		0x0002
#define IMG_DN_TYPE_DIRECT		0x2000	// 100723 edited by wonho, 이미지 처리없이 바로 다운로드하기.

#define IMG_DN_TYPE_BYTE_IMG_PITCHSET			0x0001
#define IMG_DN_TYPE_BYTE_IMG_SLANT				0x0002
#define IMG_DN_TYPE_BYTE_IMG_PITCHSET_FILE		0x1001	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
#define IMG_DN_TYPE_BYTE_IMG_SLANT_FILE			0x1002	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.

#define IMG_DN_TYPE_BIT_IMG_PITCHSET			0x0101
#define IMG_DN_TYPE_BIT_IMG_SLANT				0x0102
#define IMG_DN_TYPE_BIT_IMG_PITCHSET_FILE		0x1101	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
#define IMG_DN_TYPE_BIT_IMG_SLANT_FILE			0x1102	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.

#define PITCHSET_IMG_DN_FLAG	0x0001
#define SLANT_IMG_DN_FLAG		0x0002
#define BIT_IMG_DN_FLAG			0x0100
#define FILE_SAVE_IMG_DN_FLAG	0x1000	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
#define	DIRECT_DN_IMG_DN_FLAG	0x2000	// 100723 edited by wonho, 이미지 처리없이 바로 다운로드하기.
#endif // #ifndef IMG_DN_TYPE

// image jet type 설정.
#ifndef HD_JET_TYPE
#define HD_JET_TYPE
#define HD_JET_TYPE_STOP								0xf000

#define HD_JET_TYPE_IMAGE_FORWARD						0x0000
#define HD_JET_TYPE_IMAGE_BACKWARD						0x0001
#define HD_JET_TYPE_IMAGE_FORWARD_NOT_VARIATION			0x0010
#define HD_JET_TYPE_IMAGE_BACKWARD_NOT_VARIATION		0x0011

#define HD_JET_TYPE_TIMER_IMAGE_FORWARD					0x0004
#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD				0x0005
#define HD_JET_TYPE_TIMER_IMAGE_FORWARD_NOT_VARIATION	0x0014
#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD_NOT_VARIATION	0x0015

#define HD_JET_TYPE_NOZZLE_TEST							0x0046
#define HD_JET_TYPE_NOZZLE_TEST_SET_DROP_CNT			0x0066

#define HD_JET_TYPE_DROPWATCHER							0x000a

#define DIRECTION_JET_TYPE_FLAG			0x0001	// 0:정, 1:역
#define IMAGE_USE_JET_TYPE_FLAG			0x0002	// 0:이미지 사용, 1:이미지 사용하지 않음.
#define ENC_TIMER_JET_TYPE_FLAG			0x0004	// 0:엔코더 사용, 1:타이머 사용.
#define EX_TRG_EN_JET_TYPE_FLAG			0x0008	// 0:외부트리거 사용하지 않음. 1: 외부 트리거 사용

#define VARIATION_EN_JET_TYPE_FLAG		0x0010	// 0:드롭별전압변동 사용, 1: 사용하지 않음.
#define DROP_CNT_CTRL_EN_TYPE_FLAG		0x0020	// 0:드롭개수 설정 사용하지 않음, 1: 사용
#define HD_TIMER_EN_TYPE_FLAG			0x0040	// 0:헤드 타이머 사용하지 않음, 1: 사용

#define JET_STOP_EN_JET_TYPE_FLAG		0xf000	// 0:분사, 1:정지
#endif //HD_JET_TYPE


#ifndef MAX_HEAD_CNT
#define MAX_HEAD_CNT 40
#endif //MAX_HEAD_CNT

#ifndef MAX_DSP_HEAD_CNT
#define MAX_DSP_HEAD_CNT 32 // 4개 단위로 증감해야함.
#endif


#ifndef RUN_MODE_
#define RUN_MODE_
#define RUN_MODE_NORMAL			0x0000 // 일반 실행
#define RUN_MODE_DEBUG_EN		0x0001 // controller 없이 debug 시
#define RUN_MODE_LOG_LEVEL_1_EN	0x0010 // Log 내용 1단계 확장
#define RUN_MODE_LOG_LEVEL_2_EN	0x0020 // Log 내용 2단계 확장
#define RUN_MODE_LOG_LEVEL_3_EN	0x0040 // Log 내용 3단계 확장
#define RUN_MODE_DATA_SAVE_EN	0x0100 // Debug 시 처리 데이터 저장
#define RUN_MODE_BOARD_ECHO_EN	0x1000 // controller의 값 확인 설정
#define RUN_MODE_DEBUG_BOOT_EN	0x8000 // debug용으로 사용, 사용 금지
#endif //RUN_MODE_


#ifndef SRIO_READ_SOURCE
#define SRIO_READ_SOURCE
#define SRIO_READ_SOURCE_PTM	0
#define SRIO_READ_SOURCE_DSP0	1
#define SRIO_READ_SOURCE_DSP1	2
#define SRIO_READ_SOURCE_DSP2	3
#define SRIO_READ_SOURCE_DSP3	4
#define SRIO_READ_SOURCE_HC		5
#endif //#ifndef SRIO_READ_SOURCE

//+2006.03.07 Mod BY USY
//Extension Dll에서 외부에서 액세스할 클래스는 선언할때 "AFX_EXT_CLASS"키워드를 붙여야함
class AFX_EXT_CLASS CInkJet_Base 
//class CInkJet_Base  
//-
{ 
public:
	CInkJet_Base();
	virtual ~CInkJet_Base();

	void InitValue(void);
	void InitValue_PTM2(void);

	
	//////////////////////////////////////////////////////////////////////////
	unsigned int Bs_GetHeadMap(void);

	//Base Board 관련 함수들
	bool	Bs_Pci_Boot(CString strNliPath, int TrgComPort, HWND hWnd, CString& sRtn);	//PCI Card Boot, 첫번째로 호출
	bool	Bs_Pci_Boot(CString strNliPath, int TrgComPort, HWND hWnd, unsigned int RunMode, CString &sRtn);

	bool	Bs_Pci_Close(CString& sRtn); //PCI Card Close, 종료시 호출

	// Head 객체 생성
	bool	Bs_Head_Create(int nHeadCnt, int nHeadType, CString& sRtn);	// Bs_Pci_Boot()가 정상적으로 완료 된후
			//#define HD_TYPE_SPECTRA_1	1 // PTM/PPM/Spectra 128 Head controller 있는 type : C/F 장비
			//#define HD_TYPE_TRIDENT_1	2 // PTM/Trident 256 Head controller 있고, PPM 없는 Type: Trident head Type (G장비, Test)
			//#define HD_TYPE_SPECTRA_2	3 // PTM/Spectra 128 Head만 있고, DSP없는 Head type으로 변경 : EPD 장비
			//#define HD_TYPE_SPECTRA_3	4 // Spectra 128 Head controller만 있고, PTM/PPM 없는 Type : 드롭워쳐용
			//#define HD_TYPE_NOVA_1		10 // PTM/Nova 256 Head만 있고, PPM 없는 Type : nozzle 256개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us
			//#define HD_TYPE_NOVA_2		11 // Nova 256 Head만 있고, PTM/PPM없는 Type : Nova Head Drop watcher용, 상동
			//#define HD_TYPE_NOVA_512_1	20 // PTM/Nova nozzle 512개, PPM 없는 Type : 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us
			//#define HD_TYPE_NOVA_512_2	21 // PTM/Nova nozzle 512개, PPM 없는 Type : Nova Head Drop watcher용, 상동
			//#define HD_TYPE_Q_CLASS_512_1	30 // Q-class nozzle 512개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us <== Nova512와 동일
			//#define HD_TYPE_Q_CLASS_512_2	31 // Q-class Head Drop watcher용 추가. nozzle 512개, 전노즐 동일 전압-> 전압데이터128개*0.125us = 16us

private:
	void	Bs_Head_Delete();	// Bs_Pci_Close() 함수 호출시 자동 호출됨

public:
	//이미지의 Pixel Pitch 설정
	bool	Bs_Set_ImgPitch(float ImgPitch, CString& sRtn);			//um 단위로 입력, Bs_Head_Create()후 설정
	float	Bs_Get_ImgPitch(void);									//um 단위로 출력

	//Encoder Resolution 설정
	bool	Bs_Set_EncResolution(float EncResol, CString& sRtn);	//um 단위로 입력, Bs_Set_ImgPitch()후 설정
	float	Bs_Get_EncResolution(void);								//um 단위로 출력


	// Base 분사 관련 함수
	//////////////////////////////////////////////////////////////////////////
	/////////////////// BS_JetStart 함수 안정화 이후 삭제 예정 ////////
//private:
		bool	BS_NozzleTestStart(CString &sRtn);		// Nozzle Test 시작
		bool	BS_PC_ImageJetStart(CString &sRtn);		// PC에서 download한 이미지 분사 시작
		bool	BS_DSP_ImageJetStart(CString &sRtn);	// DSP에서 생성한 이미지 분사 시작
		bool	BS_DropWatcherStart(CString &sRtn);		// 081105 edit by wonho, Drop watcher용 분사 시작 함수 추가.
		bool	BS_TimerJetStart(float Frequency, CString &sRtn);	// 090716 edit by wonho, Timer 분사 시작 함수 추가.
	/////////////////// BS_JetStart 함수 안정화 이후 삭제 예정 ////////
	//////////////////////////////////////////////////////////////////////////
		
public:
	// 헤드별 분사 시작 설정 후 사용하는 함수.
	bool	BS_JetStart(int nJetType, CString &sRtn);

	// JetStartHeadList에 분사 시작할 Head를 설정함.
	// Head 별 분사 시작 할필요 없음.
	// Head list는 배열로 전달 하며, 헤드 개수와 같아야 함.
	// 헤드 번호에 해당하는 순번의 값이 TRUE 이면 해당 헤드가 분사 함.
	bool	BS_JetStart(const bool *JetStartHeadList, int JetType, CString &sRtn); // JetType에 따라 위의 분사 mode 수행 
	//#define HD_JET_TYPE_STOP									0x8000
	//
	//#define HD_JET_TYPE_IMAGE_FORWARD							0x0000
	//#define HD_JET_TYPE_IMAGE_BACKWARD						0x0001
	//#define HD_JET_TYPE_IMAGE_FORWARD_NOT_VARIATION			0x0010
	//#define HD_JET_TYPE_IMAGE_BACKWARD_NOT_VARIATION			0x0011
	//
	//#define HD_JET_TYPE_TIMER_IMAGE_FORWARD					0x0004
	//#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD					0x0005
	//#define HD_JET_TYPE_TIMER_IMAGE_FORWARD_NOT_VARIATION		0x0014
	//#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD_NOT_VARIATION	0x0015
	//
	//#define HD_JET_TYPE_NOZZLE_TEST							0x0046
	//#define HD_JET_TYPE_NOZZLE_TEST_SET_DROP_CNT				0x0066
	//
	//#define HD_JET_TYPE_DROPWATCHER							0x000a

	bool	Bs_JetStop(CString &sRtn);				// 분사 정지
	bool	Bs_Get_JetState(void);					// 분사 여부 상태 확인

	bool	BS_SetTimerFrequecy(float Frequency, CString &sRtn); // Trigger Board의 Timer mode frequency 설정

	// Head 분사 관련 함수
	//////////////////////////////////////////////////////////////////////////
	/////////////////// Hd_Img_SetJetStart 함수 안정화 이후 삭제 예정 ////////
//private:
		// 정방향 분사 시작 설정
		bool	Hd_Img_SetForwardJetStart(unsigned int nHeadNum,CString& sRtn);
		// 역방향 분사 시작 설정
		bool	Hd_Img_SetBackwardJetStart(unsigned int nHeadNum,CString& sRtn);

		// 드롭별 전압 변동 없이 정방향 분사 시작 설정
		bool	Hd_Img_SetForwardJetStart_NotVariation(unsigned int nHeadNum,CString& sRtn);
		// 드롭별 전압 변동 없이 역방향 분사 시작 설정
		bool	Hd_Img_SetBackwardJetStart_NotVariation(unsigned int nHeadNum,CString& sRtn);

		// Nozzle test 분사 시작 설정
		bool	Hd_Img_SetNozTestJetStart(unsigned int nHeadNum,CString& sRtn);
		// 091104 edit by wonho 노즐 테스트시 드롭개수 정하기를 하기 위해 추가.
		bool	Hd_Img_Set_NDropNozTestJetStart(unsigned int nHeadNum, long DropCount, CString& sRtn);

		// 081105 edit by wonho, Drop watcher용 분사 시작 함수 추가.
		bool	Hd_Img_DropWatcherJetStart(unsigned int nHeadNum, CString& sRtn);
	/////////////////// Hd_Img_SetJetStart 함수 안정화 이후 삭제 예정 ////////
	//////////////////////////////////////////////////////////////////////////

public:
	// 091230 edit by wonho 분사 종류별 함수를 하나로 통합
	bool	Hd_Img_SetJetStart(unsigned int nHeadNum, int nJetType, CString& sRtn);
	//#define HD_JET_TYPE_STOP									0x8000
	//
	//#define HD_JET_TYPE_IMAGE_FORWARD							0x0000
	//#define HD_JET_TYPE_IMAGE_BACKWARD						0x0001
	//#define HD_JET_TYPE_IMAGE_FORWARD_NOT_VARIATION			0x0010
	//#define HD_JET_TYPE_IMAGE_BACKWARD_NOT_VARIATION			0x0011
	//
	//#define HD_JET_TYPE_TIMER_IMAGE_FORWARD					0x0004
	//#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD					0x0005
	//#define HD_JET_TYPE_TIMER_IMAGE_FORWARD_NOT_VARIATION		0x0014
	//#define HD_JET_TYPE_TIMER_IMAGE_BACKWARD_NOT_VARIATION	0x0015
	//
	//#define HD_JET_TYPE_NOZZLE_TEST							0x0046
	//#define HD_JET_TYPE_NOZZLE_TEST_SET_DROP_CNT				0x0066
	//
	//#define HD_JET_TYPE_DROPWATCHER							0x000a
	
	// Head 별 분사 정지 설정 (분사중에는 정지하지 마세요)
	bool	Hd_Img_SetJetStop(unsigned int nHeadNum,CString& sRtn);

	// 분사 시작/정지 상태 확인
	int		Hd_Img_GetJetState(unsigned int nHeadNum, CString& sRtn);
	// 분사 시작/정지 설정 확인
	int		Hd_Img_GetJetType(unsigned int nHeadNum, CString& sRtn);

private:
	bool	Hd_JetStop(int *Jetstate, CString &sRtn);					// 모든 헤드의 분사 정지 설정
// 	bool	BS_ImageJetStart(int TimerEnable, CString &sRtn);


//////////////////////////////////////////////////////////////////////////
//Head 관련 함수들
//////////////////////////////////////////////////////////////////////////

public:
	//////////////////////////////////////////////////////////////////////////
	// Head parameter 관리
	/// 헤드 종류별로 관리하는 것으로 변경 하기위해
	unsigned int Hd_Get_HeadType(unsigned int nHeadNum, CString &sRtn);

	// Head 별 delay 설정
	//////////////////////////////////////////////////////////////////////////
	// 방향별 설정 이전 함수
	//아래 방향별 설정 함수의 안정화 이후 삭제 예정
//private:
	bool	Hd_Set_HeadDelay(unsigned int nHeadNum, const float nHeadDelayDist, CString& sRtn);	//um단위로
	float	Hd_Get_HeadDelay(unsigned int nHeadNum,CString& sRtn);								//
	//아래 방향별 설정 함수의 안정화 이후 삭제 예정
	//////////////////////////////////////////////////////////////////////////

public:
	bool	Hd_Set_HeadDelay(unsigned int nHeadNum, int nDirection, float nHeadDelayDist, CString& sRtn);	//um단위로
	float	Hd_Get_HeadDelay(unsigned int nHeadNum, int nDirection, CString& sRtn);
	//#define HD_JET_TYPE_IMAGE_FORWARD							0x0000
	//#define HD_JET_TYPE_IMAGE_BACKWARD						0x0001

	// Nozzle 별 전압 설정
	bool	Hd_Set_Voltage(unsigned int nHeadNum, const float* nVoltage, CString &sRtn);		//Voltage 설정(Data 개수 : 128/256)
	bool	Hd_Set_Voltage(unsigned int nHeadNum, CString sFolder, CString &sRtn);				//Voltage 설정(Data 개수 : 128/256), 사용 금지
	//bool	Hd_Set_Voltage(unsigned int nHeadNum, CString &sRtn);								//Voltage 설정, 사용 금지
	bool	Hd_Get_Voltage(unsigned int nHeadNum, float* nVoltage, CString &sRtn);				//Voltage 확인

	// Head 별 공급전압 설정
	bool	Hd_Set_SupplyVoltage(unsigned int nHeadNum, float nSupplyVoltage, CString &sRtn);	//Power supply max Voltage 설정
	float	Hd_Get_SupplyVoltage(unsigned int nHeadNum, CString &sRtn);

	// Head 별 공급전압의 Offset 설정
	bool	Hd_Set_VoltageOffset(unsigned int nHeadNum, float nVoltageOffset, CString &sRtn);	//전압 offset 설정
	float	Hd_Get_VoltageOffsetf(unsigned int nHeadNum, CString &sRtn);						//전압 offset 읽기

	// Nozzle 별 firing form 설정
	bool	Hd_Set_WaveForm(unsigned int nHeadNum, const int* nWaveForm, CString& sRtn);		//Wave Form 설정(Data 개수 : 128/256)
	bool	Hd_Set_WaveForm(unsigned int nHeadNum, CString sFolder, CString& sRtn);				// 사용 금지
	bool	Hd_Get_WaveForm(unsigned int nHeadNum, int* nWaveForm,CString& sRtn);
	
	// Nozzle 별 사용 여부 설정 ("0"으로 설정 시 분사하지 않음)
	bool	Hd_Set_LiveNozzle(unsigned int nHeadNum, const int* UseList, CString & sRtn);		//사용할 nozzle 설정 (data 개수 128/256개)
	bool	Hd_Set_LiveNozzle(unsigned int nHeadNum, CString sFolder, CString & sRtn);			//사용할 nozzle 설정 (data 개수 128/256개), 사용 금지
	bool	Hd_Get_LiveNozzle(unsigned int nHeadNum, int* UseList,CString& sRtn);				//

	// Head 별 slant angle 설정
	bool	Hd_Set_SlantAngle(unsigned int nHeadNum, const float nSlantData, CString& sRtn);	//Slant angle 값 설정
	float	Hd_Get_SlantAngle(unsigned int nHeadNum,CString& sRtn);								//Slant angle 값 설정

	// Nozzle 별 slant angle offset 설정
	//////////////////////////////////////////////////////////////////////////
	// 방향별 설정 이전 함수
	//아래 방향별 설정 함수의 안정화 이후 삭제 예정
//private:
	bool	Hd_Set_SlantOffset(unsigned int nHeadNum, const float* nSlantData, CString& sRtn);	//Slant angle 값 설정(Data 개수 : 128/256)
	bool	Hd_Set_SlantOffset(unsigned int nHeadNum, CString sFolder, CString& sRtn);			//Slant angle 값 설정(Data 개수 : 128/256), 사용 금지
	bool	Hd_Get_SlantOffset(unsigned int nHeadNum, float* nSlantData,CString& sRtn);
	//아래 방향별 설정 함수의 안정화 이후 삭제 예정
	//////////////////////////////////////////////////////////////////////////

	// Nozzle 별 slant angle offset 방향별 설정
	// HD_JET_TYPE_IMAGE_FORWARD : 정방향
	// HD_JET_TYPE_IMAGE_BACKWARD : 역방향
public:
	bool	Hd_Set_SlantOffset(unsigned int nHeadNum, int nDirection, const float* nSlantData, CString& sRtn);	//Slant angle 값 설정(Data 개수 : 128/256)
	bool	Hd_Set_SlantOffset(unsigned int nHeadNum, int nDirection, CString sFolder, CString& sRtn);			//Slant angle 값 설정(Data 개수 : 128/256), 사용 금지
	bool	Hd_Get_SlantOffset(unsigned int nHeadNum, int nDirection, float* nSlantData,CString& sRtn);
	//#define HD_JET_TYPE_IMAGE_FORWARD							0x0000
	//#define HD_JET_TYPE_IMAGE_BACKWARD						0x0001
	
	// 드롭개수 제어 노즐 테스트 시 드롭 개수 설정
	bool	Hd_Set_NozTestDropCnt(unsigned int nHeadNum, long DropCount, CString& sRtn);
	bool	Hd_Set_NozzleTestFrequency(unsigned int nHeadNum, float nFrequency, CString& sRtn);
	float	Hd_Get_NozzleTestFrequency(unsigned int nHeadNum, CString& sRtn);

	// 091231 edit by wonho Nova 512 Head type을 위해 헤드간 거리 설정 함수 추가.
	bool	Hd_Set_Head_1_2_Offset(unsigned int nHeadNum, float nDistOfHead1_2, CString& sRtn);
	float	Hd_Get_Head_1_2_Offset(unsigned int nHeadNum, CString& sRtn);

	//////////////////////////////////////////////////////////////////////////
	// 이미지 다운로드 관련
public:

	//////////////////////////////////////////////////////////////////////////
	/////////////////// Hd_Img_Dn 함수 안정화 이후 삭제 예정 ////////
//private:
		// Head의 기울어진 각도를 보상하여 분사하기 위한 image download
		unsigned long	Hd_Bin_Img_Dn_Slant(unsigned int nHeadNum, const unsigned char* ImgBuf,
											const int BufSize, int JetDirection, CString& sRtn);//Binary Image Download

		// system의 image pitch와 다른 image pitch의 image를 분사하기 위한 image download
		unsigned long	Hd_Bin_Img_Dn_PitchSet(unsigned int nHeadNum, const float OrgnImagePitch,
											   const unsigned char* ImgBuf, const int BufSize,
											   int JetDirection,CString& sRtn);	//Binary Image Download

		//091119 edit by wonho bit image download를 하기 위해 추가.
		unsigned long	Hd_Bit_Img_Dn_Slant(unsigned int nHeadNum, const unsigned char* ImgBuf,
											int PixelCnt, int JetDirection, CString& sRtn);//Binary Image Download

		// system의 image pitch와 다른 image pitch의 image를 분사하기 위한 image download
		unsigned long	Hd_Bit_Img_Dn_PitchSet(unsigned int nHeadNum, float OrgnImagePitch,
											   const unsigned char* ImgBuf, int PixelCnt,
											   int JetDirection,CString& sRtn);	//Binary Image Download
	/////////////////// Hd_Img_Dn 함수 안정화 이후 삭제 예정 ////////
	//////////////////////////////////////////////////////////////////////////

public:
	// Image download 통합.
	unsigned long Hd_Img_Dn(unsigned int nHeadNum, int ImgDnType, const unsigned char* ImgBuf,
							int PixelCnt, int JetDirection, CString& sRtn);
		//#define IMG_DN_TYPE_DIRECT					0x2000	// 100723 edited by wonho, 이미지 처리없이 바로 다운로드하기.
		//
		//#define IMG_DN_TYPE_BYTE_IMG_PITCHSET			0x0001
		//#define IMG_DN_TYPE_BYTE_IMG_SLANT			0x0002
		//#define IMG_DN_TYPE_BYTE_IMG_PITCHSET_FILE	0x1001	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
		//#define IMG_DN_TYPE_BYTE_IMG_SLANT_FILE		0x1002	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
		//
		//#define IMG_DN_TYPE_BIT_IMG_PITCHSET			0x0101
		//#define IMG_DN_TYPE_BIT_IMG_SLANT				0x0102
		//#define IMG_DN_TYPE_BIT_IMG_PITCHSET_FILE		0x1101	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.
		//#define IMG_DN_TYPE_BIT_IMG_SLANT_FILE		0x1102	// 100723 edited by wonho, 처리된 이미지를 파일로 저장하기.


	// image buffer 삭제
	bool	Hd_Img_Buf_Clr(unsigned int nHeadNum, int nDirection, CString& sRtn);

	bool	Hd_Set_OrgnImagePitch(unsigned int nHeadNum, const float nOrngImagePitch, CString& sRtn);		//Original image의 pitch를 um단위로 (초기값 10um)
	float	Hd_Get_OrgnImagePitch(unsigned int nHeadNum, CString sRtn);
	// 사용 금지
	unsigned long Hd_Bin_Img_Dn(unsigned int nHeadNum, CString sFolder, 
								int ImgDnType, int JetDirection,CString& sRtn);	//Binary Image Download

	//////////////////////////////////////////////////////////////////////////
	// 이미지 생성 관련
public:
	//////////////////////////////////////////////////////////////////////////
	//////////////////////// Glass 정보 설정 /////////////////////////////////
	// Nozzle 별 담당 Pixel 번호 설정 ("0"으로 설정 시 분사하지 않음)
	bool	Hd_Set_DSP_UseNozzleNum(unsigned int nHeadNum, const int* UseList, CString & sRtn);		//사용할 nozzle 설정 (data 개수 128개)
	bool	Hd_Set_DSP_UseNozzleNum(unsigned int nHeadNum, CString sFolder, CString & sRtn);		//사용할 nozzle 설정 (data 개수 128개), 사용 금지
	bool	Hd_Set_DSP_UseNozzleNum(unsigned int nHeadNum, CString & sRtn);							//사용할 nozzle 설정, 사용 금지
	bool	Hd_Get_DSP_UseNozzleNum(unsigned int nHeadNum, int* UseList,CString& sRtn);				// (data 개수 128개)

	//////////////////////////////////////////////////////////////////////////
	// 081125 edit by wonho : DSP Image 생성용 Glass parameter를 한꺼번에 설정 할 수 있도록 함.
	// 파일을 읽고 설정헤드리스트를 한꺼번에 설정함.
	// 설정 헤드리스트는 undigned int형 32bit 변수에 해당하는 비트를 1로 설정함.
	bool BS_SetGlassConfigFile( unsigned int nSetHeadList, CString fn, CString &sRtn );
	// 헤드별 DSP Image 생성용 Glass parameter설정 값을 저장함.
	bool Hd_GetGlassConfigFile( unsigned int nHeadNum, CString &sRtn );

	//////////////////////////////////////////////////////////////////////////
	// 081022 edit by wonho : DSP Image 생성용 parameter를 한꺼번에 설정 할 수 있도록 함.
	// 파일을 읽고 설정헤드리스트를 한꺼번에 설정함.
	// 설정 헤드리스트는 undigned int형 32bit 변수에 해당하는 비트를 1로 설정함.
	bool BS_SetRandomConfigFile( unsigned int nSetHeadList, CString fn, CString &sRtn );
	// 헤드별 DSP Image 생성용 parameter설정 값을 저장함.
	bool Hd_GetRandomConfigFile( unsigned int nHeadNum, CString &sRtn );

	// Head 별 DSP image make flag 설정
	bool Hd_Set_DSP_IMG_MakeFlag(unsigned int nHeadNum, int nImgMakeFlag, int nMixFlag, int nJetDirection, CString &sRtn);
	bool Hd_Get_DSP_IMG_MakeFlag(unsigned int nHeadNum, int *ImgMakeFlag, int *MixFlag, int *JetDirection, CString &sRtn);

	// DSP image 생성 시작
	bool Bs_Set_DSP_IMG_MakeStart(CString &sRtn);

	// DSP image 생성 상태 확인
	long Bs_Get_DSP_IMG_MakeState(CString &sRtn); // 이미지 생성이 완료 되었는지 확인한후 최대 길이 이미지를 반환

private:
	// 사용헤드 설정
	bool Bs_Set_DSP_UseHead(CString &sRtn);
	bool Get_DSP_UseHead(unsigned char *UseHeadlist, CString &sRtn); // log 없는것.

//////////////////////////////////////////////////////////////////////////
//PTM 관련 함수들
//////////////////////////////////////////////////////////////////////////
private:
	bool	PTM_SW_Reset(CString& sRtn);
	//bool	PTM_Jet_Start(CString& sRtn);
	bool	PTM_Jet_Start(const int *HeadJetTypeList, CString& sRtn);
	bool	PTM_Jet_Stop(CString& sRtn);
	bool	PTM_Led_control(int *WrData, CString& sRtn);
	bool	PTM_REG_SRIO_Write(int *Register_Add, int WrDataCnt, int *WrData, CString& sRtn);


//////////////////////////////////////////////////////////////////////////
// Trigger board 관련 함수들
//////////////////////////////////////////////////////////////////////////
public:	
	// Stage의 원점 설정
	bool	Trg_PositionReset(CString &sRtn); // stage Home 후에 1회 호출

	// stage의 현재 위치의 encoder pulse 입력 개수 확인 (거리로 환산 시 Encoder resolution 을 곱해야 함)
	int		Trg_GetCurrEncoderInCounter(CString& sRtn);
	// stage의 현재 위치를 um 단위로 반환
	float	Trg_GetCurrPosition(CString& sRtn);
	// 분사 시작 위치 설정
	bool	Trg_SetStartPosition(float StartPosition, CString& sRtn);	// 분사 시작점 설정 (um단위)
	float	Trg_GetStartPosition(CString& sRtn);
	// 분사 끝 위치 설정
	bool	Trg_SetEndPosition(float EndPosition, CString& sRtn);		// 분사 끝점 설정 (um단위)
	float	Trg_GetEndPosition(CString& sRtn);
	
	// Stage Error mapping data 설정
	bool	Trg_SetErrorMapData(float ErrorMapPeriod, int ErrorDataCnt, int *ErrorData, CString& sRtn);	// Map data 설정.
	bool	Trg_GetErrorMapData(float *ErrorMapPeriod, int ErrorDataCnt, int *ErrorData, CString& sRtn);


	// 2011,6,23
	long	Trg_GetSyncOutCnt(CString& sRtn);		// sync 신호 출력 개수

private:
	bool	Trg_PortOpen(int Port, HWND hWnd, CString &sRtn);
	bool	Trg_PortClose(CString &sRtn);

	bool	Trg_Receive(CString &sRtn);
	float	Trg_ReceiveStrToFloat(CString &sRtn);
	int		Trg_ReceiveStrToInt(CString &sRtn);

	bool	Trg_SetTriggerPeriod(float nPeriod, CString& sRtn);
	float	Trg_GetTriggerPeriod(CString& sRtn);

	bool	Trg_JetStart(CString& sRtn);			// sync 신호 출력 시작
	bool	Trg_TimerJetStart(float Frequency, CString& sRtn); // Timer mode sync 출력 시작
	bool	Trg_JetStop(CString& sRtn);				// sync 신호 출력 정지


//////////////////////////////////////////////////////////////////////////
//기타 함수들
//////////////////////////////////////////////////////////////////////////
public:	
	void GetVersion(CString &sRtn);
	// 사용 금지
	bool Hd_Get_BufferData(unsigned int nHeadNum, int SourceSelect, int *RdAddress, int *pRtnBuffer, int ReadDataCnt, CString &sRtn); // debug용

	// 101012 edited by wonho Log folder 수정 함수 추가.
	void SetLogFolder(CString nFolderName);

private:

	//////////////////////////////////////////////////////////////////////////
	// 실행모드 선택, (디버그/실행, 로로레벨선택, 데이터 저장 여부, 컨트롤러 리턴 여부 설정 등..)
	unsigned int m_RunMode;

	// 시스템 구성 선택, (헤드 컨트롤러, PTM, DSP 등의 구성 상태, 데이터 쓰기 여부 결정)
	unsigned int m_ConfigFlag;

	bool	m_bBootFlag;				//Pci Card Boot 0 : Fail, 1: Pass
	bool	m_HeadCreateFlag;			//Head를 만들었 었는지..
	// 100121 edit by wonho : 헤드 개수에 맞게 힙상에 변수 생성 하는것으로 변경
	//bool	m_pHeadMakeFlag[MAX_HEAD_CNT];
	bool	*m_pHeadMakeFlag;
	bool	m_HeadDSPImgMakeFlag;		// 090220 edit by wonho, DSP가 이미지를 만들고 있는지 확인용.

	int	m_PTM_LED_Ctrl_REG_ADD[2];
	int	m_PTM_Mode_Ctrl_REG_ADD[2];
	int	m_PTM_HEADSET_REG_ADD[2];
	int	m_PTM_Scan_Ctrl_REG_ADD[2];
	int	m_PTM_SW_Rst_Ctrl_REG_ADD[2];
	int	m_PTM_TLine_REG_ADD[2];

	int m_PTM_PTS_IN_CNT_ADD[2];		//

	unsigned int m_HeadType;			// Head type을 저장. 

	int		m_JetType;
	int		m_LastHeadJetType;			// 마지막으로 설정된 Head에 설정된 jet type 저장.

	float	m_TimerModeFrequency;		//Timer Mode Jetting Frequency
	float	m_EncoderResolution;		//Encoder Resolution
	float	m_ImagePitch;				//image pitch

	int		m_ErrorMapDataCnt;
	float	m_ErrorMapPeriod;
	unsigned char	m_TrgCtr;
	
	unsigned int	m_HeadEndNum;		//Head 갯수
	
	CString m_strNliPath;				//Nli File Path

	int	m_TrgComPort;
	HWND m_hWnd;

	//////////////////////////////////////////////////////////////////////////
	// 090625 edit by wonho image 만드는 시간 확인용 추가
	CTime m_Time_DSP_IMG_MakeStart;
};

#endif // !defined(AFX_INKJET_BASE_H__F74BE705_A71C_4B43_A406_AA93046D8567__INCLUDED_)

#endif //#ifndef INKJET_BASE_H
