; FileName : Super.st
;------------------------------------------------------------------------------;
;==============================================================================;
; 必殺技
;==============================================================================;

;------------------------------------------------------------------------------;
; ビーストバスター
;------------------------------------------------------------------------------;
[Statedef 1000]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1000
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 1000   : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1000]
  Type     = VarSet
  Trigger1 = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1000]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "x"
  trigger2 = var(59) > 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 1000]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 1
  Value    = 1010

;--------------------------------------[ Sounds ]
[State 1000   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1000, 0
  Channel  = 4

[State 1000   : SE]
  Type     = PlaySnd
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 8
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 5
  Value    = s1005, 0

;--------------------------------------[ Bracelet ]
[State 1000]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1000]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1005 + Var(7)*10
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1000]
  Type        = Explod
  Trigger1    = Var(7) = 0
  Trigger1    = AnimElem = 8
  Trigger2    = Var(7) = 1
  Trigger2    = AnimElem = 5
  Anim        = 1035
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 1000]
  Type        = Explod
  Trigger1    = Var(7) = 0
  Trigger1    = AnimElem = 8
  Trigger2    = Var(7) = 1
  Trigger2    = AnimElem = 5
  Anim        = 1045
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 1000   : Light]
  Type       = Helper
  Trigger1   = Var(7) = 0
  Trigger1   = AnimElem = 8
  Name       = "BeastBusterLight"
  StateNo    = 1030
  ID         = 1000
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 1000   : Strong]
  Type       = Helper
  Trigger1   = Var(7) = 1
  Trigger1   = AnimElem = 5
  Name       = "BeastBusterStrong"
  StateNo    = 1040
  ID         = 1000
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 1000]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 弱 ビーストバスター（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 1030]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1030
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1030   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1030]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1030]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1030]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1030   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1030   : ダメージ設定, Set]
  Type       = Null;VarSet
  TriggerAll = Time = 0
  Trigger1   = P2BodyDist X = [0,79]
  Trigger1   = Var(10) := 90
  Trigger2   = P2BodyDist X = [80,179]
  Trigger2   = Var(10) := 60
  Trigger3   = P2BodyDist X >= 180
  Trigger3   = Var(10) := 20
  Persistent = 0

;--------------------------------------[ Movement ]
[State 1030]
  Type     = VelSet
  Trigger1 = Time = 3
  X        = 10

;--------------------------------------[ Hit Definition ]
[State 1030]
  Type             = HitDef
  Trigger1         = Time = 3
  Trigger1         = Root,Var(11) < 10
  Attr             = A, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,Var(10),Var(10)+10)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
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
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 1030]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1030]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強 ビーストバスター（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 1040]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1030
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1040]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1040]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1040]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1040]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1040   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1040   : ダメージ設定, Set]
  Type       = Null;VarSet
  TriggerAll = Time = 0
  Trigger1   = P2BodyDist X = [0,79]
  Trigger1   = Var(10) := 90
  Trigger2   = P2BodyDist X = [80,179]
  Trigger2   = Var(10) := 60
  Trigger3   = P2BodyDist X >= 180
  Trigger3   = Var(10) := 20
  Persistent = 0

;--------------------------------------[ Movement ]
[State 1040]
  Type     = VelSet
  Trigger1 = Time = 3
  X        = 15

;--------------------------------------[ Hit Definition ]
[State 1040]
  Type             = HitDef
  Trigger1         = Time = 3
  Trigger1         = Root,Var(11) < 10
  Attr             = A, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,Var(10),Var(10)+10)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
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
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 1040]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1040]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強化版 ビーストバスター
;------------------------------------------------------------------------------;
[Statedef 1050]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1050
  SprPriority = 1

;--------------------------------------[ Others ]
[State 1050]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 1050]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 1050   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1050   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 3
  V        = 10
  Value    = 20
  IgnoreHitPause = 1
  Persistent     = 0

[State 1050]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 14
  Value    = 0

[State 1050]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1050   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1000, 0
  Channel  = 4

[State 1050   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Trigger2 = AnimElem = 15
  Trigger3 = AnimElem = 25
  Value    = s1005, 0

;--------------------------------------[ Bracelet ]
[State 1050]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1050]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1055
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1050]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Trigger2    = AnimElem = 15
  Trigger3    = AnimElem = 25
  Anim        = 1035
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 1050]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Trigger2    = AnimElem = 15
  Trigger3    = AnimElem = 25
  Anim        = 1045
  ID          = 1000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 1050]
  Type       = Helper
  Trigger1   = AnimElem = 5
  Trigger2   = AnimElem = 15
  Trigger3   = AnimElem = 25
  Name       = "BeastBuster"
  StateNo    = 1060
  ID         = 1050
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 1050]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 ビーストバスター（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 1060]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1030
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1060]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1060]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1060]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1060]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1060   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1060   : ダメージ設定, Set]
  Type       = Null;VarSet
  TriggerAll = Time = 0
  Trigger1   = P2BodyDist X = [0,179]
  Trigger1   = Var(10) := 60
  Trigger2   = P2BodyDist X >= 180
  Trigger2   = Var(10) := 20
  Persistent = 0

;--------------------------------------[ Movement ]
[State 1060]
  Type     = VelSet
  Trigger1 = Time = 3
  X        = 15

;--------------------------------------[ Hit Definition ]
[State 1060]
  Type             = HitDef
  Trigger1         = Time = 3
  Attr             = A, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,Var(10),Var(10)+10)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
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
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 1060]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1060]
  Type     = DestroySelf
  Trigger1 = ScreenPos X != [0, 320]
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; ビーストバスター（ヘルパー削除）
;------------------------------------------------------------------------------;
[Statedef 1080]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1050
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1080]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

;--------------------------------------[ Variable ]
[State 1080]
  Type     = VarSet
  Trigger1 = 1
  V        = 22
  Value    = 0

