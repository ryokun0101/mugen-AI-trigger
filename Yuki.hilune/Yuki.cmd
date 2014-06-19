; FileName : Yuki.cmd
;------------------------------------------------------------------------------;
;==============================================================================;
; コマンド
;==============================================================================;
Command.buffer.Time = 4
;----------------------------[ 超必殺技 ]----------------------------;

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

;----------------------------[ EX必殺技 ]----------------------------;

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

;-----------------------------[ 必殺技 ]-----------------------------;

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

;---------------------------[ ２回押し技 ]---------------------------;

[Command]
  Name    = "FF"     
  Command = F, F
  Time    = 10

[Command]
  Name    = "BB"     
  Command = B, B
  Time    = 10

;-----------------------[ ２・３個の同時押し技 ]---------------------;

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

;-----------------------[ 方向とボタンで出す技 ]---------------------;

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

;---------------------[ ボタン設定(いじらない) ]---------------------;

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

;------------------[ 押しっぱなし設定(いじらない) ]------------------;

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

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;SENTI
[State -1, aiforce]
type = VarSet
trigger1 = 1
var(59) = 1

;GUARD
[State -1, Guard]
type = ChangeState
value = 120
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
triggerall = ctrl || (stateno = [20,29]) || (Stateno = [99, 101])
triggerall = !(enemynear, hitdefattr = SCA, AT)
TriggerAll = stateno != 120
trigger1 = inguarddist
trigger1 = enemynear, MoveGuarded = 0
trigger2 = inguarddist
trigger2 = enemynear, numproj || enemynear, numhelper

;MELEE
[State -1, clk]
type = ChangeState
value = ifelse(p2dist X > 35 || random > 200, 430, 400)
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = !(enemynear, hitdefattr = SC, AT)
triggerall = ctrl || (stateno = [20,29]) || (Stateno = [99, 101])
triggerall = enemynear, numproj = 0
triggerall = p2dist X > 10
triggerall = p2dist X < 60
triggerall = random > 200
triggerall = !(enemynear, hitdefattr = SCA, HA, HT, HP)
triggerall = (p2stateno != 131 && p2stateno != 141 && p2stateno != 151)
trigger1 = (!(p2stateno = [120, 159]) && enemynear, vel X = 0) || (enemynear, moveguarded = 0)
trigger2 = (p2statetype = S && enemynear, time > 15 && random % 5 = 0) || ((enemynear, animtime = [-6, -4]) && !inguarddist)

[State -1, clk]
type = ChangeState
value = 430
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = !(enemynear, hitdefattr = SC, AT)
triggerall = enemynear, numproj = 0
triggerall = p2dist X > 10
triggerall = p2dist X < 60
triggerall = random > 200
triggerall = !(enemynear, hitdefattr = SCA, HA, HT, HP)
triggerall = (p2stateno != 131 && p2stateno != 141 && p2stateno != 151)
trigger1 = StateNo = 430
trigger1 = movecontact

[State -1, sj2]
Type = ChangeState
value = 43
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = p2dist X >= 60
trigger1 = stateno = 430
trigger1 = animtime = 0
trigger1 = movecontact || p2dist X < 70
trigger1 = ifelse(moveguarded, random > 100, random > 250)
trigger1 = random % 4 > 0
trigger2 = ctrl || (stateno = [20,29]) || (Stateno = [99, 101])
trigger2 = p2statetype = C
trigger2 = p2dist X < 75

[State -1, air slash]
Type = ChangeState
value = 1500
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = ctrl || (stateno = [20,29]) || (stateno = [99,101])
trigger1 = p2dist X < 130 - enemynear, const(size.attack.dist)* 0.2
trigger1 = p2dist X > 122 - enemynear, const(size.attack.dist)* 0.2
trigger1 = (enemynear, animtime < -25 && !inguarddist && enemynear, vel X < 2)

