;==============================================================================;
;------------------------------------------------------------------------------;
; �R�����X�e�[�g
;------------------------------------------------------------------------------;
;==============================================================================;
;------------------------------------------------------------------------------;
; ��������
;------------------------------------------------------------------------------;
[Statedef 0]
  Type        = S
  Physics     = S
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 0      : �L�����Z�����胊�Z�b�g]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Bracelet ]
[State 0]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  Trigger1 = PrevStateNo != 5900
  ID       = 6000
  IgnoreHitPause = 1

[State 0]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Trigger1    = NumExplod(6005) = 0
  Anim        = 6000
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 0]
  Type     = RemoveExplod
  Trigger1 = Anim = 5
  ID       = 6000
  IgnoreHitPause = 1

[State 0]
  Type        = Explod
  Trigger1    = Anim = 5
  Trigger1    = NumExplod(6005) = 0
  Anim        = 6005
  ID          = 6005
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeAnim ]
[State 0]
  Type     = ChangeAnim
  Trigger1 = Anim != 0 && Anim != 5
  Trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
  Value    = 0

;--------------------------------------[ Movement ]
[State 0]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

[State 0]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = 0

[State 0] ;Stop moving if low velocity or 4 ticks pass
  Type     = VelSet
  Trigger1 = Abs(Vel X) < 2
  Trigger2 = Time = 4
  X        = 0

;--------------------------------------[ ChangeState ]
[State 0] ;Are you dead?
  Type     = ChangeState
  Trigger1 = !Alive
  Value    = 5050

[State 0]
  Type     = DestroySelf
  Trigger1 = IsHelper
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; ������Ԃ��炵�Ⴊ�ݏ�Ԃֈڍs���铮��
;------------------------------------------------------------------------------;
[Statedef 10]
  Type    = C
  Physics = C
  SprPriority = 1

;--------------------------------------[ ChangeAnim ]
[State 10]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Trigger1 = Var(24) = 0
  Value    = 10

;--------------------------------------[ Movement ]
[State 10]
  Type     = VelMul
  Trigger1 = Time = 0
  X        = 0.75

;--------------------------------------[ Bracelet ]
[State 10]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  Trigger1 = Var(24) = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 10]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Var(24) = 0
  Anim        = 6010
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 10]
  Type     = ChangeState
  Trigger1 = Var(24) > 0
  Value    = 4000

[State 10]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 11

;------------------------------------------------------------------------------;
; ���Ⴊ�ݓ���
;------------------------------------------------------------------------------;
[Statedef 11]
  Type        = C
  Physics     = C
  SprPriority = 1

;--------------------------------------[ ChangeAnim ]
[State 11]
  Type     = ChangeAnim
  Trigger1 = Var(24) = 0
  Trigger1 = Time = 0
  Value    = 11

[State 11] ;Change from turning Animation
  Type     = ChangeAnim
  Trigger1 = Var(24) = 0
  Trigger1 = Anim = 6 && AnimTime = 0
  Value    = 11

;--------------------------------------[ Bracelet ]
[State 11]
  Type     = RemoveExplod
  Trigger1 = Var(24) = 0
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 11]
  Type        = Explod
  Trigger1    = Var(24) = 0
  Trigger1    = NumExplod(6000) = 0
  Trigger1    = NumExplod(6005) = 0
  Anim        = 6011
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 11]
  Type     = RemoveExplod
  Trigger1 = Var(24) = 0
  Trigger1 = Anim = 6
  ID       = 6000
  IgnoreHitPause = 1

[State 11]
  Type        = Explod
  Trigger1    = Var(24) = 0
  Trigger1    = Anim = 6
  Trigger1    = NumExplod(6005) = 0
  Anim        = 6006
  ID          = 6005
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 11]
  Type     = ChangeState
  Trigger1 = Var(24) > 0
  Value    = 4000

;------------------------------------------------------------------------------;
; ���Ⴊ�ݏ�Ԃ��痧����Ԃֈڍs���铮��
;------------------------------------------------------------------------------;
[Statedef 12]
  Type    = S
  Physics = S
  SprPriority = 1