;--------------------------------------[ ChangeState ]
[State 1080]
  Type     = DestroySelf
  Trigger1 = Time = 0

;------------------------------------------------------------------------------;
; サブマリンスクリュー
;------------------------------------------------------------------------------;
[Statedef 1100]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1100
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 1100   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1100]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "y"
  trigger2 = var(59) > 0
  trigger2 = p2bodydist X < 40
  trigger2 = enemynear, pos Y > -75
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1100]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "x"
  trigger2 = var(59) > 0
  trigger2 = p2bodydist X >= 40
  trigger2 = enemynear, pos Y <= -75
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 1100   : 追撃判定]
  Type       = VarAdd
  TriggerAll = ProjHit1100 = 1
  Trigger1   = P2StateType = A
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 1100   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1100, 0
  Channel  = 4

;--------------------------------------[ Bracelet ]
[State 1100]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1000]
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
[State 1100]
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

[State 1100]
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
[State 1100]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0.5

[State 1100]
  Type     = VelAdd
  Trigger1 = AnimElem = 9
  X        = 0

;--------------------------------------[ Helper ]
[State 1100]
  Type       = Helper
  Trigger1   = AnimElem = 5
  Name       = "Submarine Screw"
  StateNo    = 1130
  ID         = 1100
  Pos        = 15+Var(7)*10,-90+Var(7)*45
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 1100]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; サブマリンスクリュー（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 1130]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 1.25, 0
  Ctrl        = 0
  Anim        = 1130
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1130]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1130]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1130]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1130]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1130   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  Trigger1 = HitPauseTime = 2
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 1130   : ボタン判定]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = Root,Var(7)
  IgnoreHitPause = 1

[State 1130   : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0
  IgnoreHitPause = 1

[State 1130   : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = Root,Var(11) = 0
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1

[State 1130   : 追撃判定]
  Type       = ParentVarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 1130]
  Type             = HitDef
  TriggerAll       = HitCount < 5
  Trigger1         = Root,Var(11) = 0
  Trigger2         = Var(12) = 1
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,30,40)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 3, 12-(Var(7)*7)
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -50*Var(7)
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -3.5, -5.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3.5, -5.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

;--------------------------------------[ ChangeState ]
[State 1130]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1130]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = HitCount >= 5

;------------------------------------------------------------------------------;
; 強化版 サブマリンスクリュー
;------------------------------------------------------------------------------;
[Statedef 1150]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1150
  SprPriority = 2
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1150]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 14
  StateType = A
  Physics   = N

[State 1150   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)%10 = 5
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 1150]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 1150   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 1150   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1150   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 3
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 1150   : キャンセル判定, Set]
  Type     = VarAdd
  Trigger1 = AnimElem = 4, >= 0 && AnimElem = 14, < 0
  Trigger1 = MoveContact
  Trigger1 = Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1
  Persistent     = 0

[State 1150   : 追撃判定, Reset]
  Type       = VarSet
  TriggerAll = MoveHit
  Trigger1   = AnimElem = 4, >= 0 && AnimElem = 18, < 0
  V          = 11
  Value      = 0
  IgnoreHitPause = 1

[State 1150   : 追撃判定, Add]
  Type       = VarAdd
  TriggerAll = MoveHit = 1
  Trigger1   = AnimElem = 18, >= 0
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 1150   : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0
  IgnoreHitPause = 1

[State 1150   : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Trigger1 = P2StateType = A
  Trigger1 = MoveHit
  Trigger1 = Enemy, Pos Y < -30
  V        = 12
  Value    = 1
  IgnoreHitPause = 1

[State 1150]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 15
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 1150   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s1100, 0

[State 1150   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s1105, 0

;--------------------------------------[ Movement ]
[State 1150]
  Type     = VelSet
  Trigger1 = AnimElem = 14
  X        = 2.5
  Y        = -7.75

[State 1150]
  Type     = VelAdd
  Trigger1 = AnimElem = 14, >= 0
  Y        = 0.38

;--------------------------------------[ Bracelet ]

[State 1150]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1150]
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
[State 1150]
  Type             = HitDef
  Trigger1         = AnimElem = 4
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 20*!(Var(22)>0),5*!(Var(22)>0)
  GivePower        = 5,10
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

[State 1150]
  Type             = HitDef
  Trigger1         = AnimElem = 13
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 10*!(Var(22)>0),5*!(Var(22)>0)
  GivePower        = 5,10
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

[State 1150]
  Type             = HitDef
  Trigger1         = AnimElem = 14
  Trigger2         = AnimElem = 15
  Trigger3         = AnimElem = 16
  Trigger4         = AnimElem = 17
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,20,40)*FVar(4)), 0
  GetPower         = 10*!(Var(22)>0),5*!(Var(22)>0)
  GivePower        = 5,10
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

[State 1150]
  Type             = HitDef
  Trigger1         = Var(12) = 0
  Trigger1         = AnimElem = 18
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 0
  GetPower         = 20*!(Var(22)>0),5*!(Var(22)>0)
  GivePower        = 5,10
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

[State 1150]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 1150]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 強化版 サブマリンスクリュー（やられ１）
;------------------------------------------------------------------------------;
[Statedef 1180]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1180]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 1180]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = 5050

;--------------------------------------[ Movement ]
[State 1180]
  Type     = VelSet
  Trigger1 = Time = 4
  X        = 0
  Y        = -11

[State 1180]
  Type     = VelAdd
  Trigger1 = Time >= 14
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 1180]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 強化版 サブマリンスクリュー（やられ２）
;------------------------------------------------------------------------------;
[Statedef 1190]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1190]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 1190   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

;--------------------------------------[ ChangeAnim ]
[State 1190]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1190