[State -1, jetpack]
type = ChangeState
value = 1300
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
TriggerAll = StateNo != [1300,1370]
TriggerAll = StateNo != [2300,2360]
Triggerall = (Ctrl && StateType = A) || (Var(10)/10%10 = 1)
trigger1 = ifelse(enemynear, statetype = C, random % 15 = 0, random > 100)
Trigger1 = p2dist x > 15+vel x
Trigger1 = pos y +(vel y*12)+(const(movement.yaccel)*12) > -enemynear, const(size.height)+enemynear, const(size.height)*0.27 +random % 5 + (enemynear, statetype = C)*enemynear, const(size.height) * 0.39
trigger1 = p2dist X < 68+abs(enemynear,animtime / 2)*((enemyNear, vel x)*ifelse(enemynear, p2dist x < 0, -1, 1))

[State -1, jk]
type = ChangeState
value = 630
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
Triggerall = (Ctrl && StateType = A) || (Var(10)/10%10 = 1)
TriggerAll = p2dist x < 79+12*vel x + random % 8
TriggerAll = p2dist x > -25+12*vel x
Triggerall = pos y +(vel y*12)+(const(movement.yaccel)*12) > -enemynear, const(size.height)+enemynear, const(size.height)*0.27 +random % 5 + (enemynear, statetype = C)*enemynear, const(size.height) * 0.39
trigger1 = p2bodydist X <= 24
trigger1 = p2movetype != A

[State -1, air slash]
type = ChangeState
value = 1500
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
TriggerAll = StateType != A
Triggerall = Ctrl || Var(10)%10 = [1,2]
triggerall = enemynear, stateno != [40, 49]
triggerall = enemynear, movetype = A
triggerall = enemynear, statetype = S
triggerall = enemynear, animtime < -30
trigger1 = p2bodydist X < 65 + abs(enemynear,animtime / 2)*((enemyNear, vel x)*ifelse(enemynear, p2dist x < 0, -1, 1))
trigger1 = p2bodydist X > 50 + abs(enemynear,animtime / 2)*((enemyNear, vel x)*ifelse(enemynear, p2dist x < 0, -1, 1))
trigger1 = p2bodydist X > enemyNear, vel x*ifelse(enemynear, p2dist x < 0, -1, 1)

[State -1, lightning net]
type = ChangeState
value = 1400
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
trigger1 = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])
trigger1 = p2dist X < 61+34*vel x + random % 8 + 8*((enemyNear, vel x)*ifelse(enemynear, p2dist x < 0, -1, 1))
trigger1 = enemynear, movetype = A || inguarddist || enemynear, inguarddist || enemynear, animtime < -15 || enemynear, time > 10 || p2bodydist X < 14

[State -1, rising punch]
Type = ChangeState
Value = 1100
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
TriggerAll = StateType != A
Triggerall = Ctrl || Var(10)%10 = [1,2]
trigger1 = p2dist X < 58+10*((enemyNear, vel x)*ifelse(enemynear, p2dist x < 0, -1, 1))
trigger1 = ifelse(enemynear, movetype = A || inguarddist, random > 50, random > 240)
trigger1 = enemynear, statetype = A
trigger1 = enemynear, pos Y < -60-((EnemyNear, vel y)+(enemyNear, const(movement.yaccel)*10))
trigger1 = enemynear, pos Y > -100-((EnemyNear, vel y)+(enemyNear, const(movement.yaccel)*10))
trigger1 = (enemynear, vel X = 0 && enemynear, vel Y > 0) || enemynear, vel X < 0

;RANGE

[State -1, counter wire]
Type = ChangeState
value = 1000
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
TriggerAll = StateType != A
Triggerall = Ctrl || Var(10)%10 = [1,2]
trigger1 = p2dist X > 178
trigger1 = enemynear, numproj < 2
trigger1 = enemynear, time > 14

[State -1, sphere punch]
Type = ChangeState
Value = 1200 
triggerall = 000 + 1
triggerall = var(59) = 1 && alive && roundstate = 2
TriggerAll = Var(24) = 0
TriggerAll = StateType != A
Triggerall = Ctrl || Var(10)%10 = [1,2]
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = enemynear, movetype = H
trigger1 = !inguarddist
trigger1 = p2dist X > 150
trigger1 = p2dist X < 170
  