;--------------------------------------[ ChangeAnim ]
[State 12]
  Type     = ChangeAnim
  Trigger1 = Var(24) = 0
  Trigger1 = Time = 0
  Value    = 12

;--------------------------------------[ Bracelet ]
[State 12]
  Type     = RemoveExplod
  Trigger1 = Var(24) = 0
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 12]
  Type        = Explod
  Trigger1 = Var(24) = 0
  Trigger1    = Time = 0
  Anim        = 6012
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 12]
  Type     = ChangeState
  Trigger1 = Var(24) > 0
  Trigger1 = AnimTime = 0
  Value    = 4000

[State 12]
  Type     = ChangeState
  Trigger1 = Var(24) = 0
  Trigger1 = AnimTime = 0
  Value    = 0

;------------------------------------------------------------------------------;
; �O�ɕ�������
;------------------------------------------------------------------------------;
[Statedef 20]
  Type        = S
  Physics     = S
  SprPriority = 1

;--------------------------------------[ Movement ]
[State 20]
  Type     = VelSet
  Trigger1 = Command = "holdfwd"
  X        = const(velocity.walk.fwd.x)

[State 20]
  Type     = VelSet
  Trigger1 = Command = "holdback"
  X        = const(velocity.walk.back.x)

;--------------------------------------[ Turn ]
[State 20]
  Type       = RemoveExplod
  Trigger1   = Anim = 5
  ID         = 6000
  IgnoreHitPause = 1
  Persistent     = 0

[State 20]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Trigger1    = Anim = 5
  Anim        = 6005
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 20]
  Type       = ChangeAnim
  TriggerAll = Vel X > 0
  Trigger1   = Anim != 20 && Anim != 5
  Trigger2   = Anim = 5 && AnimTime = 0
  Value      = 20

[State 20]
  Type       = ChangeAnim
  TriggerAll = Vel X < 0
  Trigger1   = Anim != 21 && Anim != 5
  Trigger2   = Anim = 5 && AnimTime = 0
  Value      = 21

;--------------------------------------[ Bracelet ]
[State 20]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 20]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Trigger1    = Anim = 20
  Anim        = 6020
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 20]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Trigger1    = Anim = 21
  Anim        = 6021
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;------------------------------------------------------------------------------;
; �W�����v�J�n����
;------------------------------------------------------------------------------;
[Statedef 40]
  Type        = S
  Physics     = S
  Anim        = 40
  Ctrl        = 0
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 40]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 5
  Value    = 0

[State 40]
  Type     = VarSet
  Trigger1 = Command != "holdup"
  V        = 5
  Value    = 1

[State 40     : �L�����Z�����胊�Z�b�g]
  Type      = VarSet
  Trigger1  = Time = 0
  V         = 10
  Value     = 0
  IgnoreHitPause = 1

[State 40     : �����W�����v�p]
  Type      = VarSet
  Trigger1  = Time = 0
  sysvar(1) = 0

[State 40     : �O���W�����v�p]
  Type      = VarSet
  Trigger1  = Command = "holdfwd"
  sysvar(1) = 1

[State 40     : ����W�����v�p]
  Type      = VarSet
  Trigger1  = Command = "holdback"
  sysvar(1) = -1

;--------------------------------------[ Movement ]
[State 40     : �ʏ�W�����v]
  Type     = VelSet
  Trigger1 = AnimTime = 0
  X = IfElse(sysvar(1)=0, const(velocity.jump.neu.x), IfElse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
  Y = const(velocity.jump.y)

[State 40     : ���W�����v]
  Type     = VelSet
  Trigger1 = AnimTime = 0
  Trigger1 = Var(5) = 1
  X = IfElse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
  Y = -6.5

[State 40]
  Type     = Null;VelSet
  Trigger1 = AnimTime = 0
  Trigger1 = prevstateno = 100 ;RUN_FWD
  Trigger1 = sysvar(1) = 1
  X        = const(velocity.runjump.fwd.x)

;--------------------------------------[ Bracelet ]
[State 40]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 40]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6040
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 40]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 50
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �󒆃W�����v�J�n����
;------------------------------------------------------------------------------;
[Statedef 45]
  Type    = A
  Physics = N
  Ctrl    = 0
  VelSet  = 0, 0
  SprPriority = 1

