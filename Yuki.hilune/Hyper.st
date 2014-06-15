;==============================================================================;
; 超必殺技
;==============================================================================;
;------------------------------------------------------------------------------;
; 超ド級ステータスアップ
;------------------------------------------------------------------------------;
[Statedef 3000]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1700
  SprPriority = 1
  PowerAdd    = -1000

;--------------------------------------[ SuperMove ]
[State 3000]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3000]
  Type     = AssertSpecial
  Trigger1 = Time = [0,27]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3000   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 0

[State 3000]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7500
  Pos         = 2, -130
  SprPriority = 10
  OwnPal      = 1
  BindTime    = -1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3000   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 28

;--------------------------------------[ Effects ]
[State 3000   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3000   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3000   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3000]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 3000   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 3000]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "b"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 3000]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "a"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 3000]
  Type     = VarSet
  Trigger1 = Var(7) = 0
  Trigger1 = AnimElem = 6
  V        = 20
  Value    = 240
  IgnoreHitPause = 1

[State 3000]
  Type     = VarSet
  Trigger1 = Var(7) = 1
  Trigger1 = AnimElem = 6
  V        = 21
  Value    = 240
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3000   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1700, 0

[State 3000   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1705, 0

;--------------------------------------[ Bracelet ]
[State 3000]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3000]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3005
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ ChangeState ]
[State 3000]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 超ド級ステータスアップMAX
;------------------------------------------------------------------------------;
[Statedef 3010]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 1700
  SprPriority = 1
  PowerAdd    = -2000

;--------------------------------------[ SuperMove ]
[State 3010]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3010]
  Type     = AssertSpecial
  Trigger1 = Time = [0,27]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3010   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 1

[State 3010]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7510
  Pos         = 2, -130
  SprPriority = 10
  OwnPal      = 1
  BindTime    = -1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 28

;--------------------------------------[ Effects ]
[State 3010   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : DreamCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7710
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 50
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : DreamCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7711
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 48
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010   : DreamCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7712
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 44
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3010]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 3010   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 3010]
  Type     = VarSet
  Trigger1 = AnimElem = 6
  V        = 22
  Value    = 420
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3010   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s1700, 0

[State 3010   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s1705, 0

;--------------------------------------[ Bracelet ]
[State 3010]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3010]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3005
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ ChangeState ]
[State 3010]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 超ド級100メガビーム
;------------------------------------------------------------------------------;
[Statedef 3100]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0.3, -0.5
  Ctrl        = 0
  Anim        = 3100
  SprPriority = 1
  PowerAdd    = -1000

;--------------------------------------[ SuperMove ]
[State 3100]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3100]
  Type     = AssertSpecial
  Trigger1 = Time = [0,37]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3100   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 0

[State 3100]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7500
  Pos         = 3, -115
  SprPriority = 10
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3100   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

[State 3100   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 28

;--------------------------------------[ Variable ]
[State 3100   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 3100]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = IfElse(Command = "a", 0, 1)
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3100   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s3100, 0

[State 3100   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s3105, 1

[State 3100   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 12
  Value    = s3105, 0

;--------------------------------------[ Bracelet ]
[State 3100]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3100]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3105
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100]
  Type        = Explod
  Trigger1    = Time = 12
  Anim        = 3115
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 3125
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3100]
  Type        = Explod
  Trigger1    = Time = 39
  Anim        = 3165
  ID          = 3100
  Pos         = 0, 0
  PosType     = Left
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100]
  Type        = Explod
  Trigger1    = AnimElem = 4
  Anim        = 3155
  ID          = 3100
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3100]
  Type     = EnvColor
  Trigger1 = Time = 38
  Time     = 3
  Value    = 255,255,255
  Under    = 2
  IgnoreHitPause = 1

[State 3100]
  Type     = EnvColor
  Trigger1 = Time = 42
  Time     = 1
  Value    = 0,0,0
  Under    = 2
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 3100]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0
  Y        = 0

[State 3100]
  Type     = VelSet
  Trigger1 = AnimElem = 16
  X        = -1.5

[State 3100]
  Type     = VelAdd
  Trigger1 = AnimElem = 16, >= 0
  Y        = 0.3