;SENTI
;==============================================================================;
; 超必殺技
;==============================================================================;
;--------------------------------------------------------------------;
; 合体変身!チェンジ・アトミックガイ・ネオス
;--------------------------------------------------------------------;
[State -1     : Change Atomic Guy Neos]
  Type       = ChangeState
  Value      = 3400 ;SENTI: atomic guy
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "2363214XZ"
  TriggerAll = Var(23) > 0
  TriggerAll = Var(29) >= 480
  TriggerAll = Power >= 3000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; 超ド級ネオジオ乱舞
;--------------------------------------------------------------------;
[State -1     : Choudokyu Neo Geo Ranbu]
  Type       = ChangeState
  Value      = 3300 ;SENTI: ranbu
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "2363214X" || Command = "2363214Y"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;--------------------------------------------------------------------;
; 超ド級ステータスアップ ver.MAX
;--------------------------------------------------------------------;
[State -1     : Choudokyu Status Up]
  Type       = ChangeState
  Value      = 3010 ;SENTI: power up var(22) var(10)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236236AB"
  TriggerAll = Power >= 2000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; 超ド級ステータスアップ
;--------------------------------------------------------------------;
[State -1     : Choudokyu Status Up]
  Type       = ChangeState
  Value      = 3000 ;SENTI: power up
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236236A" || Command = "236236B"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;--------------------------------------------------------------------;
; 超ド級MAX330メガビーム
;--------------------------------------------------------------------;
[State -1     : Choudokyu MAX 330 Mega Beam]
  Type       = ChangeState
  Value      = 3200 ;SENTI: beam
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214214XAY" || Command = "214214YC"
  TriggerAll = Power >= 3000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,6]

;--------------------------------------------------------------------;
; 超ド級100メガビーム
;--------------------------------------------------------------------;
[State -1 : Choudokyu 100 Mega Beam]
  Type       = ChangeState
  Value      = 3100 ;SENTI: beam
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214214X" || Command = "214214Y"
  TriggerAll = Power >= 1000
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = [4,5]

;==============================================================================;
; 必殺技
;==============================================================================;
;--------------------------------------------------------------------;
; 強化版EX ファイヤースープレックスホールド
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = Null;ChangeState
  Value      = 2650 ;SENTI: null
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246XY"
  TriggerAll = Var(18) > 0
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX ファイヤースープレックスホールド
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 2600 ;SENTI: hug wrestler
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246XY"
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 ファイヤースープレックスホールド
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 1650 ;SENTI: hug wrestler var(18)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246X" || Command = "631246Y"
  TriggerAll = Var(18) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ファイヤースープレックスホールド
;--------------------------------------------------------------------;
[State -1     : ]
  Type       = ChangeState
  Value      = 1600 ;SENTI: hug wrestler
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "631246X" || Command = "631246Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; 強化版EX SE・N・GO・KU伝承
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou EX]
  Type       = Null;ChangeState
  Value      = 2550 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124AB"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Var(16) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX SE・N・GO・KU伝承
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou EX]
  Type       = ChangeState
  Value      = 2500 ;SENTI: air slash
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124AB"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou]
  Type       = ChangeState
  Value      = 1550 ;SENTI: air slash var(16) reversal SC, AA
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124A" || Command = "63124B"
  TriggerAll = (StateNo != [1550,1580]) && (StateNo != [2500,2580])
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; SE・N・GO・KU伝承
;--------------------------------------------------------------------;
[State -1     : Sengoku Denshou]
  Type       = ChangeState
  Value      = 1500 ;SENTI: air slash reversal SC, AA
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "63124A" || Command = "63124B"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; 強化版EX サブマリンスクリュー
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 2150 ;SENTI: rising punch var(15)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623XY"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Power >= 500
  TriggerAll = Var(15) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX サブマリンスクリュー
;--------------------------------------------------------------------;
[State -1     : Submarine Screw EX]
  Type       = ChangeState
  Value      = 2100 ;SENTI: rising punch
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623XY"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 サブマリンスクリュー
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 1150 ;SENTI: rising punch var(15)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623X" || Command = "623Y"
  TriggerAll = (StateNo != 1150) && (StateNo != [2100,2150])
  TriggerAll = Var(15) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; サブマリンスクリュー
