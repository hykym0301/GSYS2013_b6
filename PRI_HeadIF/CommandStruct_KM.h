// CommandStruct_KM.h:
//
//////////////////////////////////////////////////////////////////////

#pragma once

enum command{
	IJCS1_COMMAND_DUMY	=0x10,						//0x10	//???
	IJCS1_COMMAND_RESET,							//0x11	//リセット
	IJCS1_COMMAND_SAVE_PARAM,						//0x12	//パラメ??保存
	IJCS1_COMMAND_PRINT_START,						//0x13	//印画開始
	IJCS1_COMMAND_SET_HEAD_TYPE=0x20,				//0x20	//ヘッド?イプ設定
	IJCS1_COMMAND_ASSIGN_USE_HEAD,					//0x21	//使用ヘッド指定
	IJCS1_COMMAND_ASSIGN_FLUSH_USE_HEAD,			//0x22	//フラッシング使用ヘッド指定
	IJCS1_COMMAND_SET_BASE_WAVE=0x30,				//0x30	//ベ?ス波?設定
	IJCS1_COMMAND_SET_DRIVE_WAVE,					//0x31	//駆動波?設定
	IJCS1_COMMAND_SET_HEAD_VOLT=0x40,				//0x40	//ヘッド電圧設定
	IJCS1_COMMAND_SET_HEAD_NOZZLE_VOLT_RATE,		//0x41	//ヘッド駆動ノズル電圧変動率設定
	IJCS1_COMMAND_ASSIGN_TEMP_VOLT=0x50,			//0x50	//環境温度電圧制御指定
	IJCS1_COMMAND_SET_TEMP_VOLT_PARAM,				//0x51	//環境温度電圧パラメ??設定
	IJCS1_COMMAND_SET_TEMP_VOLT_POINT,				//0x52	//環境温度電圧制御?イント設定
	IJCS1_COMMAND_SET_HEAD_TEMP=0x60,				//0x60	//ヘッド温度設定
	IJCS1_COMMAND_SELECT_FIRE=0x70,					//0x70	//フ?イア選択
	IJCS1_COMMAND_SET_FTIME,						//0x71	//内部発振周期設定
	IJCS1_COMMAND_SET_ENCODER_ADJUST=0x80,			//0x80	//エンコ???補正制御設定
	IJCS1_COMMAND_SET_ENCODER_ADJUST_LUT,			//0x81	//エンコ???補正制御ＬＵＴ設定
	IJCS1_COMMAND_SELECT_Z_PHASE,					//0x82	//エンコ???Ｚ相指定
	IJCS1_COMMAND_SELECT_ENCODER_PHASE_ADJUST,		//0x83	//エンコ???補正周波数変換選択
	IJCS1_COMMAND_SET_ENCODER_PHASE_ADJUST,			//0x84	//エンコ???補正（周波数変換）設定
	IJCS1_COMMAND_SET_TRIGGER=0x90,					//0x90	//ペ?ジトリガ?設定
	IJCS1_COMMAND_SET_FLUSHING_TRIGER,				//0x91	//フラッシングトリガ?設定
	IJCS1_COMMAND_SET_PAGE_TRIGGER_ENABLE,			//0x92	//ペ?ジトリガ?有効?無効設定
	IJCS1_COMMAND_SET_FLUSHING_TRIGGER_ENABLE,		//0x93	//フラッシングトリガ?有効?無効設定
	IJCS1_COMMAND_GENERATE_TRIGGER,					//0x94	//?フトウェアトリガ?発生
	IJCS1_COMMAND_ACT_FLUSHING,						//0x95	//フラッシングトリガ?発生
	IJCS1_COMMAND_ABORT_PRINT,						//0x96	//印画中断
	IJCS1_COMMAND_ABORT_FLUSHING,					//0x97	//フラッシング中断
	IJCS1_COMMAND_SET_AUTO_TRIGER,					//0x98	//オ?トトリガ?設定
	IJCS1_COMMAND_AUTO_TRIGGER_RESET,				//0x99	//オ?トトリガ?リセット
	IJCS1_COMMAND_INIT_PHASE_FACT=0xa0,				//0xa0	//位相係数カウン?初期値設定
	IJCS1_COMMAND_SET_PHASEFACT_TRIGGER,			//0xa1	//位相係数カウン?トリガ設定
	IJCS1_COMMAND_SET_FLUSH_PHASE_TRIGGER_COUNTER,	//0xa2	//フラッシング用位相計数カウン?トリガ設定
	IJCS1_COMMAND_SET_FLUSHING_PARAM=0xb0,			//0xb0	//フラッシングパラメ??設定
	IJCS1_COMMAND_SET_FLUSHING_MODE,				//0xb1	//フラッシングモ?ド設定
	IJCS1_COMMAND_SET_FLUSHING_NOZZLE,				//0xb2	//フラッシングノズル設定
	IJCS1_COMMAND_SET_FLUSHING_PATTERN,				//0xb3	//フラッシングパ??ン設定
	IJCS1_COMMAND_SET_FLUSHING_DATA,				//0xb4	//フラッシングデ??設定
	IJCS1_COMMAND_SET_FIRE_ENCODER=0xc0,			//0xc0	//ヘッドフ?イアエンコ???分周、逓?比設定
	IJCS1_COMMAND_SELECT_FIRE_PHASE,				//0xc1	//ヘッドフ?イアフェ?ズ選択設定
	IJCS1_COMMAND_SET_FIRE_STIME_TYPE,				//0xc2	//ヘッドフ?イア Ｓ時間?イプ設定
	IJCS1_COMMAND_SET_FIRE_STIME_FIXVALUE,			//0xc3	//ヘッドフ?イア Ｓ時間固定値設定
	IJCS1_COMMAND_SET_FIRE_STIME_CALCVALUE,			//0xc4	//ヘッドフ?イア Ｓ時間演算値（分周、逓?）設定
	IJCS1_COMMAND_SET_HEAD_DELAY=0xd0,				//0xd0	//ヘッドディレイ設定
	IJCS1_COMMAND_SET_NOZZLE_DELAY_TIME,			//0xd1	//ノズル遅延時間設定
	IJCS1_COMMAND_SET_IMAGE_INFO=0xe0,				//0xe0	//?送画像情報設定
	IJCS1_COMMAND_SET_PRINT_INFO,					//0xe1	//印画設定
	IJCS1_COMMAND_SET_EXTERNAL_IO=0xf0,				//0xf0	//外部Ｉ?Ｏ設定
	IJCS1_COMMAND_SET_STB_ORDER,					//0xf1	//ＳＴＢ順序設定
	IJCS1_COMMAND_NUM,
};

