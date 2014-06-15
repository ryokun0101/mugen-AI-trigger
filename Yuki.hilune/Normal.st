; FileName : Normal.st
;------------------------------------------------------------------------------;
;==============================================================================;
; 通常攻撃
;==============================================================================;

;------------------------------------------------------------------------------;
; 遠距離立ち弱パンチ
;------------------------------------------------------------------------------;
[Statedef 200]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 200
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 200    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 200    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 200    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 200    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s200, Var(1)%6

[State 200    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s1, 0

;--------------------------------------[ Bracelet ]
[State 200]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 200]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6200
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 200]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -15, -80
  HitSound         = s2, 0
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 200]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 近距離立ち弱パンチ
;------------------------------------------------------------------------------;
[Statedef 205]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 205
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 205    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 205    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 205    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 205    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s200, Var(1)%6

[State 205    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s1, 0

;--------------------------------------[ Bracelet ]
[State 205]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 205]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6205
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 205]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -20, -80
  HitSound         = s2, 0
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 205]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 遠距離立ち強パンチ
;------------------------------------------------------------------------------;
[Statedef 210]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 210
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 210    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 210    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 210    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 7
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 210    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 210    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s210, Var(1)%6

[State 210    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 5

;--------------------------------------[ Bracelet ]
[State 210]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 210]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6210
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 210]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 210]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 近距離立ち強パンチ
;------------------------------------------------------------------------------;
[Statedef 215]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 215
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 215    : コマンド判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 215    : コマンド判定セット]
  Type     = VarSet
  Trigger1 = MoveContact
  Trigger1 = Command = "6Y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1
  Persitent      = 0

[State 215    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 215    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 215    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 7
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 215    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 215      : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s210, Var(1)%6

[State 215      : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 1

;--------------------------------------[ Bracelet ]
[State 215]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 215]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6215
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 215]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -5.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 215]
  Type     = ChangeState
  Trigger1 = AnimElem = 4, >= 0 && AnimElem = 6, < 0
  Trigger1 = Var(7) = 1
  Value    = 300

[State 215]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 遠距離立ち弱キック
;------------------------------------------------------------------------------;
[Statedef 230]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 230
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 230    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 230    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 230    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 5
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 230    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 230    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s200, Var(1)%6

[State 230    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 2

;--------------------------------------[ Bracelet ]
[State 230]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 230]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6230
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 230]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -80
  HitSound         = s2, 2
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 230]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 近距離立ち弱キック
;------------------------------------------------------------------------------;
[Statedef 235]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 235
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 235    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 235    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 235    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 235    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 235    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 2

;--------------------------------------[ Bracelet ]
[State 235]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 235]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6235
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 235]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = L
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -25
  HitSound         = s2, 2
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -4
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 235]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 遠距離立ち強キック
;------------------------------------------------------------------------------;
[Statedef 240]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 240
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 240    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 240    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 240    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 8
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 240    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 240    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s210, Var(1)%6

[State 240    : SE, 1]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s1, 3

[State 240    : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 8
  Value    = s1, 10

;--------------------------------------[ Bracelet ]
[State 240]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 240]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6240
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 240]
  Type        = Explod
  Trigger1    = AnimElem = 8
  Anim        = 7200
  Pos         = 0, 0
  PosType     = P1
  SprPriority = -2
  BindTime    = -1
  IgnoreHitPause = 1

;--------------------------------------[ Hit Definition ]
[State 240]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -20, -80
  HitSound         = s2, 3
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -4, -5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Fall             = 1
  Air.Fall         = 1
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 240]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 近距離立ち強キック
;------------------------------------------------------------------------------;
[Statedef 245]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 245
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 245    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 245    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 245    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 6
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 245    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 245    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s210, Var(1)%6