;--------------------------------------[ Helper ]
[State 3100]
  Type       = Helper
  Trigger1   = AnimElem = 4
  Name       = "100MegaBeam"
  StateNo    = 3150
  ID         = 3100
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 3100]
  Type       = Helper
  Trigger1   = AnimElem = 4
  Name       = "100MegaBeam"
  StateNo    = 3155
  ID         = 3100
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 3100]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 超ド級100メガビーム（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 3150]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3150
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 3150   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 3150   : 追撃判定]
  Type       = ParentVarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 3150]
  Type             = HitDef
  Trigger1         = Time = 0
  Trigger1         = Root,Var(11) < 10
  Attr             = A, HP
  Damage           = Ceil(IfElse(Root,Var(3)=0,175,195)*Root,FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 36
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -6.5, -7.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -6.5, -7.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 3150]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; 
;------------------------------------------------------------------------------;
[Statedef 3155]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3155
  SprPriority = 2

;--------------------------------------[ Others ]
[State 3155]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 3155]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA,NP,SP,HP
  Time     = -1

;--------------------------------------[ ChangeState ]
[State 3155]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA,NP,SP,HP
  StateNo  = 1080

[State 3155]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; 超ド級MAX330メガビーム
;------------------------------------------------------------------------------;
[Statedef 3200]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0.3, -0.5
  Ctrl        = 0
  Anim        = 3200
  SprPriority = 1
  PowerAdd    = -3000

;--------------------------------------[ SuperMove ]
[State 3200]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3200]
  Type     = AssertSpecial
  Trigger1 = Time = [0,32]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3200   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 1

[State 3200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7510
  Pos         = 3, -115
  SprPriority = 10
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 28

;--------------------------------------[ Effects ]
[State 3200   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : DreamCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7710
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 50
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : DreamCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7711
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 48
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200   : DreamCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7712
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 44
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 3200   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3200   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s3200, 0

[State 3200   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s3200, 1
  Channel  = 4

[State 3200   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s3205, 0
  Channel  = 8

[State 3200   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 12
  Value    = s3105, 0

;--------------------------------------[ Bracelet ]
[State 3200]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3105
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200]
  Type        = Explod
  Trigger1    = Time = 12
  Anim        = 3215
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 3125
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3200]
  Type        = Explod
  Trigger1    = Time = 32
  Anim        = 3265
  ID          = 3200
  Pos         = 0, 0
  PosType     = Left
  SprPriority = -1
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200]
  Type        = Explod
  Trigger1    = AnimElem = 4
  Anim        = 3255
  ID          = 3200
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3200]
  Type     = EnvColor
  Trigger1 = Time = 33
  Time     = 1
  Value    = 255,255,255
  Under    = 2
  IgnoreHitPause = 1

[State 3200]
  Type     = EnvColor
  Trigger1 = Time = 34
  Time     = 1
  Value    = 0,0,0
  Under    = 2
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 3200]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0
  Y        = 0

[State 3200]
  Type     = VelSet
  Trigger1 = AnimElem = 16
  X        = -1.5

[State 3200]
  Type     = VelAdd
  Trigger1 = AnimElem = 16, >= 0
  Y        = 0.3

;--------------------------------------[ Helper ]
[State 3200]
  Type       = Helper
  Trigger1   = AnimElem = 4
  Name       = "MAX330MegaBeam"
  StateNo    = 3250
  ID         = 3200
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

[State 3200]
  Type       = Helper
  Trigger1   = AnimElem = 4
  Name       = "MAX330MegaBeam"
  StateNo    = 3255
  ID         = 3205
  Pos        = 0, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;--------------------------------------[ ChangeState ]
[State 3200]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 超ド級MAX330メガビーム（飛び道具）
;------------------------------------------------------------------------------;
[Statedef 3250]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3250
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 3250   : コンボ数カウント]
  Type     = ParentVarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 3250   : 追撃判定]
  Type       = ParentVarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 20
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 3250]
  Type             = HitDef
  Trigger1         = Root,Var(11) < 60
  Trigger1         = HitCount <= 2
  Attr             = A, HP
  Damage           = Ceil(IfElse(Root,Var(3)=0,155,170)*Root,FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 20,25
  AnimType         = DiagUp
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 22
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -6.5, -5.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -6.5, -5.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

[State 3250]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 3250]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; 
;------------------------------------------------------------------------------;
[Statedef 3255]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3255
  SprPriority = 2