//?NOP ---------------------------------------------------------------------------
//	IJCS1_COMMAND_DUMY									0x10		// DUMMY
struct st_cmd_dummy {
	DWORD reserved;						//リザ?ブ
};

//?Reset ---------------------------------------------------------------------------
//	IJCS1_COMMAND_RESET									0x11		// Reset
struct st_cmd_reset {
	DWORD reserved;						//リザ?ブ
};

//?Save Parameter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SAVE_PARAM							0x12		// Save Parameter
struct st_cmd_save_nv{
    DWORD target;		//パラメ??保存対象指定（ＴＢＤ）
    DWORD index;		//インデックス（追加）
};

//?Print Start ---------------------------------------------------------------------------
//	IJCS1_COMMAND_PRINT_START							0x13		// Print Start
struct st_cmd_print_start{
	DWORD reserved;						//リザ?ブ
};

//?Set Head Type ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_TYPE							0x20		// 
struct st_cmd_head_type {
	DWORD dbm_id;		//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD nozzle_num;	//ノズル総数	128,256,512,1024の数値を指定してください。
	DWORD nozzle_row;	//ノズル列数	1：1列、2：2列を示します。
	DWORD drive_type;	//駆動?イプ	1：は独立駆動、3：は3相駆動を示します。
	DWORD kmdb_type;	//KMDB種別	0:KMDB-S?（TBD)、1:KMDB-L?（TBD)、2:KMDB-L01A?（TBD)
};