;--------------------------------------[ ChangeAnim ]
[State 45]
  Type     = ChangeAnim
  Trigger1 = SelfAnimExist(44)
  Value    = 44

[State 45]
  Type     = ChangeAnim
  Trigger1 = !SelfAnimExist(44)
  Value    = 41

;--------------------------------------[ Variable ]
[State 45]
  Type      = VarSet
  Trigger1  = Time = 0
  sysvar(1) = 0

[State 45]
  Type      = VarSet
  Trigger1  = Command = "holdfwd"
  sysvar(1) = 1

[State 45]
  Type      = VarSet
  Trigger1  = Command = "holdback"
  sysvar(1) = -1

;--------------------------------------[ Movement ]
[State 45]
  Type     = VelSet
  Trigger1 = Time = 2
  X = IfElse(sysvar(1)=0, const(velocity.airjump.neu.x), IfElse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
  Y = const(velocity.airjump.y)

;--------------------------------------[ Bracelet ]
[State 45]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 45]
  Type        = Null;Explod
  Trigger1    = Time = 0
  Anim        = 6000
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 45]
  Type     = ChangeState
  Trigger1 = Time = 2
  Value    = 50
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �W�����v������
;------------------------------------------------------------------------------;
[Statedef 50]
  Type    = A
  Physics = A
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 50]
  Type      = VarSet
  Trigger1  = Time = 0
  sysvar(1) = 0

;--------------------------------------[ ChangeAnim ]
[State 50]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = IfElse((Vel X)=0, 41, IfElse((Vel X)>0, 42, 43))

[State 50]
  Type       = ChangeAnim
  Trigger1   = Vel Y > -2
  Trigger1   = SelfAnimExist(Anim + 3)
  Persistent = 0
  Value      = Anim + 3

;--------------------------------------[ Sounds ]
[State 50]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s40,IfElse(Var(5)=1,0,IfElse(Var(6)>=1,2,1))

;--------------------------------------[ Bracelet ]

[State 50]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 50]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6041+(Anim = 42)+(Anim = 43)*2
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;------------------------------------------------------------------------------;
; Jump Down (empty state for compatibility)
;------------------------------------------------------------------------------;
[Statedef 51]
  Type    = A
  Physics = A

[State 51]
  Type     = Null
  Trigger1 = 1

;------------------------------------------------------------------------------;
; ���n
;------------------------------------------------------------------------------;
[Statedef 52]
  Type    = S
  Physics = S
  Ctrl    = 0
  Anim    = 47
  SprPriority = 1

[State 52]
  Type     = Null;CtrlSet
  Trigger1 = Time = 3
  Value    = 1

;--------------------------------------[ Movement ]
[State 52]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = 0

[State 52]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 52]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 52]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6047
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 52]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �_�b�V��
;------------------------------------------------------------------------------;
[Statedef 100]
  Type        = S
  Physics     = S
  Ctrl        = 0
  Anim        = 100
  SprPriority = 1

;--------------------------------------[ Others ]
[State 100] ;Prevent run from canceling into walk
  Type     = AssertSpecial
  Trigger1 = 1
  flag     = NoWalk

[State 100] ;Prevent from turning
  Type     = AssertSpecial
  Trigger1 = 1
  flag     = NoAutoTurn

;--------------------------------------[ Variable ]
[State 100]
  Type     = Null;VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 100]
  Type     = VarSet
  Trigger1 = 1;AnimElem = 2
  V        = 10
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 100]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s100,0
  Channel  = 1
  Loop     = 1

;--------------------------------------[ Bracelet ]
[State 100]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 100]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6100
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 1
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]

[State 100]
  Type     = VelSet
  Trigger1 = 1
  X        = const(velocity.run.fwd.x)

