; FileName : EX.st
;==============================================================================;
; EX必殺技
;==============================================================================;

;------------------------------------------------------------------------------;
; EX ビーストバスター
;------------------------------------------------------------------------------;
[Statedef 2000]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2000
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2000]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2000]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2000   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2000   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1000, 0
  Channel  = 4

[State 2000   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s1005, 0

;--------------------------------------[ Bracelet ]
[State 2000]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2000]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2005
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2000]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1035
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 2000]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1045
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 2000   : EX]
  Type       = Helper
  Trigger1   = AnimElem = 6
  Name       = "EX_BeastBuster"
  StateNo    = 2010
  ID         = 2000
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2000]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX ビーストバスター（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 2010]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2010
  SprPriority = 2

;--------------------------------------[ Others ]
[State 2010   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 2010]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

;--------------------------------------[ Variable ]
[State 2010   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Movement ]
[State 2010]
  Type     = VelSet
  Trigger1 = Time = 2
  X        = 15

;--------------------------------------[ Hit Definition ]
[State 2010]
  Type             = HitDef
  TriggerAll       = Time = 2
  Trigger1         = Root,Var(11) < 10
  Trigger2         = Root,Var(22) > 0
  Attr             = A, HP
  Damage           = Ceil(IfElse(Root,Var(3)=0,40,50)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 0, 8
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -85
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -6, -4.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -6, -4.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  P2Facing         = 1

;--------------------------------------[ TagetBind ]
[State 2010]
  Type     = TargetState
  Trigger1 = MoveHit
  Value    = 2030
  Persistent = 0

;--------------------------------------[ ChangeState ]
[State 2010]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 2010]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; EX ビーストバスター（やられ１）
;------------------------------------------------------------------------------;
[Statedef 2030]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -1

;--------------------------------------[ Others ]
[State 2030]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

;--------------------------------------[ ChangeAnim ]
[State 2030]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 2030

;--------------------------------------[ Movement ]
[State 2030]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = -5.5
  Y        = -3.5

[State 2030]
  Type     = VelAdd
  Trigger1 = Time >= 4
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 2030]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2035

;------------------------------------------------------------------------------;
; EX ビーストバスター（やられ２）
;------------------------------------------------------------------------------;
[Statedef 2035]
  Type        = L
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = -5, 0
  SprPriority = -1

;--------------------------------------[ ChangeAnim ]
[State 2035]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 2035

;--------------------------------------[ Movement ]
[State 2035]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 2035]
  Type     = VelAdd
  Trigger1 = Time >= 0
  X        = 0.125

[State 2035]
  Type     = VelSet
  Trigger1 = Vel X >= 0
  X        = 0

;--------------------------------------[ ChangeState ]
[State 2035]
  Type     = SelfState
  Trigger1 = AnimTime = 0
  Trigger1 = Alive
  Value    = 5120

[State 2035]
  Type     = SelfState
  Trigger1 = AnimTime = 0
  Trigger1 = !Alive
  Value    = 5150

;------------------------------------------------------------------------------;
; 強化版EX ビーストバスター
;------------------------------------------------------------------------------;
[Statedef 2050]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2050
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2050]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2050]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2050   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2050   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 4
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 2050]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 14
  Value    = 0
  IgnoreHitPause = 1

[State 2050]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 2050   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1000, 0
  Channel  = 4

[State 2050   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s1005, 0

;--------------------------------------[ Bracelet ]
[State 2050]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2050]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2015
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2050]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1035
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 2050]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1045
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 2050   : ]
  Type       = Helper
  Trigger1   = AnimElem = 6
  Name       = "S-EX_BeastBuster"
  StateNo    = 2060
  ID         = 2050
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2050]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX ビーストバスター（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 2060]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2060
  SprPriority = 2

;--------------------------------------[ Others ]
[State 2060]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 2060]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

;--------------------------------------[ Variable ]
[State 2060   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Movement ]
[State 2060]
  Type     = VelSet
  Trigger1 = Time = 2
  X        = 20

;--------------------------------------[ Hit Definition ]
[State 2060]
  Type             = HitDef
  Trigger1         = Time = 2
  Attr             = A, HP
  Damage           = Ceil(IfElse(Root,Var(3)=0,60,70)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 0, 3
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -85
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -4, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  P2StateNo        = 2080

;--------------------------------------[ ChangeState ]
[State 2060]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 2060]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強化版EX ビーストバスター（やられ）
;------------------------------------------------------------------------------;
[Statedef 2080]
  Type     = A
  MoveType = H
  Physics  = N
  VelSet   = 0,0

;--------------------------------------[ ChangeAnim ]
[State 2080]
  Type     = ChangeAnim2
  Trigger1 = 1
  Value    = 2080

;--------------------------------------[ ChangeState ]
[State 2080]
  Type     = ChangeState
  Trigger1 = GetHitVar(HitShakeTime) = 0
  Value    = 2085

;------------------------------------------------------------------------------;
; 
;------------------------------------------------------------------------------;
[Statedef 2085]
  Type     = A
  MoveType = H
  Physics  = N

;--------------------------------------[ Movement ]
[State 2085]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = -10

