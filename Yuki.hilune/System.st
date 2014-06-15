; FileName : System.st
;------------------------------------------------------------------------------;
;==============================================================================;
; システム
;==============================================================================;
;------------------------------------------------------------------------------;
; 緊急回避（前方）
;------------------------------------------------------------------------------;
[Statedef 900]
  Type        = S
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 900
  SprPriority = -2

;--------------------------------------[ Others ]
[State 900]
  Type     = HitBy
  Trigger1 = 1
  Value    = SC, NT, ST, HT

[State 900]
  Type     = PlayerPush
  Trigger1 = AnimElem = 1, > 0
  Value    = 0

[State 900]
  Type       = PowerAdd
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = [150,151]
  Trigger2   = Var(10)%10 = 2
  Value      = -1000

;--------------------------------------[ Effects ]
[State 900]
  Type       = PalFx
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = [150,151]
  Trigger2   = Var(10)%10 = 2
  Time       = 5
  Add        = 230,230,230

[State 900]
  Type        = AfterImage
  Trigger1    = AnimElem = 2
  Time        = 24
  Length      = 6
  TimeGap     = 2
  FrameGap    = 2
  PalBright   = 1, 1, 1
  PalContrast = 128, 128, 128
  PalAdd      = 0, 0, 0
  PalMul      = 1, 1, 1
  Trans       = Add1

;--------------------------------------[ Bracelet ]
[State 900]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 900]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6900
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  RemoveTime  = -1
  SuperMove   = 0
  IgnoreHitPause = 0

;--------------------------------------[ Variable ]
[State 900]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 900]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s900, 0
  Channel  = 4

;--------------------------------------[ Movement ]
[State 900]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 7.5

[State 900]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0

;--------------------------------------[ ChangeState ]
[State 900]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 緊急回避（後方）
;------------------------------------------------------------------------------;
[Statedef 905]
  Type        = S
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 905
  SprPriority = -2

;--------------------------------------[ Others ]
[State 905]
  Type     = HitBy
  Trigger1 = 1
  Value    = SC, NT, ST, HT

[State 905]
  Type     = PlayerPush
  Trigger1 = AnimElem = 1, > 0
  Value    = 0

[State 905]
  Type       = PowerAdd
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = [150,151]
  Trigger2   = Var(10)%10 = 2
  Value      = -1000

;--------------------------------------[ Effects ]
[State 905]
  Type       = PalFx
  Triggerall = Time = 0
  Trigger1   = PrevStateNo = [150,151]
  Trigger2   = Var(10)%10 = 2
  Time       = 5
  Add        = 230,230,230
  IgnoreHitPause = 1

[State 905]
  Type        = AfterImage
  Trigger1    = AnimElem = 2
  Time        = 24
  Length      = 6
  TimeGap     = 2
  FrameGap    = 2
  PalBright   = 1, 1, 1
  PalContrast = 128, 128, 128
  PalAdd      = 0, 0, 0
  PalMul      = 1, 1, 1
  Trans       = Add1
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 905]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 905]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6905
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -1
  BindTime    = -1
  RemoveTime  = -1
  SuperMove   = 0
  IgnoreHitPause = 0

;--------------------------------------[ Variable ]
[State 905]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 905]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s900, 0
  Channel  = 4

;--------------------------------------[ Movement ]
[State 905]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -6.5

[State 905]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = 0

;--------------------------------------[ ChangeState ]
[State 905]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ふっとばし攻撃
;------------------------------------------------------------------------------;
[Statedef 910]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 910
  SprPriority = 1

;--------------------------------------[ ChangeAnim ]
[State 910]
  Type     = ChangeAnim
  Trigger1 = PrevStateNo = [150,151]
  Trigger1 = Time = 0
  Value    = 915
  IgnoreHitPause = 1

;--------------------------------------[ Effects ]
[State 910]
  Type     = PalFx
  Trigger1 = PrevStateNo = [150,151]
  Trigger1 = Time = 0
  Time     = 5
  Add      = 230,230,230

