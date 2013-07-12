// CommandStruct_KM.h:
//
//////////////////////////////////////////////////////////////////////

#pragma once

enum command{
	IJCS1_COMMAND_DUMY	=0x10,						//0x10	//???
	IJCS1_COMMAND_RESET,							//0x11	//깏긜긞긣
	IJCS1_COMMAND_SAVE_PARAM,						//0x12	//긬깋긽??뺎뫔
	IJCS1_COMMAND_PRINT_START,						//0x13	//덐됪둎럑
	IJCS1_COMMAND_SET_HEAD_TYPE=0x20,				//0x20	//긶긞긤?귽긵먠믦
	IJCS1_COMMAND_ASSIGN_USE_HEAD,					//0x21	//럊뾭긶긞긤럚믦
	IJCS1_COMMAND_ASSIGN_FLUSH_USE_HEAD,			//0x22	//긲깋긞긘깛긐럊뾭긶긞긤럚믦
	IJCS1_COMMAND_SET_BASE_WAVE=0x30,				//0x30	//긹?긚봥?먠믦
	IJCS1_COMMAND_SET_DRIVE_WAVE,					//0x31	//뗭벍봥?먠믦
	IJCS1_COMMAND_SET_HEAD_VOLT=0x40,				//0x40	//긶긞긤밺댊먠믦
	IJCS1_COMMAND_SET_HEAD_NOZZLE_VOLT_RATE,		//0x41	//긶긞긤뗭벍긩긛깑밺댊빾벍뿦먠믦
	IJCS1_COMMAND_ASSIGN_TEMP_VOLT=0x50,			//0x50	//듏떕돴뱗밺댊맕뚥럚믦
	IJCS1_COMMAND_SET_TEMP_VOLT_PARAM,				//0x51	//듏떕돴뱗밺댊긬깋긽??먠믦
	IJCS1_COMMAND_SET_TEMP_VOLT_POINT,				//0x52	//듏떕돴뱗밺댊맕뚥?귽깛긣먠믦
	IJCS1_COMMAND_SET_HEAD_TEMP=0x60,				//0x60	//긶긞긤돴뱗먠믦
	IJCS1_COMMAND_SELECT_FIRE=0x70,					//0x70	//긲?귽귺멗묖
	IJCS1_COMMAND_SET_FTIME,						//0x71	//볙븫뵯륶뢂딖먠믦
	IJCS1_COMMAND_SET_23PIN_OUTPUT,					//0x72  // 2013.07.11 - khy추가: 23pin 어떤 열의 것을 사용할지 선택.
	IJCS1_COMMAND_SET_ENCODER_ADJUST=0x80,			//0x80	//긄깛긓???뺚맫맕뚥먠믦
	IJCS1_COMMAND_SET_ENCODER_ADJUST_LUT,			//0x81	//긄깛긓???뺚맫맕뚥굂굏굎먠믦
	IJCS1_COMMAND_SELECT_Z_PHASE,					//0x82	//긄깛긓???굖몜럚믦
	IJCS1_COMMAND_SELECT_ENCODER_PHASE_ADJUST,		//0x83	//긄깛긓???뺚맫뢂봥릶빾듂멗묖
	IJCS1_COMMAND_SET_ENCODER_PHASE_ADJUST,			//0x84	//긄깛긓???뺚맫걁뢂봥릶빾듂걂먠믦
	IJCS1_COMMAND_SET_TRIGGER=0x90,					//0x90	//긻?긙긣깏긊?먠믦
	IJCS1_COMMAND_SET_FLUSHING_TRIGER,				//0x91	//긲깋긞긘깛긐긣깏긊?먠믦
	IJCS1_COMMAND_SET_PAGE_TRIGGER_ENABLE,			//0x92	//긻?긙긣깏긊?뾎뚼?뼰뚼먠믦
	IJCS1_COMMAND_SET_FLUSHING_TRIGGER_ENABLE,		//0x93	//긲깋긞긘깛긐긣깏긊?뾎뚼?뼰뚼먠믦
	IJCS1_COMMAND_GENERATE_TRIGGER,					//0x94	//?긲긣긂긃귺긣깏긊?뵯맯
	IJCS1_COMMAND_ACT_FLUSHING,						//0x95	//긲깋긞긘깛긐긣깏긊?뵯맯
	IJCS1_COMMAND_ABORT_PRINT,						//0x96	//덐됪뭷뭚
	IJCS1_COMMAND_ABORT_FLUSHING,					//0x97	//긲깋긞긘깛긐뭷뭚
	IJCS1_COMMAND_SET_AUTO_TRIGER,					//0x98	//긆?긣긣깏긊?먠믦
	IJCS1_COMMAND_AUTO_TRIGGER_RESET,				//0x99	//긆?긣긣깏긊?깏긜긞긣
	IJCS1_COMMAND_INIT_PHASE_FACT=0xa0,				//0xa0	//댧몜똚릶긇긂깛?룊딖뭠먠믦
	IJCS1_COMMAND_SET_PHASEFACT_TRIGGER,			//0xa1	//댧몜똚릶긇긂깛?긣깏긊먠믦
	IJCS1_COMMAND_SET_FLUSH_PHASE_TRIGGER_COUNTER,	//0xa2	//긲깋긞긘깛긐뾭댧몜똶릶긇긂깛?긣깏긊먠믦
	IJCS1_COMMAND_SET_FLUSHING_PARAM=0xb0,			//0xb0	//긲깋긞긘깛긐긬깋긽??먠믦
	IJCS1_COMMAND_SET_FLUSHING_MODE,				//0xb1	//긲깋긞긘깛긐긾?긤먠믦
	IJCS1_COMMAND_SET_FLUSHING_NOZZLE,				//0xb2	//긲깋긞긘깛긐긩긛깑먠믦
	IJCS1_COMMAND_SET_FLUSHING_PATTERN,				//0xb3	//긲깋긞긘깛긐긬??깛먠믦
	IJCS1_COMMAND_SET_FLUSHING_DATA,				//0xb4	//긲깋긞긘깛긐긢??먠믦
	IJCS1_COMMAND_SET_FIRE_ENCODER=0xc0,			//0xc0	//긶긞긤긲?귽귺긄깛긓???빁뢂갂믽?붶먠믦
	IJCS1_COMMAND_SELECT_FIRE_PHASE,				//0xc1	//긶긞긤긲?귽귺긲긃?긛멗묖먠믦
	IJCS1_COMMAND_SET_FIRE_STIME_TYPE,				//0xc2	//긶긞긤긲?귽귺 굍렄듩?귽긵먠믦
	IJCS1_COMMAND_SET_FIRE_STIME_FIXVALUE,			//0xc3	//긶긞긤긲?귽귺 굍렄듩뚂믦뭠먠믦
	IJCS1_COMMAND_SET_FIRE_STIME_CALCVALUE,			//0xc4	//긶긞긤긲?귽귺 굍렄듩뎶럁뭠걁빁뢂갂믽?걂먠믦
	IJCS1_COMMAND_SET_HEAD_DELAY=0xd0,				//0xd0	//긶긞긤긢귻깒귽먠믦
	IJCS1_COMMAND_SET_NOZZLE_DELAY_TIME,			//0xd1	//긩긛깑뭯뎱렄듩먠믦
	IJCS1_COMMAND_SET_IMAGE_INFO=0xe0,				//0xe0	//?몭됪몴륃뺪먠믦
	IJCS1_COMMAND_SET_PRINT_INFO,					//0xe1	//덐됪먠믦
	IJCS1_COMMAND_SET_EXTERNAL_IO=0xf0,				//0xf0	//둖븫괿?굈먠믦
	IJCS1_COMMAND_SET_STB_ORDER,					//0xf1	//굍굎괶룈룜먠믦
	IJCS1_COMMAND_NUM,
};