;--------------------------------------[ Others ]
[State 3255]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = -1

[State 3155]
  Type     = HitBy
  Trigger1 = 1
  Value    = SCA,NP,SP,HP
  Time     = -1

;--------------------------------------[ ChangeState ]
[State 3255]
  Type     = HitOverRide
  Trigger1 = 1
  Attr     = SCA,NP,SP,HP
  StateNo  = 3255

[State 3255]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = NumHelper(3200) = 0

;------------------------------------------------------------------------------;
; 超ド級ネオジオ乱舞（移動）
;------------------------------------------------------------------------------;
[Statedef 3300]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3300
  SprPriority = 1
  PowerAdd    = -1000

;--------------------------------------[ Others ]
[State 3300]
  Type     = Width
  Trigger1 = 1
  Edge     = 30,0

;--------------------------------------[ SuperMove ]
[State 3300]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3300]
  Type     = AssertSpecial
  Trigger1 = Time = [0,27]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3300   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 0

[State 3300]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7500
  Pos         = 6, -100
  SprPriority = 10
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3300   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3300   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3300   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3300]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

[State 3300   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 28

;--------------------------------------[ Variable ]
[State 3300]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 3300]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "x"
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 3300   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ ChangeAnim ]
[State 3300]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 1
  Value    = 3301

;--------------------------------------[ Sounds ]
[State 3300   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s1305, 0

;--------------------------------------[ Movement ]
[State 3300]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 8+Var(7)

[State 3300]
  Type       = VelAdd
  TriggerAll = Vel X > 0
  Trigger1   = Var(7) = 0
  Trigger1   = AnimElem = 8, >= 0
  Trigger2   = Var(7) = 1
  Trigger2   = AnimElem = 12, >= 0
  X          = -0.25

[State 3300]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 3300]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3300]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3305
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3300]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1345
  ID          = 3300
  Pos         = -23, -80
  PosType     = P1
  SprPriority = -1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ TagetBind ]
[State 3300]
  Type     = TargetBind
  Trigger1 = MoveHit = 1
  Pos      = 40,0
  IngoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 3300]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 12
  Trigger2         = Var(22) > 0
  Attr             = S, HA
  Damage           = 30, 0
  GetPower         = 0,0
  GivePower        = 15,20
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -1.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Kill             = 0
  P1StateNo        = 3310
  P2StateNo        = 3340
  P2Facing         = 1

;--------------------------------------[ ChangeState ]
[State 3300]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 超ド級ネオジオ乱舞（攻撃）
;------------------------------------------------------------------------------;
[Statedef 3310]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 1.5, 0
  Ctrl        = 0
  Anim        = 3310
  SprPriority = 1

;--------------------------------------[ Others ]
[State 3310]
  Type     = Width
  Trigger1 = 1
  Edge     = 30,0

;--------------------------------------[ Variable ]
[State 3310   : コンボ数カウント]
  Type       = VarAdd
  TriggerAll = MoveHit = 1
  Trigger1   = AnimElem = 33, < 0 && HitPauseTime = 1
  Trigger2   = AnimElem = 33, >= 0 && HitPauseTime = 10
  V          = 2
  Value      = 1
  IgnoreHitPause = 1

[State 3310]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 3320]
  Type     = VarSet
  Trigger1 = AnimElem = 4, >= 0 && AnimElem = 32, < 0
  Trigger1 = Command = "2141236X" || Command = "2141236Y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 3310   : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = Var(7) = 0
  Trigger1 = MoveContact
  V        = 10
  Value    = 6
  IgnoreHitPause = 1

[State 3310   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Var(7) = 1
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 3310]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0

[State 3310]
  Type     = VarSet
  Trigger1 = AnimElem = 32, > 0
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1

;--------------------------------------[ Sounds ]
[State 3310]
  Type     = PlaySnd
  Trigger1 = Time = 1
  Value    = 0, 0

;--------------------------------------[ Movement ]
[State 3310]
  Type     = VelSet
  Trigger1 = AnimElem = 29
  X        = 0

;--------------------------------------[ Bracelet ]
[State 3310]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3310]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3315
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ TagetBind ]
[State 3310]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = 40,0
  IngoreHitPause = 1
  Persistent     = 0

