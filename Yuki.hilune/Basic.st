;==============================================================================;
;------------------------------------------------------------------------------;
; 基本動作
;------------------------------------------------------------------------------;
;==============================================================================;
;------------------------------------------------------------------------------;
; タイムオーバーで負けた時（分岐）
;------------------------------------------------------------------------------;
[Statedef 170]
  Type   = S
  Ctrl   = 0
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 170]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;--------------------------------------[ Bracelet ]
[State 170]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 170]
  Type     = ChangeState
  Trigger1 = Time = 0
  Trigger1 = Var(24) = 0
  Value    = 171

[State 170]
  Type     = ChangeState
  Trigger1 = Time = 0
  Trigger1 = Var(24) > 0
  Value    = 172

;------------------------------------------------------------------------------;
; タイムオーバーで負けた時
;------------------------------------------------------------------------------;
[Statedef 171]
  Type   = S
  Ctrl   = 0
  Anim   = 170
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 171]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;--------------------------------------[ Bracelet ]
[State 171]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 171
  ID          = 170
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  OwnPal      = 1
  IgnoreHitPause = 1

;------------------------------------------------------------------------------;
; タイムオーバーで負けた時（アトミックガイ・ネオス）
;------------------------------------------------------------------------------;
[Statedef 172]
  Type   = S
  Ctrl   = 0
  Anim   = 4900
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 172]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;--------------------------------------[ Variable ]
[State 172]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 24
  Value    = 0

;--------------------------------------[ ChangeAnim ]
[State 172]
  Type     = ChangeAnim
  Trigger1 = Anim = 4900
  Trigger1 = AnimTime = 0
  Value    = 170

;--------------------------------------[ Bracelet ]
[State 172]
  Type        = Explod
  Trigger1    = Anim = 170
  Anim        = 171
  ID          = 170
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  OwnPal      = 1
  IgnoreHitPause = 1
  Persistent     = 0

;--------------------------------------[ Helper ]
[State 172]
  Type       = Helper
  Trigger1   = Anim = 4900
  Trigger1   = AnimElem = 8
  Name       = "ai"
  StateNo    = 4950
  ID         = 4900
  Pos        = -30, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;------------------------------------------------------------------------------;
; 勝った動作（分岐）
;------------------------------------------------------------------------------;
[Statedef 180]
  Type        = S
  SprPriority = 1

;--------------------------------------[ Bracelet ]
[State 180]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 180]
  Type     = ChangeState
  Trigger1 = Var(1)%2 = 0
  Trigger1 = Var(24) = 0
  Trigger2 = Var(25) = 1
  Value    = 181

[State 180]
  Type     = ChangeState
  Trigger1 = Var(1)%2 = 1
  Trigger1 = Var(24) = 0
  Trigger1 = Var(25) = 0
  Value    = 182

[State 180]
  Type     = ChangeState
  Trigger1 = Var(24) > 0
  Trigger2 = Var(25) = 0
  Value    = 183

;------------------------------------------------------------------------------;
; 勝った動作１
;------------------------------------------------------------------------------;
[Statedef 181]
  Type   = S
  Ctrl   = 0
  Anim   = 181
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 181]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;--------------------------------------[ Sounds ]
[State 181]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s181, 0

;--------------------------------------[ Bracelet ]
[State 181]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6181
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  IgnoreHitPause = 0

;------------------------------------------------------------------------------;
; 勝った動作２
;------------------------------------------------------------------------------;
[Statedef 182]
  Type   = S
  Ctrl   = 0
  Anim   = 182
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 182]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;--------------------------------------[ Sounds ]
[State 182]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s182, 0

;--------------------------------------[ Bracelet ]
[State 182]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6182
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  IgnoreHitPause = 0

;------------------------------------------------------------------------------;
; 勝った動作３
;------------------------------------------------------------------------------;
[Statedef 183]
  Type   = S
  Ctrl   = 0
  Anim   = 4900
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 183]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

[State 183]
  Type     = PalFx
  Trigger1 = Anim = 4900
  Trigger1 = AnimElem = 8, = 0
  Time     = 2
  Add      = 255,255,255
  Mul      = 224,224,224

[State 183]
  Type     = PalFx
  Trigger1 = Anim = 4900
  Trigger1 = AnimElem = 8, = 2
  Time     = 2
  Add      = 208,208,208
  Mul      = 232,232,232

[State 183]
  Type     = PalFx
  Trigger1 = Anim = 4900
  Trigger1 = AnimElem = 8, = 4
  Time     = 2
  Add      = 160,160,160
  Mul      = 240,240,240

[State 183]
  Type     = PalFx
  Trigger1 = Anim = 4900
  Trigger1 = AnimElem = 8, = 6
  Time     = 2
  Add      = 112,112,112
  Mul      = 248,248,248

[State 183]
  Type     = PalFx
  Trigger1 = Anim = 4900
  Trigger1 = AnimElem = 8, = 8
  Time     = 2
  Add      = 64,64,64
  Mul      = 256,256,256

;--------------------------------------[ ChangeAnim ]
[State 183]
  Type     = ChangeAnim
  Trigger1 = Anim = 4900
  Trigger1 = AnimTime = 0
  Value    = 181

;--------------------------------------[ Sounds ]
[State 183]
  Type     = PlaySnd
  Trigger1 = Anim = 181
  Value    = s181, 0
  Persistent = 0

;--------------------------------------[ Bracelet ]
[State 183]
  Type        = Explod
  Trigger1    = Anim = 181
  Anim        = 6181
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  IgnoreHitPause = 0
  Persistent     = 0

;--------------------------------------[ Helper ]
[State 183]
  Type       = Helper
  Trigger1   = NumHelper(4900) = 0
  Trigger1   = Anim = 4900
  Trigger1   = AnimElem = 8
  Name       = "ai"
  StateNo    = 4950
  ID         = 4900
  Pos        = -40, 0
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 0

;------------------------------------------------------------------------------;
; 開始前の動作
;------------------------------------------------------------------------------;
[Statedef 191]
  Type   = S
  Ctrl   = 0
  Anim   = 190
  VelSet = 0, 0
  SprPriority = 1

;--------------------------------------[ Others ]
[State 191]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = Intro

;--------------------------------------[ ChangeAnim ]
[State 191]
  Type     = ChangeAnim
  Trigger1 = RoundState = 0
  Value    = 190

;--------------------------------------[ Sounds ]
[State 191]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = s190, 0

[State 191]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Trigger2 = AnimElem = 8
  Trigger3 = AnimElem = 14
  Trigger4 = AnimElem = 20
  Value    = s190, 1

;--------------------------------------[ Bracelet ]
[State 191]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 191]
  Type        = Explod
  Trigger1    = AnimElem = 9
  Anim        = 6190
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 191]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0

;------------------------------------------------------------------------------;
; 挑発の動作
;------------------------------------------------------------------------------;
[Statedef 195]
  Type        = S
  MoveType    = I
  Physics     = S
  Ctrl        = 0
  Anim        = 195
  VelSet      = 0,0
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 195    : キャンセル判定, Reset]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0

;--------------------------------------[ Sounds ]
[State 195]
  Type     = PlaySnd
  Trigger1 = AnimElem = 2
  Value    = 195, 0

;--------------------------------------[ Bracelet ]
[State 195]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 195]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6195
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 195]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