//?NOP ---------------------------------------------------------------------------
//	IJCS1_COMMAND_DUMY									0x10		// DUMMY
struct st_cmd_dummy {
	DWORD reserved;						//깏긗?긳
};

//?Reset ---------------------------------------------------------------------------
//	IJCS1_COMMAND_RESET									0x11		// Reset
struct st_cmd_reset {
	DWORD reserved;						//깏긗?긳
};

//?Save Parameter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SAVE_PARAM							0x12		// Save Parameter
struct st_cmd_save_nv{
    DWORD target;		//긬깋긽??뺎뫔뫮뤭럚믦걁굎괶괹걂
    DWORD index;		//귽깛긢긞긏긚걁믁돿걂
};

//?Print Start ---------------------------------------------------------------------------
//	IJCS1_COMMAND_PRINT_START							0x13		// Print Start
struct st_cmd_print_start{
	DWORD reserved;						//깏긗?긳
};

//?Set Head Type ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_TYPE							0x20		// 
struct st_cmd_head_type {
	DWORD dbm_id;		//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD nozzle_num;	//긩긛깑몟릶	128,256,512,1024궻릶뭠귩럚믦궢궲궘궬궠궋갃
	DWORD nozzle_row;	//긩긛깑쀱릶	1갌1쀱갂2갌2쀱귩렑궢귏궥갃
	DWORD drive_type;	//뗭벍?귽긵	1갌궼벲뿧뗭벍갂3갌궼3몜뗭벍귩렑궢귏궥갃
	DWORD kmdb_type;	//KMDB롰빶	0:KMDB-S?걁TBD)갂1:KMDB-L?걁TBD)갂2:KMDB-L01A?걁TBD)
};