[State 245    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 3

;--------------------------------------[ Bracelet ]
[State 245]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 245]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6245
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 245]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, NA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -30, -80
  HitSound         = s2, 3
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -8
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 245]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; しゃがみ弱パンチ
;------------------------------------------------------------------------------;
[Statedef 400]
  Type        = C
  MoveType    = A
  Physics     = C
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 400
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 400    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 400    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 400    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 400    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 400    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 0

;--------------------------------------[ Bracelet ]
[State 400]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 400]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6400
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 400]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = C, NA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -70
  HitSound         = s2, 0
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -6
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]

[State 400]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 11
  Ctrl     = 1

;------------------------------------------------------------------------------;
; しゃがみ強パンチ
;------------------------------------------------------------------------------;
[Statedef 410]
  Type        = C
  MoveType    = A
  Physics     = C
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 410
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

[State 410]
  Type     = StateTypeSet
  Trigger1 = Time = 0
  StateType = A

[State 410]
  Type     = StateTypeSet
  Trigger1 = AnimElem = 10
  StateType = S

;--------------------------------------[ Variable ]
[State 410    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 410    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 410    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 410    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s210, Var(1)%6

[State 410    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 7

;--------------------------------------[ Movement ]
[State 410]
  Type     = VelSet
  Trigger1 = AnimElem = 1, >= 0 && AnimElem = 5, < 0
  X        = -1.6

[State 410]
  Type     = VelSet
  Trigger1 = AnimElem = 5, >= 0 && AnimElem = 7, < 0
  X        = -1.2

;--------------------------------------[ Bracelet ]
[State 410]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 410]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6410
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 410]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = C, NA
  Damage           = Ceil(IfElse(Var(3)=0,70,80)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -10, -25
  HitSound         = s2, 1
  GuardSound       = s120, 0
  Ground.Type      = Low
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -4, -5
  Air.Type         = Low
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 410]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 11
  Ctrl     = 1

;------------------------------------------------------------------------------;
; しゃがみ弱キック
;------------------------------------------------------------------------------;
[Statedef 430]
  Type        = C
  MoveType    = A
  Physics     = C
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 430
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 430    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 430    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 430    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 430    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 430    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 2

;--------------------------------------[ Bracelet ]
[State 430]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 430]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6430
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 430]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = C, NA
  Damage           = Ceil(IfElse(Var(3)=0,20,30)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = L
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -10
  HitSound         = s2, 2
  GuardSound       = s120, 0
  Ground.Type      = Low
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -6
  Air.Type         = Low
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 430]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 11
  Ctrl     = 1

;------------------------------------------------------------------------------;
; しゃがみ強キック
;------------------------------------------------------------------------------;
[Statedef 440]
  Type        = C
  MoveType    = A
  Physics     = C
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 440
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 440    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 440    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 440    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 30
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 440    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s210, Var(1)%6

[State 440    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 8

;--------------------------------------[ Bracelet ]
[State 440]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 440]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6440
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 440]
  Type     = VelSet
  Trigger1 = AnimElem = 2, >= 0 && AnimElem = 3, < 0
  X        = 1.5

[State 440]
  Type     = VelSet
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 6, < 0
  X        = 3.5

[State 440]
  Type     = VelSet
  Trigger1 = AnimElem = 6, >= 0 && AnimElem = 7, < 0
  X        = 2.5

[State 440]
  Type     = VelSet
  Trigger1 = AnimElem = 8
  X        = 1.5

[State 440]
  Type     = VelSet
  Trigger1 = AnimElem = 9
  X        = 0

;--------------------------------------[ Hit Definition ]
[State 440]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = C, NA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = L
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -10, -10
  HitSound         = s2, 3
  GuardSound       = s120, 0
  Ground.Type      = Trip
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -2.5, -9.5
  Air.Type         = Trip
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  YAccel           = 0.65
  ID               = 400

;--------------------------------------[ ChangeState ]
[State 440]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 11
  Ctrl     = 1