;--------------------------------------------------------------------;
[State -1     : Submarine Screw]
  Type       = ChangeState
  Value      = 1100 ;SENTI: rising punch hitby AP override
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "623X" || Command = "623Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; 強化版EX ビーストバスター
;--------------------------------------------------------------------;
[State -1     : Beast Buster EX]
  Type       = ChangeState
  Value      = 2050 ;SENTI: counter wire var(14)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236XY"
  TriggerAll = Power >= 500
  TriggerAll = Var(14) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; EX ビーストバスター
;--------------------------------------------------------------------;
[State -1     : Beast Buster EX]
  Type       = ChangeState
  Value      = 2000 ;SENTI: counter wire
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236XY"
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 ビーストバスター
;--------------------------------------------------------------------;
[State -1     : Beast Buster]
  Type       = ChangeState
  Value      = 1050 ;SENTI: counter wire var(14) triple
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType != A
  TriggerAll = Var(14) > 0 || Var(22) > 0
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ビーストバスター
;--------------------------------------------------------------------;
[State -1     : Beast Buster]
  Type       = ChangeState
  Value      = 1000 ;SENTI: counter wire, CLNS hitby AP, override, x light, y strong
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; 強化版EX 雷神拳
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 2450 ;SENTI: lightning net var(17)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Var(17) > 0
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])
  Trigger3   = Var(40) > 0

;--------------------------------------------------------------------;
; EX雷神拳
;--------------------------------------------------------------------;
[State -1     : Lightning Fist EX]
  Type       = ChangeState
  Value      = 2400 ;SENTI: lightning net
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY" || Command = "236XY"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; 強化版 雷神拳
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 1450 ;SENTI: lightning net var(17)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = (StateNo != [1450,1460]) && (StateNo != [2400,2460])
  TriggerAll = Var(17) > 0 || Var(22) > 0
  TriggerAll = StateType = A
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; 雷神拳
;--------------------------------------------------------------------;
[State -1     : Lightning Fist]
  Type       = ChangeState
  Value      = 1400 ;SENTI: lightning net
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  Trigger1   = Ctrl && StateType = A
  Trigger2   = (StateNo = [1300, 1360]) || (StateNo = [2300,2360])

;--------------------------------------------------------------------;
; 強化版EX 爆裂拳
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 2250 ;SENTI: sphere punch var(14) nothitby
  triggerall = var(59) != 1
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
; EX 爆裂拳
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken EX]
  Type       = ChangeState
  Value      = 2200 ;SENTI: sphere punch
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214XY"
  TriggerAll = (StateNo != 1250) && (StateNo != [2200,2260])
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 爆裂拳
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 1250 ;SENTI: sphere punch var(14)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = (StateNo != 1250) && (StateNo != [2200,2260])
  TriggerAll = Var(14) > 0 || Var(22) > 0
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 爆裂拳
;--------------------------------------------------------------------;
[State -1     : Bakuretsu ken]
  Type       = ChangeState
  Value      = 1200 ;SENTI: sphere punch
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214X" || Command = "214Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]

;--------------------------------------------------------------------;
; EX ライディングヒーロー（前方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 2300 ;SENTI: jetpack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214AB"
  TriggerAll = (StateNo != [1300,1320]) && (StateNo != 2300)
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = [1,2]
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 ライディングヒーロー（前方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1320 ;SENTI: jetpack var(16)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214A" || Command = "214B"
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%2 = 1
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ライディングヒーロー（前方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1300 ;SENTI: jetpack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "214A" || Command = "214B"
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = 1

;--------------------------------------------------------------------;
; EX ライディングヒーロー（後方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 2350 ;SENTI: jetpack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236AB"
  TriggerAll = (StateNo != [1350,1370]) && (StateNo != 2350)
  TriggerAll = Power >= 500
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = [1,2]
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; 強化版 ライディングヒーロー（後方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1370 ;SENTI: jetpack var(16)
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236A" || Command = "236B"
  TriggerAll = Var(16) > 0 || Var(22) > 0
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%2 = 1
  Trigger3   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; ライディングヒーロー（後方）
;--------------------------------------------------------------------;
[State -1     : Riding Hero]
  Type       = ChangeState
  Value      = 1350 ;SENTI: jet pack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "236A" || Command = "236B"
  TriggerAll = StateNo != [1300,1370]
  TriggerAll = StateNo != [2300,2360]
  Trigger1   = Ctrl && StateType = A
  Trigger2   = Var(10)/10%10 = 1