//?Assing Use Head ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_USE_HEAD						0x21		// Assing Use Head
struct st_cmd_head_use {
	DWORD dbm_id;		//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD head_use;		//긶긞긤럊뾭	0갌븉럊뾭갂1럊뾭귩렑궢귏궥갃
};

//?Assing Flushing Use Head ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_FLUSH_USE_HEAD					0x22		// Assing Flushing Use Head
struct st_cmd_flush_head_use {
	DWORD dbm_id;		//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD row;			//쀱	?괥갌L쀱?괦갌R쀱
	DWORD head_use;		//긶긞긤럊뾭	0갌븉럊뾭갂1럊뾭귩렑궢귏궥갃
};

//?Set Base Wave ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_BASE_WAVE							0x30		// 
struct st_cmd_base_wave {
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	wave_id;		//봥?붥뜂걁괥갌봥?A?괦갌봥?B)
	DWORD	swdev;			//긹?긚봥?빁뒆뗦듩릶귩럚믦궢귏궥갃(1-8)?럚믦궢궫뭠굨궸귝귟댥돷궻swv(n)갂swt(n)귏궳궻먠믦궕뾎뚼궴궶귡갃
	DWORD	swv1;			//뗦듩괦궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt1;			//뗦듩괦궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv2;			//뗦듩괧궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt2;			//뗦듩괧궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv3;			//뗦듩괨궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt3;			//뗦듩괨궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv4;			//뗦듩괪궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt4;			//뗦듩괪궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv5;			//뗦듩괫궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt5;			//뗦듩괫궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv6;			//뗦듩괮궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt6;			//뗦듩괮궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv7;			//뗦듩괯궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt7;			//뗦듩괯궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	swv8;			//뗦듩괰궻밺댊귩 0x00:0V?0x01:OFF밺댊?0x02 : ON밺댊궳럚믦궢귏궥갃
	DWORD	swt8;			//뗦듩괰궻뗦듩렄듩귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
	DWORD	droplet_time;	//Droplet-Time귩1nsec뭁댧궳먠믦궢귏궥갃ex)10.0usec=0x2710
};