;------------------------------------------------------------------------------;
; 空中弱パンチ
;------------------------------------------------------------------------------;
[Statedef 600]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 600
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 600    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 600    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 30
  IgnoreHitPause = 1

[State 600    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 5
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 600    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 600    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 600    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 0

;--------------------------------------[ Movement ]
[State 600]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 600]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 600]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6600
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 600]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = A, NA
  Damage           = Ceil(IfElse(Var(3)=0,40,50)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = HA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -90
  HitSound         = s2, 0
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -6.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 600]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 空中強パンチ
;------------------------------------------------------------------------------;
[Statedef 610]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 610
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 610    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 610    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 30
  IgnoreHitPause = 1

[State 610    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 8
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 610    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 610    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s210, Var(1)%6

[State 610    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 6

;--------------------------------------[ Movement ]
[State 610]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 610]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 610]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6610
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 610]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = A, NA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = HA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -25, -80
  HitSound         = s2, 1
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -7
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -3
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 610]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 空中弱キック
;------------------------------------------------------------------------------;
[Statedef 630]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 630
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 630    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 630    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 30
  IgnoreHitPause = 1

[State 630    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 7
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 630    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 630    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 630    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 2

;--------------------------------------[ Movement ]
[State 630]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 630]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 630]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6630
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 630]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = A, NA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Light
  HitFlag          = MAF
  GuardFlag        = HA
  Priority         = 3, Hit
  PauseTime        = 8, 9
  SparkNo          = s7000
  Gaurd.SparkNo    = s7100
  SparkXY          = -10, -60
  HitSound         = s2, 2
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 12
  Ground.HitTime   = 12
  Ground.Velocity  = -6.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 630]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;------------------------------------------------------------------------------;
; 空中強キック
;------------------------------------------------------------------------------;
[Statedef 640]
  Type        = A
  MoveType    = A
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  Ctrl        = 0
  Anim        = 640
  SprPriority = 1
  PowerAdd    = 30*!(Var(22)>0)

;--------------------------------------[ Variable ]
[State 640    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 640    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 30
  IgnoreHitPause = 1

[State 640    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 8
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 640    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 640    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s210, Var(1)%6

[State 640    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s1, 3

;--------------------------------------[ Movement ]
[State 640]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

;--------------------------------------[ Bracelet ]
[State 640]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 640]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6640
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 640]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = A, NA
  Damage           = Ceil(IfElse(Var(3)=0,70,80)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = HA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -10, -80
  HitSound         = s2, 3
  GuardSound       = s120, 0
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -7
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  Air.Fall         = Var(22) > 0
  Fall.Recover     = Var(22) = 0
  ID               = 200

;--------------------------------------[ ChangeState ]
[State 640]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;==============================================================================;
; 特殊攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 怒号層拳
;------------------------------------------------------------------------------;
[Statedef 300]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 300
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 300    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 300    : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 2
  IgnoreHitPause = 1
  Persistent     = 0

[State 300    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 300    : SE, 1]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 1

[State 300    : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 9

;--------------------------------------[ Bracelet ]
[State 300]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 300]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6300
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 300]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) < 10
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,60,70)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 11, 12
  SparkNo          = s7020
  Gaurd.SparkNo    = s7120
  SparkXY          = -10, -70
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 18
  Ground.HitTime   = 18
  Ground.Velocity  = -7.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5
  ForceStand       = 1

;--------------------------------------[ ChangeState ]
[State 300]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ミューティションコンビネーション１
;------------------------------------------------------------------------------;
[Statedef 310]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 310
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 310    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

[State 310    : コマンド判定, Set]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 310    : コマンド判定, Set]
  Type     = VarSet
;  Trigger1 = AnimElem = 5, < 0
  Trigger1 = Var(7) = 0
  Trigger1 = Command = "3Y"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