;--------------------------------------[ Movement ]
[State 1190]
  Type     = PosAdd
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  X        = 1

[State 1190]
  Type     = PosAdd
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 1
  X        = -1

[State 1190]
  Type     = VelSet
  Trigger1 = Time = 10
  X        = -2
  Y        = -14

[State 1190]
  Type     = VelAdd
  Trigger1 = Time >= 20
  Y        = 0.46

;--------------------------------------[ ChangeState ]
[State 1190]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 爆裂拳
;------------------------------------------------------------------------------;
[Statedef 1200]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1200
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 1200]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1200]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "x"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 1200   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1200   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 4
  V        = 10
  Value    = 4
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 1200]
  Type       = ChangeAnim
  TriggerAll = Time = 0
  Trigger1   = Var(7) = 1
  Value      = 1230

;--------------------------------------[ Sounds ]
[State 1200   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 9
  Value    = s1200, 0

[State 1200   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1205, 0

[State 1200   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 9
  Value    = s1, 9

;--------------------------------------[ Movement ]
[State 1200]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 6+Var(7)*4

[State 1200]
  Type     = VelAdd
  Trigger1 = Vel X > 0 
  Trigger1 = AnimElem = 4, >= 0
  Trigger1 = Var(7) = 0
  X        = -0.2

[State 1200]
  Type     = VelAdd
  Trigger1 = Vel X > 0 
  Trigger1 = AnimElem = 4, >= 0
  Trigger1 = Var(7) = 1
  X        = -0.4

[State 1200]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 1200]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1205+Var(7)*30
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1200]
  Type        = Explod
  Trigger1    = Var(7) = 0
  Trigger1    = AnimElem = 9
  Anim        = 1215
  ID          = 1200
  Pos         = 44, -91
  PosType     = P1
  OwnPal      = 1
  SprPriority = 2
  IgnoreHitPause = 1

[State 1200]
  Type        = Explod
  Trigger1    = Var(7) = 1
  Trigger1    = AnimElem = 9
  Anim        = 1245
  ID          = 1200
  Pos         = 59, -91
  PosType     = P1
  OwnPal      = 1
  SprPriority = 2
  IgnoreHitPause = 1

;--------------------------------------[ Helper ]
[State 1200]
  Type       = Helper
  Trigger1   = Var(7) = 0
  Trigger1   = AnimElem = 9
  Name       = "BakuretsuKenLight"
  StateNo    = 1210
  ID         = 1200
  Pos        = 44, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 1200]
  Type       = Helper
  Trigger1   = Var(7) = 1
  Trigger1   = AnimElem = 9
  Name       = "BakuretsuKenStrong"
  StateNo    = 1240
  ID         = 1200
  Pos        = 59, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 1200]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 弱 爆裂拳（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 1210]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1210
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1210]
  Type     = BindToParent
  Trigger1 = 1
  Pos      = 44, 0

[State 1210]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1210]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1210]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1210]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1210   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1210   : 追撃判定]
  Type     = ParentVarAdd
  Trigger1 = P2StateType = A
  Trigger1 = MoveHit = 1
  V        = 11
  Value    = 14
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 1210]
  Type             = HitDef
  Trigger1         = Time = 0
  Trigger1         = Root,Var(11) < 10
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,90,100)*Root,FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 5,10
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
[State 1210]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1210]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強 爆裂拳（ヘルパー）
;------------------------------------------------------------------------------;
[Statedef 1240]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1240
  SprPriority = 2

;--------------------------------------[ Others ]
[State 1240]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1240]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1240]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1240]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1240   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1240  : 追撃判定]
  Type     = ParentVarAdd
  Trigger1 = P2StateType = A
  Trigger1 = MoveHit
  V        = 11
  Value    = 8
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 1240]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,120,130)*Root,FVar(4)), 0
  GetPower         = 0,0
  GivePower        = 5,10
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
[State 1240]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA, NP, SP, HP
  StateNo  = 1080

[State 1240]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = MoveContact

;------------------------------------------------------------------------------;
; 強化版 爆裂拳
;------------------------------------------------------------------------------;
[Statedef 1250]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1250
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1250   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)%10 = 5
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

[State 1250]
  Type     = Width
  Trigger1 = 1
  Edge     = 20,0

;--------------------------------------[ Variable ]
[State 1250]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 1250   : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1250   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1250   : キャンセル判定, Set, 1] ; EXライディング用
  Type     = VarSet
  Trigger1 = AnimElem = 2
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 1250   : キャンセル判定, Add, 2] ; スパキャン用
  Type     = VarAdd
  Trigger1 = AnimElem = 4
  V        = 10
  Value    = 4+(Var(22)>0)
  IgnoreHitPause = 1
  Persistent     = 0

[State 1250   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 8
  IgnoreHitPause = 1
  Persistent     = 0

[State 1250]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 14
  Value    = 0
  IgnoreHitPause = 1

[State 1250]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1250   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 11
  Value    = s210, Var(1)%6

[State 1250   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1205, 0

[State 1250   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 10
  Value    = s1, 9

;--------------------------------------[ Movement ]
[State 1250]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 7.5

[State 1250]
  Type     = VelAdd
  Trigger1 = Vel X > 0 
  Trigger1 = AnimElem = 4, >= 0
  X        = -0.3

[State 1250]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 1250]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1250]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1255
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 1250]
  Type             = HitDef
  Trigger1         = AnimElem = 11
  Attr             = S, SP
  Damage           = Ceil(IfElse(Var(3)=0,110,120)*FVar(4)), 6
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = HA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -65
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -5.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3.5, -7
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 1250]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ライディングヒーロー（前方）
;------------------------------------------------------------------------------;
[Statedef 1300]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1300
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 1300]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "b"
  trigger2 = var(59) > 0
  trigger2 = p2dist X > 70
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1300]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "a"
  trigger2 = var(59) > 0
  trigger2 = p2dist X <= 70
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 1300   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1300   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 3
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 1300]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 1
  Value    = 1310