;--------------------------------------[ ChangeState ]
[State 2085]
  Type     = ChangeState
  Trigger1 = BackEdgeBodyDist <= 0
  Trigger2 = FrontEdgeBodyDist <= 0
  Value    = 2090

;------------------------------------------------------------------------------;
; 
;------------------------------------------------------------------------------;
[Statedef 2090]
  Type     = A
  MoveType = H
  Physics  = N

;--------------------------------------[ ChangeAnim ]
[State 2090]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 2090

;--------------------------------------[ Sounds ]
[State 2090]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = F7,0

;--------------------------------------[ Movement ]
[State 2090]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = 1.2
  Y        = -9.5

[State 2090]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Enemy, Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 2090]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = F72
  Pos         = 0, floor (screenpos y) - 50
  PosType     = back
  SprPriority = 3

;--------------------------------------[ ChangeState ]
[State 2090]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 2095

;------------------------------------------------------------------------------;
; 
;------------------------------------------------------------------------------;
[Statedef 2095]
  Type     = A
  MoveType = H
  Physics  = N

;--------------------------------------[ Movement ]
[State 2095]
  Type     = Null;VelSet
  Trigger1 = Time = 0
  X        = 2
  Y        = -7.5

[State 2095]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Enemy, Const(Movement.YAccel)

;--------------------------------------[ ChangeAnim ]
[State 2095]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = !SelfAnimExist(5052)
  Value    = 5050

;--------------------------------------[ ChangeState ]
[State 2095]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; EX サブマリンスクリュー
;------------------------------------------------------------------------------;
[Statedef 2100]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1100
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2100]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2100]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2100   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2100   : 追撃判定]
  Type       = VarAdd
  TriggerAll = ProjHit2100 = 1
  Trigger1   = P2StateType = A
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 2100   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1100, 0
  Channel  = 4

[State 2100   : SE]
  Type     = Null;PlaySnd
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 8
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 5
  Value    = s1005, 0

;--------------------------------------[ Bracelet ]
[State 2100]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2100]
  Type        = Explod
  Trigger1    = AnimElem = 8
  Anim        = 1105
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2100]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 1135
  ID          = 1100
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 2100]
  Type        = Explod
  Trigger1    = AnimElem = 3, = 1
  Anim        = 1145
  ID          = 1100
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 2100]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0.5

[State 2100]
  Type     = VelAdd
  Trigger1 = AnimElem = 9
  X        = 0

;--------------------------------------[ Helper ]
[State 2100]
  Type       = Helper
  Trigger1   = AnimElem = 5
  Name       = "Submarine Screw"
  StateNo    = 2130
  ID         = 2100
  Pos        = 25, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2100]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX サブマリンスクリュー（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 2130]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 1.75, 0
  Ctrl        = 0
  Anim        = 2130
  SprPriority = 2

;--------------------------------------[ Variable ]
[State 2130   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  Trigger1 = HitPauseTime = 2
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 2130   : キャンセル判定, Set]
  Type     = ParentVarSet
  Trigger1 = MoveHit
  Trigger1 = Root,Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1

[State 2130   : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Var(22) = 0
  V        = 12
  Value    = 0
  IgnoreHitPause = 1

[State 2130   : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = Root,Var(11) = 0
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1

[State 2130   : 追撃判定]
  Type       = ParentVarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

[State 2130]
  Type     = ParentVarSet
  Trigger1 = 1
  V        = 0
  Value    = Var(22)
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 2130]
  Type             = HitDef
  TriggerAll       = HitCount < 5
  Trigger1         = Root,Var(11) = 0
  Trigger2         = Var(12) = 1 || Root,Var(22) > 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,30,40)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 3, 10
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -20, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -1.5, -7.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -1.5, -7.5
  Air.Fall         = 1
  Fall.Recover     = 0
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

;--------------------------------------[ ChangeState ]
[State 2130]
  Type     = HitOverRide
  Trigger1 = Var(22) < 5
  Attr     = SCA, NP, SP
  StateNo  = 2135

[State 2130]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, HP
  StateNo  = 1080

[State 2130]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = HitCount >= 5

;------------------------------------------------------------------------------;
; EX サブマリンスクリュー（アーマー？）
;------------------------------------------------------------------------------;
[Statedef 2135]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  SprPriority = 2

;--------------------------------------[ Variable ]
[State 2130]
  Type     = VarAdd
  Trigger1 = Time = 0
  V        = 22
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 2135]
  Type     = ChangeState
  Trigger1 = Var(22) < 5
  Value    = 2130

[State 2135]
  Type     = ChangeState
  Trigger1 = Var(22) >= 5
  Value    = 1080

;------------------------------------------------------------------------------;
; 強化版EX サブマリンスクリュー
;------------------------------------------------------------------------------;
[Statedef 2150]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2150
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2150]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 14
  StateType = A
  Physics   = N

[State 2150]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2150]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2150   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 2150   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2150   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 14
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 2150  : 追撃判定, Reset]
  Type       = VarSet
  TriggerAll = MoveHit = 1
  Trigger1   = AnimElem = 14, < 0
  V          = 11
  Value      = 0
  IgnoreHitPause = 1

