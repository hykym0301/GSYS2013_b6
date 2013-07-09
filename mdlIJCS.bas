Attribute VB_Name = "KM"
'#Define MMB_INFO_MAX 16 // システムの最大MMB個?
'#Define DBM_INFO_MAX 4 // MMBに設定される最大DBM個?
'#Define KMDB_INFO_MAX 4 // DBMに設定される最大KMDB個?


'Public Declare Function DLL_Open Lib "D:\LHJ_Work\PI_Alpha_Sys\MainUI\KM_HeadIF\IJCS1_DLL.dll" () As Boolean


Const MMB_INFO_MAX As Integer = 16
Const DBM_INFO_MAX As Integer = 4
Const KMDB_INFO_MAX As Integer = 4

Type ijcs_dbminfo
    k As Integer
End Type

Type st_cmd_dummy
    Reserved As Double '// 예약
End Type

Type st_cmd_reset
    Reserved As Double '// 예약
End Type

Type st_cmd_save_nv
    target As Double '// 파라미터 저장 대상 지정 (TBD)
    Index As Double  '// 위 target마다 인덱스를 지정합니다. (DBM : 0-3 KMDB : 0 ~ 15)
End Type

Type st_cmd_print_start
    Reserved As Double '// 예약
End Type

Type st_cmd_head_type
    dbm_id As Double            '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double           '// KMDB 보드 번호 (0 ~ 3)
    nozzle_num As Double        '// 노즐 총 128,256,512,1024 숫자를 입력하십시오.
    nozzle_row As Double        '// 노즐 열 수 1:1 열 2:2 열을 나타냅니다.
    drive_type As Double        '// 구동 타입 1 : 독립 구동, 3 : 3 상 구동을 보여줍니다.
    KMDB_type As Double         '/ KMDB 종별 0 : KMDB-S01A (TBD)
                                            '1:  KMDB -L01A(TBD)
                                            '2:  KMDB -L02A(TBD)
                                            '3:  KMDB -D01A(TBD)
End Type

Type st_head_use
    dbm_id  As Double   '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    head_use As Double  '// 헤드 사용 0 : 미사용, 1 사용을 보여줍니다.
End Type

Type st_flush_mode
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    row As Double       '// 열 0 : L 열 1 : R 열
                        '(1 열 헤드의 경우 L 열 값이 반영된다)
    enable As Double    '// 활성화 / 비활성화 0 : 플러싱하지 1 : 플러싱한다.

End Type

Type st_cmd_Base_wave
    dbm_id As Double        '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double       '// KMDB 보드 번호 (0 ~ 3)
    wave_id As Double       '// 파형 번호 (0 : 파형 A 1 : 파형 B)
    swdev As Double         '// 기본 파형 분할 구간 수를 지정합니다. (1-8)          지정된 값 n에 의해 다음 swv (n) swt (n)까지의 설정이 유효하다.
    swv1 As Double          '// 구간 1의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt1 As Double          '// 구간 1 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv2 As Double          '// 구간 2의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt2 As Double          '// 구간 2 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv3 As Double          '// 구간 3의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt3 As Double          '// 구간 3 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv4 As Double          '// 구간 4의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt4 As Double          '// 구간 4 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv5 As Double          '// 구간 5의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt5 As Double          '// 구간 5 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv6 As Double          '// 구간 6 전압을 지정. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt6 As Double          '// 구간 6 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv7 As Double          '// 구간 7의 전압을 지정합니다. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt7 As Double          '// 구간 7 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    swv8 As Double          '// 구간 8 전압을 지정. 0x00 : 0V 0x01 : OFF 전압 0x02 : ON 전압
    swt8 As Double          '// 구간 8 구간 시간을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
    droplet_time As Double  '// droplet-time을 1nsec 단위로 설정. ex) 10.0usec = 0x2710
End Type