[State 910]
  Type          = AfterImage
  Trigger1      = PrevStateNo = [150,151]
  Trigger1      = Time = 0
  Time          = 38
  Trans         = Add1
  TimeGap       = 2
  FrameGap      = 2
  Length        = 5
  PalBright     = 12,12,12
  PalContrast   = 220,220,220
  PalPostBright = 0,0,0
  PalAdd        = 0,0,0
  PalMul        = 1,1,1

;--------------------------------------[ Bracelet ]
[State 910]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 910]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6910+(Anim=915)*5
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  SuperMove   = 0
  IgnoreHitPause = 0

;--------------------------------------[ Variable ]
[State 910    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 910    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 910    : キャンセル判定セット]
  Type     = Null;VarSet
  Trigger1 = MoveContact
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 910    : 追撃判定]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 11
  Value    = 60
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 910 : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 5
  Value    = s900,2

[State 910 : SE]
  Type     = PlaySnd
  Trigger1 = Anim = 910
  Trigger1 = AnimElem = 4
  Value    = s1, 4

[State 910 : SE, GC]
  Type     = PlaySnd
  Trigger1 = Anim = 915
  Trigger1 = AnimElem = 3
  Value    = s1, 4

;--------------------------------------[ Movement ]
[State 910]
  Type     = PosAdd
  Trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
  X        = 10

;--------------------------------------[ Hit Definition ]
[State 910]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Anim = 915
  Attr             = S, NA
  Damage           = 10
  GetPower         = 0,0
  GivePower        = 5,10
  AnimType         = Diagup
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 13, 14
  SparkNo          = s7010
  Guard.SparkNo    = s7110
  SparkXY          = -20, -75
  HitSound         = s2, 4
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 15
  Ground.HitTime   = 15
  Ground.Velocity  = -5, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -5, -5
  Fall             = 1
  Fall.Recover     = 0
  ID               = 200
  NoChainID        = 800
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

[State 910]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Anim = 910
  Trigger1         = Var(11) < 60
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,120,140)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 13, 14
  SparkNo          = s7010
  Guard.SparkNo    = s7110
  SparkXY          = -20, -75
  HitSound         = s2, 4
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 15
  Ground.HitTime   = 15
  Ground.Velocity  = -5, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -5, -5
  Fall             = 1
  Fall.Recover     = 0
  NoChainID        = 800
  Ground.CornerPush.VelOff = 0
  Air.CornerPush.VelOff    = 0

;--------------------------------------[ ChangeState ]
[State 910]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 空中ふっとばし攻撃
;------------------------------------------------------------------------------;
[Statedef 920]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
;  VelSet      = -0.5, 0.4
  Ctrl        = 0
  Anim        = 920
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 920    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 920    : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 920    : キャンセル判定, Set]
  Type     = Null;VarSet
  Trigger1 = MoveContact
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 920    : 追撃判定]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 11
  Value    = 60
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 920    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s210, Var(1)%3

[State 920    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 7

;--------------------------------------[ Effects ]
[State 920]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 920]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6920
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  SuperMove   = 0
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 920]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = -4.5
  Y        = -2

[State 920]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Trigger1 = Vel X < -1
  X        = 0.1

[State 920]
  Type     = VelAdd
  Trigger1 = AnimElem = 7, >= 0
  Y        = 0.4

;--------------------------------------[ Hit Definition ]
[State 920]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = PrevStateNo != [150,151]
  Trigger1         = Var(11) < 60
  Attr             = A, NA
  Damage           = Ceil(IfElse(Var(3)=0,120,140)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 13, 14
  SparkNo          = s7010
  Guard.SparkNo    = s7110
  SparkXY          = -10, -25
  HitSound         = s2, 4
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 15
  Ground.HitTime   = 15
  Ground.Velocity  = -5, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -5, -5
  Fall             = 1
  Fall.Recover     = 0
  NoChainID        = 800

;--------------------------------------[ ChangeState ]
[State 920]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; タクティカルステップ
;------------------------------------------------------------------------------;
[Statedef 930]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 930
  PowerAdd    = -500
  SprPriority = 2

;--------------------------------------[ Others ]
[State 930]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 930]
  Type       = PowerAdd
  TriggerAll = Time = 0
  Trigger1   = prevstateno = 150
  Trigger2   = prevstateno = 151
  Trigger3   = Var(10) = [2,3]
  Value      = -500