;--------------------------------------[ ChangeState ]

[State 100]
  Type     = ChangeState
  Trigger1 = Command != "holdfwd"
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �t�����g�X�e�b�v
;------------------------------------------------------------------------------;
[Statedef 101]
  Type        = S
  Physics     = N
  Anim        = 101
  SprPriority = 1
  Ctrl        = 0

;--------------------------------------[ Others ]
[State 101]
  Type       = PowerAdd
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = 150
  Trigger2   = PrevStateNo = 151
  Value      = -500

[State 101]
  Type       = Ctrlset
  TriggerAll = Time = 0
  Trigger1   = PrevStateNo = 150
  Trigger2   = PrevStateNo = 151
  Value      = 1

[State 101]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = NoWalk                    ;Prevent run from canceling into walk
  Flag2    = NoAutoTurn                ;Prevent from turning

;--------------------------------------[ Variable ]
[State 101]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 101]
  Type     = VarSet
  Trigger1 = Time = 6
  V        = 10
  Value    = 1
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 101    : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s900, 1

[State 101    : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s101, 0

;--------------------------------------[ Bracelet ]
[State 101]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000

[State 101]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6101
  ID          = 6000
  SprPriority = 2
  PosType     = P1
  Pos         = 0, 0
  BindTime    = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 101]
  Type     = VelSet
  Trigger1 = AnimElem = 2
  X        = 7;const(velocity.run.fwd.x)

[State 101]
  Type     = VelSet
  Trigger1 = AnimElem = 3
  X        = 0

[State 101]
  Type           = Palfx
  TriggerAll     = Time = 0
  Trigger1       = PrevStateNo = 150
  Trigger2       = PrevStateNo = 151
  Time           = 3
  Add            = 255,255,255
  Mul            = 255,255,255
  Color          = 1
  IgnoreHitPause = 1

;--------------------------------------[ ChangeState ]
[State 101]
  Type       = ChangeState
  TriggerAll = AnimElem = 3,>= 0
  Trigger1   = Command = "holdfwd"
  Value      = 100

[State 101]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �o�b�N�X�e�b�v
;------------------------------------------------------------------------------;
[Statedef 105]
  Type        = A
  Physics     = A
  Ctrl        = 0
  Anim        = 105
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 105]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

[State 105]
  Type     = VarSet
  Trigger1 = Time = 3
  V        = 10
  Value    = 10
  IgnoreHitPause = 1

;--------------------------------------[ Sounds ]
[State 105    : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s900,0

[State 105    : SE]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s105,0

;--------------------------------------[ Movement ]

[State 105]
  Type     = VelSet
  Trigger1 = Time = 0
  X = const(velocity.run.back.x)
  Y = const(velocity.run.back.y)

[State 105]
  Type     = VelAdd
  Trigger1 = Time >= 7
  X        = 0.125

[State 105]
  Type     = Null;VelSet
  Trigger1 = Time = 0
  X        = -5.8
  Y        = -4.2

;--------------------------------------[ Bracelet ]
[State 105]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 105]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6105
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 105]
  Type     = ChangeState
  Trigger1 = Vel Y > 0 && Pos Y >= 0
  Value    = 106

;------------------------------------------------------------------------------;
; �o�b�N�X�e�b�v�i���n�j
;------------------------------------------------------------------------------;
[Statedef 106]
  Type    = S
  Physics = S
  Ctrl    = 0
  Anim    = 106
  SprPriority = 1

;--------------------------------------[ Variable ]
[State 106]
  Type     = VarSet
  Trigger1 = Time = 0
  V        = 10
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------[ Movement ]
[State 106]
  Type     = VelSet
  Trigger1 = Time = 0
  Y        = 0

[State 106]
  Type     = PosSet
  Trigger1 = Time = 0
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 106]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 106]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6106
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 106]
  Type     = Null;MakeDust
  Trigger1 = Time = 2
  Pos      = -5,-2
  spacing  = 1