;--------------------------------------[ Sounds ]
[State 1300   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 1300   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 1300]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1300]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1305 + Var(7)*10
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1300]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1345
  ID          = 1300
  Pos         = -23, -95
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 1300]
  Type     = VelSet
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 2
  X        = 8
  Y        = -1.5

[State 1300]
  Type     = VelSet
  Trigger1 = Var(7) = 1
  Trigger1 = AnimElem = 2
  X        = 6
  Y        = -1.5

[State 1300]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Y        = 0.1

[State 1300]
  Type     = VelAdd
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 5, >= 0
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 8, >= 0
  Y        = 0.35

[State 1300]
  Type     = CtrlSet
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 6
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 9
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 1300]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 強化版 ライディングヒーロー（前方）
;------------------------------------------------------------------------------;
[Statedef 1320]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1320
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1320   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)/10 = 3
  Trigger2   = Var(10)%10 = 5
  Trigger2   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 1320]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 1320   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1320   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 5
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 1320]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 16
  Value    = 0
  IgnoreHitPause = 1

[State 1320]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1320   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 1320   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 1320]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1320]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1325
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1320]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 1345
  ID          = 1300
  Pos         = -23, -95
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 1320]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 6.5
  Y        = -5

[State 1320]
  Type     = VelSet
  Trigger1 = AnimElem = 3
  X        = 5
  Y        = -3.25

[State 1320]
  Type     = VelAdd
  Trigger1 = AnimElem = 3, >= 0
  Y        = 0.1

[State 1320]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.35

[State 1320]
  Type     = CtrlSet
  Trigger1 = AnimElem = 5
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 1320]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; ライディングヒーロー（後方）
;------------------------------------------------------------------------------;
[Statedef 1350]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1350
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 1350]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "b"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1350]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "a"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 1350   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1350   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 4
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 1350]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 1
  Value    = 1360

;--------------------------------------[ Sounds ]
[State 1350   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 1350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 1350]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1350]
  Type        = Explod
  Trigger1    = Var(7) = 0
  Trigger1    = AnimElem = 6
  Trigger2    = Var(7) = 1
  Trigger2    = AnimElem = 9
  Anim        = 1355
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1350]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 1395
  ID          = 1350
  Pos         = 30, -90
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 1350]
  Type     = VelSet
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 2
  X        = -8
  Y        = -1.5

[State 1350]
  Type     = VelSet
  Trigger1 = Var(7) = 1
  Trigger1 = AnimElem = 2
  X        = -6
  Y        = -1.5

[State 1350]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Y        = 0.1

[State 1350]
  Type     = VelAdd
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 5, >= 0
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 8, >= 0
  Y        = 0.35

[State 1350]
  Type     = CtrlSet
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 6
  Trigger2 = Var(7) = 1
  Trigger2 = AnimElem = 9
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 1350]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 強化版 ライディングヒーロー（後方）
;------------------------------------------------------------------------------;
[Statedef 1370]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1370
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1370   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)/10 = 3
  Trigger2   = Var(10)%10 = 5
  Trigger2   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 1370]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 1370   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1370   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 6
  V        = 10
  Value    = 20
  IgnoreHitPause = 1

[State 1370]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 16
  Value    = 0
  IgnoreHitPause = 1

[State 1370]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1370   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1300, 0

[State 1370   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1305, 0

;--------------------------------------[ Bracelet ]
[State 1370]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1370]
  Type        = Explod
  Trigger1    = AnimElem = 9
  Anim        = 1355
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1370]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Anim        = 1395
  ID          = 1370
  Pos         = 30, -90
  PosType     = P1
  SprPriority = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 1370]
  Type     = VelSet
  Trigger1 = AnimElem = 3
  X        = -6.5
  Y        = -5

[State 1370]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -5
  Y        = -3.5

[State 1370]
  Type     = VelAdd
  Trigger1 = AnimElem = 4, >= 0
  Y        = 0.1

[State 1370]
  Type     = VelAdd
  Trigger1 = AnimElem = 6, >= 0
  Y        = 0.35

[State 1370]
  Type     = CtrlSet
  Trigger1 = AnimElem = 6
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 1370]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 雷神拳
;------------------------------------------------------------------------------;
[Statedef 1400]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1400
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 1400]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "y"
  ;trigger2 = var(59) > 0
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1400]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "x"
  trigger2 = var(59) > 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 1400   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 1400]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1400, 0

;--------------------------------------[ Bracelet ]
[State 1400]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 1400]
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
[State 1400]
  Type     = VelSet
  Trigger1 = Var(7) = 1
  Trigger1 = AnimElem = 1, >= 0 && AnimElem = 5, < 0
  Y        = 4

[State 1400]
  Type     = VelSet
  Trigger1 = Time = 18
  Y        = 10

[State 1400]
  Type     = VelSet
  Trigger1 = Var(7) = 1
  Trigger1 = AnimElem = 5
  Y        = 0

;--------------------------------------[ ChangeState ]
[State 1400]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1410

;------------------------------------------------------------------------------;
; 雷神拳（着地）
;------------------------------------------------------------------------------;
[Statedef 1410]
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
[State 1410   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1410   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit
  V          = 11
  Value      = 14
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 1410]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = s1405, 0

;--------------------------------------[ Movement ]
[State 1410]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1410]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1410]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1415
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 1410]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1435
  ID          = 1410
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 1410]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 10
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
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

[State 1410]
  Type             = Projectile
  Trigger1         = Time = 0
  ProjID           = 1410
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
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 10
  GetPower         = 60*!(Var(22)>0),10*!(Var(22)>0)
  GivePower        = 5,10
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