[State 3310]
  Type     = TargetState
  Trigger1 = Var(7) = 1
  Trigger1 = Var(12) = 1
  Value    = 3370
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 3310]
  Type             = HitDef
  Trigger1         = AnimElem = 4
  Trigger2         = AnimElem = 11
  Trigger3         = AnimElem = 23
  Trigger4         = AnimElem = 24
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,20,30)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 4
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 17
  Ground.HitTime   = 17
  Ground.Velocity  = 0.25
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Kill             = 0
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

[State 3310]
  Type             = HitDef
  Trigger1         = AnimElem = 7
  Trigger2         = AnimElem = 18
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 2, 4
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 3
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 17
  Ground.HitTime   = 17
  Ground.Velocity  = 0.25
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Kill             = 0
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

[State 3310]
  Type             = HitDef
  Trigger1         = AnimElem = 33
  Attr             = S, HA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 11, 12
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -3.5, -10
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3.5, -10
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  YAccel           = 0.45
  Kill             = 0
  P2Facing         = 1

[State 3310]
  Type     = MoveHitReset
  Trigger1 = AnimElem = 32
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 3310]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Trigger1 = Var(7) = 0
  Trigger1 = Var(12) = 0
  Value    = 0
  Ctrl     = 1

[State 3310]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Trigger1 = Var(7) = 0
  Trigger1 = Var(12) = 1
  Value    = 3320

[State 3310]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Trigger1 = Var(7) = 1
  Trigger1 = Var(12) = 1
  Value    = 3350

;------------------------------------------------------------------------------;
; 超ド級ネオジオ乱舞（トドメ）
;------------------------------------------------------------------------------;
[Statedef 3320]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3320
  SprPriority = 1

;--------------------------------------[ Others ]
[State 3320]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 7
  StateType = A
  Physics   = N

[State 3320]
  Type     = Width
  Trigger1 = 1
  Edge     = 30,0

;--------------------------------------[ Sounds ]
[State 3320   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 10
  Value    = s3300, 0

;--------------------------------------[ Movement ]
[State 3320]
  Type     = PosAdd
  Trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
  Trigger2 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
  X        = 10

[State 3320]
  Type     = VelSet
  Trigger1 = AnimElem = 6
  X        = 4.5
  Y        = -3

[State 3320]
  Type     = VelSet
  Trigger1 = AnimElem = 12
  X        = 2.5

[State 3320]
  Type     = VelAdd
  Trigger1 = AnimElem = 12, >= 0
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 3320]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3320]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3325
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Hit Definition ]
[State 3320]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = A, HA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(5)), 10
  GetPower         = 0,0
  GivePower        = 8,15
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 4
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 19
  Ground.HitTime   = 19
  Ground.Velocity  = -7.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -7.5, -6
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0
  P2Facing         = 1

;--------------------------------------[ TagetBind ]
[State 3320]
  Type     = TargetState
  Trigger1 = MoveHit
  Value    = 2030
  Persistent = 0

;--------------------------------------[ ChangeState ]
[State 3320]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 超ド級ネオジオ乱舞（やられ）
;------------------------------------------------------------------------------;
[Statedef 3340]
  Type        = S
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -1

;--------------------------------------[ Others ]
[State 3340]
  Type     = HitFallSet
  Trigger1 = Time = 0
  Value    = 0

;--------------------------------------[ ChangeAnim ]
[State 3340]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = 5002

;--------------------------------------[ Movement ]
[State 3340]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ ChangeState ]
[State 3340]
  Type     = SelfState
  Trigger1 = AnimTime = 0
  Value    = 5005

;------------------------------------------------------------------------------;
; ラストショット
;------------------------------------------------------------------------------;
[Statedef 3350]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3350
  SprPriority = 1
  PowerAdd    = -1000

;--------------------------------------[ Others ]
[State 3350]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 9
  StateType = A
  Physics   = N

[State 3350]
  Type     = Width
  Trigger1 = 1
  Edge     = 40,0

;--------------------------------------[ SuperMove ]
[State 3350]
  Type     = Pause
  Trigger1 = AnimElem = 4, >= 0 && AnimElem = 11, < 0
  Trigger1 = Time%2
  MoveTime = 1
  Time     = 1
  IgnoreHitPause = 1