Type st_cmd_head_wave
    dbm_id As Double        '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double       '// KMDB 보드 번호 (0 ~ 3)
    level_num As Double     '// 계조 수 2-8 숫자를 입력하십시오.
    sw_sel1 As Double       '// 파형 선택 먼저 선택 기준 파형의 종류를 설정합니다. 1 : 첫 번째 기반 파형 선택 2 : 두 번째 기반 파형 선택 3 : 세번째 기반 파형 선택 0 : 선택 없음
    sw_sel2 As Double       '// 파형 선택 두 번째 선택 기준 파형의 종류를 설정합니다.
    sw_sel3 As Double '// 파형 선택 3 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel4 As Double '// 파형 선택 4 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel5 As Double '// 파형 선택 5 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel6 As Double '// 파형 선택 6 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel7 As Double '// 파형 선택 7 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel8 As Double '// 파형 선택 8 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel9 As Double '// 파형 선택 9 번째로 선택 기반 파형의 종류를 설정합니다.
    sw_sel10 As Double '// 파형 선택 10 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel11 As Double '// 파형 선택 11 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel12 As Double '// 파형 선택 12 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel13 As Double '// 파형 선택 13 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel14 As Double '// 파형 선택 14 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel15 As Double '// 파형 선택 15 번째 선정 기준 파형의 종류를 설정합니다.
    sw_sel16 As Double '// 파형 선택 16 번째 선정 기준 파형의 종류를 설정합니다.
    img0_num As Double '// 이미지 데이터 0시의 파형 종료 위치를 지정합니다. 위 파형 선택 설정 된 파형의 어디까지를 사용할지 여부를 지정합니다. (0 ~ 16 지정) 0 일 때 파형 출력되지 않습니다.
    img1_num As Double '// 이미지 데이터 1 시간 파형 종료 위치를 지정합니다.
    img2_num As Double '// 이미지 데이터 2 시간 파형 종료 위치를 지정합니다.
    img3_num As Double '// 이미지 데이터 3 때의 파형 종료 위치를 지정합니다.
    img4_num As Double '// 이미지 데이터 4 시간 파형 종료 위치를 지정합니다.
    img5_num As Double '// 이미지 데이터 5 시간 파형 종료 위치를 지정합니다.
    img6_num As Double '// 이미지 데이터 6 시간 파형 종료 위치를 지정합니다.
    img7_num As Double '// 이미지 데이터 7시 파형 종료 위치를 지정합니다.
End Type

Type st_cmd_head_voltage
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    on_volt_num As Double '// ON 전압 개수 (1 ~ 8 최대 8 열을 상정)
    off_volt_num As Double '// OFF 전압 개수 (1 ~ 8 최대 8 열을 상정)
    head_on(7) As Double '// On 4000 ~ 20000 [4.00 ~ 20.00V] 사이의 숫자를 지정합니다. 1mV 단위입니다. (D01A의 경우 [4.00 ~ 40.00])
    head_off(7) As Double '// Off 4000 ~ 20000 [4.00 ~ 20.00V] 사이의 숫자를 지정합니다. 1mV 단위입니다. (D01A의 경우 [4.00 ~ 40.00])
End Type

Type st_cmd_nozzle_voltage
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    l_nozzle_num As Double '// L 열 변동률 데이터 개수 (미사용의 경우 0으로 설정)
    r_nozzle_num As Double '// R 열 변동률 데이터 개수 (미사용의 경우 0으로 설정)
    l_volt(1023) As Double '// L 열 변동률 데이터 (최대 1024 개)
    r_volt(1023) As Double '// R 열 변동률 데이터 (최대 1024 개)
End Type

Type st_cmd_temp_volt_ctrl
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    ctrl As Double '// 0 : 제어 중지, 1 : 제어 시작
End Type

Type st_cmd_temp_volt_param
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    head_time As Double '// 서미스터 전압 가져주기 (단위 msec) 50msec ~ 60sec
    head_change_max As Double '// 최대 전압 변화량 (단위 0.01V) 0.05V ~ 20.00V
End Type

Type st_curve_para
    head_temp As Double '// 헤드 온도 0 ~ 60 ℃ 사이의 숫자를 지정합니다. 단위는 0.01 ℃. 0 ~ 6000의 값을 설정,  ※ 다만 현재 자릿수는 0.1 ℃ 단위입니다.
    head_volt As Double '// 헤드 전압 계수 0.50 배 ~ 1.50 배 사이의 숫자를 지정합니다. 단위는 0.01 배입니다. 50 ~ 150 사이의 값을 설정
End Type

Type st_cmd_temp_volt_curve_param
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    set_num As Double '// 파라미터 설정 개수 2 ~ 25, 지정된 값 n는 다음 para 데이터의 개수가 유효하다.
    st_curve_para(25) As Double '// 매개 변수
End Type

Type st_cmd_head_temperature
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    head_act As Double '// 헤드 제어 1 : 온도 제어합니다. 1 이외 : 온도 제어하지 않습니다.
    head_temp As Double '// 헤드 온도 15.0 ~ 55.0 사이의 숫자를 지정합니다. 단위는 0.1 ℃입니다.
End Type

Type st_cmd_firesel
    mode As Double '// 0 : A 상 상승, 2 : 내부 발진을 이용 3 : AB 상 양 가장자리를 사용
End Type

Type st_cmd_ftime
    time As Double '// 파이어주기를 nsec 단위로 설정한다. 25 ~ 820000nsec