[State 310    : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 310    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 310 : ヒット判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 12
  Value    = 0
  IgnoreHitPause = 1

[State 310 : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = P2StateType != A
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 310    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s200, Var(1)%6

[State 310    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s1, 1

;--------------------------------------[ Bracelet ]
[State 310]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 310]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6310
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 310]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) = 0
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MA
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 9, 10
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -15, -80
  HitSound         = s2, 0
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 14
  Ground.HitTime   = 14
  Ground.Velocity  = -4
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -4, -5.5

;--------------------------------------[ ChangeState ]
[State 310]
  Type     = ChangeState
  Trigger1 = Var(7) = 1
  Value    = 320

[State 310]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ミューティションコンビネーション２
;------------------------------------------------------------------------------;
[Statedef 320]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 320
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 320    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1

[State 320    : コマンド判定, Set]
  Type     = VarSet
  Trigger1 = AnimElem = 7, < 0
  Trigger1 = Var(7) = 1
  Trigger1 = Command = "4A"
  V        = 7
  Value    = 2
  IgnoreHitPause = 1

[State 320    : キャンセル判定, Set]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 320    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 320    : ヒット判定, Set]
  Type     = VarSet
  Trigger1 = Var(12) = 0
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 320    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Value    = s200, Var(1)%6

[State 320    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 1
  Trigger2 = AnimElem = 2
  Value    = s1, 1

;--------------------------------------[ Bracelet ]
[State 320]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 320]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6320
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 320]
  Type     = VelSet
  Trigger1 = AnimElem = 2, >= 0 && AnimElem = 6, < 0
  X        = 3

;--------------------------------------[ Hit Definition ]
[State 320]
  Type             = HitDef
  TriggerAll       = AnimElem = 2
  Trigger1         = Var(11) = 0
  Trigger2         = Var(12) = 1
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,20,30)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 3, 8
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -15, -75
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -3, -4.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3, -4.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

[State 320]
  Type             = HitDef
  TriggerAll       = AnimElem = 5
  Trigger1         = Var(11) = 0
  Trigger2         = Var(12) = 1
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,20,30)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 11, 12
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -20, -80
  HitSound         = s2, 1
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -3, -4.5
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3, -4.5
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

[State 320]
  Type     = MoveHitReset
  Trigger1 = MoveContact
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 320]
  Type     = ChangeState
  Trigger1 = AnimElem = 6, >= 0 && AnimElem = 7, < 0
  Trigger1 = Var(7) = 2
  Value    = 330

[State 320]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ミューティションコンビネーション３
;------------------------------------------------------------------------------;
[Statedef 330]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 330
  SprPriority = 2