[State 3350]
  Type     = Null;AssertSpecial
  Trigger1 = AnimElem = 1, >= 0 && AnimElem = 8, < 0
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s7500, 1

[State 3350]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7510
  Pos         = 2, -66
  SprPriority = 10
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Variable ]
[State 3350   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3350   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s3300, 1
  Volume   = 100

[State 3350   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 41
  Value    = s3300, 2

[State 3350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Trigger2 = AnimElem = 33
  Value    = s2, 1

[State 3350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 21
  Trigger2 = AnimElem = 26
  Value    = s2, 3

[State 3350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 41
  Value    = s2, 4

[State 3350   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 41
  Value    = s3105, 1

;--------------------------------------[ Movement ]
[State 3350]
  Type     = VelSet
  Trigger1 = AnimElem = 9
  X        = 1
  Y        = -3.5

[State 3350]
  Type     = VelSet
  Trigger1 = AnimElem = 14
  X        = 0.35
  Y        = -0.35

[State 3350]
  Type     = VelSet
  Trigger1 = AnimElem = 41
  X        = 0
  Y        = 0

[State 3350]
  Type     = VelSet
  Trigger1 = AnimElem = 50
  X        = -2

[State 3350]
  Type     = VelAdd
  Trigger1 = AnimElem = 50, >= 0
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 3350]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3355
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3350   : カットイン, 1]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7650
  Pos         = IfElse(Facing=1,-320,319),60
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -15
  Facing      = IfElse(Facing=-1,-1,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3350   : カットイン, 2]
  Type        = Explod
  Trigger1    = Time = 2
  Anim        = 7670+(PalNo=[1,3])+(PalNo=[7,9])
  Pos         = IfElse(Facing=1,-320,319),60
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -10
  Facing      = IfElse(Facing=-1,-1,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 41, = 1
  Anim        = 3365
  ID          = 3350
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 14
  Anim        = 7020
  ID          = 3350
  Pos         = 25, -90
  PosType     = P1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 21
  Anim        = 7020
  ID          = 3350
  Pos         = 35, -110
  PosType     = P1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 26
  Anim        = 7020
  ID          = 3350
  Pos         = 50, -55
  PosType     = P1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 33
  Anim        = 7020
  ID          = 3350
  Pos         = 35, -135
  PosType     = P1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3350]
  Type        = Explod
  Trigger1    = AnimElem = 41
  Anim        = 7020
  ID          = 3350
  Pos         = 30, -130
  PosType     = P1
  OnTop       = 1
  IgnoreHitPause = 1

;--------------------------------------[ TagetBind ]
[State 3350]
  Type     = TargetBind
  Trigger1 = AnimElem = 14
  Trigger2 = AnimElem = 21
  Trigger3 = AnimElem = 26
  Trigger4 = AnimElem = 33
  Pos      = 45,-35

[State 3350]
  Type     = TargetState
  Trigger1 = AnimElem = 14
  Trigger2 = AnimElem = 21
  Trigger3 = AnimElem = 26
  Trigger4 = AnimElem = 33
  Value    = 3380

[State 3350]
  Type     = TargetState
  Trigger1 = AnimElem = 41
  Value    = 3390

[State 3350]
  Type     = HitAdd
  Trigger1 = AnimElem = 14
  Trigger2 = AnimElem = 21
  Trigger3 = AnimElem = 26
  Trigger4 = AnimElem = 33
  Trigger5 = AnimElem = 41
  Value    = 1

[State 3350]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 14
  Trigger2 = AnimElem = 21
  Trigger3 = AnimElem = 26
  Trigger4 = AnimElem = 33
  Value    = -Ceil(IfElse(Var(3)=0,30,40)*FVar(5))
  Kill     = 0

[State 3350]
  Type     = TargetLifeAdd
  Trigger1 = AnimElem = 41
  Value    = -60

;--------------------------------------[ ChangeState ]
[State 3350]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; ラストショット（やられ１）
;------------------------------------------------------------------------------;
[Statedef 3370]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 3370]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 3370]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 3370]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 3370

;--------------------------------------[ Movement ]
[State 3370]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -0.5
  Y        = -12.5

[State 3370]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Y        = 0.46

;--------------------------------------[ ChangeState ]
[State 3370]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; ラストショット（やられ２）
;------------------------------------------------------------------------------;
[Statedef 3380]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -1

;--------------------------------------[ Others ]
[State 3370]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 3380]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 3380]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 3380

