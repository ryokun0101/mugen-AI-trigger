;==============================================================================;
; アトミックガイ・ネオス
;==============================================================================;
;------------------------------------------------------------------------------;
; タイムオーバー（アイ）
;------------------------------------------------------------------------------;
[Statedef 4170]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4170
  SprPriority = -2

;--------------------------------------[ Others ]
[State 4170]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 2
  StateType = A
  Physics   = N

;--------------------------------------[ Sounds ]
[State 4170]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s4170, 0

;--------------------------------------[ Movement ]
[State 4170]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -2.5
  Y        = -4

[State 4170]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 4170]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 4171

;------------------------------------------------------------------------------;
; タイムオーバー（アイ）
;------------------------------------------------------------------------------;
[Statedef 4171]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4171
  SprPriority = -2

;--------------------------------------[ Sounds ]
[State 4171]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s4170, 1

;--------------------------------------[ Movement ]
[State 4171]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;------------------------------------------------------------------------------;
; 勝利分岐（アイ）
;------------------------------------------------------------------------------;
[Statedef 4180]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4180
  SprPriority = -2

;--------------------------------------[ Sounds ]
[State 4180]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = 0, 0

;--------------------------------------[ ChangeState ]
[State 4180]
  Type     = ChangeState
  Trigger1 = RoundState = 4
  Trigger1 = Root,StateNo = [170,172]
  Trigger1 = Var(25) = 0
  Value    = 4170

[State 4180]
  Type       = ChangeState
  TriggerAll = RoundState = 4
  Trigger1   = Root,Win
  Trigger1   = Root,Anim = 181
  Trigger2   = Var(25) = 1
  Trigger2   = Root,Anim = 181
  Value      = 4181

[State 4180]
  Type     = ChangeState
  Trigger1 = RoundState = 2
;  Trigger1 = Root,StateNo != [170,172]
  Trigger1 = Var(25) = 0
  Value    = 4960

;------------------------------------------------------------------------------;
; 勝利動作
;------------------------------------------------------------------------------;
[Statedef 4181]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4181
  SprPriority = -2

;--------------------------------------[ Sounds ]
[State 4181]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = 0, 0

;--------------------------------------[ ChangeState ]
[State 4181]
  Type     = Null;ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; イントロ
;------------------------------------------------------------------------------;
[Statedef 4191]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 10
  Ctrl        = 0
  Anim        = 4191
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4191   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ Variable ]
[State 4191   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

[State 4191   : ]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 25
  Value    = 0

;--------------------------------------[ Sounds ]
[State 4191   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 10
  Value    = s4190, 0

;--------------------------------------[ Movement ]
[State 4191]
  Type     = PosAdd
  Trigger1 = Time = 0
  Y        = -350

[State 4191]
  Type     = VelAdd
  Trigger1 = 1
  Y        = 0.3

;--------------------------------------[ Bracelet ]
[State 4191]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4191]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4193
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 4191]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 4192

;------------------------------------------------------------------------------;
; イントロ，着地
;------------------------------------------------------------------------------;
[Statedef 4192]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4192
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4192   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ Variable ]
[State 4192]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 24
  Value    = 490

;--------------------------------------[ Sounds ]
[State 4192   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s40, 3

;--------------------------------------[ Bracelet ]
[State 4192]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4192]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4194
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 4192]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4000

;------------------------------------------------------------------------------;
; 立ち状態
;------------------------------------------------------------------------------;
[Statedef 4000]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 1
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4000   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4000   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4000   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 4000]
  Type     = RemoveExplod
  Trigger1 = Anim != 4000
;  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4000]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Anim        = 4001
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeAnim ]
[State 4000]
  Type     = ChangeAnim
  Trigger1 = Anim != 4000
  Value    = 4000

;--------------------------------------[ Turn ]
[State 4000]
  Type     = ChangeAnim
  Trigger1 = P2Dist X < 0
  Value    = 4000

[State 4000]
  Type     = RemoveExplod
  Trigger1 = P2Dist X < 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4000]
  Type     = Turn
  Trigger1 = P2Dist X < 0

;--------------------------------------[ Movement ]
[State 4000]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 4000]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = 0

[State 4000] ;Stop moving if low velocity or 4 ticks pass
  Type     = VelSet
  Trigger1 = Abs(Vel X) < 2
  Trigger2 = Time = 4
  X        = 0

;--------------------------------------[ ChangeState ]
[State 4000] ;Are you dead?
  Type     = ChangeState
  Trigger1 = !Alive
  Value    = 5050