[State 2150   : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0
  IgnoreHitPause = 1

[State 2150   : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 4, >= 0 && AnimElem = 5, < 0
  Trigger1 = P2StateType = A
  Trigger1 = MoveHit = 1
  Trigger1 = Enemy, Pos Y < -32
;  Trigger1 = P2BodyDist Y < -32
  V        = 12
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2150]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 15
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2150   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s1100, 0

[State 2150   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s1105, 0

;--------------------------------------[ Movement ]
[State 2150]
  Type     = VelSet
  Trigger1 = AnimElem = 14
  X        = 3
  Y        = -8

[State 2150]
  Type     = VelAdd
  Trigger1 = Time >= 30;AnimElem = 14, >= 0
  Y        = 0.42

;--------------------------------------[ Bracelet ]
[State 2150]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2150]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 1125
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2150]
  Type             = HitDef
  Trigger1         = AnimElem = 4
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAFD
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 33, 38
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 14
  Ground.HitTime   = 20
  Ground.Velocity  = 2.45
  Air.Type         = High
  Air.HitTime      = 20
  Air.Velocity     = 2.45, -5

[State 2150]
  Type             = HitDef
  Trigger1         = AnimElem = 13
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAFD
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 31, 36
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 14
  Ground.HitTime   = 20
  Ground.Velocity  = 1.6
  Air.Type         = High
  Air.HitTime      = 20
  Air.Velocity     = 1.35, -5.5

[State 2150]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 2150]
  Type       = Helper
  Trigger1   = AnimElem = 14
  Name       = "Submarine Screw"
  StateNo    = 2180
  ID         = 2100
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
;  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2150]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 強化版EX サブマリンスクリュー（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 2180]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2180
  SprPriority = 2

;--------------------------------------[ Variable ]
[State 2180   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 2180   : 追撃判定]
  Type       = ParentVarAdd
  TriggerAll = MoveHit = 1
  Trigger1   = AnimElem = 15, >= 0
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 2180]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = Root,Var(12)
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 2180]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = 2.5
  Y        = -8

[State 2180]
  Type     = VelSet
  Trigger1 = FrontEdgeBodyDist < 10
  X        = 0

[State 2180]
  Type     = VelAdd
  Trigger1 = AnimElem = 11, >= 0
  Y        = 0.38

;--------------------------------------[ Bracelet ]
[State 2180]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2180]
  Type        = Explod
  Trigger1    = AnimElem = 21
  Anim        = 1125
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2180]
  Type             = HitDef
  Trigger1         = AnimElem = 1
  Trigger2         = AnimElem = 2
  Trigger3         = AnimElem = 3
  Trigger4         = AnimElem = 4
  Trigger5         = AnimElem = 5
;  Trigger6         = AnimElem = 6
;  Trigger7         = AnimElem = 7
;  Trigger8         = AnimElem = 8
;  Trigger9         = AnimElem = 9
  Attr             = A, SA
  Damage           = Ceil(IfElse(Root,Var(3)=0,20,40)*Root,FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 10,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 4, 4
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = 0, -10
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = 0, -10
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

[State 2180]
  Type             = HitDef
  Trigger1         = AnimElem = 6
  Trigger2         = AnimElem = 7
  Trigger3         = AnimElem = 8
  Trigger4         = AnimElem = 9
  Trigger5         = AnimElem = 10
  Trigger6         = AnimElem = 11
  Trigger7         = AnimElem = 12
  Trigger8         = AnimElem = 13
  Trigger9         = AnimElem = 14
  Attr             = A, SA
  Damage           = Ceil(IfElse(Root,Var(3)=0,20,40)*Root,FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 10,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 4, 4
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = 0, -10
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = 0, -10
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  P2StateNo        = 1180

[State 2180]
  Type             = HitDef
  Trigger1         = Var(12) = 0
  Trigger1         = AnimElem = 15
  Attr             = A, SA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -90
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -4.5, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4.5, -5
  Fall             = 1
  P2StateNo        = 1190

[State 2180]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 2180]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; EX 爆裂拳
;------------------------------------------------------------------------------;
[Statedef 2200]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2200
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2200]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2200]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2200   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2200   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2200   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 4
  V        = 10
  Value    = 4+(Var(22)>0)
  IgnoreHitPause = 1

[State 2200   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 2200   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 8
  Value    = s1200, 0

[State 2200   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1205, 0

[State 2200   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 8
  Value    = s1, 9

;--------------------------------------[ Movement ]
[State 2200]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 6

[State 2200]
  Type     = VelAdd
  Trigger1 = Vel X > 0 
  Trigger1 = AnimElem = 4, >= 0
  X        = -0.2

[State 2200]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 2200]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2205
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2200]
  Type        = Explod
  Trigger1    = AnimElem = 8
  Anim        = 1215
  ID          = 2200
  Pos         = 44, -91
  PosType     = P1
  SprPriority = 2
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 2200]
  Type       = Helper
  Trigger1   = AnimElem = 8
  Name       = "BakuretsuKen"
  StateNo    = 2230
  ID         = 2200
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2200]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX 爆裂拳（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 2230]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1210
  SprPriority = 2

;--------------------------------------[ Others ]
[State 2230]
  Type     = BindToParent
  Trigger1 = 1
  Pos      = 44, 0