;--------------------------------------[ ChangeState ]
[State 106]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �K�[�h�J�n���� GUARD (start)
;------------------------------------------------------------------------------;
[Statedef 120]
  Type    = U
  Physics = U

;--------------------------------------[ ChangeAnim ]
[State 120]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = 120 + (StateType = C) + (StateType = A)*2

;--------------------------------------[ Others ]
[State 120]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = S
  Physics  = S

[State 120]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = C
  Physics  = C

[State 120]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = A
  Physics  = A

[State 120 : Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 120 : Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 120]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 120]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 120
  Anim        = 6120
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 120]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 121
  Anim        = 6121
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

[State 120]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 122
  Anim        = 6122
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 120]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 130 + (StateType = C) + (StateType = A)*2

[State 120 : Stop Guarding]
  Type     = ChangeState
  Trigger1 = Command != "holdback"
  Trigger2 = !InGuardDist
  Value    = 140

;------------------------------------------------------------------------------;
; �����K�[�h���� STAND GUARD (guarding)
;------------------------------------------------------------------------------;
[Statedef 130]
  Type    = S
  Physics = S

;--------------------------------------[ ChangeAnim ]
[State 130]
  Type     = ChangeAnim
  Trigger1 = Anim != 130
  Value    = 130

;--------------------------------------[ Bracelet ]
[State 130]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 130]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6130
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 130, Hi to Lo]
  Type     = ChangeState
  Trigger1 = Command = "holddown"
  Value    = 131

[State 130, Stop Guarding]
  Type     = ChangeState
  Trigger1 = Command != "holdback"
  Trigger2 = !InGuardDist
  Value    = 140

;------------------------------------------------------------------------------;
; ���Ⴊ�݃K�[�h���� CROUCH GUARD (guarding)
;------------------------------------------------------------------------------;
[Statedef 131]
  Type    = C
  Physics = C

;--------------------------------------[ ChangeAnim ]
[State 131]
  Type     = ChangeAnim
  Trigger1 = Anim != 131
  Value    = 131

;--------------------------------------[ Bracelet ]
[State 131]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 131]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6131
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 131, Lo to Hi]
  Type     = ChangeState
  Trigger1 = Command != "holddown"
  Value    = 130

[State 131, Stop Guarding]
  Type     = ChangeState
  Trigger1 = Command != "holdback"
  Trigger2 = !InGuardDist
  Value    = 140

;------------------------------------------------------------------------------;
; �󒆃K�[�h���� AIR GUARD (guarding)
;------------------------------------------------------------------------------;
[Statedef 132]
  Type    = A
  Physics = N

;--------------------------------------[ ChangeAnim ]
[State 132, 1]
  Type     = ChangeAnim
  Trigger1 = Anim != 132
  Value    = 132

;--------------------------------------[ Movement ]
[State 132, 2]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(movement.yaccel)

[State 132, 3]
  Type      = VarSet
  Trigger1  = 1
  sysvar(0) = (Pos Y >= 0) && (Vel Y > 0)

[State 132, 4]
  Type     = VelSet
  Trigger1 = sysvar(0)
  Y        = 0

[State 132, 5]
  Type     = PosSet
  Trigger1 = sysvar(0)
  Y        = 0

;--------------------------------------[ Bracelet ]
[State 132]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 132]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 6132
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 132, 6]
  Type     = ChangeState
  Trigger1 = sysvar(0)
  Trigger1 = Command = "holdback"
  Trigger1 = InGuardDist
  Value    = 130

[State 132, 7]
  Type     = ChangeState
  Trigger1 = sysvar(0)
  Value    = 52

[State 132, Stop Guarding]
  Type     = ChangeState
  Trigger1 = Command != "holdback"
  Trigger2 = !InGuardDist
  Value    = 140