;--------------------------------------[ ChangeState ]
[State 1410]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 雷神拳
;------------------------------------------------------------------------------;
[Statedef 1450]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1450
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1450   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = (PrevStateNo = [1300,1370]) || (PrevStateNo = [2300,2360])
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,230,230

;--------------------------------------[ Variable ]
[State 1450   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1450   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = MoveContact
  Trigger1 = Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1
  Persistent     = 0

[State 1450   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 14
  IgnoreHitPause = 1
  Persistent     = 0

[State 1450]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 17
  Value    = 0
  IgnoreHitPause = 1

[State 1450]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = (PrevStateNo = [1300,1370]) || (PrevStateNo = [2300,2360])
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 1450   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1400, 0

[State 1450   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1405, 0
  Volume   = -100

;--------------------------------------[ Bracelet ]
[State 1450]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1450]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 1450]
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
[State 1450]
  Type     = VelSet
  Trigger1 = Time = 15
  Y        = 12

;--------------------------------------[ Hit Definition ]
[State 1450]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = A, SA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 10
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 4, Hit
  PauseTime        = 0, 3
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -40
  HitSound         = s1405, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = 0, 8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = 0, 8
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  PalFx.Time       = 25
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Add        = 16,16,16
  PalFx.Color      = 1
  PalFx.Invertall  = 1

;--------------------------------------[ ChangeState ]
[State 1450]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1460

;------------------------------------------------------------------------------;
; 強化版 雷神拳（着地）
;------------------------------------------------------------------------------;
[Statedef 1460]
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
[State 1460   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1460   : キャンセル判定, Set]
  Type     = Null;VarSet
  Trigger1 = MoveContact
  Trigger1 = Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1
  Persistent     = 0

[State 1460   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 2
  V        = 10
  Value    = 20
  IgnoreHitPause = 1
  Persistent     = 0

[State 1460   : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit
  V          = 11
  Value      = 14
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 1460   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = s1405, 0

;--------------------------------------[ Movement ]
[State 1460]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1460]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1460]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1415
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 1460]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1435
  ID          = 1460
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 1460]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(4)), 10
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = MA
  Priority         = 4, Hit
  PauseTime        = 6, 6
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s1405, 1
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
  PalFx.Time       = 25
  PalFx.Mul        = 230,230,250
  PalFx.SinAdd     = 255,255,255,5
  PalFx.Add        = 16,16,16
  PalFx.Color      = 1
  PalFx.Invertall  = 1

[State 1410]
  Type             = Projectile
  Trigger1         = Time = 0
  ProjID           = 1410
  ProjAnim         = 1430
  ProjRemove       = 1
  ProjPriority     = 1
  ProjHitAnim      = -1
  ProjRemAnim      = -1
  ProjSprPriority  = -1
  ProjShadow       = 0, 0, 0
  ProjRemoveTime   = 20
  OwnPal           = 1
  OffSet           = 25,0
  Velocity         = 0, 0
  Attr             = S, SP
  AnimType         = Hard
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 10
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  HitFlag          = MAFLD
  GuardFlag        = MA
  HitSound         = s1405, 0
  GuardSound       = s120, 1
  PauseTime        = 2, 12
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

;--------------------------------------[ Helper ]
[State 1460]
  Type       = Helper
  Trigger1   = Time = 5
  Name       = "Lightning_1"
  StateNo    = 1480
  ID         = 1460
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 1460]
  Type       = Helper
  Trigger1   = Time = 10
  Name       = "Lightning_2"
  StateNo    = 1480
  ID         = 1460
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0
  Facing     = -1

[State 1460]
  Type       = Helper
  Trigger1   = Time = 15
  Name       = "Lightning_3"
  StateNo    = 1480
  ID         = 1460
  Pos        = 10, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 1460]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 雷神拳（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 1480]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1480
  SprPriority = 1

;--------------------------------------[ Others ]
[State 1480]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 1480]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA, NP, SP, HP
  Time     = -1

[State 1480]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveHit
  Value    = 30
  IgnoreHitPause = 1
  Persistent     = 0

[State 1480]
  Type     = PowerAdd
  Trigger1 = Root,Var(22) = 0
  Trigger1 = MoveGuarded
  Value    = 15
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 1480   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Movement ]
[State 1480]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = 3

;--------------------------------------[ Bracelet ]
[State 1480]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1485
  ID          = 1480
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 1480]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, SP
  Damage           = Ceil(IfElse(Root,Var(3)=0,30,40)*Root,FVar(4)), 10
  GetPower         = 0,0
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAFLD
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 12
  SparkNo          = s7070
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
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

;--------------------------------------[ ChangeState ]
[State 1480]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; SE・N・GO・KU伝承
;------------------------------------------------------------------------------;
[Statedef 1500]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1500
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1500]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 2
  StateType = A
  Physics   = N

;--------------------------------------[ Variable ]
[State 1500]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "b"
  trigger2 = var(59) > 0  
  V        = 7
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1500]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) < 1
  Trigger1 = Command = "a"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1
  Persistent     = 0

[State 1500   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 1500   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1500, 0

;--------------------------------------[ Movement ]
[State 1500]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 1.25-Var(7)*0.2
  Y        = -2.5+Var(7)*0.5

[State 1500]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.25

;--------------------------------------[ Bracelet ]
[State 1500]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1500]
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
[State 1500]
  Type          = ReversalDef
  Trigger1      = Time = 0
  Trigger1      = Var(7) = 0
  Attr          = A, SA
  Reversal.Attr = SA, NA, SA, HA
  SparkXY       = 20, -70
  SparkNo       = -1
  PauseTime     = 4,4
  HitSound      = -1
  P1StateNo     = 1530
  P2StateNo     = 1540