//?Assing Use Head ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_USE_HEAD						0x21		// Assing Use Head
struct st_cmd_head_use {
	DWORD dbm_id;		//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD head_use;		//ヘッド使用	0：不使用、1使用を示します。
};

//?Assing Flushing Use Head ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_FLUSH_USE_HEAD					0x22		// Assing Flushing Use Head
struct st_cmd_flush_head_use {
	DWORD dbm_id;		//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD row;			//列	?０：L列?１：R列
	DWORD head_use;		//ヘッド使用	0：不使用、1使用を示します。
};

//?Set Base Wave ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_BASE_WAVE							0x30		// 
struct st_cmd_base_wave {
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	wave_id;		//波?番号（０：波?A?１：波?B)
	DWORD	swdev;			//ベ?ス波?分割区間数を指定します。(1-8)?指定した値ｎにより以下のswv(n)、swt(n)までの設定が有効となる。
	DWORD	swv1;			//区間１の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt1;			//区間１の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv2;			//区間２の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt2;			//区間２の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv3;			//区間３の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt3;			//区間３の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv4;			//区間４の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt4;			//区間４の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv5;			//区間５の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt5;			//区間５の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv6;			//区間６の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt6;			//区間６の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv7;			//区間７の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt7;			//区間７の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	swv8;			//区間８の電圧を 0x00:0V?0x01:OFF電圧?0x02 : ON電圧で指定します。
	DWORD	swt8;			//区間８の区間時間を1nsec単位で設定します。ex)10.0usec=0x2710
	DWORD	droplet_time;	//Droplet-Timeを1nsec単位で設定します。ex)10.0usec=0x2710
};

//?Set Drive Wave ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_DRIVE_WAVE						0x31		// 
struct st_cmd_drive_wave {
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	level_num;		//階調数	2?8の数値を指定してください。
	DWORD	sw_sel1;		//波?選択	最初に選ぶベ?ス波?の種類を設定します。
							//1:第一のベ?ス波?選択?2:第二のベ?ス波?選択
							//3:第三のベ?ス波?選択?0:選択無し
	DWORD	sw_sel2;		//波?選択	２番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel3;		//波?選択	３番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel4;		//波?選択	４番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel5;		//波?選択	５番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel6;		//波?選択	６番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel7;		//波?選択	７番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel8;		//波?選択	８番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel9;		//波?選択	９番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel10;		//波?選択	１０番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel11;		//波?選択	１１番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel12;		//波?選択	１２番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel13;		//波?選択	１３番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel14;		//波?選択	１４番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel15;		//波?選択	１５番目に選ぶベ?ス波?の種類を設定します。
	DWORD	sw_sel16;		//波?選択	１６番目に選ぶベ?ス波?の種類を設定します。
	DWORD	img0_num;		//画像デ??０の時の波?終了位置を指定します。
							//上記波?選択で設定された波?のどこまでを利用するかを指定します。（０?１６を指定）
							//０のとき波?出力は行われません。
	DWORD	img1_num;		//画像デ??１の時の波?終了位置を指定します。?
	DWORD	img2_num;		//画像デ??２の時の波?終了位置を指定します。?
	DWORD	img3_num;		//画像デ??３の時の波?終了位置を指定します。?
	DWORD	img4_num;		//画像デ??４の時の波?終了位置を指定します。?
	DWORD	img5_num;		//画像デ??５の時の波?終了位置を指定します。?
	DWORD	img6_num;		//画像デ??６の時の波?終了位置を指定します。?
	DWORD	img7_num;		//画像デ??７の時の波?終了位置を指定します。?
};