;--------------------------------------[ Movement ]
[State 3380]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -0.35
  Y        = -0.35

;--------------------------------------[ ChangeState ]
[State 3380]
  Type     = SelfState
  Trigger1 = AnimTime = 0
  Value    = 5005

;------------------------------------------------------------------------------;
; ラストショット（やられ３）
;------------------------------------------------------------------------------;
[Statedef 3390]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 3390]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 3390]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 3390]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = 5050

;--------------------------------------[ Movement ]
[State 3390]
  Type     = VelSet
  Trigger1 = Time = 0
  X        = -6
  Y        = -9

[State 3390]
  Type     = VelAdd
  Trigger1 = 1
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 3390]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

;------------------------------------------------------------------------------;
; 合体変身!チェンジ・アトミックガイ・ネオス
;------------------------------------------------------------------------------;
[Statedef 3400]
  Type        = S
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3400
  SprPriority = 1
  PowerAdd    = -3000

;--------------------------------------[ Others ]
[State 3400]
  Type     = Width
  Trigger1 = 1
  Edge     = 30,0

;--------------------------------------[ SuperMove ]
[State 3400]
  Type     = Pause
  Trigger1 = Time = 0
  MoveTime = 28
  Time     = 28
  IgnoreHitPause = 1

[State 3400]
  Type     = AssertSpecial
  Trigger1 = Time = [0,77]
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

[State 3400   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s7500, 2

[State 3400   : SE]
  Type     = Null;PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s7500, 2

[State 3400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7520
  Pos         = 6, -100
  SprPriority = 10
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400]
  Type        = Null;Explod
  Trigger1    = AnimElem = 14
  Anim        = 7610
  PosType     = Back
  Pos         = 0, 0
  OwnPal      = 1
  Under       = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = Time = 0
  Value    = SCA
  Time     = 35

;--------------------------------------[ Effects ]
[State 3400   : SuperCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7700
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 70
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : SuperCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7701
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 68
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : SuperCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = [4,5]
  Anim        = 7702
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 64
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : DreamCancel, 1]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7710
  ID          = 7700
  SprPriority = 50
  PosType     = Left
  Pos         = 0, 50
  BindTime    = -1
  Scale       = 0.5, 0.5
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : DreamCancel, 2]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7711
  ID          = 7700
  SprPriority = 51
  PosType     = Left
  Pos         = 0, 48
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400   : DreamCancel, 3]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Var(10)%10 = 6
  Anim        = 7712
  ID          = 7700
  SprPriority = 49
  PosType     = Right
  Pos         = 0, 44
  BindTime    = -1
  Under       = 0
  OwnPal      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3400]
  Type     = PalFx
  Trigger1 = Time = [0,10]
  Trigger1 = Time%2 = 0
  Trigger1 = NumExplod(7700) != 0
  Time     = 1
  Add      = 230,0,0
  IgnoreHitPause = 1

;--------------------------------------[ Variable ]
[State 3400   : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 3400   : Reset]
  Type       = Null;VarSet
  TriggerAll = Time = 0
  Trigger1   = Var(14):=0
  Trigger2   = Var(16):=0
  Trigger3   = Var(18):=0
  Trigger4   = Var(23):=0
  Trigger5   = Var(29):=0

;--------------------------------------[ Sounds ]
[State 3400   : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s3400, 0

[State 3400   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s1305, 0

;--------------------------------------[ Movement ]
[State 3400]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 8

[State 3400]
  Type     = VelAdd
  Trigger1 = Vel X > 0
  Trigger1 = AnimElem = 11, >= 0
  X        = -0.25

[State 3400]
  Type     = VelSet
  Trigger1 = Vel X <= 0
  X        = 0

;--------------------------------------[ Bracelet ]
[State 3400]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3405
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 3400]
  Type        = Explod
  Trigger1    = AnimElem = 5
  Anim        = 1345
  ID          = 3400
  Pos         = -23, -80
  PosType     = P1
  SprPriority = -1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ TagetBind ]
[State 3400]
  Type     = TargetState
  Trigger1 = MoveHit
  Value    = 3490
  IngoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Hit Definition ]