;--------------------------------------[ Effects ]
[State 930]
  Type          = AfterImage
  Trigger1      = Time = 0
  Trans         = add1
  TimeGap       = 3
  FrameGap      = 2
  Time          = 15
  Length        = 6
  PalBright     = 16,16,16
  PalContrast   = 255,255,255
  PalPostBright = 0,0,0
  PalAdd        = 0,0,0
  PalMul        = 1,1,1

[State 930]
  Type       = Palfx
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = 150
  Trigger2   = PrevStateNo = 151
  Trigger3   = Var(10) = [2,3]
  Time       = 6
  Add        = 0,0,176
  Mul        = 0,0,176
  Color      = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Variable ]
[State 930]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 930]
  Type     = VarSet
  Trigger1 = AnimElem = 2
  V        = 10
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 930]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s930, 0

;--------------------------------------[ Movement ]
[State 930]
  Type     = VelSet
  Trigger1 = AnimElem = 2, >= 0 && AnimElem = 5, < 0
  X        = 6.5

;--------------------------------------[ ChangeState ]
[State 930]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; MAX2演出用ヘルパー
;------------------------------------------------------------------------------;
[Statedef 7600]
  Type        = A
  MoveType    = I
  Physics     = N
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 9999
  SprPriority = -50

[State 7600]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoBG
  Flag2    = NoFG
  Flag3    = NoShadow
  IgnoreHitPause = 1

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7600
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7600
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7601
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7601
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7602
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7602
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7603
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7603
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7604
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7604
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7605
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7605
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7606
  ID          = 7600
  Pos         = 0,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7606
  ID          = 7600
  Pos         = -320,0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  RemoveTime  = -1
  SprPriority = -100
  Trans       = AddAlpha
  Alpha       = 200,256
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7600]
  Type     = RemoveExplod
  Trigger1 = Root,MoveType = H
  Trigger2 = Root,StateNo = 3350
  Trigger2 = Root,AnimElem = 41
  Trigger3 = Root,StateNo = 4192
  Trigger3 = Root,Time = 2
  ID       = 7600

[State 7600]
  Type     = ChangeState
  Trigger1 = Root,MoveType = H
  Trigger2 = Root,StateNo = 3350
  Trigger2 = Root,AnimElem = 41
  Trigger3 = Root,StateNo = 4192
  Trigger3 = Root,Time = 8
  Value    = 7610

[State 7600]
  Type     = Null;DestroySelf
  Trigger1 = Root,MoveType = H
  Trigger2 = Root,StateNo != 3300

;------------------------------------------------------------------------------;
; MAX2演出用ヘルパー
;------------------------------------------------------------------------------;
[Statedef 7610]
  Type        = A
  MoveType    = I
  Physics     = N
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 9999
  SprPriority = -50

[State 7610]
  Type     = PosSet
  Trigger1 = Time = 0
  X        = 0
  Y        = 0

[State 7610]
  Type     = AssertSpecial
  Trigger1 = Time = [0,6]
  Flag     = NoBG
  IgnoreHitPause = 1

[State 7610]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoFG
  Flag2    = NoShadow
  IgnoreHitPause = 1

[State 7610]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 7600

[State 7610]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7610+(Root,StateNo!=3400)*10
  ID          = 7610
  Pos         = 0, 0
  PosType     = back
  OwnPal      = 1
  BindTime    = -1
  SprPriority = -100
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State 7610]
  Type     = PlaySnd
  Trigger1 = Time = 7
  Value    = s7500, 10
  Channel  = 3

