; FileName : Yuki.cmd
;------------------------------------------------------------------------------;
;==============================================================================;
; �R�}���h
;==============================================================================;
Command.buffer.Time = 4
;----------------------------[ ���K�E�Z ]----------------------------;

[Command]
  Name    = "2141236X"
  Command = ~D, DB, B, DB, D, DF, F, x
  Time    = 25

[Command]
  Name    = "2141236Y"
  Command = ~D, DB, B, DB, D, DF, F, y
  Time    = 25

[Command]
  Name    = "2363214X"
  Command = ~D, DF, F, DF, D, DB, B, x
  Time    = 25

[Command]
  Name    = "2363214Y"
  Command = ~D, DF, F, DF, D, DB, B, y
  Time    = 25

[Command]
  Name    = "236236X"
  Command = ~D, DF, F, D, DF, F, x
  Time    = 20

[Command]
  Name    = "236236Y"
  Command = ~D, DF, F, D, DF, F, y
  Time    = 20

[Command]
  Name    = "236236Z"
  Command = ~D, DF, F, D, DF, F, z
  Time    = 20

[Command]
  Name    = "214214YC"
  Command = ~D, DB, B, D, DB, B, y+c
  Time    = 20

[Command]
  Name    = "214214XAY"
  Command = ~D, DB, B, D, DB, B, x+a+y
  Time    = 20

[Command]
  Name    = "214214X"
  Command = ~D, DB, B, D, DB, B, x
  Time    = 20

[Command]
  Name    = "214214Y"
  Command = ~D, DB, B, D, DB, B, y
  Time    = 20

[Command]
  Name    = "236236AB"
  Command = ~D, DF, F, D, DF, F, a+b
  Time    = 20

[Command]
  Name    = "236236A"
  Command = ~D, DF, F, D, DF, F, a
  Time    = 20

[Command]
  Name    = "236236B"
  Command = ~D, DF, F, D, DF, F, b
  Time    = 20

[Command]
  Name    = "2363214XZ"
  Command = ~D, DF, F, DF, D, DB, B, x+z
  Time    = 25

;----------------------------[ EX�K�E�Z ]----------------------------;

[Command]
  Name    = "236XY"
  Command = ~D, DF, F, x+y

[Command]
  Name    = "236AB"
  Command = ~D, DF, F, a+b

[Command]
  Name    = "623XY"
  Command = ~F, D, DF, x+y

[Command]
  Name    = "623AB"
  Command = ~F, D, DF, a+b

[Command]
  Name     = "214XY"
  Command = ~D, DB, B, x+y

[Command]
  Name     = "214AB"
  Command = ~D, DB, B, a+b

[Command]
  Name     = "63124AB"
  Command = ~F, DF, D, DB, B, a+b

[Command]
  Name     = "631246XY"
  Command = ~F, DF, D, DB, B, F, x+y
  Time    = 20

[Command]
  Name     = "22XY"
  Command = ~D, D, x+y

[Command]
  Name     = "22AB"
  Command = ~D, D, a+b

;-----------------------------[ �K�E�Z ]-----------------------------;

[Command]
  Name    = "236X"
  Command = ~D, DF, F, x

[Command]
  Name    = "236Y"
  Command = ~D, DF, F, y

[Command]
  Name    = "236A"
  Command = ~D, DF, F, a

[Command]
  Name    = "236B"
  Command = ~D, DF, F, b

[Command]
  Name    = "623X"
  Command = ~F, D, DF, x

[Command]
  Name    = "623Y"
  Command = ~F, D, DF, y

[Command]
  Name    = "623A"
  Command = ~F, D, DF, a

[Command]
  Name    = "623B"
  Command = ~F, D, DF, b

[Command]
  Name     = "214X"
  Command = ~D, DB, B, x

[Command]
  Name     = "214Y"
  Command = ~D, DB, B, y

[Command]
  Name     = "214A"
  Command = ~D, DB, B, a

[Command]
  Name     = "214B"
  Command = ~D, DB, B, b

[Command]
  Name     = "63124A"
  Command = ~F, DF, D, DB, B, a

[Command]
  Name     = "63124B"
  Command = ~F, DF, D, DB, B, b