[State 4000]
  Type     = DestroySelf
  Trigger1 = IsHelper
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 4000 : 変身解除]
  Type     = ChangeState
  Trigger1 = Var(24) <= 1
  Trigger2 = Command = "BB"
  Value    = 4900

;------------------------------------------------------------------------------;
; 前進
;------------------------------------------------------------------------------;
[Statedef 4020]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4020
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4020   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4020   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4020   : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 9
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 4020]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4020]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Anim        = 4025
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 4020]
  Type     = VelSet
  Trigger1 = 1
  X        = 2.5

;--------------------------------------[ ChangeState ]
[State 4020 : 変身解除]
  Type     = ChangeState
  Trigger1 = Var(24) <= 1
  Trigger2 = Command = "BB"
  Value    = 4900

[State 4020 : 立ち状態]
  Type     = ChangeState
  Trigger1 = Command != "holdfwd"
  Value    = 4000

;------------------------------------------------------------------------------;
; 後退
;------------------------------------------------------------------------------;
[Statedef 4021]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4021
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4021   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4021   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4021   : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 9
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 4021]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4021]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Anim        = 4026
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 4021]
  Type     = VelSet
  Trigger1 = 1
  X        = -2.5

;--------------------------------------[ ChangeState ]
[State 4021 : 変身解除]
  Type     = ChangeState
  Trigger1 = Var(24) <= 1
  Trigger2 = Command = "BB"
  Value    = 4900

[State 4021 : 立ち状態]
  Type     = ChangeState
  Trigger1 = Command != "holdback"
  Value    = 4000

;------------------------------------------------------------------------------;
; ジャンプ開始動作
;------------------------------------------------------------------------------;
[Statedef 4040]
  Type        = S
  Physics     = S
  Anim        = 4040
  Ctrl        = 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4040   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4040   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4040   : 垂直ジャンプ用]
  Type      = VarSet
  Trigger1  = Time = 0
  sysvar(1) = 0

[State 4040   : 前方ジャンプ用]
  Type      = VarSet
  Trigger1  = Command = "holdfwd"
  sysvar(1) = 1

[State 4040   : 後方ジャンプ用]
  Type      = VarSet
  Trigger1  = Command = "holdback"
  sysvar(1) = -1

;--------------------------------------[ Movement ]
[State 4040   : 通常ジャンプ]
  Type     = VelSet
  Trigger1 = AnimTime = 0
  X = IfElse(sysvar(1)=0, const(velocity.jump.neu.x), IfElse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
  Y = const(velocity.jump.y)

;--------------------------------------[ Bracelet ]
[State 4040]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4040]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4040
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 4040]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4050
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ジャンプ中動作
;------------------------------------------------------------------------------;
[Statedef 4050]
  Type    = A
  Physics = N
  Anim    = 4041
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4050   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4050   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4050]
  Type      = VarSet
  Trigger1  = Time = 0
  sysvar(1) = 0

;--------------------------------------[ Sounds ]
[State 4050]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s40, 1

[State 4050]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 4050]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4050]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4042
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 4050 : 着地]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 4052

;------------------------------------------------------------------------------;
; 着地
;------------------------------------------------------------------------------;
[Statedef 4052]
  Type    = S
  Physics = S
  Ctrl    = 0
  Anim    = 4047
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4052   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4052   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Sounds ]
[State 4052]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s40, 3

;--------------------------------------[ Movement ]
[State 4052]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = 0

[State 4052]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 4052]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4052]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4048
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 4052]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4000

;------------------------------------------------------------------------------;
; アトミックパンチ
;------------------------------------------------------------------------------;
[Statedef 4200]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4200
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4200   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4200   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4200   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 4200   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 4200]
  Type     = VarAdd
  Trigger1 = Time = 0
  V        = 24
  Value    = -10

;--------------------------------------[ Sounds ]
[State 4200]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s4200, 0

[State 4200]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 7

;--------------------------------------[ Bracelet ]
[State 4200]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4205
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ TagetBind ]
[State 4200]
  Type     = TargetState
  Trigger1 = MoveHit = 1
  Value    = 2030

;--------------------------------------[ Hit Definition ]
[State 4200]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,80,90)*FVar(5)), Ceil(IfElse(Var(3)=0,80,90)*FVar(5))
  GetPower         = 0,0
  GivePower        = 10,20
  AnimType         = Up
  HitFlag          = MAFLD
  GuardFlag        = N
  Priority         = 7, Hit
  PauseTime        = 20, 12
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = Low
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -4, -3
  Air.Type         = Low
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Fall             = 1
  Fall.Recover     = 0
  EnvShake.Time    = 15
  EnvShake.Ampl    = -7
  EnvShake.Freq    = 92
  EnvShake.Phase   = 92
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0
  Down.CornerPush.VelOff   = 0