;--------------------------------------[ Variable ]
[State 2230   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2230   : 追撃判定]
  Type     = ParentVarAdd
  Trigger1 = P2StateType = A
  Trigger1 = MoveHit
  V        = 11
  Value    = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 2230]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Root,Var(11) < 10
  Trigger2         = Root,Var(22) > 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,40,50)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -20, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -4, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 2230]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 2230]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強化版EX 爆裂拳
;------------------------------------------------------------------------------;
[Statedef 2250]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2250
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2250]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2250]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2250   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2250]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 14
  Value    = 0
  IgnoreHitPause = 1

[State 2250]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 2250   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1205, 0

;--------------------------------------[ Movement ]
[State 2250]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 6

;--------------------------------------[ Bracelet ]
[State 2250]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2250]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2255
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 2250]
  Type       = ChangeState
  TriggerAll = Time >= 6
  Trigger1   = P2BodyDist X < 75
  Trigger2   = Time >= 30 
  Value      = 2260

;------------------------------------------------------------------------------;
; 強化版EX 爆裂拳
;------------------------------------------------------------------------------;
[Statedef 2260]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 2260
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 2260   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 2260   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1200, 0

[State 2260   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1205, 0

[State 2260   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1, 9

;--------------------------------------[ Movement ]
[State 2260]
  Type     = VelAdd
  Trigger1 = Vel X > 0 
  X        = -0.2

[State 2260]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 2260]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2260]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2265
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Helper ]
[State 2260]
  Type       = Helper
  Trigger1   = AnimElem = 6
  Name       = "BakuretsuKen"
  StateNo    = 2280
  ID         = 2260
  Pos        = 59, -91
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 2260]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX 爆裂拳（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 2280]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2280
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 2280   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 2280]
  Type     = VelSet
  Trigger1 = 1
  X        = 1

;--------------------------------------[ Effects ]
[State 2280]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2285
  ID          = 2280
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 2280]
  Type             = HitDef
  Trigger1         = Time%8 = 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,12,16)*Root,FVar(4)), 5
  GetPower         = 0,0
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAFD
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 0, 5
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -30, 0
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -1.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -1.5, -1.5
  Air.Fall         = 1
  Fall.Recover     = 0

[State 2280]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]

[State 2280]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; EX ライディングヒーロー（前方）
;------------------------------------------------------------------------------;
[Statedef 2300]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2300
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2300]
  Type     = NotHitBy
  Trigger1 = Time = [0,3]
  Value    = SCA

[State 2300   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)/10 = 2
  Trigger2   = Var(10)%10 = 5
  Trigger2   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 2300]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 2300   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2300   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 2300   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 2300]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2300]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2305
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2300]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1345
  ID          = 2300
  Pos         = -23, -95
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 2300]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 9
  Y        = -1

[State 2300]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.125

[State 2300]
  Type     = VelAdd
  Trigger1 = AnimElem = 8, >= 0
  Y        = 0.35

[State 2300]
  Type     = CtrlSet
  Trigger1 = AnimElem = 5
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 2300]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; EX ライディングヒーロー（後方）
;------------------------------------------------------------------------------;
[Statedef 2350]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2350
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2350]
  Type     = NotHitBy
  Trigger1 = Time = [0,3]
  Value    = SCA

[State 2350   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)/10 = 2
  Trigger2   = Var(10)%10 = 5
  Trigger2   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 2350]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 2350   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2350   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 2350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 2350]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2350]
  Type        = Explod
  Trigger1    = AnimElem = 6
  Anim        = 1355
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2350]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 1395
  ID          = 2350
  Pos         = 30, -90
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 2350]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -9
  Y        = -1

[State 2350]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.075

[State 2350]
  Type     = VelAdd
  Trigger1 = AnimElem = 9, >= 0
  Y        = 0.35

[State 2350]
  Type     = CtrlSet
  Trigger1 = AnimElem = 5
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 2350]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; EX 雷神拳
;------------------------------------------------------------------------------;
[Statedef 2400]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1400
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Variable ]
[State 2400]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "236XY"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 2400]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "214XY"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 2400   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2400   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1400, 0

;--------------------------------------[ Bracelet ]
[State 2400]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 2400]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1425
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 2400]
  Type     = VelSet
  Trigger1 = AnimElem = 1, >= 0 && AnimElem = 5, < 0
  Y        = 4

[State 2400]
  Type     = VelSet
  Trigger1 = Time = 16
  Y        = 10

[State 2400]
  Type     = VelSet
  Trigger1 = AnimElem = 5
  Y        = 0

;--------------------------------------[ ChangeState ]
[State 2400]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2410

;------------------------------------------------------------------------------;
; EX 雷神拳（着地）
;------------------------------------------------------------------------------;
[Statedef 2410]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2410
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2410]
  TYpe     = Null;PlayerPush
  Trigger1 = 1
  Value    = 1

;--------------------------------------[ Movement ]
[State 2410]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 2410]
  Type     = PosAdd
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 0
  X        = (P2BodyDist X)+IfElse(Enemy,BackEdgeBodyDist<=10,0,60)*IfElse(P2BodyDist X<0,-1,1)

[State 2410]
  Type     = PosAdd
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 1
  X        = (P2BodyDist X)