;--------------------------------------[ Variable ]
[State 330    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistetn     = 0

[State 330    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = AnimElem = 6, < 0
  Trigger1 = Var(7) = 2
  Trigger1 = Command = "6B"
  V        = 7
  Value    = 3
  IgnoreHitPause = 1

[State 330    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 330    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

[State 330 : コマンド判定セット]
  Type     = VarSet
  Trigger1 = Var(12) = 0
  Trigger1 = MoveHit = 1
  V        = 12
  Value    = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 330    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s200, Var(1)%6

[State 330    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 3

;--------------------------------------[ Bracelet ]
[State 330]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 330]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6330
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 330]
  Type     = VelSet
  Trigger1 = AnimElem = 2, >= 0 && AnimElem = 6, < 0
  X        = 3

;--------------------------------------[ Hit Definition ]
[State 330]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) = 0
  Trigger2         = Var(12) = 1
  Attr             = S, SA
  Damage           = Ceil(IfElse(Var(3)=0,30,40)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -25, -80
  HitSound         = s2, 3
  GuardSound       = s120, 1
  Ground.Type      = High
  Ground.SlideTime = 16
  Ground.HitTime   = 16
  Ground.Velocity  = -3, -5.75
  Air.Type         = High
  Air.HitTime      = 12
  Air.Velocity     = -3, -5.75
  YAccel           = 0.36
  Fall             = 1
  Air.Fall         = 1
  Fall.Recover     = 0

;--------------------------------------[ ChangeState ]
[State 330]
  Type     = ChangeState
  Trigger1 = AnimElem = 5, >= 0 && AnimElem = 6, < 0
  Trigger1 = Var(7) = 3
  Value    = 340

[State 330]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ミューティションコンビネーション４
;------------------------------------------------------------------------------;
[Statedef 340]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 340
  SprPriority = 1

;--------------------------------------[ Others ]
[State 340]
  Type     = StateTypeSet
  Trigger1 = AnimElem = 2
  StateType = A
  Physics   = N

[State 340]
  Type     = Width
  Trigger1 = 1
  Edge     = 30,0

;--------------------------------------[ Variable ]
[State 340    : コンボ数カウント]
  Type     = VarAdd
  Trigger1 = MoveHit = 1
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  Persistetn     = 0

[State 340    : キャンセル判定リセット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 8
  Value    = 0
  IgnoreHitPause = 1

[State 340    : キャンセル判定セット]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 340    : 追撃判定]
  Type       = VarAdd
  TriggerAll = P2StateType = A
  Trigger1   = MoveHit = 1
  V          = 11
  Value      = 10
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Sounds ]
[State 340    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s210, Var(1)%6

[State 340    : SE]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s1, 3

;--------------------------------------[ Bracelet ]
[State 340]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 340]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6340
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 340]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 3
  Y        = -2.5

[State 340]
  Type     = VelAdd
  Trigger1 = AnimElem = 3, >= 0
  Y        = 0.2

;--------------------------------------[ Hit Definition ]
[State 340]
  Type             = HitDef
  TriggerAll       = Time = 0
  Trigger1         = Var(11) = 0
  Trigger2         = Var(12) = 1
  Attr             = A, SA
  Damage           = Ceil(IfElse(Var(3)=0,50,60)*FVar(4)), 0
  GetPower         = 30*!(Var(22)>0),15*!(Var(22)>0)
  GivePower        = 5,10
  AnimType         = Hard
  HitFlag          = MAF
  GuardFlag        = MA
  Priority         = 3, Hit
  PauseTime        = 10, 11
  SparkNo          = s7010
  Gaurd.SparkNo    = s7110
  SparkXY          = -25, -85
  HitSound         = s2, 3
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
  P2Facing         = 1

;--------------------------------------[ TagetBind ]
[State 340]
  Type     = TargetState
  Trigger1 = MoveHit
  Value    = 2030
  Persistent = 0

;--------------------------------------[ ChangeState ]
[State 340]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 52

;==============================================================================;
; 投げ
;==============================================================================;
;------------------------------------------------------------------------------;
; ファイヤースープレックス
;------------------------------------------------------------------------------;
[Statedef 800]
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
[State 800    : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1
  Persistent     = 0

[State 800    : コマンド判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 7
  Value    = 0
  IgnoreHitPause = 1

[State 800    : コマンド判定, Set]
  Type     = VarSet
  Trigger1 = Time = 0
  Trigger1 = Command = "holdback"
  V        = 7
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 800    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s800, 0

;--------------------------------------[ Bracelet ]
[State 800]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 800]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6800
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Hit Definition ]
[State 800]
  Type      = HitDef
  Trigger1  = Time = 0
  Attr      = S, NT
  HitFlag   = M-
  Priority  = 1, Miss
  SparkNo   = -1
  P1Facing  = 1
;  P2Facing  = 1
  P1StateNo = 810
  P2StateNo = 850
  Fall      = 1

;--------------------------------------[ ChangeState ]
[State 800]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ファイヤースープレックス（投げ成功）
;------------------------------------------------------------------------------;
[Statedef 810]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 810
  SprPriority = 1

;--------------------------------------[ Others ]
[State 810]
  Type      = StateTypeSet
  Trigger1  = AnimElem = 4
  StateType = A
  Physics   = N