;--------------------------------------[ ChangeState ]
[State 4200]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4000

;------------------------------------------------------------------------------;
; アトミックスライディング
;------------------------------------------------------------------------------;
[Statedef 4400]
  Type        = C
  MoveType    = A
  Physics     = C
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4400
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4400   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4400   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4400   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 4400   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 4400]
  Type     = VarAdd
  Trigger1 = Time = 0
  V        = 24
  Value    = -10

;--------------------------------------[ Sounds ]
[State 4400]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s4400, 0

[State 4400]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 8

;--------------------------------------[ Bracelet ]
[State 4400]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 4400]
  Type        = Explod
  Trigger1    = MoveHit
  Anim        = 7040
  Pos         = 80, -50
  PosType     = P1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 4400]
  Type        = Explod
  Trigger1    = MoveHit
  Anim        = 7045
  Pos         = 80, -50
  PosType     = P1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Movement ]
[State 4400]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 7

;--------------------------------------[ Hit Definition ]
[State 4400]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = C, HA
  Damage           = Ceil(IfElse(Var(3)=0,80,90)*FVar(5)), Ceil(IfElse(Var(3)=0,80,90)*FVar(5))
  GetPower         = 0,0
  GivePower        = 10,20
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = N
  Priority         = 7, Hit
  PauseTime        = 20, 12
  SparkNo          = -1
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1505, 0
  GuardSound       = s120, 1
  Ground.Type      = Low
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -2.5, -7
  Air.Type         = Low
  Air.HitTime      = 12
  Air.Velocity     = -2.5, -7
  Fall             = 1
  Fall.Recover     = 0
  EnvShake.Time    = 15
  EnvShake.Ampl    = -7
  EnvShake.Freq    = 92
  EnvShake.Phase   = 92
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0
  Down.CornerPush.VelOff   = 0

;--------------------------------------[ ChangeState ]
[State 4400]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4000

;------------------------------------------------------------------------------;
; アトミックスラッシュ
;------------------------------------------------------------------------------;
[Statedef 4600]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 4600
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4600   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4600   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4600   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 4600]
  Type     = VarAdd
  Trigger1 = Time = 0
  V        = 24
  Value    = -10

;--------------------------------------[ Sounds ]
[State 4600]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s4200, 1

[State 4600]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 1

;--------------------------------------[ Bracelet ]
[State 4600]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4605
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 4600]
  Type        = Explod
  Trigger1    = MoveHit
  Anim        = 7040
  Pos         = 70, -90
  PosType     = P1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 4600]
  Type        = Explod
  Trigger1    = MoveHit
  Anim        = 7045
  Pos         = 70, -90
  PosType     = P1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Movement ]
[State 4600]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Hit Definition ]
[State 4600]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,80,90)*FVar(5)), Ceil(IfElse(Var(3)=0,80,90)*FVar(5))
  GetPower         = 0,0
  GivePower        = 10,20
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = N
  Priority         = 7, Hit
  PauseTime        = 20, 12
  SparkNo          = -1
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1505, 0
  GuardSound       = s120, 1
  Ground.Type      = Low
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -2.5, -6
  Air.Type         = Low
  Air.HitTime      = 12
  Air.Velocity     = -2.5, -6
  Fall             = 1
  Fall.Recover     = 0
  EnvShake.Time    = 15
  EnvShake.Ampl    = -7
  EnvShake.Freq    = 92
  EnvShake.Phase   = 92
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0
  Down.CornerPush.VelOff   = 0

;--------------------------------------[ ChangeState ]
[State 4600]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 4052

;------------------------------------------------------------------------------;
; メガトンスパーク
;------------------------------------------------------------------------------;
[Statedef 4800]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4800
  SprPriority = 1