;--------------------------------------[ Variable ]
[State 2410   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

[State 2410   : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0

[State 2410   : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2410   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 2410   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = s1405, 0

;--------------------------------------[ Bracelet ]
[State 2410]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2410]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2415
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2410]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1435
  ID          = 2410
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 2410]
  Type             = HitDef
  TriggerAll       = AnimElem = 2
  Trigger1         = Var(11) < 10
  Trigger2         = Var(22) > 0
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 0, 16
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1405, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -4.5, -6.25
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4.5, -6.25
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Add        = 16,16,16
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Color      = 1
  PalFx.Invertall  = 1
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0
  Down.CornerPush.VelOff   = 0

[State 2410]
  Type             = Projectile
  TriggerAll       = AnimElem = 2, > 0
  Trigger1         = Var(12) = 1
  Trigger2         = Var(22) > 0
  ProjID           = 2410
  ProjAnim         = 1430
  ProjRemove       = 1
  ProjPriority     = 1
  ProjHitAnim      = -1
  ProjRemAnim      = -1
  ProjSprPriority  = -1
  ProjShadow       = 0, 0, 0
  ProjRemoveTime   = 20
  OwnPal           = 1
  OffSet           = 0,0
  Velocity         = 0, 0
  Attr             = S, SP
  AnimType         = Hard
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  HitFlag          = MAF
  GuardFlag        = MA
  HitSound         = s1405, 0
  GuardSound       = s120, 1
  PauseTime        = 0, 10
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = 20,-45
  Ground.Type      = High
  Ground.HitTime   = 18
  Ground.SlideTime = 18
  Ground.Velocity  = -5,-5
  Air.Juggle       = 0
  Air.Velocity     = -5,-5
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Add        = 16,16,16
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Color      = 1
  PalFx.Invertall  = 1
  Persistent       = 0

;--------------------------------------[ ChangeState ]
[State 2410]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX 雷神拳
;------------------------------------------------------------------------------;
[Statedef 2450]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1450
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Variable ]
[State 2450   : ]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 9
  Value    = 0
  IgnoreHitPause = 1

[State 2450   : ]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Var(40) > 0
  V        = 9
  Value    = 1
  IgnoreHitPause = 1

[State 2450   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2450]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 17
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2450   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1400, 0

;--------------------------------------[ Bracelet ]
[State 2450]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2450]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 2450]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1425
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 2450]
  Type     = VelSet
  Trigger1 = AnimElem = 1, >= 0 && AnimElem = 5, < 0
  Y        = 4

[State 2450]
  Type     = VelSet
  Trigger1 = Time = 18
  Y        = 10

[State 2450]
  Type     = VelSet
  Trigger1 = AnimElem = 5
  Y        = 0

;--------------------------------------[ Hit Definition ]
[State 2450]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = A, SP
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 9, 10
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1405, 0
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 17
  Ground.HitTime   = 17
  Ground.Velocity  = 0
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = 0, 10
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Add        = 16,16,16
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Color      = 1
  PalFx.Invertall  = 1

;--------------------------------------[ ChangeState ]
[State 2450]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2460

;------------------------------------------------------------------------------;
; 強化版EX 雷神拳（着地）
;------------------------------------------------------------------------------;
[Statedef 2460]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1410
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 2460    : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2460   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = s1405, 0

;--------------------------------------[ Movement ]
[State 2460]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2460]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2460]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1415
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2460]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1435
  ID          = 2460
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 2460]
  Type             = Projectile
  Trigger1         = Time = 0
  ProjID           = 2460
  ProjAnim         = 1430
  ProjRemove       = 1
  ProjPriority     = 1
  ProjHitAnim      = -1
  ProjRemAnim      = -1
  ProjSprPriority  = -1
  ProjShadow       = 0, 0, 0
  ProjRemoveTime   = 20
  OwnPal           = 1
  OffSet           = 0,0
  Velocity         = 0, 0
  Attr             = S, SP
  AnimType         = Hard
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  HitFlag          = MA
  GuardFlag        = MA
  HitSound         = s1405, 0
  GuardSound       = s120, 1
  PauseTime        = 0, 10
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = 20,-45
  Ground.Type      = High
  Ground.HitTime   = 18
  Ground.SlideTime = 18
  Ground.Velocity  = -5,-5
  Air.Juggle       = 0
  Air.Velocity     = -5,-5
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Add        = 16,16,16
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Color      = 1
  PalFx.Invertall  = 1

[State 2460]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MA
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 0, 16
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1405, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -4.5, -6.25
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4.5, -6.25
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Add        = 16,16,16
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Color      = 1
  PalFx.Invertall  = 1

;--------------------------------------[ Helper ]
[State 2460]
  Type       = Helper
  Trigger1   = Time = 4
  Name       = "Lightning_1"
  StateNo    = 2480-Var(9)*1000
  ID         = 2460
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 2460]
  Type       = Helper
  Trigger1   = Time = 8
  Name       = "Lightning_2"
  StateNo    = 2480-Var(9)*1000
  ID         = 2461
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0
  Facing     = -1