//?Set Drive Wave ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_DRIVE_WAVE						0x31		// 
struct st_cmd_drive_wave {
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	level_num;		//둏뮧릶	2?8궻릶뭠귩럚믦궢궲궘궬궠궋갃
	DWORD	sw_sel1;		//봥?멗묖	띍룊궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
							//1:묉덇궻긹?긚봥?멗묖?2:묉볫궻긹?긚봥?멗묖
							//3:묉랳궻긹?긚봥?멗묖?0:멗묖뼰궢
	DWORD	sw_sel2;		//봥?멗묖	괧붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel3;		//봥?멗묖	괨붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel4;		//봥?멗묖	괪붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel5;		//봥?멗묖	괫붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel6;		//봥?멗묖	괮붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel7;		//봥?멗묖	괯붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel8;		//봥?멗묖	괰붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel9;		//봥?멗묖	괱붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel10;		//봥?멗묖	괦괥붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel11;		//봥?멗묖	괦괦붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel12;		//봥?멗묖	괦괧붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel13;		//봥?멗묖	괦괨붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel14;		//봥?멗묖	괦괪붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel15;		//봥?멗묖	괦괫붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	sw_sel16;		//봥?멗묖	괦괮붥뽞궸멗귆긹?긚봥?궻롰쀞귩먠믦궢귏궥갃
	DWORD	img0_num;		//됪몴긢??괥궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃
							//뤵딯봥?멗묖궳먠믦궠귢궫봥?궻궵궞귏궳귩뿕뾭궥귡궔귩럚믦궢귏궥갃걁괥?괦괮귩럚믦걂
							//괥궻궴궖봥?뢯쀍궼뛱귦귢귏궧귪갃
	DWORD	img1_num;		//됪몴긢??괦궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img2_num;		//됪몴긢??괧궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img3_num;		//됪몴긢??괨궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img4_num;		//됪몴긢??괪궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img5_num;		//됪몴긢??괫궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img6_num;		//됪몴긢??괮궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
	DWORD	img7_num;		//됪몴긢??괯궻렄궻봥?뢎뿹댧뭫귩럚믦궢귏궥갃?
};

//?Set Head Voltage ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_VOLT							0x40		// 
struct st_cmd_head_voltage{
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	on_volt_num;	//굈굆밺댊뙿릶걁괦?괰?띍묈괰쀱귩몒믦걂
	DWORD	off_volt_num;	//굈괻괻밺댊뙿릶걁괦?괰?띍묈괰쀱귩몒믦걂
	DWORD	head_on[8];		//古콤On?4000~20000[4.0?20.0V]귏궳궻릶뭠귩럚믦궢귏궥갃1mV뭁댧궳궥갃
	DWORD	head_off[8];	//古콤Off 4000~20000[4.0?20.0V]귏궳궻릶뭠귩럚믦궢귏궥갃1mV뭁댧궳궥갃
};

//?Set Head Nozzle Volt Rate ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_NOZZLE_VOLT_RATE				0x41		// 
struct st_cmd_nozzle_voltage {
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	l_nozzle_num;	//굂쀱빾벍뿦긢??뙿릶걁븉럊뾭궻뤾뜃괥귩먠믦걂
	DWORD	r_nozzle_num;	//굌쀱빾벍뿦긢??뙿릶걁븉럊뾭궻뤾뜃괥귩먠믦걂
	DWORD	l_volt[1024];	//굂쀱빾벍뿦긢??걁띍묈괦괥괧괪뙿걂
	DWORD	r_volt[1024];	//굌쀱빾벍뿦긢??걁띍묈괦괥괧괪뙿걂
};

//?Assign Temp Voltage ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_TEMP_VOLT						0x50		// 
struct st_cmd_temp_volt_ctrl {
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	ctrl;			// 0:맕뚥믠?, 1:맕뚥둎럑
};

//?Set Temp Voltage Parameter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TEMP_VOLT_PARAM					0x51		// 
struct st_cmd_temp_volt_param {
	DWORD	dbm_id;				//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;			//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	head_time;			// 긖??긚?밺댊롦벦뢂딖?걁뭁댧msec걂?50msec?60sec
	DWORD	head_change_max;	// 띍묈밺댊빾돸쀊?걁뭁댧0.01V걂?0.05V?20.00V
};