[State 3400]
  Type             = HitDef
  Trigger1         = Time = 0
  Attr             = S, HA
  Damage           = 0, 0
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7020
  Gaurd.SparkNo    = s7150
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = 0
  Air.Type         = High
  Air.HitTime      = 16
  Air.Velocity     = 0, -5
  Kill             = 0
  P2Facing         = 1
  NoChainID        = 400

;--------------------------------------[ ChangeState ]
[State 3400]
  Type     = ChangeState
  Trigger1 = MoveHit
  Trigger1 = Enemy,StateNo = 3490
  Value    = 3410

[State 3400]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（ユウキ，定位置まで移動）
;------------------------------------------------------------------------------;
[Statedef 3410]
  Type        = S
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3410
  SprPriority = 1

;--------------------------------------[ Others ]
[State 3410]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 3410]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3410]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3415
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 3410]
  Type     = VelSet
  Trigger1 = Time = 0
  Trigger1 = BackEdgeBodyDist < 177
  Trigger1 = BackEdgeBodyDist != [167,177]
  X        = 3

[State 3410]
  Type     = VelSet
  Trigger1 = Time = 0
  Trigger1 = BackEdgeBodyDist > 177
  Trigger1 = BackEdgeBodyDist != [177,187]
  X        = -3

[State 3410]
  Type     = VelSet
  Trigger1 = BackEdgeBodyDist != 177
  Trigger1 = BackEdgeBodyDist = [167,176]
  X        = 1

[State 3410]
  Type     = VelSet
  Trigger1 = BackEdgeBodyDist != 177
  Trigger1 = BackEdgeBodyDist = [178,187]
  X        = -1

;--------------------------------------[ ChangeState ]
[State 3410]
  Type     = ChangeState
  Trigger1 = BackEdgeBodyDist = 177
  Value    = 3420

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（ユウキ，待機）
;------------------------------------------------------------------------------;
[Statedef 3420]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3420
  SprPriority = 1

;--------------------------------------[ Others ]
[State 3420]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3420   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s3400, 1

;--------------------------------------[ Bracelet ]

[State 3420   : カットイン, 1]
  Type        = Explod
  Trigger1    = AnimElem = 2
  Anim        = 7655
  Pos         = IfElse(Facing=1,-320,319),32
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -15
  Facing      = IfElse(Facing=-1,-1,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3420   : カットイン, 2]
  Type        = Explod
  Trigger1    = AnimElem = 2, = 2
  Anim        = 7675+(PalNo=[1,3])+(PalNo=[7,9])
  Pos         = IfElse(Facing=1,-320,319),32
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -10
  Facing      = IfElse(Facing=-1,-1,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Movement ]
[State 3410]
  Type     = PosSet
  Trigger1 = Time = [0,10]
  Trigger1 = Facing = 1
  X        = 32

[State 3410]
  Type     = PosSet
  Trigger1 = Time = [0,10]
  Trigger1 = Facing = -1
  X        = -32

;--------------------------------------[ Helper ]
[State 3420]
  Type       = Helper
  Trigger1   = AnimElem = 4
  Name       = "ai"
  StateNo    = 3450
  ID         = 3400
  Pos        = -320, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0
  Persistent = 0

;--------------------------------------[ ChangeState ]
[State 3420]
  Type     = ChangeState
  Trigger1 = Var(25) = 1
  Value    = 3430

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（ギガパワーチェンジ！）
;------------------------------------------------------------------------------;
[Statedef 3430]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3430
  SprPriority = 1

;--------------------------------------[ Others ]
[State 3430]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoFG
  Flag2    = NoBG
  Flag3    = NoBarDisplay
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 3430   : Voice, 1]
  Type     = PlaySnd
  Trigger1 = AnimElem = 6
  Value    = s3400, 2

[State 3430   : Voice, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s3400, 3

[State 3430   : Voice, 3]
  Type     = PlaySnd
  Trigger1 = AnimElem = 16
  Value    = s182, 0

[State 3430   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 15
  Value    = s3405, 0

[State 3430   : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 16
  Value    = s3405, 1

;--------------------------------------[ Bracelet ]
[State 3430]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 3430]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3435
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 3430]
  Type        = Explod
  Trigger1    = AnimElem = 15
  Anim        = 3475
  ID          = 3430
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  OwnPal      = 1
  IgnoreHitPause = 1

[State 3430]
  Type        = EnvColor
  Trigger1    = Time = 87
  Time        = 2
  Value       = 255,255,255
  SprPriority = -10
  IgnoreHitPause = 1

[State 3430]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 3480
  ID          = 3430
  Pos         = 0, 0
  PosType     = Left
  BindTime    = -1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3430]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 3440
  ID          = 3430
  Pos         = 0, 0
  PosType     = Left
  BindTime    = -1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 1