[State 2460]
  Type       = Helper
  Trigger1   = Time = 12
  Name       = "Lightning_3"
  StateNo    = 2480-Var(9)*1000
  ID         = 2462
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 2460]
  Type       = Helper
  Trigger1   = Time = 16
  Name       = "Lightning_4"
  StateNo    = 2480-Var(9)*1000
  ID         = 2463
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0
  Facing     = -1

;--------------------------------------[ ChangeState ]
[State 2460]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX 雷神拳（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 2480]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 7, 0
  Ctrl        = 0
  Anim        = 2480
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2480]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 2480]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 2480]
  Type     = PowerAdd
  Trigger1 = MoveHit = 1
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 2480]
  Type     = PowerAdd
  Trigger1 = MoveGuarded = 1
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 2480   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Bracelet ]
[State 2480]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1485
  ID          = 2480
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = 42
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 2480]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,30,40)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 10,20
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 12
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -60
  HitSound         = s1405, 0
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -4, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Add        = 16,16,16
  PalFx.Color      = 1
  PalFx.Invertall  = 1

;--------------------------------------[ TagetBind ]
[State 2480]
  Type     = TargetState
  Trigger1 = MoveHit = 1
  Value    = 2490
  Persistent = 0

[State 2480]
  Type     = TargetBind
  Trigger1 = MoveHit = 1
  Pos      = P2BodyDist X,0
  Persistent = 0

;--------------------------------------[ ChangeState ]
[State 2480]
  Type     = DestroySelf
  Trigger1 = Time >= 60

;------------------------------------------------------------------------------;
; 強化版EX 雷神拳（やられ）
;------------------------------------------------------------------------------;
[Statedef 2490]
  Type        = S
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ ChangeAnim ]
[State 2490]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 2490

;--------------------------------------[ Others ]
[State 2490]
  Type     = HitFallSet
  Trigger1 = Time = 0
  Value    = 0

;--------------------------------------[ Movement ]
[State 2490]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ ChangeState ]
[State 2490]
  Type     = SelfState
  Trigger1 = Vel Y = 0 && Pos Y = 0
  Trigger1 = Time = 90
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX SE・N・GO・KU伝承
;------------------------------------------------------------------------------;
[Statedef 2500]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1500
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2500]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 2
  StateType = A
  Physics   = N

[State 2500   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)%10 = 5
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 2500]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 2500   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2500   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1500, 0

;--------------------------------------[ Movement ]
[State 2500]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 2.5
  Y        = -2.5

[State 2500]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.25

;--------------------------------------[ Bracelet ]
[State 2500]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2500]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1505
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2500]
  Type          = ReversalDef
  Trigger1      = Time = 0
  Attr          = A, SA
  Reversal.Attr = SCA, NA, SA, HA
  SparkXY       = 20, -70
  SparkNo       = -1
  PauseTime     = 4,4
  HitSound      = -1
  P1StateNo     = 2530
  P2StateNo     = 2540

;--------------------------------------[ ChangeState ]
[State 2500]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2510

;------------------------------------------------------------------------------;
; EX SE・N・GO・KU伝承（着地）
;------------------------------------------------------------------------------;
[Statedef 2510]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1510
  SprPriority = 1

;--------------------------------------[ Movement ]
[State 2510]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2510]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2510]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1515
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 2510]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX SE・N・GO・KU伝承（当身成功）
;------------------------------------------------------------------------------;
[Statedef 2530]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1530
  SprPriority = 1

;--------------------------------------[ Sounds ]
[State 2530   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1500, 1

[State 2530   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1505, 0

;--------------------------------------[ Movement ]
[State 2530]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2530]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2530]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1535
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2530   : HitEffect]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 7040
  ID          = 7000
  Pos         = 40, -50
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  Under       = 0
  IgnoreHitPause = 1

[State 2530   : HitEffect]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 7045
  ID          = 7000
  Pos         = 40, -50
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  Under       = 0
  IgnoreHitPause = 1

[State 2530]
  Type     = EnvColor
  Trigger1 = AnimElem = 3
  Time     = 3
  Value    = 255,255,255
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2530]
  Type     = EnvColor
  Trigger1 = AnimElem = 4
  Time     = 1
  Value    = 0,0,0
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ TagetBind ]
[State 2530]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = 50, 0

[State 2530]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 3
  Value    = -150

[State 2530]
  Type     = HitAdd
  Trigger1 = AnimElem = 3
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 2530]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX SE・N・GO・KU伝承（やられ）
;------------------------------------------------------------------------------;
[Statedef 2540]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 2540]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 2540]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 2540]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1540

;--------------------------------------[ Movement ]
[State 2540]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 2540]
  Type     = VelSet
  Trigger1 = AnimElem = 18
  X        = -1
  Y        = -15

[State 2540]
  Type     = VelAdd
  Trigger1 = AnimElem = 18, >= 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 2540]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 強化版EX SE・N・GO・KU伝承
;------------------------------------------------------------------------------;
[Statedef 2550]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1500
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2550]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 2
  StateType = A
  Physics   = N

[State 2550]
  Type     = NotHitBy
  Trigger1 = Time = [0,5]
  Value    = SCA

[State 2550   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)%10 = 5
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 2550]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 2550   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2550]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 16
  Value    = 0

[State 2550]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 2550   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1500, 0