End Type

Type st_cmd_outfire_select
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    lr  As Double       '// 열 지정 0 : L 열 1 : R 열
End Type

Type st_cmd_encoder_LUT_adjust
    enable As Double '// 인코더 보정 활성화 / 비활성화 0 : 무효 1 : 유효
End Type

''''''Type st_cmd_encoder_LUT
''''''End Type

Type st_cmd_encoder_zphase
    mode  As Double
End Type

Type st_cmd_encoder_phase_adjust
    enable As Double '// 인코더 보정 활성화 / 비활성화 0 : 무효 1 : 유효
End Type

Type st_cmd_encoder_phase_param
    adjust_value As Double '// 인코더 보정 (주파수 변환) 보정 값
End Type

Type st_trigger_select
    trigger As Double   '// 트리거 지정 0 : 외부 트리거 상승 에지, 1 : 외부 트리거 하강 에지, 2 : 위상 계수 카운터 트리거
    mode As Double      '// 트리거 모드 0 : 원샷, 1 : 자동 트리거 - TBD
End Type

Type st_flush_trigger_select
    trigger As Double '// 트리거 지정 0 : 외부 트리거 상승 에지, 1 : 외부 트리거 하강 에지, 2 : 위상 계수 카운터 트리거
End Type

Type st_cmd_trigger_enable
    enable As Double '// 트리거 활성화 / 비활성화 설정 0 : 트리거 비활성화 1 : 트리거 활성화
End Type

Type st_cmd_flush_trigger_enable
    enable As Double '// 트리거 활성화 / 비활성화 설정 0 : 트리거 비활성화 1 : 트리거 활성화
End Type

Type st_cmd_manual_trigger
    Reserved As Double '// 예약
End Type

Type st_cmd_manual_flush_trigger
    Reserved As Double '// 예약
End Type

Type st_cmd_abort_print
    Reserved As Double '// 예약
End Type

Type st_cmd_abort_flush
    Reserved As Double '// 예약
End Type

Type st_autotrigger_param
    repeat As Double '// 반복 수 1 ~ 65536
    Interval As Double '// 트리거 간격 1 ~ 1048576
End Type

Type st_cmd_autotorigger_reset
    cntl As Double '// 리셋 지시 정보
End Type

Type st_phase_counter_initialize
initial_count As Double '// 위상 계수 카운터 초기 값 (0 ~ 16777215)
End Type

Type st_printtrigger_phase_counter
    trigger_id As Double '// 트리거 지정 트리거 번호를 지정합니다. (0-1)
    trigger_mode As Double '// 트리거 지정 모드 0 : OFF, 1 : UP 2 : DOWN을 보여줍니다.
    trigger_count As Double '// 트리거 지정 카운터 값 (0 ~ 16777215)
End Type

Type st_flushrigger_phase_counter
    trigger_id As Double '// 트리거 지정 트리거 번호를 지정합니다. (0-1)
    trigger_mode As Double '// 트리거 지정 모드 0 : OFF, 1 : UP 2 : DOWN을 보여줍니다.
    trigger_count As Double '// 트리거 지정 카운터 값 (0 ~ 16777215)
End Type

Type st_flush_param
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    count As Double '// 토출 횟수 (회) 1 ~ 65535
End Type

''''''''''''''Type st_flush_mode
''''''''''''''    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
''''''''''''''    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
''''''''''''''    mode As Double '// 모드 0 : 정의되지 않음, 1 : 모든 노즐, 2 : 어떤 1 노즐 (아래 노즐 설정 값이 유효), 3 : 패턴 (아래 패턴을 사용)
''''''''''''''End Type

Type st_flush_nozzle
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    nozzle As Double '// 번호 지정 1 ~ 1024
End Type

Type st_flush_pattern
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    pattern As Double '// 패턴 (하위 16 비트 사용)
    repeat_bit As Double '// 반복 비트 1 ~ 16
End Type

Type st_flush_pattern_data
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    Data As Double '// 플러싱 데이터 (0 ~ 7)
End Type

Type st_fire_select
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    multiply As Double  '// 체 n = 1 to 127 multiply
    divider As Double '// 분주 n = 1 to 1023 divide
End Type