[State 1500]
  Type          = ReversalDef
  Trigger1      = Time = 0
  Trigger1      = Var(7) = 1
  Attr          = A, SA
  Reversal.Attr = SC, NA, SA, HA
  SparkXY       = 20, -70
  SparkNo       = -1
  PauseTime     = 4,4
  HitSound      = -1
  P1StateNo     = 1530
  P2StateNo     = 1540

;--------------------------------------[ ChangeState ]
[State 1500]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1510

;------------------------------------------------------------------------------;
; SE・N・GO・KU伝承（着地）
;------------------------------------------------------------------------------;
[Statedef 1510]
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
[State 1510]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1510]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1510]
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
[State 1510]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; SE・N・GO・KU伝承（当身成功）
;------------------------------------------------------------------------------;
[Statedef 1530]
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
[State 1530   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1500, 1

[State 1530   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1505, 0

;--------------------------------------[ Movement ]
[State 1530]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1530]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1530]
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
[State 1530   : HitEffect]
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

[State 1530   : HitEffect]
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

[State 1530]
  Type     = EnvColor
  Trigger1 = AnimElem = 3
  Time     = 3
  Value    = 255,255,255
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1530]
  Type     = EnvColor
  Trigger1 = AnimElem = 4
  Time     = 1
  Value    = 0,0,0
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ TagetBind ]
[State 1530]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = 50, 0

[State 1530]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 3
  Value    = -120

[State 1530]
  Type     = HitAdd
  Trigger1 = AnimElem = 3
  Value    = 1

;--------------------------------------[ ChangeState ]
[State 1530]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; SE・N・GO・KU伝承（やられ）
;------------------------------------------------------------------------------;
[Statedef 1540]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1540]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 1540]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 1540]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1540

;--------------------------------------[ Movement ]
[State 1540]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 1540]
  Type     = VelSet
  Trigger1 = AnimElem = 18
  X        = -1
  Y        = -15

[State 1540]
  Type     = VelAdd
  Trigger1 = AnimElem = 18, >= 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 1540]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承
;------------------------------------------------------------------------------;
[Statedef 1550]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1500
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Others ]
[State 1550]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 2
  StateType = A
  Physics   = N

[State 1550]
  Type     = NotHitBy
  Trigger1 = Time = [0,5]
  Value    = SCA

[State 1550   : 点滅]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = Var(10)%10 = 5
  Trigger1   = Var(22) > 0
  Time       = 5
  Add        = 230,0,0

;--------------------------------------[ Variable ]
[State 1550]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60
  IgnoreHitPause = 1

[State 1550   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1550]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 16
  Value    = 0
  IgnoreHitPause = 1
  Persistent     = 0

[State 1550]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1550   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1500, 0

;--------------------------------------[ Movement ]
[State 1550]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 3.5
  Y        = -1.8

[State 1550]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.25

;--------------------------------------[ Bracelet ]
[State 1550]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1550]
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
[State 1550]
  Type          = ReversalDef
  Trigger1      = Time = 0
  Attr          = A, SA
  Reversal.Attr = SCA, NA, SA, HA
  SparkXY       = 20, -70
  SparkNo       = -1
  PauseTime     = 4,4
  HitSound      = -1
  P1StateNo     = 1580
  P2StateNo     = 1590

;--------------------------------------[ ChangeState ]
[State 1550]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1560

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（着地）
;------------------------------------------------------------------------------;
[Statedef 1560]
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
[State 1560]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1560]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1560]
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
[State 1560]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（当身成功）
;------------------------------------------------------------------------------;
[Statedef 1580]
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
[State 1580   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1500, 1

[State 1580   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Trigger2 = AnimElem = 4
  Trigger3 = AnimElem = 4, = 3
  Trigger4 = AnimElem = 4, = 7
  Value    = s1505, 0

;--------------------------------------[ Movement ]
[State 1580]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1580]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1580]
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
[State 1580   : HitEffect]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Trigger2    = AnimElem = 4, = 0
  Trigger3    = AnimElem = 4, = 3
  Trigger4    = AnimElem = 4, = 7
  Anim        = 7040
  ID          = 7000
  Pos         = 40, -50
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OnTop       = 1
  IgnoreHitPause = 1

[State 1580   : HitEffect]
  Type        = Explod
  Trigger1    = AnimElem = 3
  Trigger2    = AnimElem = 4, = 0
  Trigger3    = AnimElem = 4, = 3
  Trigger4    = AnimElem = 4, = 7
  Anim        = 7045
  ID          = 7000
  Pos         = 40, -50
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OnTop       = 1
  IgnoreHitPause = 1

[State 1580]
  Type     = EnvColor
  Trigger1 = AnimElem = 3
  Time     = 3
  Value    = 255,255,255
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 1580]
  Type     = EnvColor
  Trigger1 = AnimElem = 4
  Time     = 1
  Value    = 0,0,0
  Under    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ TagetBind ]
[State 1580]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = 50, 0

[State 1580]
  Type     = HitAdd
  Trigger1 = AnimElem = 3
  Trigger2 = AnimElem = 4
  Trigger3 = AnimElem = 4, = 3
  Trigger4 = AnimElem = 4, = 7
  Value    = 1

[State 1580]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 3
  Trigger2 = AnimElem = 4
  Trigger3 = AnimElem = 4, = 3
  Trigger4 = AnimElem = 4, = 7
  Value    = -40

;--------------------------------------[ ChangeState ]
[State 1580]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 SE・N・GO・KU伝承（やられ）
;------------------------------------------------------------------------------;
[Statedef 1590]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1590]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 1590]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1540

;--------------------------------------[ Movement ]
[State 1590]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 1590]
  Type     = VelSet
  Trigger1 = AnimElem = 18
  X        = -1
  Y        = -20

[State 1590]
  Type     = VelAdd
  Trigger1 = AnimElem = 18, >= 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 1590]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド
;------------------------------------------------------------------------------;
[Statedef 1600]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 800
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 1600   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1
  Persistent     = 0

[State 1600   : コマンド判定, Set]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) != 1
  Trigger1 = Command = "y"
  trigger2 = var(59) = 1
  trigger2 = random % 2 = 0
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 1600   : コマンド判定, Set]
  Type     = VarSet
  Triggerall = Time = 0
  trigger1 = var(59) != 1
  Trigger1 = Command = "x"
  trigger2 = var(59) = 1
  trigger2 = random % 2 = 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 1600   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s800, 0

;--------------------------------------[ Bracelet ]
[State 1600]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 800
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 1600]
  Type      = HitDef
  Trigger1  = Time = 0
  Attr      = S, ST
  HitFlag   = M-
  Priority  = 1, Miss
  SparkNo   = -1
  P1Facing  = 1
;  P2Facing  = 1
  P1StateNo = 1610
  P2StateNo = 1630
  Fall      = 1

;--------------------------------------[ ChangeState ]
[State 1600]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド（投げ成功）
;------------------------------------------------------------------------------;
[Statedef 1610]
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
[State 1610]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 4
  StateType = A
  Physics   = N

[State 1610]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

[State 1610]
  Type     = Turn
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 0

;--------------------------------------[ Sounds ]
[State 1610   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 1

[State 1610   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 1

[State 1610   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s40, 2

;--------------------------------------[ Bracelet ]
[State 1610]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1610]
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

[State 1610]
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
[State 1610]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -6
  Y        = -4.5

[State 1610]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.52

;--------------------------------------[ TagetBind ]
[State 1610]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, < 0
  Pos      = 30,0

[State 1610]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Pos      = -20,-75

[State 1610]
  Type     = TargetBind
  Trigger1 = AnimElem = 5, >= 0
  Pos      = -30,-50

;--------------------------------------[ ChangeState ]
[State 1610]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1620

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド（投げ終了）
;------------------------------------------------------------------------------;
[Statedef 1620]
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
[State 1620]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 1620 : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 2

;--------------------------------------[ Movement ]
[State 1620]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1620]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1620]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1625
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1620]
  Type     = EnvShake
  Trigger1 = Time = 0
  Time     = 15
  Ampl     = -8
  Freq     = 95
  Phase    = 95

[State 1620]
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

[State 1620]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7210
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ TagetBind ]
[State 1620]
  Type     = TargetBind
  Trigger1 = AnimElem = 2, < 0
  Pos      = -55,-20

[State 1620]
  Type     = TargetState
  Trigger1 = AnimElem = 1
  Value    = 1640

[State 1620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 0
  Value      = -120
  Kill       = 0

[State 1620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 15
  Value      = -10
  Kill       = 0

[State 1620]
  Type     = TargetLifeAdd
  Trigger1 = Time = 30
  Value      = -15

;--------------------------------------[ ChangeState ]
[State 1620]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド（やられ１）
;------------------------------------------------------------------------------;
[Statedef 1630]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1630   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 1630]
  Type       = Turn
  TriggerAll = Time = 0
  TriggerAll = P2BodyDist X >= 0
  Trigger1   = Enemy,Var(7) = 1
  Trigger2   = Enemy,StateNo = 1660
  Trigger3   = Enemy,StateNo = 2610
  Trigger4   = Enemy,StateNo = 2660

;--------------------------------------[ ChangeAnim ]
[State 1630]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1630

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド（やられ２）
;------------------------------------------------------------------------------;
[Statedef 1640]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1640   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 1640   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 1640]
  Type     = Turn
  Trigger1 = Time = 0

;--------------------------------------[ ChangeAnim ]
[State 1640]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1640

;--------------------------------------[ Movement ]
[State 1640]
  Type     = VelSet
  Trigger1 = AnimElem = 6
  X        = 4
  Y        = -5

[State 1640]
  Type     = VelAdd
  Trigger1 = AnimElem = 6, >= 0
  Y        = 0.45

;--------------------------------------[ ChangeState ]
[State 1640]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 強化版 ファイヤースープレックスホールド
;------------------------------------------------------------------------------;
[Statedef 1650]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 800
  SprPriority = 1

;--------------------------------------[ Others ]
[State 1650   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = [0,3]
  Value    = SA,AA
  Time     = 1

;--------------------------------------[ Others ]
[State 1650]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 1650]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 1650   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

[State 1650   : ]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 18
  Value    = 0

[State 1650]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 23
  Value    = 0

;--------------------------------------[ Sounds ]
[State 1650   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s800, 0

;--------------------------------------[ Bracelet ]
[State 1650]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1650]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 800
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 1650]
  Type      = HitDef
  Trigger1  = Time = 0
  Trigger1  = Enemy,StateType != L
  Attr      = S, ST
  HitFlag   = M-
  Priority  = 1, Miss
  SparkNo   = -1
  P1Facing  = 1
;  P2Facing  = 1
  P1StateNo = 1660
  P2StateNo = 1630
  Fall      = 1

[State 1650]
  Type      = HitDef
  Trigger1  = Time = 0
  Trigger1  = Enemy,StateType = L
  Attr      = S, ST
  HitFlag   = MAFD
  Priority  = 1, Miss
  SparkNo   = -1
  P1Facing  = 1
;  P2Facing  = 1
  P1StateNo = 1660
  P2StateNo = 1630
  Fall      = 1

;--------------------------------------[ ChangeState ]
[State 1650]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 強化版 ファイヤースープレックスホールド（投げ成功）
;------------------------------------------------------------------------------;
[Statedef 1660]
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
[State 1660]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 4
  StateType = A
  Physics   = N

[State 1660]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 1660   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 1