;--------------------------------------[ Movement ]
[State 2550]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 3.5
  Y        = -1.8

[State 2550]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.25

;--------------------------------------[ Bracelet ]
[State 2550]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2550]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1505
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2550]
  Type          = ReversalDef
  Trigger1      = Time = 0
  Attr          = A, SA
  Reversal.Attr = SCA, NA, SA, HA
  SparkXY       = 20, -70
  SparkNo       = -1
  PauseTime     = 0,4
  HitSound      = -1
  P1StateNo     = 2580
  P2StateNo     = 2590

;--------------------------------------[ ChangeState ]
[State 2550]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2560

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（着地）
;------------------------------------------------------------------------------;
[Statedef 2560]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1560
  SprPriority = 1

;--------------------------------------[ Movement ]
[State 2560]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2560]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2560]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1565
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 2560]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（当身成功）
;------------------------------------------------------------------------------;
[Statedef 2580]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1580
  SprPriority = 1

;--------------------------------------[ Sounds ]
[State 2580   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1500, 1

[State 2580   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1505, 0

;--------------------------------------[ Movement ]
[State 2580]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2580]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2580]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1585
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 2580   : HitEffect]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7040
  ID          = 7000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  Under       = 0
  IgnoreHitPause = 1

[State 2580]
  Type     = EnvColor
  Trigger1 = AnimElem = 3
  Time     = 3
  Value    = 255,255,255
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 2580]
  Type     = EnvColor
  Trigger1 = AnimElem = 4
  Time     = 1
  Value    = 0,0,0
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ TagetBind ]
[State 2580]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = 50, 0

[State 2580]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 3
  Value    = -150

[State 2580]
  Type     = HitAdd
  Trigger1 = AnimElem = 3
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 2580]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（やられ）
;------------------------------------------------------------------------------;
[Statedef 2590]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 2590]
  Type     = NotHitBy
  Trigger1 = Vel Y > 0
  Value    = SCA

[State 2590]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 2590]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1540

;--------------------------------------[ Movement ]
[State 2590]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 2590]
  Type     = VelSet
  Trigger1 = AnimElem = 18
  X        = -1
  Y        = -15

[State 2590]
  Type     = VelAdd
  Trigger1 = AnimElem = 18, >= 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 2590]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; EX ファイヤースープレックスホールド
;------------------------------------------------------------------------------;
[Statedef 2600]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2600
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2600]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2600]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2600   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

;--------------------------------------[ Sounds ]
[State 2600   : Voice]
  Type     = Null;PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s210, Var(1)%6

[State 2600   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 0

[State 2600   : SE]
  Type     = Null;PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 1

;--------------------------------------[ Bracelet ]
[State 2600]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2605
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2600]
  Type       = HitDef
  TriggerAll = Time = 0
  Trigger1   = Var(11) < 10
  Trigger2   = Var(22) > 0
  Attr       = S, ST
  HitFlag    = MAF
  Priority   = 1, Miss
  SparkNo    = -1
  P1Facing   = 1
;  P2Facing   = 1
  P1StateNo  = 2610
  P2StateNo  = 1630
  Fall       = 1

;--------------------------------------[ TagetBind ]
[State 2600]
  Type     = Null;TargetBind
  Trigger1 = MoveHit = 1
  Trigger1 = AnimElem = 8, >= 0
  Pos      = 30,0
  Persistent = 0

[State 2600]
  Type     = Null;TargetState
  Trigger1 = MoveHit = 1
  Trigger1 = AnimElem = 8, >= 0
  Value    = 1630

;--------------------------------------[ ChangeState ]
[State 2600]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; EX ファイヤースープレックスホールド（投げ成功）
;------------------------------------------------------------------------------;
[Statedef 2610]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1610
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2610]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 4
  StateType = A
  Physics   = N

[State 2610]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 2610   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 1

[State 2610   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 1

[State 2610   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s40, 2

;--------------------------------------[ Bracelet ]
[State 2610]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2610]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1615
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 2610]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7060
  ID          = 1610
  Pos         = 15, -60
  PosType     = P1
  SprPriority = 3
  OwnPal      = 1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 2610]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -6
  Y        = -4.5

[State 2610]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.52

;--------------------------------------[ TagetBind ]
[State 2610]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, < 0
  Pos      = 30,0

[State 2610]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Pos      = -20,-75

[State 2610]
  Type     = TargetBind
  Trigger1 = AnimElem = 5, >= 0
  Pos      = -30,-50

;--------------------------------------[ ChangeState ]
[State 2610]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2620

;------------------------------------------------------------------------------;
; EX ファイヤースープレックスホールド（投げ終了）
;------------------------------------------------------------------------------;
[Statedef 2620]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1620
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2620]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 2620   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 2

;--------------------------------------[ Movement ]
[State 2620]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2620]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2620]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1625
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 2620]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7210
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ Effects ]
[State 2620]
  Type     = EnvShake
  Trigger1 = Time = 0
  Time     = 15
  Ampl     = -8
  Freq     = 95
  Phase    = 95

[State 2620]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1645
  ID          = 1620
  Pos         = 0, -70
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ TagetBind ]
[State 2620]
  Type     = TargetBind
  Trigger1 = AnimElem = 2, < 0
  Pos      = -55,-20