;--------------------------------------------------------------------;
; EX メモリーカードスラッシュ
;--------------------------------------------------------------------;
[State -1     : Memory Card Slash]
  Type       = ChangeState
  Value      = 2700 ;SENTI: power up nullified
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "22XY" || Command = "22AB"
  TriggerAll = (StateNo != 1700) && (StateNo != 2700)
  TriggerAll = Power >= 500
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;--------------------------------------------------------------------;
; メモリーカードスラッシュ
;--------------------------------------------------------------------;
[State -1     : Memory Card Slash]
  Type       = ChangeState
  Value      = 1700 ;SENTI: power up var(14)(15)(16)(17)(18) = 420
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "MemoryCardSlash"
  TriggerAll = (StateNo != 1700) && (StateNo != 2700)
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = [1,2]
  Trigger2   = Var(10)%10 = 5 && Var(22) > 0

;==============================================================================;
; 基本行動
;==============================================================================;
;--------------------------------------------------------------------;
; ダッシュ
;--------------------------------------------------------------------;
[State -1     : Run Fwd]
  Type       = Null;ChangeState
  Value      = 100 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; フロントステップ
;--------------------------------------------------------------------;
[State -1     : Run Fwd]
  Type       = ChangeState
  Value      = 101 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = StateNo = [150,151]
  Trigger2   = Power >= 500

;--------------------------------------------------------------------;
; バックステップ
;--------------------------------------------------------------------;
[State -1     : Run Back]
  Type       = ChangeState
  Value      = 105 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "BB"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; ジャンプ
;--------------------------------------------------------------------;
[State -1     : Jump]
  Type       = ChangeState
  Value      = 40 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "holdup"
  TriggerAll = StateType != A
  TriggerAll = StateNo != 40
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; ファイヤースープレックス
;--------------------------------------------------------------------;
[State -1     : Fire Suplex]
  Type       = ChangeState
  Value      = 800 ;SENTI: hug wrestler
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y" && Command = "b"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 緊急回避（後方）
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 905 ;SENTI: guard roll
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = (Command = "x" && Command = "a") || Command = "c"
  TriggerAll = Command = "holdback"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = Var(10)%10 = 2 || StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; 緊急回避（前方）
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 900 ;SENTI: guard roll
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = (Command = "x" && Command = "a") || Command = "c"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = Var(10)%10 = 2 || StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; ふっとばし攻撃
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 910 ;SENTI: guard attack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "z"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = StateNo = [150,151]
  Trigger2   = Power >= 1000

;--------------------------------------------------------------------;
; 空中ふっとばし攻撃
;--------------------------------------------------------------------;
[State -1]
  Type       = ChangeState
  Value      = 920 ;SENTI: guard attack
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "z"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;==============================================================================;
; 特殊攻撃
;==============================================================================;
;--------------------------------------------------------------------;
; 怒号層拳
;--------------------------------------------------------------------;
;--------------------------------------------------------------------;
; ミューティションコンビネーション
;--------------------------------------------------------------------;
[State -1     : Mutition Combination]
  Type       = ChangeState
  Value      = 310 ;SENTI: fwd punch
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "6X"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;==============================================================================;
; 通常攻撃
;==============================================================================;
;--------------------------------------------------------------------;
; 遠距離立ち弱パンチ
;--------------------------------------------------------------------;
[State -1     : Stand Light Punch(Long Range)]
  Type       = ChangeState
  Value      = 200 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 近距離立ち弱パンチ
;--------------------------------------------------------------------;
[State -1     : Stand Light Punch(Short Range)]
  Type       = ChangeState
  Value      = 205 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 遠距離立ち強パンチ
;--------------------------------------------------------------------;
[State -1     : Stand Strong Punch(Long Range)]
  Type       = ChangeState
  Value      = 210 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 18
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 近距離立ち強パンチ
;--------------------------------------------------------------------;
[State -1     : Stand Strong Punch(Short Range)]
  Type       = ChangeState
  Value      = 215 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 18
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 遠距離立ち弱キック
;--------------------------------------------------------------------;
[State -1     : Stand Light Kick(Long Range)]
  Type       = ChangeState
  Value      = 230 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 近距離立ち弱キック