[State 7610]
  Type     = DestroySelf
  Trigger1 = Time = 8

;------------------------------------------------------------------------------;
; オートチャージ
;------------------------------------------------------------------------------;
[Statedef 7750]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 9999
  SprPriority = 2

;--------------------------------------[ Others ]

[State 7750]
  Type       = Null;VarSet
  TriggerAll = Time = 0
  Trigger1   = FVar(20):= 0.5
  Trigger2   = FVar(21):= 0

[State 7750]
  Type     = VarAdd
  Trigger1 = NumExplod(7750)
  Trigger1 = FVar(21) < 41
  FV       = 21
  Value    = 1

[State 7750]
  Type     = VarAdd
  Trigger1 = FVar(21) = [26,40]
  FV       = 20
  Value    = 0.05

;--------------------------------------[ Sounds ]
[State 7750]
  Type     = PlaySnd
  Trigger1 = Root,Var(29) = 480
  Value    = s905,0
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ Effects ]
[State 7750]
  Type        = Explod
  Trigger1    = !NumExplod(7750)
  Trigger1    = Root,Var(29) >= 480
  Anim        = 7750+(TeamSide=2)*5
  ID          = 7750
  Pos         = 0,60
  PosType     = Back
  Scale       = 0.5,0.5
  OwnPal      = 1
  OnTop       = 1
  BindTime    = -1
  RemoveTime  = -1
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7750]
  Type        = Explod
  Trigger1    = NumExplod(7750)
  Trigger1    = FVar(21) = 26
  Anim        = 7751
  ID          = 7751
  Pos         = 10+(TeamSide=2)*40,60
  PosType     = Back
  Scale       = 0.5,0.5
  OwnPal      = 1
  OnTop       = 1
  BindTime    = -1
  Facing      = IfElse(TeamSide=1,1,-1)
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State 7750]
  Type     = ModifyExplod
  Trigger1 = FVar(21) = [26,40]
  ID       = 7751
  Scale    = FVar(20),FVar(20)

;--------------------------------------[ ChangeState ]
[State 7750]
  Type     = ChangeState
  Trigger1 = Root,Var(29) = 0
  Trigger1 = NumExplod(7750)
  Value    = 7755

;------------------------------------------------------------------------------;
; オートチャージ（終了）
;------------------------------------------------------------------------------;
[Statedef 7755]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 9999
  SprPriority = 2

;--------------------------------------[ Effects ]
[State 7755]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 7750

[State 7755]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7752+(TeamSide=2)*5
  ID          = 7755
  Pos         = 0,60
  PosType     = Back
  Scale       = 0.5,0.5
  OwnPal      = 1
  OnTop       = 1
  BindTime    = -1
  SuperMoveTime = 999999
  PauseMoveTime = 999999

;--------------------------------------[ ChangeState ]
[State 7755]
  Type     = ChangeState
  Trigger1 = Time = 12
  Value    = 7750

;------------------------------------------------------------------------------;
; ハイパーアーマー
;------------------------------------------------------------------------------;
[Statedef 8000]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 8000
  SprPriority = -2

;--------------------------------------[ Others ]
[State 8000   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = StateNo = [4180,4195]
  Value    = SCA
  Time     = 1

[State 8000   : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = ,AT
  Time     = 1

[State 8000]
  Type     = BindToParent
  Trigger1 = 1
  Time     = 1
  Facing   = 1
  Pos      = 0,0
  IngnoreHitPause = 1

;--------------------------------------[ Sounds ]

;--------------------------------------[ ChangeState ]
[State 8000]
  Type     = HitOverRide
  Trigger1 = IsHelper(8000)
  Attr     = SCA,AA,AP
  StateNo  = 8000

[State 8000]
  Type     = ChangeState
  Trigger1 = !IsHelper
  Value    = 0
  Ctrl     = 1

[State 8000]
  Type     = DestroySelf
  Trigger1 = Root,StateNo != [4000,4800]
  Trigger2 = StateNo != 8000