[State 1660   : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 1

[State 1660   : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s40, 2

;--------------------------------------[ Bracelet ]
[State 1660]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1660]
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

[State 1660]
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
[State 1660]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -6
  Y        = -4.5

[State 1660]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.52

;--------------------------------------[ TagetBind ]
[State 1660]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, < 0
  Pos      = 30,0

[State 1660]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Pos      = -20,-75

[State 1660]
  Type     = TargetBind
  Trigger1 = AnimElem = 5, >= 0
  Pos      = -30,-50

;--------------------------------------[ ChangeState ]
[State 1660]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 1670

;------------------------------------------------------------------------------;
; 強化版 ファイヤースープレックスホールド（投げ終了）
;------------------------------------------------------------------------------;
[Statedef 1670]
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
[State 1670]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 1670   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 2

;--------------------------------------[ Movement ]
[State 1670]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 1670]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1670]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1675
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 1670]
  Type     = EnvShake
  Trigger1 = Time = 0
  Time     = 15
  Ampl     = -8
  Freq     = 95
  Phase    = 95

[State 1670]
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

[State 1670]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7210
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ TagetBind ]
[State 1670]
  Type     = TargetBind
  Trigger1 = AnimElem = 2, < 0
  Pos      = -55,-20

[State 1670]
  Type     = TargetState
  Trigger1 = AnimElem = 1
  Value    = 1690

[State 1670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 0
  Value      = -120
  Kill       = 0

[State 1670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 20
  Trigger2 = Time = 35
  Value      = -15
  Kill       = 0

[State 1670]
  Type     = TargetLifeAdd
  Trigger1 = Time = 55
  Value      = -20

;--------------------------------------[ ChangeState ]
[State 1620]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ファイヤースープレックスホールド（やられ２）
;------------------------------------------------------------------------------;
[Statedef 1690]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 1690   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 1690   : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 1690]
  Type     = Turn
  Trigger1 = Time = 0

;--------------------------------------[ ChangeAnim ]
[State 1690]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 1690

;--------------------------------------[ Movement ]
[State 1690]
  Type     = VelSet
  Trigger1 = AnimElem = 11
  X        = 4
  Y        = -5

[State 1690]
  Type     = VelAdd
  Trigger1 = AnimElem = 11, >= 0
  Y        = 0.45

;--------------------------------------[ ChangeState ]
[State 1690]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; メモリーカードスラッシュ
;------------------------------------------------------------------------------;
[Statedef 1700]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1700
  SprPriority = 1

;--------------------------------------[ Others ]
[State 1700]
  Type     = PalFx
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  Time     = 5
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 1700]
  Type     = VarAdd
  Trigger1 = Time = 0
  Trigger1 = Var(10)%10 = 5
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -60

[State 1700]
  Type       = VarSet
  TriggerAll = Time = 0
  trigger1 = var(59) < 1
  Trigger1   = Command = "y"
  trigger2 = var(59) > 0
  trigger2 = var(18) > 0 && ((Var(17) > 0 && var(14) > 0) || random > 900)
  V          = 7
  Value      = 1
  IgnoreHitPause = 1

[State 1700]
  Type       = VarSet
  TriggerAll = Time = 0
  trigger1 = var(59) < 1
  Trigger1   = Command = "x"
   trigger2 = var(59) > 0
  trigger2 = var(14) <= 0 && (var(17) > 0 || random > 800)
  V          = 7
  Value      = 0
  IgnoreHitPause = 1

[State 1700]
  Type       = VarSet
  TriggerAll = Time = 0
  trigger1 = var(59) < 1
  Trigger1   = Command = "b"
  trigger2 = var(59) > 0
  trigger2 = var(17) <= 0
  V          = 7
  Value      = 3
  IgnoreHitPause = 1

[State 1700]
  Type       = VarSet
  TriggerAll = Time = 0
  trigger1 = var(59) < 1
  Trigger1   = Command = "a"
  trigger2 = var(59) > 0
  trigger2 = var(18) > 0 && ((Var(17) > 0 && var(14) > 0) || random > 700)
  V          = 7
  Value      = 2
  IgnoreHitPause = 1

[State 1700]
  Type       = VarSet
  TriggerAll = Time = 0
  trigger1 = var(59) < 1
  Trigger1   = Command = "start"
  trigger2 = var(59) > 0
  trigger2 = var(18) <= 0 && ((Var(17) > 0 && var(14) > 0) || random > 700)
  V          = 7
  Value      = 4
  IgnoreHitPause = 1

[State 1700   : メモリーカードA]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(7) = 0
  V          = 14
  Value      = 420
  IgnoreHitPause = 1

[State 1700   : メモリーカードC]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(7) = 1
  V          = 15
  Value      = 420
  IgnoreHitPause = 1

[State 1700   : メモリーカードB]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(7) = 2
  V          = 16
  Value      = 420
  IgnoreHitPause = 1

[State 1700   : メモリーカードD]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(7) = 3
  V          = 17
  Value      = 420
  IgnoreHitPause = 1

[State 1700   : メモリーカードS]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(7) = 4
  V          = 18
  Value      = 420
  IgnoreHitPause = 1

[State 1700]
  Type       = VarSet
  TriggerAll = AnimElem = 6
  Trigger1   = Var(14) > 0
  Trigger1   = Var(16) > 0
  Trigger1   = Var(18) > 0
  V          = 23
  Value      = 600

[State 1700   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 1700   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 6
  Trigger1 = Var(22) > 0
  V        = 10
  Value    = 5
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 1700]
  Type       = ChangeAnim
  TriggerAll = Time = 0
  Trigger1   = Var(7) = 3
  Value      = 1710

;--------------------------------------[ Sounds ]
[State 1700   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1700, 0
  Channel  = 4

[State 1700   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1705, 0

;--------------------------------------[ Bracelet ]
[State 1700]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 1700]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 1705 + (Anim = 1710)*10
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 1700]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