[State 2620]
  Type     = TargetState
  Trigger1 = AnimElem = 1
  Value    = 1640

[State 2620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 0
  Value      = -110
  Kill       = 0

[State 2620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 15
  Value      = -15
  Kill       = 0

[State 2620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 30
  Value      = -20

;--------------------------------------[ ChangeState ]
[State 2620]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX ファイヤースープレックスホールド
;------------------------------------------------------------------------------;
[Statedef 2650]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 2600
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2650]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2650]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2650]
  Type     = VarSet
  Trigger1 = Time = [0,2]
  V        = 9
  Value    = P2StateNo = [150,153]
  IgnoreHitPause = 1

[State 2650   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

[State 2650]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 18
  Value    = 0

[State 2650]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 2650   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 0

;--------------------------------------[ Bracelet ]
[State 2650]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2650]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 2605
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 2650]
  Type      = HitDef
  Trigger1  = Time = 0
  Attr      = S, ST
  HitFlag   = MAF
  Priority  = 3, Hit
  SparkNo   = -1
  P1Facing  = 1
  P2Facing  = 1
  P1StateNo = 2660
  P2StateNo = 1630
  Fall      = 1

;--------------------------------------[ ChangeState ]
[State 2650]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版EX ファイヤースープレックスホールド（投げ成功）
;------------------------------------------------------------------------------;
[Statedef 2660]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1610
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2660]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 4
  StateType = A
  Physics   = N

[State 2660]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 2660   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 1

[State 2660   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 1

[State 2660   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s40, 2

;--------------------------------------[ Bracelet ]
[State 2660]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2660]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1615
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 2660]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7060
  ID          = 1610
  Pos         = 15, -60
  PosType     = P1
  SprPriority = 3
  OwnPal      = 1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 2660]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -6
  Y        = -4.5

[State 2660]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.52

;--------------------------------------[ TagetBind ]
[State 2660]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, < 0
  Pos      = 30,0

[State 2660]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Pos      = -20,-75

[State 2660]
  Type     = TargetBind
  Trigger1 = AnimElem = 5, >= 0
  Pos      = -30,-50

;--------------------------------------[ ChangeState ]
[State 2660]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 2670

;------------------------------------------------------------------------------;
; 強化版EX ファイヤースープレックスホールド（投げ終了）
;------------------------------------------------------------------------------;
[Statedef 2670]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1670
  SprPriority = 1

;--------------------------------------[ Others ]
[State 2670]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 2670   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 2

;--------------------------------------[ Movement ]
[State 2670]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 2670]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2670]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1675
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 2670]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7210
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ Effects ]
[State 2670]
  Type     = EnvShake
  Trigger1 = Time = 0
  Time     = 15
  Ampl     = -8
  Freq     = 95
  Phase    = 95

[State 2670]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1695
  ID          = 1620
  Pos         = 0, -70
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ TagetBind ]
[State 2670]
  Type     = TargetBind
  Trigger1 = AnimElem = 2, < 0
  Pos      = -55,-20

[State 2670]
  Type     = TargetState
  Trigger1 = AnimElem = 1
  Value    = 1690

[State 2670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 0
  Value      = -150*IfElse(Var(9)=1,0.1,1)
  Kill       = 0

[State 2670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 15
  Trigger2 = Time = 30
  Value      = -20
  Kill       = 0

[State 2670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 50
  Value      = -25

[State 2670]
  Type     = TargetPowerAdd
  Trigger1 = Var(9) = 1
  Trigger1 = Time = 50
  Value      = 500

;--------------------------------------[ ChangeState ]
[State 2670]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; メモリーカードスラッシュ
;------------------------------------------------------------------------------;
[Statedef 2700]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1710
  SprPriority = 1
  PowerAdd    = -500

;--------------------------------------[ Others ]
[State 2700]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 2700]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 2700]
  Type       = VarSet
  TriggerAll = Time = 0
  Trigger1   = Command = "22XY"
  V          = 7
  Value      = 0
  IgnoreHitPause = 1

[State 2700]
  Type       = VarSet
  TriggerAll = Time = 0
  Trigger1   = Command = "22AB"
  V          = 7
  Value      = 1
  IgnoreHitPause = 1

[State 2700   : メモリーカードAC]
  Type       = Null;VarSet
  TriggerAll = AnimElem = 6
  TriggerAll = Var(7) = 0
  Trigger1   = Var(14) := 300
  Trigger1   = Var(15) := 300
  IgnoreHitPause = 1

[State 2700   : メモリーカードBD]
  Type       = Null;VarSet
  TriggerAll = AnimElem = 6
  TriggerAll = Var(7) = 1
  Trigger1   = Var(16) := 300
  Trigger1   = Var(17) := 300
  IgnoreHitPause = 1

[State 2700]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(14) > 0
  Trigger1   = Var(16) > 0
  Trigger1   = Var(18) > 0
  V          = 23
  Value      = 600

[State 2700   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 2700   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 6
  Trigger1 = Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 2700   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1700, 0
  Channel  = 4

[State 2700   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1705, 0

;--------------------------------------[ Bracelet ]
[State 2700]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 2700]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1715
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 2700]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