//?Set Temp Voltage Point ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TEMP_VOLT_POINT					0x52		// 
struct st_curve_para {
	DWORD	head_temp;		// 긶긞긤돴뱗	0걥~60걥귏궳궻릶뭠귩럚믦궢귏궥갃뭁댧궼0.01걥궳궥갃
							//		0?6000궻뭠귩먠믦
							// 겍궫궬궢뙸띪궻뾎뚼똿릶궼0.1걥뭁댧궴궶귟귏궥갃
	DWORD	head_volt; 		// 긶긞긤밺댊똚릶	0.50??1.50?귏궳궻릶뭠귩럚믦궢귏궥갃
							// 뭁댧궼0.01?궳궥갃  50?150귏궳궻뭠귩먠믦
};
struct st_cmd_temp_volt_curve_param {
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	set_num;		//긬깋긽??먠믦릶?2?25
							// 럚믦궢궫뭠굨궸귝귟갂댥돷궻para긢??궻뙿릶궕뾎뚼궴궶귡갃
	st_curve_para para[25];	//?긬깋긽??
};

//?Set Head Temperature ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_TEMP							0x60		// 
struct st_cmd_head_temperature{
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	head_act;		//긶긞긤맕뚥	1갌돴뱗맕뚥궢귏궥갃1댥둖갌돴뱗맕뚥궢귏궧귪갃
	DWORD	head_temp;		//긶긞긤돴뱗	11~55귏궳궻릶뭠귩럚믦궢귏궥갃뭁댧궼1걥궳궥갃
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_FIRE							0x70		// 긲?귽귺멗묖
struct st_cmd_sel_fire {
	DWORD mode;							//0갌A몜뿧궭뤵궕귟갂1갌B몜뿧궭뤵궕귟갂2갌볙븫뵯륶귩뿕뾭
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FTIME								0x71		// 볙븫뵯륶뢂딖먠믦
struct st_cmd_set_ftime {
	DWORD time;							//긲?귽귺뢂딖귩nsec뭁댧궳먠믦궥귡갃?25?820000nsec
};

//?Set Encoder Adjust ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_ADJUST					0x80		// 
struct st_cmd_encoder_adjust{
	DWORD enabler;			//긄깛긓???뺚맫뾎뚼?뼰뚼?괥갌뼰뚼?괦갌뾎뚼
};

//?Set Encoder Adjust LUT ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_ADJUST_LUT				0x81		// 
struct  st_cmd_encoder_lut {
	DWORD adjust_lut;		//긄깛긓???뺚맫굂굏굎
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_Z_PHASE						0x82		// 1-17. 긄깛긓???굖몜럚믦
struct st_cmd_select_zphase {
	DWORD mode;							//긾?긤
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_ENCODER_PHASE_ADJUST			0x83		//긄깛긓???뺚맫뢂봥릶빾듂멗묖 
struct st_cmd_select_encoder_phase_adjust {
	DWORD enable;						//긄깛긓???뺚맫뾎뚼?뼰뚼?괥갌뼰뚼?괦갌뾎뚼
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_PHASE_ADJUST				0x84		// 긄깛긓???뺚맫뢂봥릶빾듂먠믦
struct st_cmd_set_encoder_phase_adjust {
	DWORD adjust_value;					//긄깛긓???뺚맫걁뢂봥릶빾듂걂뺚맫뭠
};

//?Set Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TRIGGER							0x90		// 긻?긙긣깏긊?먠믦
struct st_trigger_select{
	DWORD trigger;			//긣깏긊?럚믦	0갌둖븫긣깏긊?뿧궭뤵궕귟긄긞긙갂
							//				괦갌둖븫긣깏긊?뿧궭돷궕귟긄긞긙갂
							//				괧갌댧몜똶릶긣깏긊?귩렑궢귏궥갃
	DWORD mode;				//긣깏긊?긾?긤?괥갌깗깛긘깈긞긣
							//				?괦갌긆?긣긣깏긊?
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_TRIGER					0x91		// 긲깋긞긘깛긐긣깏긊?먠믦
struct st_cmd_set_flush_trigger {
	DWORD trigger;						//긣깏긊?럚믦?괥갌둖븫긣깏긊?뿧궭뤵궕귟긄긞긙
										//		괦갌둖븫긣깏긊?뿧궭돷궕귟긄긞긙
										//		괧갌댧몜똶릶긇긂깛?긣깏긊?
};

//?Set Page Trigger Enable ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PAGE_TRIGGER_ENABLE				0x92		// 긻?긙긣깏긊?뾎뚼?뼰뚼먠믦
struct st_cmd_trigger_enable{
	DWORD enable;		//긣깏긊?뾎뚼?뼰뚼먠믦?괥갌긣깏긊?뼰뚼?괦갌긣깏긊?뾎뚼
};

//?Set Flushing Trigger Enable ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_TRIGGER_ENABLE			0x93		// 긲깋긞긘깛긐긣깏긊?뾎뚼?뼰뚼먠믦
struct st_cmd_flush_trigger_enable{
	DWORD enable;		//긣깏긊?뾎뚼?뼰뚼먠믦?괥갌긣깏긊?뼰뚼?괦갌긣깏긊?뾎뚼
};

//?Generate Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_GENERATE_TRIGGER						0x94		// ?긲긣긂긃귺긣깏긊?뵯맯
struct st_cmd_manual_trigger{
	DWORD reserved;			//깏긗?긳
};

//?Action Flushing ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ACT_FLUSHING							0x95		// 긲깋긞긘깛긐긣깏긊?뵯맯
struct st_cmd_manual_flush{
	DWORD cntl;			//둎럑갂믠?럚렑?괥갌믠??괦갌둎럑
};

//?Abort Print ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ABORT_PRINT							0x96		// 덐됪뭷뭚
struct st_cmd_abort_print{
	DWORD reserved;						//깏긗?긳
};

//?Abort Print ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ABORT_FLUSHING						0x97		//긲깋긞긘깛긐뭷뭚
struct st_cmd_abort_flush{
	DWORD reserved;						//깏긗?긳
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_AUTO_TRIGER						0x98		// 긆?긣긣깏긊?먠믦
struct st_cmd_set_auto_trigger {
	DWORD repeat;						//똉귟뺅궢릶???괦?괮괫괫괨괮
	DWORD interval;						//긣깏긊?듩둼??괦?괦괥괪괰괫괯괮
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_AUTO_TRIGGER_RESET					0x99		// 긆?긣긣깏긊?깏긜긞긣
struct st_cmd_reset_auto_trigger {
	DWORD cntl;			//깏긜긞긣럚렑륃뺪걁뼟럊뾭걂
};

//?Initial Phase Fact ---------------------------------------------------------------------------
//	IJCS1_COMMAND_INIT_PHASE_FACT						0xa0		// 
struct st_phase_counter_initialize{
	DWORD initial_count;	//댧몜똚릶긇긂깛??룊딖뭠		0~16777215귏궳궻릶뭠귩럚믦궢귏궥갃
};

//?Set Pasefact Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PHASEFACT_TRIGGER					0xa1		// 
struct st_trigger_encoder{ 
	DWORD trigger_id;		//긣깏긊?럚믦		긣깏긊?붥뜂귩럚믦궢귏궥갃괥or괦궳괧롰쀞궻긣깏긊귩먠믦궳궖귏궥갃
	DWORD trigger_mode;		//긣깏긊?럚믦긾?긤		0갌OFF갂1갌UP갂2갌DOWN귩렑궢귏궥갃
	DWORD trigger_count;	//긣깏긊?럚믦긇긂깛??뭠	0~16777215귏궳궻릶뭠귩럚믦궢귏궥갃
};

//?Set Flushing Phase Trigger Counter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSH_PHASE_TRIGGER_COUNTER		0xa2		// 긲깋긞긘깛긐뾭댧몜똶릶긇긂깛?긣깏긊먠믦
struct st_flushtrigger_phase_counter{
	DWORD trigger_id;		//긣깏긊?럚믦		긣깏긊?붥뜂귩럚믦궢귏궥갃괥or괦궳괧롰쀞궻긣깏긊귩먠믦궳궖귏궥갃
	DWORD trigger_mode;		//긣깏긊?럚믦긾?긤		0갌OFF갂1갌UP갂2갌DOWN귩렑궢귏궥갃
	DWORD trigger_count;	//긣깏긊?럚믦긇긂깛??뭠	0~16777215귏궳궻릶뭠귩럚믦궢귏궥갃
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_PARAM				0xb0		// 긲깋긞긘깛긐긬깋긽??먠믦
struct st_cmd_set_flush_param {
	DWORD dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;						//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD count;						//밼뢯됷릶걁됷걂괦?괮괫괫괨괫
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_MODE					0xb1		// 긲깋긞긘깛긐긾?긤먠믦
struct st_cmd_flush_mode {
	DWORD dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;						//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD mode;							//긾?긤?괥갌긲깋긞긘깛긐궢궶궋
										//	?괦갌멣긩긛깑
										//	?괧갌봀댰궻괦긩긛깑걁뚣뢲궻긩긛깑먠믦궻뭠궕뾎뚼걂
										//	?괨갌긬??깛걁뚣뢲궻긬??깛궕뾎뚼걂
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_NOZZLE				0xb2		// 긲깋긞긘깛긐긩긛깑먠믦
struct st_cmd_flush_nozzle {
	DWORD dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;						//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD nozzle;						//긩긛깑붥뜂?괦?괦괥괧괪
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_PATTERN				0xb3		// 긲깋긞긘깛긐긬??깛먠믦
struct st_cmd_flush_pattern {
	DWORD dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;						//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD pattern;						//긬??깛?걁돷댧괦괮긮긞긣뾎뚼걂
	DWORD repeat_bit;					//똉귟뺅궢긮긞긣릶?괦?괦괮
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_DATA				0xb4		// 긲깋긞긘깛긐긢??먠믦
struct st_cmd_flush_data {
	DWORD dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;						//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD data;							//긲깋긞긘깛긐긢???걁괥?괯걂};
};

//?Set Fire Encoder ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_ENCODER						0xc0		// 긶긞긤긲?귽귺긄깛긓???빁뢂갂믽?붶먠믦
struct st_fire_encoder{
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD multiply;			// 믽??n = 0 to 1023  multiply(n+1)
	DWORD divider;			// 빁뢂?n = 0 to 1023  divide (n+1)
};

//?Select Fire Phase ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_FIRE_PHASE						0xc1		// 
struct st_phase_select{
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	use;			//긲긃?긛멗묖??뾎뚼
	DWORD	phase_max;		//띍묈긲긃?긛뭠걁괦?괦괮걂
	DWORD	phase_num;		//멗묖긲긃?긛릶걁괦?괦괮걂?돷딯긲긃?긛멗묖궻뾎뚼뙿릶
	DWORD	phase_sel1;		//괦긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel2;		//괧긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel3;		//괨긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel4;		//괪긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel5;		//괫긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel6;		//괮긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel7;		//괯긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel8;		//괰긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel9;		//괱긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel10;	//괦괥긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel11;	//괦괦긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel12;	//괦괧긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel13;	//괦괨긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel14;	//괦괪긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel15;	//괦괫긚긌긿깛뽞궻긲긃?긛멗묖
	DWORD	phase_sel16;	//괦괮긚긌긿깛뽞궻긲긃?긛멗묖
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_TYPE				0xc2		// 긶긞긤긲?귽귺 굍렄듩?귽긵먠믦
struct st_cmd_fire_stime_type {
	DWORD	dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;					//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	type;						//굍렄듩?귽긵럚믦
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_FIXVALUE			0xc3		// 긶긞긤긲?귽귺 굍렄듩뚂믦뭠먠믦
struct st_cmd_fire_stime_fixvalue {
	DWORD	dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;					//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	time;						//굍렄듩뚂믦뭠
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_CALCVALUE			0xc4		// 긶긞긤긲?귽귺 굍렄듩뎶럁뭠걁빁뢂갂믽?걂먠믦
struct st_cmd_fire_stime_calcvalue {
	DWORD	dbm_id;						//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;					//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	multiply;					// 믽??n = 0 to 1023  multiply(n+1)?겏?1 to 31
	DWORD	divider;					// 빁뢂?n = 0 to 1023  divide (n+1) ?겏?1 to 255
};

//?Set Head Deley ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_DELAY						0xd0		// 긶긞긤긢귻깒귽먠믦
struct st_cmd_head_delay{ 
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	dir;			//뺴뛀럚믦	뺴뛀귩럚믦궢귏궥갃
							//괥or괦궳괧롰쀞궻뺴뛀귩먠믦궳궖귏궥갃
	DWORD	headl_delay;	//긶긞긤L쀱	긢귻깒귽?0~65535귏궳궻릶뭠귩럚믦궢귏궥갃
	DWORD	headl_subpixel;	//긶긞긤L쀱	긖긳긯긏긜깑1/16뭁댧궳럚믦0-15
	DWORD	headr_delay;	//긶긞긤R쀱	긢귻깒귽?0~65535귏궳궻릶뭠귩럚믦궢귏궥갃
	DWORD	headr_subpixel;	//긶긞긤R쀱	긖긳긯긏긜깑1/16뭁댧궳럚믦0-15
};

//?Set Nozzle Deley Time ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_NOZZLE_DELAY_TIME						0xd1		// 긩긛깑뭯뎱렄듩먠믦
struct st_cmd_nozzle_delay{ 
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	l_nozzle_num;	//굂쀱뭯뎱렄듩긢??뙿릶걁븉럊뾭궻뤾뜃괥귩먠믦걂
	DWORD	r_nozzle_num;	//굌쀱뭯뎱렄듩긢??뙿릶걁븉럊뾭궻뤾뜃괥귩먠믦걂
	DWORD	l_delay[1024];	//굂쀱뭯뎱렄듩긢??걁띍묈괦괥괧괪뙿걂
	DWORD	r_delay[1024];	//굌쀱뭯뎱렄듩긢??걁띍묈괦괥괧괪뙿걂
};

//?Set Image Information ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_IMAGE_INFO						0xe0		// ?몭됪몴륃뺪먠믦
struct st_cmd_image_info{
	DWORD	dbm_id;			//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD	kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	depth;			//긽긾깏?궠	됪몴궻긽긾깏?궠?궠귩럚믦궢귏궥갃
							//		됪몴궻bit릶귩럚믦궢귏궥갃
							//		1,2,4귩럚믦궢궲궘궬궠궋갃
	// Delete Y.Musha 2011.10.19
//	DWORD	width;			//됪몴븴	됪몴궻븴걁괦쀱궇궫귟궻긩긛깑릶걂귩럚믦궢귏궥갃
	DWORD	length;			//됪몴뮮궠	됪몴궻뮮궠귩럚믦궢귏궥갃
};

//?Set Print Information ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PRINT_INFO						0xe1		// 덐됪먠믦
struct st_cmd_print_info{
//	DWORD	dbm_id;		//괹괶굃딈붋붥뜂걁괥?괨걂
//	DWORD	kmdb_id;	//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD	mode;		//몂뺴뛀?빿뺴뛀덐됪럚믦?괥갌빿뺴뛀덐됪?괦갌몂뺴뛀덐됪
	DWORD	reserve;	//reserve
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_EXTERNAL_IO					0xf0		// 둖븫괿?굈먠믦
struct st_cmd_external_io {
	DWORD mode;							//둖븫괿?굈먠믦긾?긤
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_STB_ORDER					0xf1		// 굍굎괶룈룜먠믦
struct st_cmd_stb_order {
	DWORD dbm_id;		//괹괶굃딈붋붥뜂걁괥?괨걂
	DWORD kmdb_id;		//굁굃괹괶딈붋붥뜂걁괥?괨걂
	DWORD l_for[3];		//L쀱돑쁇괦?괨몜멗묖??괥갌A몜?괦갌B몜?괧갌C몜
	DWORD l_rev[3];		//L쀱븳쁇괦?괨몜멗묖??괥갌A몜?괦갌B몜?괧갌C몜
	DWORD r_for[3];		//R쀱돑쁇괦?괨몜멗묖??괥갌A몜?괦갌B몜?괧갌C몜
	DWORD r_rev[3];		//R쀱븳쁇괦?괨몜멗묖??괥갌A몜?괦갌B몜?괧갌C몜
};