;------------------------------------------------------------------------------;
; �K�[�h�I������ GUARD (end)
;------------------------------------------------------------------------------;
[Statedef 140]
  Type    = U
  Physics = U
  Ctrl    = 1

;--------------------------------------[ ChangeAnim ]
[State 140, 1]
  Type     = ChangeAnim
  Trigger1 = Time = 0
  Value    = 140 + (StateType = C) + (StateType = A)*2

;--------------------------------------[ Others ]
[State 140, 2]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = S
  Physics  = S

[State 140, 3]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = C
  Physics  = C

[State 140, 4]
  Type     = StateTypeSet
  Trigger1 = Time = 0 && StateType = A
  Physics  = A

[State 140, Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 140, Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 140]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 140]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 140
  Trigger1    = AnimElem = 3
  Anim        = 6140
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 140]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 141
  Trigger1    = AnimElem = 3
  Anim        = 6141
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

[State 140]
  Type        = Explod
  TriggerAll  = Time = 0
  Trigger1    = Anim = 142
  Trigger1    = AnimElem = 3
  Anim        = 6142
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  IgnoreHitPause = 0

;[State 140, 5] ;Implemented within engine
;Type = ChangeState
;Trigger1 = AnimTime = 0
;Value = (StateType = C)*11 + (StateType = A)*51

;------------------------------------------------------------------------------;
; �����K�[�h�d���P SGUARDHIT (shaking)
;------------------------------------------------------------------------------;
[Statedef 150]
  Type     = S
  MoveType = H
  Physics  = N
  VelSet   = 0, 0

;--------------------------------------[ ChangeAnim ]
[State 150]
  Type     = ChangeAnim
  Trigger1 = 1
  Value    = 150

;--------------------------------------[ Others ]
[State 150    : Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 150    : Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 150]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 150]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 150
  Anim        = 6130
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 150]
  Type     = ChangeState
  Trigger1 = HitShakeOver
  Value    = 151 + 2*(Command = "holddown")

;------------------------------------------------------------------------------;
; �����K�[�h�d���Q SGUARDHIT2 (knocked back)
;------------------------------------------------------------------------------;
[Statedef 151]
  Type     = S
  MoveType = H
  Physics  = S
  Anim     = 150

;--------------------------------------[ Others ]
[State 151]
  Type     = HitVelSet
  Trigger1 = Time = 0
  X        = 1

[State 151]
  Type     = CtrlSet
  Trigger1 = Time = GetHitVar(CtrlTime)
  Value    = 1

[State 151    : Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 151    : Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 151]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 151]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 150
  Anim        = 6130
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 151]
  Type     = VelSet
  Trigger1 = Time = GetHitVar(SlideTime)
  Trigger2 = HitOver
  X        = 0

;--------------------------------------[ ChangeState ]
[State 151]
  Type     = ChangeState
  Trigger1 = HitOver
  Value    = 130
  Ctrl     = 1

;------------------------------------------------------------------------------;
; ���Ⴊ�݃K�[�h�d���P CGUARDHIT (shaking)
;------------------------------------------------------------------------------;
[Statedef 152]
  Type     = C
  MoveType = H
  Physics  = N
  VelSet   = 0,0

;--------------------------------------[ ChangeAnim ]
[State 152]
  Type     = ChangeAnim
  Trigger1 = 1
  Value    = 151

;--------------------------------------[ Others ]
[State 152    : Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 152    : Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 152]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 152]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 151
  Anim        = 6131
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 152]
  Type     = ChangeState
  Trigger1 = HitShakeOver
  Value    = 151 + 2*(Command = "holddown")

;------------------------------------------------------------------------------;
; ���Ⴊ�݃K�[�h�d���Q CGUARDHIT2 (knocked back)
;------------------------------------------------------------------------------;
[Statedef 153]
  Type     = C
  MoveType = H
  Physics  = C
  Anim     = 151

;--------------------------------------[ Others ]
[State 153]
  Type     = HitVelSet
  Trigger1 = Time = 0
  X        = 1

[State 153]
  Type     = CtrlSet
  Trigger1 = Time = GetHitVar(CtrlTime)
  Value    = 1

[State 153    :  Hi to Lo]
  Type      = StateTypeSet
  Trigger1  = StateType = S && Command = "holddown"
  StateType = C
  Physics   = C

[State 153    :  Lo to Hi]
  Type      = StateTypeSet
  Trigger1  = StateType = C && Command != "holddown"
  StateType = S
  Physics   = S

;--------------------------------------[ Bracelet ]
[State 153]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 153]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 151
  Anim        = 6131
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 153]
  Type     = VelSet
  Trigger1 = Time = GetHitVar(SlideTime)
  Trigger2 = HitOver
  X        = 0