//?Set Head Voltage ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_VOLT							0x40		// 
struct st_cmd_head_voltage{
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	on_volt_num;	//ＯＮ電圧個数（１?８?最大８列を想定）
	DWORD	off_volt_num;	//ＯＦＦ電圧個数（１?８?最大８列を想定）
	DWORD	head_on[8];		//ﾍｯﾄﾞOn?4000~20000[4.0?20.0V]までの数値を指定します。1mV単位です。
	DWORD	head_off[8];	//ﾍｯﾄﾞOff 4000~20000[4.0?20.0V]までの数値を指定します。1mV単位です。
};

//?Set Head Nozzle Volt Rate ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_NOZZLE_VOLT_RATE				0x41		// 
struct st_cmd_nozzle_voltage {
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	l_nozzle_num;	//Ｌ列変動率デ??個数（不使用の場合０を設定）
	DWORD	r_nozzle_num;	//Ｒ列変動率デ??個数（不使用の場合０を設定）
	DWORD	l_volt[1024];	//Ｌ列変動率デ??（最大１０２４個）
	DWORD	r_volt[1024];	//Ｒ列変動率デ??（最大１０２４個）
};

//?Assign Temp Voltage ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ASSIGN_TEMP_VOLT						0x50		// 
struct st_cmd_temp_volt_ctrl {
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	ctrl;			// 0:制御停?, 1:制御開始
};

//?Set Temp Voltage Parameter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TEMP_VOLT_PARAM					0x51		// 
struct st_cmd_temp_volt_param {
	DWORD	dbm_id;				//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;			//ＫＭＤＢ基板番号（０?３）
	DWORD	head_time;			// サ??ス?電圧取得周期?（単位msec）?50msec?60sec
	DWORD	head_change_max;	// 最大電圧変化量?（単位0.01V）?0.05V?20.00V
};

//?Set Temp Voltage Point ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TEMP_VOLT_POINT					0x52		// 
struct st_curve_para {
	DWORD	head_temp;		// ヘッド温度	0℃~60℃までの数値を指定します。単位は0.01℃です。
							//		0?6000の値を設定
							// ※ただし現在の有効桁数は0.1℃単位となります。
	DWORD	head_volt; 		// ヘッド電圧係数	0.50??1.50?までの数値を指定します。
							// 単位は0.01?です。  50?150までの値を設定
};
struct st_cmd_temp_volt_curve_param {
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	set_num;		//パラメ??設定数?2?25
							// 指定した値ｎにより、以下のparaデ??の個数が有効となる。
	st_curve_para para[25];	//?パラメ??
};