[State 3430]
  Type        = Explod
  Trigger1    = AnimElem = 16
  Anim        = 3445
  ID          = 6000
  Pos         = 0, 0
  PosType     = Left
  BindTime    = -1
  OwnPal      = 1
  OnTop       = 1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 3430]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 4191

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（アイ召喚）
;------------------------------------------------------------------------------;
[Statedef 3450]
  Type        = S
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 6, 0
  Ctrl        = 0
  Anim        = 3450
  SprPriority = -2

;--------------------------------------[ Sounds ]
[State 3450   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s3405, 10

;--------------------------------------[ Movement ]
[State 3450]
  Type     = VelSet
  Trigger1 = BackEdgeBodyDist != 112
  Trigger1 = BackEdgeBodyDist = [102,112]
  X        = 1

;--------------------------------------[ ChangeState ]
[State 3450]
  Type     = ChangeState
  Trigger1 = BackEdgeBodyDist = 112
  Value    = 3460

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（アイ到着）
;------------------------------------------------------------------------------;
[Statedef 3460]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3460
  SprPriority = -2

;--------------------------------------[ Sounds ]
[State 3460   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 11
  Value    = s3400, 10

[State 3460   : SE]
  Type     = PlaySnd
  Trigger1 = Time = 3
  Value    = s3405, 11

;--------------------------------------[ Effects ]
[State 3460   : カットイン, 1]
  Type        = Explod
  Trigger1    = AnimElem = 9, = 2
  Anim        = 7656
  Pos         = IfElse(Facing=1,-1,0),95
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -15
  Facing      = IfElse(Facing=-1,1,-1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3460   : カットイン, 2]
  Type        = Explod
  Trigger1    = AnimElem = 10
  Anim        = 7680
  Pos         = IfElse(Facing=1,-1,0),95
  OwnPal      = 1
  PosType     = Front
  BindTime    = -1
  SprPriority = -10
  Facing      = IfElse(Facing=-1,1,-1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 3460]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 3465
  ID          = 3460
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 3460]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 3470

;------------------------------------------------------------------------------;
; チェンジ・アトミックガイ（ぎがぱわーちぇーんじ）
;------------------------------------------------------------------------------;
[Statedef 3470]
  Type        = S
  MoveType    = I
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 3470
  SprPriority = -2

;--------------------------------------[ Variable ]
[State 3460]
  Type     = ParentVarSet
  Trigger1 = Time = 0
  V        = 25
  Value    = 1

;--------------------------------------[ Sounds ]
[State 3470   : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 14
  Value    = s3400, 11

;--------------------------------------[ ChangeState ]
[State 3470]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; チェンジ･アトミックガイ（やられ）
;------------------------------------------------------------------------------;
[Statedef 3490]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 3490]
  Type     = NotHitBy
  Trigger1 = Vel Y <= 0
  Value    = SCA

[State 3490]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

;--------------------------------------[ ChangeAnim ]
[State 3490]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 3490

;--------------------------------------[ Movement ]
[State 3490]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = -18

[State 3490]
  Type     = PosSet
  Trigger1 = Enemy,Var(25) = 1
  X        = 100*Enemy,Facing
  Persistent = 0

[State 3490]
  Type     = PosSet
  Trigger1 = ScreenPos Y != [0, 240]
  Y        = -1000
  Persistent = 0

[State 3490]
  Type     = VelSet
  Trigger1 = ScreenPos Y != [0, 240]
  Y        = 0
  Persistent = 0

[State 3490]
  Type     = VelSet
  Trigger1 = Pos Y = -1000
  Trigger1 = Enemy,StateNo = 4191
  Y        = 2

[State 3490]
  Type     = VelAdd
  Trigger1 = Vel Y != 0
  Y        = 0.4

;--------------------------------------[ ChangeState ]
[State 3490]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100