;--------------------------------------[ ChangeState ]
[State 153]
  Type     = ChangeState
  Trigger1 = HitOver
  Value    = 131
  Ctrl     = 1

;------------------------------------------------------------------------------;
; �󒆃K�[�h�d���P AGUARDHIT (shaking)
;------------------------------------------------------------------------------;
[Statedef 154]
  Type     = A
  MoveType = H
  Physics  = N
  VelSet   = 0,0

;--------------------------------------[ ChangeAnim ]
[State 154]
  Type     = ChangeAnim
  Trigger1 = 1
  Value    = 152

;--------------------------------------[ Bracelet ]
[State 154]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 154]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 152
  Anim        = 6132
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ ChangeState ]
[State 154]
  Type     = ChangeState
  Trigger1 = HitShakeOver
  Value    = 155 ;AGUARDHIT2

;------------------------------------------------------------------------------;
; �󒆃K�[�h�d���Q AGUARDHIT2 (knocked away)
;------------------------------------------------------------------------------;
[Statedef 155]
  Type     = A
  MoveType = H
  Physics  = N
  Anim     = 152

;--------------------------------------[ Others ]
[State 155]
  Type     = HitVelSet
  Trigger1 = Time = 0
  X        = 1
  Y        = 1

[State 155]
  Type     = VelAdd
  Trigger1 = 1
  Y        = Const(Movement.YAccel)

[State 155]
  Type     = CtrlSet
  Trigger1 = Time = GetHitVar(CtrlTime)
  Value    = 1

;--------------------------------------[ Variable ]
[State 155]
  Type      = VarSet
  Trigger1  = 1
  sysvar(0) = (Pos Y >= 0) && (Vel Y > 0)

;--------------------------------------[ Bracelet ]
[State 155]
  Type     = RemoveExplod
  Trigger1 = Time = 0
  ID       = 6000
  IgnoreHitPause = 1

[State 155]
  Type        = Explod
  Trigger1    = Time = 0
  Trigger1    = Anim = 152
  Anim        = 6132
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0

;--------------------------------------[ Movement ]
[State 155]
  Type     = VelSet
  Trigger1 = sysvar(0)
  Y        = 0

[State 155]
  Type     = PosSet
  Trigger1 = sysvar(0)
  Y        = 0

;--------------------------------------[ ChangeState ]
[State 155]
  Type     = ChangeState
  Trigger1 = sysvar(0)
  Trigger1 = Command = "holdback"
  Trigger1 = InGuardDist
  Value    = 130

[State 155]
  Type     = ChangeState
  Trigger1 = sysvar(0)
  Value    = 52

;------------------------------------------------------------------------------;
; ���E���h�J�n�O
;------------------------------------------------------------------------------;
[Statedef 5900]
  Type = S

;--------------------------------------[ Variable ]
[State 5900] ;Clear all int variables
  Type     = Null;VarRangeSet
  Trigger1 = roundsexisted = 0
  Value    = 0

[State 5900] ;Clear all float variables
  Type     = Null;VarRangeSet
  Trigger1 = roundsexisted = 0
  fValue   = 0

;--------------------------------------[ ChangeState ]
[State 5900] ;Intro for round 1
  Type     = ChangeState
  Trigger1 = roundno = 1
  Value    = 190

;--------------------------------------[ Bracelet ]
[State 5900]
  Type        = Explod
  Trigger1    = NumExplod(6000) = 0
  Anim        = 6000
  ID          = 6000
  Pos         = 0, 0
  PosType     = P1
  SprPriority = 2
  BindTime    = -1
  RemoveTime  = -1
  IgnoreHitPause = 0