;--------------------------------------------------------------------;
[State -1     : Stand Light Kick(Short Range)]
  Type       = ChangeState
  Value      = 235 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 16
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 遠距離立ち強キック
;--------------------------------------------------------------------;
[State -1     : Standing Strong Kick(Long Range)]
  Type       = ChangeState
  Value      = 240 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X >= 22
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 近距離立ち強キック
;--------------------------------------------------------------------;
[State -1     : Standing Strong Kick(Short Range)]
  Type       = ChangeState
  Value      = 245 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = P2BodyDist X < 22
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; しゃがみ弱パンチ
;--------------------------------------------------------------------;
[State -1     : Crouching Light Punch]
  Type       = ChangeState
  Value      = 400 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; しゃがみ強パンチ
;--------------------------------------------------------------------;
[State -1     : Crouching Strong Punch]
  Type       = ChangeState
  Value      = 410 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; しゃがみ弱キック
;--------------------------------------------------------------------;
[State -1     : Crouching Light Kick]
  Type       = ChangeState
  Value      = 430 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1
  Trigger2   = StateNo = 430

;--------------------------------------------------------------------;
; しゃがみ強キック
;--------------------------------------------------------------------;
[State -1     : Crouching Strong Kick]
  Type       = ChangeState
  Value      = 440 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;--------------------------------------------------------------------;
; 空中弱パンチ
;--------------------------------------------------------------------;
[State -1     : Jump Light Punch]
  Type       = ChangeState
  Value      = 600 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "x"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; 空中強パンチ
;--------------------------------------------------------------------;
[State -1     : Jump Strong Punch]
  Type       = ChangeState
  Value      = 610 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "y"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; 空中弱キック
;--------------------------------------------------------------------;
[State -1     : Jump Light Kick]
  Type       = ChangeState
  Value      = 630 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "a"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; 空中強キック
;--------------------------------------------------------------------;
[State -1     : Jump Strong Kick]
  Type       = ChangeState
  Value      = 640 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "b"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; 挑発
;--------------------------------------------------------------------;
[State -1     : Taunt]
  Type       = ChangeState
  Value      = 195 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) = 0
  TriggerAll = Command = "start"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 1

;==============================================================================;
; アトミックガイ・ネオス（コマンド）
;==============================================================================;
;--------------------------------------------------------------------;
; メガトンスパーク
;--------------------------------------------------------------------;
[State -1     : MegatonSpark]
  Type       = ChangeState
  Value      = 4800 ;SENTI: raging storm
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "XAY" || Command = "YC"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; ジャンプ
;--------------------------------------------------------------------;
[State -1     : Jump]
  Type       = ChangeState
  Value      = 4040 ;SENTI: jump
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdup"
  TriggerAll = StateNo != 4040
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; 前進
;--------------------------------------------------------------------;
[State -1     : Walk]
  Type       = ChangeState
  Value      = 4020 ;SENTI: walk
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdfwd"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; 後退
;--------------------------------------------------------------------;
[State -1     : Back]
  Type       = ChangeState
  Value      = 4021 ;SENTI: back
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "holdback"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;--------------------------------------------------------------------;
; アトミックパンチ
;--------------------------------------------------------------------;
[State -1     : AtomicPunch]
  Type       = ChangeState
  Value      = 4200 ;SENTI: punch
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "x" || Command = "y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; アトミックスライディング
;--------------------------------------------------------------------;
[State -1     : AtomicSliding]
  Type       = ChangeState
  Value      = 4400 ;SENTI: slide
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "a" || Command = "b"
  TriggerAll = StateType != A
  Trigger1   = Ctrl || Var(10)%10 = 9

;--------------------------------------------------------------------;
; アトミックスラッシュ
;--------------------------------------------------------------------;
[State -1     : AtomicSlash]
  Type       = ChangeState
  Value      = 4600 ;SENTI:
  triggerall = var(59) != 1
  TriggerAll = Var(24) > 0
  TriggerAll = Command = "x" || Command = "y" || Command = "a" || Command = "b"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