//?Set Head Temperature ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_TEMP							0x60		// 
struct st_cmd_head_temperature{
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	head_act;		//ヘッド制御	1：温度制御します。1以外：温度制御しません。
	DWORD	head_temp;		//ヘッド温度	11~55までの数値を指定します。単位は1℃です。
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_FIRE							0x70		// フ?イア選択
struct st_cmd_sel_fire {
	DWORD mode;							//0：A相立ち上がり、1：B相立ち上がり、2：内部発振を利用
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FTIME								0x71		// 内部発振周期設定
struct st_cmd_set_ftime {
	DWORD time;							//フ?イア周期をnsec単位で設定する。?25?820000nsec
};

//?Set Encoder Adjust ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_ADJUST					0x80		// 
struct st_cmd_encoder_adjust{
	DWORD enabler;			//エンコ???補正有効?無効?０：無効?１：有効
};

//?Set Encoder Adjust LUT ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_ADJUST_LUT				0x81		// 
struct  st_cmd_encoder_lut {
	DWORD adjust_lut;		//エンコ???補正ＬＵＴ
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_Z_PHASE						0x82		// 1-17. エンコ???Ｚ相指定
struct st_cmd_select_zphase {
	DWORD mode;							//モ?ド
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_ENCODER_PHASE_ADJUST			0x83		//エンコ???補正周波数変換選択 
struct st_cmd_select_encoder_phase_adjust {
	DWORD enable;						//エンコ???補正有効?無効?０：無効?１：有効
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_ENCODER_PHASE_ADJUST				0x84		// エンコ???補正周波数変換設定
struct st_cmd_set_encoder_phase_adjust {
	DWORD adjust_value;					//エンコ???補正（周波数変換）補正値
};

//?Set Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_TRIGGER							0x90		// ペ?ジトリガ?設定
struct st_trigger_select{
	DWORD trigger;			//トリガ?指定	0：外部トリガ?立ち上がりエッジ、
							//				１：外部トリガ?立ち下がりエッジ、
							//				２：位相計数トリガ?を示します。
	DWORD mode;				//トリガ?モ?ド?０：ワンショット
							//				?１：オ?トトリガ?
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_TRIGER					0x91		// フラッシングトリガ?設定
struct st_cmd_set_flush_trigger {
	DWORD trigger;						//トリガ?指定?０：外部トリガ?立ち上がりエッジ
										//		１：外部トリガ?立ち下がりエッジ
										//		２：位相計数カウン?トリガ?
};

//?Set Page Trigger Enable ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PAGE_TRIGGER_ENABLE				0x92		// ペ?ジトリガ?有効?無効設定
struct st_cmd_trigger_enable{
	DWORD enable;		//トリガ?有効?無効設定?０：トリガ?無効?１：トリガ?有効
};

//?Set Flushing Trigger Enable ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_TRIGGER_ENABLE			0x93		// フラッシングトリガ?有効?無効設定
struct st_cmd_flush_trigger_enable{
	DWORD enable;		//トリガ?有効?無効設定?０：トリガ?無効?１：トリガ?有効
};

//?Generate Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_GENERATE_TRIGGER						0x94		// ?フトウェアトリガ?発生
struct st_cmd_manual_trigger{
	DWORD reserved;			//リザ?ブ
};

//?Action Flushing ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ACT_FLUSHING							0x95		// フラッシングトリガ?発生
struct st_cmd_manual_flush{
	DWORD cntl;			//開始、停?指示?０：停??１：開始
};

//?Abort Print ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ABORT_PRINT							0x96		// 印画中断
struct st_cmd_abort_print{
	DWORD reserved;						//リザ?ブ
};

//?Abort Print ---------------------------------------------------------------------------
//	IJCS1_COMMAND_ABORT_FLUSHING						0x97		//フラッシング中断
struct st_cmd_abort_flush{
	DWORD reserved;						//リザ?ブ
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_AUTO_TRIGER						0x98		// オ?トトリガ?設定
struct st_cmd_set_auto_trigger {
	DWORD repeat;						//繰り返し数???１?６５５３６
	DWORD interval;						//トリガ?間隔??１?１０４８５７６
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_AUTO_TRIGGER_RESET					0x99		// オ?トトリガ?リセット
struct st_cmd_reset_auto_trigger {
	DWORD cntl;			//リセット指示情報（未使用）
};

//?Initial Phase Fact ---------------------------------------------------------------------------
//	IJCS1_COMMAND_INIT_PHASE_FACT						0xa0		// 
struct st_phase_counter_initialize{
	DWORD initial_count;	//位相係数カウン??初期値		0~16777215までの数値を指定します。
};

//?Set Pasefact Trigger ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PHASEFACT_TRIGGER					0xa1		// 
struct st_trigger_encoder{ 
	DWORD trigger_id;		//トリガ?指定		トリガ?番号を指定します。０or１で２種類のトリガを設定できます。
	DWORD trigger_mode;		//トリガ?指定モ?ド		0：OFF、1：UP、2：DOWNを示します。
	DWORD trigger_count;	//トリガ?指定カウン??値	0~16777215までの数値を指定します。
};

//?Set Flushing Phase Trigger Counter ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSH_PHASE_TRIGGER_COUNTER		0xa2		// フラッシング用位相計数カウン?トリガ設定
struct st_flushtrigger_phase_counter{
	DWORD trigger_id;		//トリガ?指定		トリガ?番号を指定します。０or１で２種類のトリガを設定できます。
	DWORD trigger_mode;		//トリガ?指定モ?ド		0：OFF、1：UP、2：DOWNを示します。
	DWORD trigger_count;	//トリガ?指定カウン??値	0~16777215までの数値を指定します。
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_PARAM				0xb0		// フラッシングパラメ??設定
struct st_cmd_set_flush_param {
	DWORD dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;						//ＫＭＤＢ基板番号（０?３）
	DWORD count;						//吐出回数（回）１?６５５３５
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_MODE					0xb1		// フラッシングモ?ド設定
struct st_cmd_flush_mode {
	DWORD dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;						//ＫＭＤＢ基板番号（０?３）
	DWORD mode;							//モ?ド?０：フラッシングしない
										//	?１：全ノズル
										//	?２：任意の１ノズル（後述のノズル設定の値が有効）
										//	?３：パ??ン（後述のパ??ンが有効）
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_NOZZLE				0xb2		// フラッシングノズル設定
struct st_cmd_flush_nozzle {
	DWORD dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;						//ＫＭＤＢ基板番号（０?３）
	DWORD nozzle;						//ノズル番号?１?１０２４
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_PATTERN				0xb3		// フラッシングパ??ン設定
struct st_cmd_flush_pattern {
	DWORD dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;						//ＫＭＤＢ基板番号（０?３）
	DWORD pattern;						//パ??ン?（下位１６ビット有効）
	DWORD repeat_bit;					//繰り返しビット数?１?１６
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FLUSHING_DATA				0xb4		// フラッシングデ??設定
struct st_cmd_flush_data {
	DWORD dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;						//ＫＭＤＢ基板番号（０?３）
	DWORD data;							//フラッシングデ???（０?７）};
};

//?Set Fire Encoder ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_ENCODER						0xc0		// ヘッドフ?イアエンコ???分周、逓?比設定
struct st_fire_encoder{
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD multiply;			// 逓??n = 0 to 1023  multiply(n+1)
	DWORD divider;			// 分周?n = 0 to 1023  divide (n+1)
};

//?Select Fire Phase ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SELECT_FIRE_PHASE						0xc1		// 
struct st_phase_select{
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	use;			//フェ?ズ選択??有効
	DWORD	phase_max;		//最大フェ?ズ値（１?１６）
	DWORD	phase_num;		//選択フェ?ズ数（１?１６）?下記フェ?ズ選択の有効個数
	DWORD	phase_sel1;		//１スキャン目のフェ?ズ選択
	DWORD	phase_sel2;		//２スキャン目のフェ?ズ選択
	DWORD	phase_sel3;		//３スキャン目のフェ?ズ選択
	DWORD	phase_sel4;		//４スキャン目のフェ?ズ選択
	DWORD	phase_sel5;		//５スキャン目のフェ?ズ選択
	DWORD	phase_sel6;		//６スキャン目のフェ?ズ選択
	DWORD	phase_sel7;		//７スキャン目のフェ?ズ選択
	DWORD	phase_sel8;		//８スキャン目のフェ?ズ選択
	DWORD	phase_sel9;		//９スキャン目のフェ?ズ選択
	DWORD	phase_sel10;	//１０スキャン目のフェ?ズ選択
	DWORD	phase_sel11;	//１１スキャン目のフェ?ズ選択
	DWORD	phase_sel12;	//１２スキャン目のフェ?ズ選択
	DWORD	phase_sel13;	//１３スキャン目のフェ?ズ選択
	DWORD	phase_sel14;	//１４スキャン目のフェ?ズ選択
	DWORD	phase_sel15;	//１５スキャン目のフェ?ズ選択
	DWORD	phase_sel16;	//１６スキャン目のフェ?ズ選択
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_TYPE				0xc2		// ヘッドフ?イア Ｓ時間?イプ設定
struct st_cmd_fire_stime_type {
	DWORD	dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;					//ＫＭＤＢ基板番号（０?３）
	DWORD	type;						//Ｓ時間?イプ指定
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_FIXVALUE			0xc3		// ヘッドフ?イア Ｓ時間固定値設定
struct st_cmd_fire_stime_fixvalue {
	DWORD	dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;					//ＫＭＤＢ基板番号（０?３）
	DWORD	time;						//Ｓ時間固定値
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_FIRE_STIME_CALCVALUE			0xc4		// ヘッドフ?イア Ｓ時間演算値（分周、逓?）設定
struct st_cmd_fire_stime_calcvalue {
	DWORD	dbm_id;						//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;					//ＫＭＤＢ基板番号（０?３）
	DWORD	multiply;					// 逓??n = 0 to 1023  multiply(n+1)?→?1 to 31
	DWORD	divider;					// 分周?n = 0 to 1023  divide (n+1) ?→?1 to 255
};

//?Set Head Deley ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_HEAD_DELAY						0xd0		// ヘッドディレイ設定
struct st_cmd_head_delay{ 
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	dir;			//方向指定	方向を指定します。
							//０or１で２種類の方向を設定できます。
	DWORD	headl_delay;	//ヘッドL列	ディレイ?0~65535までの数値を指定します。
	DWORD	headl_subpixel;	//ヘッドL列	サブピクセル1/16単位で指定0-15
	DWORD	headr_delay;	//ヘッドR列	ディレイ?0~65535までの数値を指定します。
	DWORD	headr_subpixel;	//ヘッドR列	サブピクセル1/16単位で指定0-15
};

//?Set Nozzle Deley Time ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_NOZZLE_DELAY_TIME						0xd1		// ノズル遅延時間設定
struct st_cmd_nozzle_delay{ 
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	l_nozzle_num;	//Ｌ列遅延時間デ??個数（不使用の場合０を設定）
	DWORD	r_nozzle_num;	//Ｒ列遅延時間デ??個数（不使用の場合０を設定）
	DWORD	l_delay[1024];	//Ｌ列遅延時間デ??（最大１０２４個）
	DWORD	r_delay[1024];	//Ｒ列遅延時間デ??（最大１０２４個）
};

//?Set Image Information ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_IMAGE_INFO						0xe0		// ?送画像情報設定
struct st_cmd_image_info{
	DWORD	dbm_id;			//ＤＢＭ基板番号（０?３）
	DWORD	kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD	depth;			//メモリ?さ	画像のメモリ?さ?さを指定します。
							//		画像のbit数を指定します。
							//		1,2,4を指定してください。
	// Delete Y.Musha 2011.10.19
//	DWORD	width;			//画像幅	画像の幅（１列あたりのノズル数）を指定します。
	DWORD	length;			//画像長さ	画像の長さを指定します。
};

//?Set Print Information ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_PRINT_INFO						0xe1		// 印画設定
struct st_cmd_print_info{
//	DWORD	dbm_id;		//ＤＢＭ基板番号（０?３）
//	DWORD	kmdb_id;	//ＫＭＤＢ基板番号（０?３）
	DWORD	mode;		//双方向?片方向印画指定?０：片方向印画?１：双方向印画
	DWORD	reserve;	//reserve
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_EXTERNAL_IO					0xf0		// 外部Ｉ?Ｏ設定
struct st_cmd_external_io {
	DWORD mode;							//外部Ｉ?Ｏ設定モ?ド
};

//? ---------------------------------------------------------------------------
//	IJCS1_COMMAND_SET_STB_ORDER					0xf1		// ＳＴＢ順序設定
struct st_cmd_stb_order {
	DWORD dbm_id;		//ＤＢＭ基板番号（０?３）
	DWORD kmdb_id;		//ＫＭＤＢ基板番号（０?３）
	DWORD l_for[3];		//L列往路１?３相選択??０：A相?１：B相?２：C相
	DWORD l_rev[3];		//L列復路１?３相選択??０：A相?１：B相?２：C相
	DWORD r_for[3];		//R列往路１?３相選択??０：A相?１：B相?２：C相
	DWORD r_rev[3];		//R列復路１?３相選択??０：A相?１：B相?２：C相
};