[Command]
  Name     = "631246X"
  Command = ~F, DF, D, DB, B, F, x
  Time    = 20

[Command]
  Name     = "631246Y"
  Command = ~F, DF, D, DB, B, F, y
  Time    = 20

[Command]
  Name     = "MemoryCardSlash"
  Command = ~D, D, x

[Command]
  Name     = "MemoryCardSlash"
  Command = ~D, D, y

[Command]
  Name     = "MemoryCardSlash"
  Command = ~D, D, a

[Command]
  Name     = "MemoryCardSlash"
  Command = ~D, D, b

[Command]
  Name     = "MemoryCardSlash"
  Command = ~D, D, s

;---------------------------[ �Q�񉟂��Z ]---------------------------;

[Command]
  Name    = "FF"     
  Command = F, F
  Time    = 10

[Command]
  Name    = "BB"     
  Command = B, B
  Time    = 10

;-----------------------[ �Q�E�R�̓��������Z ]---------------------;

[Command]
  Name    = "XAY"
  Command = x+a+y
  Time    = 1

[Command]
  Name    = "YC"
  Command = y+c
  Time    = 1

[Command]
  Name    = "recovery"
  Command = x+y
  Time    = 1

;-----------------------[ �����ƃ{�^���ŏo���Z ]---------------------;

[Command]
  Name    = "6Y"
  Command = /$F,y
  Time    = 1

[Command]
  Name    = "6X"
  Command = /$F,x
  Time    = 1

[Command]
  Name    = "3Y"
  Command = /$DF,y
  Time    = 1

[Command]
  Name    = "4A"
  Command = /$B,a
  Time    = 1

[Command]
  Name    = "6B"
  Command = /$F,b
  Time    = 1

;---------------------[ �{�^���ݒ�(������Ȃ�) ]---------------------;

[Command]
  Name    = "a"
  Command = a
  Time    = 1

[Command]
  Name    = "b"
  Command = b
  Time    = 1

[Command]
  Name    = "c"
  Command = c
  Time    = 1

[Command]
  Name    = "x"
  Command = x
  Time    = 1

[Command]
  Name    = "y"
  Command = y
  Time    = 1

[Command]
  Name    = "z"
  Command = z
  Time    = 1

[Command]
  Name    = "start"
  Command = s
  Time    = 1

;------------------[ �������ςȂ��ݒ�(������Ȃ�) ]------------------;

[Command]
  Name    = "holdfwd"
  Command = /$F
  Time    = 1

[Command]
  Name    = "holdback"
  Command = /$B
  Time    = 1

[Command]
  Name    = "holdup" 
  Command = /$U
  Time    = 1

[Command]
  Name    = "holddown" 
  Command = /$D
  Time    = 1

;--------------------------------------------------------------------;

[Command]
  Name    = "Jump"
  Command = D, $U
  Time    = 12

; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;==============================================================================;
; ���K�E�Z
;==============================================================================;
;--------------------------------------------------------------------;
; ���̕ϐg!�`�F���W�E�A�g�~�b�N�K�C�E�l�I�X
;--------------------------------------------------------------------;
[State -1     : Change Atomic Guy Neos]
  Type       = ChangeState
  Value      = 3400
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "2363214XZ"
  TriggerAll = Var(23) > 0
  TriggerAll = Var(29) >= 480
  TriggerAll = Power >= 3000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; ���h���l�I�W�I����
;--------------------------------------------------------------------;
[State -1     : Choudokyu Neo Geo Ranbu]
  Type       = ChangeState
  Value      = 3300
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "2363214X" || Command = "2363214Y"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;--------------------------------------------------------------------;
; ���h���X�e�[�^�X�A�b�v ver.MAX
;--------------------------------------------------------------------;
[State -1     : Choudokyu Status Up]
  Type       = ChangeState
  Value      = 3010
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236236AB"
  TriggerAll = Power >= 2000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; ���h���X�e�[�^�X�A�b�v
;--------------------------------------------------------------------;
[State -1     : Choudokyu Status Up]
  Type       = ChangeState
  Value      = 3000
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236236A" || Command = "236236B"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;--------------------------------------------------------------------;
; ���h��MAX330���K�r�[��
;--------------------------------------------------------------------;
[State -1     : Choudokyu MAX 330 Mega Beam]
  Type       = ChangeState
  Value      = 3200
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214214XAY" || Command = "214214YC"
  TriggerAll = Power >= 3000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; ���h��100���K�r�[��
;--------------------------------------------------------------------;
[State -1 : Choudokyu 100 Mega Beam]
  Type       = ChangeState
  Value      = 3100
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214214X" || Command = "214214Y"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;==============================================================================;
; �K�E�Z
;==============================================================================;
;--------------------------------------------------------------------;
; ������EX �t�@�C���[�X�[�v���b�N�X�z�[���h
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = Null;ChangeState
  Value      = 2650
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246XY"
  TriggerAll = Var(18) > 0
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX �t�@�C���[�X�[�v���b�N�X�z�[���h
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 2600
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246XY"
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ �t�@�C���[�X�[�v���b�N�X�z�[���h
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 1650
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246X" || Command = "631246Y"
  TriggerAll = Var(18) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; �t�@�C���[�X�[�v���b�N�X�z�[���h
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 1600
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246X" || Command = "631246Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; ������EX SE�EN�EGO�EKU�`��
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou EX]
  Type       = Null;ChangeState
  Value      = 2550
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124AB"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Var(16) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX SE�EN�EGO�EKU�`��
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou EX]
  Type       = ChangeState
  Value      = 2500
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124AB"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ SE�EN�EGO�EKU�`��
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou]
  Type       = ChangeState
  Value      = 1550
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124A" || Command = "63124B"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; SE�EN�EGO�EKU�`��
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou]
  Type       = ChangeState
  Value      = 1500
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124A" || Command = "63124B"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; ������EX �T�u�}�����X�N�����[
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 2150
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623XY"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Power >= 500
  TriggerAll = Var(15) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX �T�u�}�����X�N�����[
;--------------------------------------------------------------------;
[State -1     : Submarine Screw EX]
  Type       = ChangeState
  Value      = 2100
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623XY"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ �T�u�}�����X�N�����[
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 1150
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623X" || Command = "623Y"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Var(15) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; �T�u�}�����X�N�����[
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 1100
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623X" || Command = "623Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; ������EX �r�[�X�g�o�X�^�[
;--------------------------------------------------------------------;
[State -1     : Beast Buster EX]
  Type       = ChangeState
  Value      = 2050
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236XY"
  TriggerAll = Power >= 500
  TriggerAll = Var(14) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX �r�[�X�g�o�X�^�[
;--------------------------------------------------------------------;
[State -1     : Beast Buster EX]
  Type       = ChangeState
  Value      = 2000
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236XY"
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ �r�[�X�g�o�X�^�[
;--------------------------------------------------------------------;
[State -1     : Beast Buster]
  Type       = ChangeState
  Value      = 1050
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType != A
  TriggerAll = Var(14) > 0 || Var(22) > 0
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; �r�[�X�g�o�X�^�[
;--------------------------------------------------------------------;
[State -1     : Beast Buster]
  Type       = ChangeState
  Value      = 1000
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; ������EX ���_��
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 2450
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Var(17) > 0
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])
  Trigger3   = Var(40) > 0

;--------------------------------------------------------------------;
; EX���_��
;--------------------------------------------------------------------;
[State -1     : Lightning Fist EX]
  Type       = ChangeState
  Value      = 2400
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY" || Command = "236XY"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; ������ ���_��
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 1450
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Var(17) > 0 || Var(22) > 0
  TriggerAll = StateType = A
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; ���_��
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 1400
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; ������EX ����
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 2250
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY"
  TriggerAll = (StateNo != 1250) && (StateNo != [2200,2260])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  TriggerAll = Var(14) > 0
  TriggerAll = NumHelper(2260) = 0
  Trigger1   = Ctrl
  Trigger2   = Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; EX ����
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken EX]
  Type       = ChangeState
  Value      = 2200
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY"
  TriggerAll = (StateNo != 1250) && (StateNo != [2200,2260])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ ����
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 1250
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = (StateNo != 1250) && (StateNo != [2200,2260])
  TriggerAll = Var(14) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ����
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 1200
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; EX ���C�f�B���O�q�[���[�i�O���j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 2300
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214AB"
  TriggerAll = (StateNo != [1300,1320]) && (StateNo != 2300)
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = [1,2]
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ ���C�f�B���O�q�[���[�i�O���j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1320
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214A" || Command = "214B"
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%2 = 1
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ���C�f�B���O�q�[���[�i�O���j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1300
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214A" || Command = "214B"
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = 1

;--------------------------------------------------------------------;
; EX ���C�f�B���O�q�[���[�i����j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 2350
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236AB"
  TriggerAll = (StateNo != [1350,1370]) && (StateNo != 2350)
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = [1,2]
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ������ ���C�f�B���O�q�[���[�i����j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1370
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236A" || Command = "236B"
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%2 = 1
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ���C�f�B���O�q�[���[�i����j
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1350
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236A" || Command = "236B"
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = 1

;--------------------------------------------------------------------;
; EX �������[�J�[�h�X���b�V��
;--------------------------------------------------------------------;
[State -1     : Memory Card Slash]
  Type       = ChangeState
  Value      = 2700
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "22XY" || Command = "22AB"
  TriggerAll = (StateNo != 1700) && (StateNo != 2700)
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; �������[�J�[�h�X���b�V��
;--------------------------------------------------------------------;
[State -1     : Memory Card Slash]
  Type       = ChangeState
  Value      = 1700
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "MemoryCardSlash"
  TriggerAll = (StateNo != 1700) && (StateNo != 2700)
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;==============================================================================;
; ��{�s��
;==============================================================================;
;--------------------------------------------------------------------;
; �_�b�V��
;--------------------------------------------------------------------;
[State -1     : Run Fwd]
  Type       = Null;ChangeState
  Value      = 100
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �t�����g�X�e�b�v
;--------------------------------------------------------------------;
[State -1     : Run Fwd]
  Type       = ChangeState
  Value      = 101
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = StateNo = [150,151]
  Trigger2   = Power >= 500

;--------------------------------------------------------------------;
; �o�b�N�X�e�b�v
;--------------------------------------------------------------------;
[State -1     : Run Back]
  Type       = ChangeState
  Value      = 105
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "BB"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �W�����v
;--------------------------------------------------------------------;
[State -1     : Jump]
  Type       = ChangeState
  Value      = 40
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "holdup"
  TriggerAll = StateType != A
  TriggerAll = StateNo != 40
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �t�@�C���[�X�[�v���b�N�X
;--------------------------------------------------------------------;
[State -1     : Fire Suplex]
  Type       = ChangeState
  Value      = 800
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y" && Command = "b"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �ً}����i����j
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 905
  TriggerAll = Var(24) = 0
  TriggerAll = (Command = "x" && Command = "a") || Command = "c"
  TriggerAll = Command = "holdback"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = Var(10)%10 = 2 || StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; �ً}����i�O���j
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 900
  TriggerAll = Var(24) = 0
  TriggerAll = (Command = "x" && Command = "a") || Command = "c"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = Var(10)%10 = 2 || StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; �ӂ��Ƃ΂��U��
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 910
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "z"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; �󒆂ӂ��Ƃ΂��U��
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 920
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "z"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;==============================================================================;
; ����U��
;==============================================================================;
;--------------------------------------------------------------------;
; �{���w��
;--------------------------------------------------------------------;
;--------------------------------------------------------------------;
; �~���[�e�B�V�����R���r�l�[�V����
;--------------------------------------------------------------------;
[State -1     : Mutition Combination]
  Type       = ChangeState
  Value      = 310
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "6X"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;==============================================================================;
; �ʏ�U��
;==============================================================================;
;--------------------------------------------------------------------;
; ������������p���`
;--------------------------------------------------------------------;
[State -1     : Stand Light Punch(Long Range)]
  Type       = ChangeState
  Value      = 200
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �ߋ���������p���`
;--------------------------------------------------------------------;
[State -1     : Stand Light Punch(Short Range)]
  Type       = ChangeState
  Value      = 205
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �������������p���`
;--------------------------------------------------------------------;
[State -1     : Stand Strong Punch(Long Range)]
  Type       = ChangeState
  Value      = 210
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 18
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �ߋ����������p���`
;--------------------------------------------------------------------;
[State -1     : Stand Strong Punch(Short Range)]
  Type       = ChangeState
  Value      = 215
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 18
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; ������������L�b�N
;--------------------------------------------------------------------;
[State -1     : Stand Light Kick(Long Range)]
  Type       = ChangeState
  Value      = 230
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �ߋ���������L�b�N
;--------------------------------------------------------------------;
[State -1     : Stand Light Kick(Short Range)]
  Type       = ChangeState
  Value      = 235
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �������������L�b�N
;--------------------------------------------------------------------;
[State -1     : Standing Strong Kick(Long Range)]
  Type       = ChangeState
  Value      = 240
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 22
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �ߋ����������L�b�N
;--------------------------------------------------------------------;
[State -1     : Standing Strong Kick(Short Range)]
  Type       = ChangeState
  Value      = 245
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 22
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; ���Ⴊ�ݎ�p���`
;--------------------------------------------------------------------;
[State -1     : Crouching Light Punch]
  Type       = ChangeState
  Value      = 400
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; ���Ⴊ�݋��p���`
;--------------------------------------------------------------------;
[State -1     : Crouching Strong Punch]
  Type       = ChangeState
  Value      = 410
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; ���Ⴊ�ݎ�L�b�N
;--------------------------------------------------------------------;
[State -1     : Crouching Light Kick]
  Type       = ChangeState
  Value      = 430
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = StateNo = 430

;--------------------------------------------------------------------;
; ���Ⴊ�݋��L�b�N
;--------------------------------------------------------------------;
[State -1     : Crouching Strong Kick]
  Type       = ChangeState
  Value      = 440
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; �󒆎�p���`
;--------------------------------------------------------------------;
[State -1     : Jump Light Punch]
  Type       = ChangeState
  Value      = 600
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �󒆋��p���`
;--------------------------------------------------------------------;
[State -1     : Jump Strong Punch]
  Type       = ChangeState
  Value      = 610
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �󒆎�L�b�N
;--------------------------------------------------------------------;
[State -1     : Jump Light Kick]
  Type       = ChangeState
  Value      = 630
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �󒆋��L�b�N
;--------------------------------------------------------------------;
[State -1     : Jump Strong Kick]
  Type       = ChangeState
  Value      = 640
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; ����
;--------------------------------------------------------------------;
[State -1     : Taunt]
  Type       = ChangeState
  Value      = 195
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "start"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;==============================================================================;
; �A�g�~�b�N�K�C�E�l�I�X�i�R�}���h�j
;==============================================================================;
;--------------------------------------------------------------------;
; ���K�g���X�p�[�N
;--------------------------------------------------------------------;
[State -1     : MegatonSpark]
  Type       = ChangeState
  Value      = 4800
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "XAY" || Command = "YC"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; �W�����v
;--------------------------------------------------------------------;
[State -1     : Jump]
  Type       = ChangeState
  Value      = 4040
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdup"
  TriggerAll = StateNo != 4040
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; �O�i
;--------------------------------------------------------------------;
[State -1     : Walk]
  Type       = ChangeState
  Value      = 4020
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdfwd"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; ���
;--------------------------------------------------------------------;
[State -1     : Back]
  Type       = ChangeState
  Value      = 4021
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdback"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; �A�g�~�b�N�p���`
;--------------------------------------------------------------------;
[State -1     : AtomicPunch]
  Type       = ChangeState
  Value      = 4200
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "x" || Command = "y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; �A�g�~�b�N�X���C�f�B���O
;--------------------------------------------------------------------;
[State -1     : AtomicSliding]
  Type       = ChangeState
  Value      = 4400
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "a" || Command = "b"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; �A�g�~�b�N�X���b�V��
;--------------------------------------------------------------------;
[State -1     : AtomicSlash]
  Type       = ChangeState
  Value      = 4600
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "x" || Command = "y" || Command = "a" || Command = "b"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