Type st_phase_select
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    use As Double '// 위상 선택 기능 활성화
    phase_max As Double '// 최대 위상 값 (1-16)
    phase_num As Double '// 선택 단계 수 (1-16) 아래 단계 선택 사용 개수
    phase_sel1 As Double '// 1 스캔 번째 단계 선택
    phase_sel2 As Double '// 2 검사 번째 단계 선택
    phase_sel3 As Double '// 3 스캔 번째 단계 선택
    phase_sel4 As Double '// 4 스캔 번째 단계 선택
    phase_sel5 As Double '// 5 스캔 번째 단계 선택
    phase_sel6 As Double '// 6 스캔 번째 단계 선택
    phase_sel7 As Double '// 7 스캔 번째 단계 선택
    phase_sel8 As Double '// 8 스캔 번째 단계 선택
    phase_sel9 As Double '// 9 스캔 번째 단계 선택
    phase_sel10 As Double '// 10 검사 번째 단계 선택
    phase_sel11 As Double '// 11 검사 번째 단계 선택
    phase_sel12 As Double '// 12 검사 번째 단계 선택
    phase_sel13 As Double '// 13 검사 번째 단계 선택
    phase_sel14 As Double '// 14 검사 번째 단계 선택
    phase_sel15 As Double '// 15 검사 번째 단계 선택
    phase_sel16 As Double '// 16 검사 번째 단계 선택
End Type

Type st_fire_stime_type
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    type As Double      '// s 시간 유형 지정
End Type

Type st_fire_stime_fixvalue
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    time As Double      '// s 시간 고정 값
End Type

Type st_fire_stime_calcvalue
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    multiply As Double '// 체배 n= 1 to 31 multiply
    divider As Double '// 분주 n = 1 to 255 divide
End Type

Type st_cmd_head_delay
    dbm_id As Double            '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double           '// KMDB 보드 번호 (0 ~ 3)
    dir As Double               '// 방향 지정 방향을 지정합니다. (0-1)
    headl_delay As Double       '// 헤드 L 열 딜레이 0 ~ 65535 사이의 숫자를 지정합니다.
    headl_subpixel As Double    '// 헤드 L 열 서브 픽셀 1 / 16 단위로 지정 (0 ~ 15)
    headr_delay As Double       '// 헤드 R 열 딜레이 0 ~ 65535 사이의 숫자를 지정합니다.
    headr_subpixel As Double    '// 헤드 R 열 서브 픽셀 1 / 16 단위로 지정 (0 ~ 15)
End Type

Type st_cmd_nozzle_delay
    dbm_id As Double '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double '// KMDB 보드 번호 (0 ~ 3)
    l_nozzle_num As Double '// L 열 지연 시간 데이터 개수 (미사용의 경우 0으로 설정)
    r_nozzle_num As Double '// R 열 지연 시간 데이터 개수 (미사용의 경우 0으로 설정)
    l_delay(1023) As Double '// L 열 지연 시간 데이터 (최대 1024 개)
    r_delay(1023) As Double '// R 열 지연 시간 데이터 (최대 1024 개)
End Type

Type st_cmd_image_info
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    depth As Double     '// 메모리 깊이 이미지의 메모리 깊이 깊이를 지정합니다. 이미지의 Bit 수를 지정합니다. 1,2,4을 지정하십시오.
    length As Double    '// 이미지 길이 이미지의 길이를 지정합니다.
End Type

Type st_cmd_image_info2
    mode As Double      '// 양방향 / 단방향 인화 지정 0 : 단방향 인화 1 : 양방향 인화
    Reserved As Double  '// 예약
End Type

Type st_external_io
    mode As Double '// 외부 I / O 설정 모드
End Type

Type st_STB
    dbm_id As Double    '// DBM 보드 번호 (0 ~ 3)
    kmdb_id As Double   '// KMDB 보드 번호 (0 ~ 3)
    l_for(3) As Double  '// L 열 출국 1 ~ 3 단계 선택 0 : A 상 1 : B 상 2 : C 상
    l_rev(3) As Double  '// L 열 돌아 오는 1 ~ 3 단계 선택 0 : A 상 1 : B 상 2 : C 상
    r_for(3) As Double  '// R 열 출국 1 ~ 3 단계 선택 0 : A 상 1 : B 상 2 : C 상
    r_rev(3) As Double  '// R 열 입국 1 ~ 3 단계 선택 0 : A 상 1 : B 상 2 : C 상
End Type






































































Function IJCS1_GetError() As Double
On Error GoTo syserr:
IJCS1_GetError = 0
Exit Function
syserr:
End Function

Function IJCS1_Open() As Boolean
On Error GoTo syserr:

'    If DLL_Open() = True Then
'
'    Else
'
'    End If
    
    'IJCS1_Open = IJCS1_GetError()
Exit Function
syserr:
End Function

Function JCS1_Close() As Boolean
On Error GoTo syserr:
Exit Function
syserr:
End Function

Function JCS1_GetSysInfo() As Boolean
On Error GoTo syserr:
Exit Function
syserr:
End Function