[State 810]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

[State 810]
  Type     = Turn
  Trigger1 = Time = 0
  Trigger1 = Var(7) = 0

;--------------------------------------[ Sounds ]
[State 810    : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s800, 1

[State 810    : SE, 1]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 1

[State 810    : SE, 2]
  Type     = PlaySnd
  Trigger1 = AnimElem = 4
  Value    = s40, 2

;--------------------------------------[ Bracelet ]
[State 810]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 810]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6810
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 810]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7050
  ID          = 810
  Pos         = 15, -60
  PosType     = P1
  SprPriority = 3
  OwnPal      = 1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 810]
  Type     = VelSet
  Trigger1 = AnimElem = 4
  X        = -6
  Y        = -4.5

[State 810]
  Type     = VelAdd
  Trigger1 = AnimElem = 5, >= 0
  Y        = 0.52

;--------------------------------------[ TagetBind ]
[State 810]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, < 0
  Pos      = 30,0

[State 810]
  Type     = TargetBind
  Trigger1 = AnimElem = 3, >= 0 && AnimElem = 5, < 0
  Pos      = -20,-75

[State 810]
  Type     = TargetBind
  Trigger1 = AnimElem = 5, >= 0
  Pos      = -30,-50

;--------------------------------------[ ChangeState ]
[State 810]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 820

;------------------------------------------------------------------------------;
; ファイヤースープレックス（投げ終了）
;------------------------------------------------------------------------------;
[Statedef 820]
  Type        = S
  MoveType    = A
  Physics     = S
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 820
  SprPriority = 1

;--------------------------------------[ Others ]
[State 820]
  Type     = Width
  Trigger1 = 1
  Edge     = 0,50

;--------------------------------------[ Sounds ]
[State 820 : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s805, 2

;--------------------------------------[ Movement ]
[State 820]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 820]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 820]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6820
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Effects ]
[State 820]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 7210
  ID          = 820
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  IgnoreHitPause = 1

[State 820]
  Type     = EnvShake
  Trigger1 = Time = 0
  Time     = 15
  Ampl     = -8
  Freq     = 95
  Phase    = 95

;--------------------------------------[ TagetBind ]
[State 820]
  Type     = TargetBind
  Trigger1 = AnimElem = 1
  Pos      = -55,-20

[State 810]
  Type     = TargetState
  Trigger1 = AnimElem = 1
  Value    = 860

[State 820]
  Type     = TargetLifeAdd
  Trigger1 = Time = 0
  Value      = -140

;--------------------------------------[ ChangeState ]
[State 820]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ファイヤースープレックス（やられ１）
;------------------------------------------------------------------------------;
[Statedef 850]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 850    : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 850]
  Type     = Turn
  Trigger1 = Time = 0
  Trigger1 = Enemy,Var(7) = 1
  Trigger1 = P2BodyDist X >= 0

;--------------------------------------[ ChangeAnim ]
[State 850]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 850

;------------------------------------------------------------------------------;
; ファイヤースープレックス（やられ２）
;------------------------------------------------------------------------------;
[Statedef 860]
  Type        = A
  MoveType    = H
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  SprPriority = -2

;--------------------------------------[ Others ]
[State 860    : 無敵処理]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA

[State 860    : 画面固定]
  Type       = ScreenBound
  Trigger1   = 1
  Value      = 1
  MoveCamera = 1

[State 860]
  Type     = Turn
  Trigger1 = Time = 0

;--------------------------------------[ ChangeAnim ]
[State 860]
  Type     = ChangeAnim2
  Trigger1 = Time = 0
  Value    = 860

;--------------------------------------[ Movement ]
[State 860]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 4
  Y        = -5

[State 860]
  Type     = VelAdd
  Trigger1 = AnimElem = 2, >= 0
  Y        = 0.45

;--------------------------------------[ ChangeState ]
[State 860]
  Type     = SelfState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 5100