;--------------------------------------[ Others ]
[State 4800   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4800   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AA,AP
  Time     = 1

;--------------------------------------[ Variable ]
[State 4800   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  Trigger1 = HitPauseTime = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 4800   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 4800]
  Type     = VarAdd
  Trigger1 = Time = 0
  V        = 24
  Value    = -200

;--------------------------------------[ Sounds ]
[State 4800]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s4200, 0

[State 4800]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1405, 0

;--------------------------------------[ Bracelet ]
[State 4800]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 4800]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 4805
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 4800]
  Type             = HitDef
  Trigger1         = HitCount <= 8
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(5)), Ceil(IfElse(Var(3)=0,60,70)*FVar(5))
  GetPower         = 0,0
  GivePower        = 10,20
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = N
  Priority         = 7, Hit
  PauseTime        = 2, 3
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -30, -60
  HitSound         = s1405, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 22
  Ground.HitTime   = 22
  Ground.Velocity  = -0.5, -7.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -0.5, -7.5
  Fall             = 1
  Fall.Recover     = 0
  EnvShake.Time    = 15
  EnvShake.Ampl    = -7
  EnvShake.Freq    = 92
  EnvShake.Phase   = 92
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0
  Down.CornerPush.VelOff   = 0

;--------------------------------------[ ChangeState ]
[State 4800]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4000

;------------------------------------------------------------------------------;
; 変身終了（ユウキ）
;------------------------------------------------------------------------------;
[Statedef 4900]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4900
  SprPriority = 1

;--------------------------------------[ Other ]
[State 4900   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 4900   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 4900]
  Type     = PalFx
  Trigger1 = AnimElem = 8, = 0
  Time     = 2
  Add      = 255,255,255
  Mul      = 224,224,224

[State 4900]
  Type     = PalFx
  Trigger1 = AnimElem = 8, = 2
  Time     = 2
  Add      = 208,208,208
  Mul      = 232,232,232

[State 4900]
  Type     = PalFx
  Trigger1 = AnimElem = 8, = 4
  Time     = 2
  Add      = 160,160,160
  Mul      = 240,240,240

[State 4900]
  Type     = PalFx
  Trigger1 = AnimElem = 8, = 6
  Time     = 2
  Add      = 112,112,112
  Mul      = 248,248,248

[State 4900]
  Type     = PalFx
  Trigger1 = AnimElem = 8, = 8
  Time     = 2
  Add      = 64,64,64
  Mul      = 256,256,256

;--------------------------------------[ Variable ]
[State 4900]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 24
  Value    = 0

[State 4900]
  Type     = VarSet
  Trigger1 = !Enemy,Alive
  V        = 25
  Value    = 1

;--------------------------------------[ Bracelet ]
[State 4900]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 4900]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = 0, 0

;--------------------------------------[ Helper ]
[State 4900]
  Type       = Helper
  Trigger1   = AnimElem = 8
  Name       = "ai"
  StateNo    = 4950
  ID         = 4900
  Pos        = -40, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]

[State 4900]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 変身終了（アイ）
;------------------------------------------------------------------------------;
[Statedef 4950]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4950
  SprPriority = -2

;--------------------------------------[ Others ]
[State 4950]
  Type     = PalFx
  Trigger1 = Time = 2
  Trigger1 = Anim = 4950
  Time     = 2
  Add      = 255,255,255
  Mul      = 224,224,224

[State 4950]
  Type     = PalFx
  Trigger1 = Time = 2
  Trigger1 = Anim = 4950
  Time     = 2
  Add      = 208,208,208
  Mul      = 232,232,232

[State 4950]
  Type     = PalFx
  Trigger1 = Time = 4
  Trigger1 = Anim = 4950
  Time     = 2
  Add      = 160,160,160
  Mul      = 240,240,240

[State 4950]
  Type     = PalFx
  Trigger1 = Time = 6
  Trigger1 = Anim = 4950
  Time     = 2
  Add      = 112,112,112
  Mul      = 248,248,248

[State 4950]
  Type     = PalFx
  Trigger1 = Time = 8
  Trigger1 = Anim = 4950
  Time     = 2
  Add      = 64,64,64
  Mul      = 256,256,256

;--------------------------------------[ ChangeState ]
[State 4950]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4180

;------------------------------------------------------------------------------;
; 離脱（アイ）
;------------------------------------------------------------------------------;
[Statedef 4960]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 4960
  SprPriority = -2

;--------------------------------------[ Others ]
[State 4960]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 3
  StateType = A
  Physics   = N

;--------------------------------------[ Sounds ]
[State 4960]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s40, 1

;--------------------------------------[ Movement ]
[State 4960]
  Type     = VelSet
  Trigger1 = AnimElem = 3
  X        = -10
  Y        = -6.5

[State 4960]
  Type     = VelAdd
  Trigger1 = AnimElem = 3, >= 0
  Y        = 0.3

;--------------------------------------[ ChangeState ]
[State 4960]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]



