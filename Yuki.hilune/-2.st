; FileName : -2.st
;------------------------------------------------------------------------------;
;============================+--------------------+============================;
;                            |常時監視ステート(-2)|
;============================+--------------------+============================;
;------------------------------------------------------------------------------;
[Statedef -2]
;------------------------------------------------------------------------------;
[State -2 : クリップボード]
  Type     = DisplayToClipboard
  Trigger1 = 1
  Text     = "Var(0) = %d, Var(12) = %d, Var(18) = %d, Var(23) = %d, FVar(4) = %f"
  Params   =  Var(0),      Var(12),      Var(18),      Var(23),      FVar(4)

[State -2 : Test]
  Type = VarSet
  Trigger1 = 1
  V = 0
  Value = vel x

;==============================================================================;
; サウンド
;==============================================================================;
[State -2]
  Type     = StopSnd
  Trigger1 = StateNo != 100
  Channel  = 1

[State -2]
  Type     = StopSnd
  Trigger1 = StateNo != 1000 && StateNo != 1100
  Channel  = 2

[State -2]
  Type     = PlaySnd
  Trigger1 = P2StateNo = 2030
  Trigger1 = P2MoveType = H
  Trigger1 = Enemy,Vel Y > 0 && Enemy, Pos Y >= 0
  Value    = s5005,0

[State -2]
  Type       = PlaySnd
  TriggerAll = Alive
  TriggerAll = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
  Trigger1   = Time = 0
  Value      = 5000,Random%5

;==============================================================================;
; 変数
;==============================================================================;
;--------------------------------------------------------------------;
; 乱数
;--------------------------------------------------------------------;
[State -2]
  Type     = VarRandom
  Trigger1 = 1
  V        = 1
  Range    = 0, 8
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; コンボ数カウント
;--------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  Trigger2 = Enemy,Ctrl = 1
  Trigger3 = StateNo = [5200,5210]
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; カウンターヒット判定
;--------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType = A
  Trigger1 = StateNo != [800,850]
  V        = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != A
  Trigger2 = StateNo = [800, 850]
  V        = 3
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; キャンセル
;--------------------------------------------------------------------;
[State -2]
  Type     = VarSet
;  Trigger1 = StateNo != [100,101]
;  Trigger1 = StateNo != [200, 4000]
  Trigger1 = MoveType = H
  V        = 10
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; 追撃判定
;--------------------------------------------------------------------;
[State -2 : 追撃判定リセット]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  V        = 11
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; やられ判定
;--------------------------------------------------------------------;
[State -2 : やられ判定リセット]
  Type     = VarSet
  Trigger1 = MoveType != H
  V        = 40
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : やられ判定]
  Type     = VarAdd
  Trigger1 = MoveType = H
  Trigger1 = StateNo != [120,159]
  V        = 40
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; メモリーカードスラッシュのタイムカウント
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != 1700 && StateNo != 2700
  Trigger1 = Var(14) > 0
  V        = 14
  Value    = -1
  IgnoreHitPause = 1

[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != 1700 && StateNo != 2700
  Trigger1 = Var(15) > 0
  V        = 15
  Value    = -1
  IgnoreHitPause = 1

[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != 1700 && StateNo != 2700
  Trigger1 = Var(16) > 0
  V        = 16
  Value    = -1
  IgnoreHitPause = 1

[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != 1700 && StateNo != 2700
  Trigger1 = Var(17) > 0
  V        = 17
  Value    = -1
  IgnoreHitPause = 1

[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != 1700 && StateNo != 2700
  Trigger1 = Var(18) > 0
  V        = 18
  Value    = -1
  IgnoreHitPause = 1

;------------------------------------------------------------------------------;
; 超ド級ステータスアップ
;------------------------------------------------------------------------------;
;--------------------------------------[ ステータスアップA ]
[State -2     : A]
  Type     = VarAdd
  Trigger1 = StateNo != [3000,3350]
  Trigger1 = Var(20) > 0
  V        = 20
  Value    = -1
  IgnoreHitPause = 1

[State -2     : A]
  Type     = VarSet
  Trigger1 = Var(20) < 0
  Trigger2 = PrevStateNo = [3100,3200]
  Trigger3 = PrevStateNo = 3320
  Trigger4 = PrevStateNo = 3350
  V        = 20
  Value    = 0
  IgnoreHitPause = 1

[State -2     : A]
  Type     = PalFx
  Trigger1 = Var(20) > 0
  Trigger1 = GameTime%3 = 0
  Trigger1 = (Var(20) > Var(21)) && (Var(20) > Var(22))
  Time     = 1
  Add      = 192,0,0
  Color    = 128
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2     : A]
  Type     = PalFx
  Trigger1 = Var(20) > 0
  Trigger1 = GameTime%3 = 1
  Trigger1 = (Var(20) > Var(21)) && (Var(20) > Var(22))
  Time     = 1
  Add      = 160,0,0
  Color    = 256
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = null;AttackMulSet
  Trigger1 = 1
  Value    = 1.2

;--------------------------------------[ ステータスアップB ]
[State -2     : B]
  Type     = VarAdd
  Trigger1 = StateNo != 3000
  Trigger1 = Var(21) > 0
  V        = 21
  Value    = -1
  IgnoreHitPause = 1

[State -2     : B]
  Type     = VarSet
  Trigger1 = Var(21) < 0
  V        = 21
  Value    = 0
  IgnoreHitPause = 1

[State -2     : B]
  Type     = PalFx
  Trigger1 = Var(21) > 0
  Trigger1 = GameTime%3 = 0
  Trigger1 = (Var(21) > Var(20)) && (Var(21) > Var(22))
  Time     = 1
  Add      = 192,192,0
  Color    = 128
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2     : B]
  Type     = PalFx
  Trigger1 = Var(21) > 0
  Trigger1 = GameTime%3 = 1
  Trigger1 = (Var(21) > Var(20)) && (Var(21) > Var(22))
  Time     = 1
  Add      = 160,160,0
  Color    = 256
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;----------------------------[ 被ヒットカウント ]
[State -2]
  Type       = VarSet
  TriggerAll = !IsHelper
  Trigger1   = MoveType != H
  Trigger2   = StateNo = [120,159]
  V          = 26
  Value      = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = VarSet
  TriggerAll = !IsHelper
  Trigger1   = MoveType = H
  Trigger1   = StateNo != [120,159]
  V          = 26
  Value      = GetHitVar(HitCount)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;----------------------------[ 被ダメージ ]
[State -2     : 1Hit目のダメージ]
  Type       = LifeAdd
  TriggerAll = Alive
  TriggerAll = Var(21) > 0
  Trigger1   = Var(26) = 1
  Trigger1   = Var(27) := GetHitVar(Damage)
  Trigger1   = Var(28) := Floor(Var(27)*0.8)
  Value      = Var(28)
  Absolute   = 1
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2    : 1Hit目以降のダメージ]
  Type     = DefenceMulSet
  Trigger1 = Var(21) > 0
  Value    = 0.8
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------[ ステータスアップMAX ]
[State -2     : MAX]
  Type     = VarAdd
  Trigger1 = StateNo != 3010
  Trigger1 = Var(22) > 0
  V        = 22
  Value    = -1
  IgnoreHitPause = 1

[State -2     : MAX]
  Type     = VarSet
  Trigger1 = Var(22) < 0
  Trigger2 = StateNo = 3200
  Trigger3 = StateNo = 3350
  Trigger4 = StateNo = 3400
  V        = 22
  Value    = 0
  IgnoreHitPause = 1

[State -2     : MAX]
  Type     = PalFx
  Trigger1 = Var(22) > 0
  Trigger1 = GameTime%3 = 0
  Trigger1 = (Var(22) > Var(20)) && (Var(22) > Var(21))
  Time     = 1
  Add      = 160,160,160
  Color    = 128
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2     : MAX]
  Type     = PalFx
  Trigger1 = Var(22) > 0
  Trigger1 = GameTime%3 = 1
  Trigger1 = (Var(22) > Var(20)) && (Var(22) > Var(21))
  Time     = 1
  Add      = 128,128,128
  Color    = 256
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;==============================================================================;
; アトミックガイ・ネオス
;==============================================================================;
;--------------------------------------------------------------------;
; 変身受付時間
;--------------------------------------------------------------------;
[State -2]
  Type     = VarAdd
  Trigger1 = Var(23) > 0
  V        = 23
  Value    = -1
  IgnoreHitPause = 1

;--------------------------------------------------------------------;
; 変身時間
;--------------------------------------------------------------------;
[State -2]
  Type     = VarAdd
  Trigger1 = StateNo != [4191,4192]
  Trigger1 = Var(24) > 1
  V        = 24
  Value    = -1
  IgnoreHitPause = 1

[State -2]
  Type     = VarAdd
  Trigger1 = Var(24) < 0
  V        = 24
  Value    = 1
  IgnoreHitPause = 1

[State -2]
  Type     = VarSet
  Trigger1 = MoveType = H
  V        = 24
  Value    = 0
  IgnoreHitPause = 1

;--------------------------------------------------------------------;
; ハイパーアーマー処理
;--------------------------------------------------------------------;
[State -2]
  Type        = Helper
  Trigger1    = NumHelper(8000) = 0
  Trigger1    = StateNo = [4000,4800]
  Name        = "HyperArmor"
  StateNo     = 8000
  ID          = 8000
  Pos         = 0, 0
  PosType     = P1
  HelperType  = Normal
  OwnPal      = 1
  KeyCtrl     = 0
  Size.XScale = 1
  Size.YScale = 1
  SuperMoveTime = 999999
  PauseMoveTime = 999999

[State -2]
  Type     = LifeAdd
  Trigger1 = NumHelper(8000)
  Trigger1 = Helper(8000),GetHitVar(Damage)
  Value    = -1*Helper(8000),GetHitVar(Damage)
  Absolute = 1
  IgnoreHitPause = 1

;==============================================================================;
; システム
;==============================================================================;
;--------------------------------------------------------------------;
; オートチャージ
;--------------------------------------------------------------------;
[State -2 : ]
  Type       = VarAdd
  TriggerAll = RoundState = 2
  TriggerAll = Var(29) < 480
  TriggerAll = StateNo != 5900
  Trigger1   = PrevStateNo != [190,191]
  Trigger1   = StateNo != [3400,4900]
  Trigger1   = Var(24) = 0
  Trigger2   = PrevStateNo = [190,191]
  Trigger2   = Ctrl
  V          = 29
  Value      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = PowerAdd
  TriggerAll = RoundState = 2
  Trigger1   = Var(22) = 0
  Trigger1   = Var(29) >= 480
  Trigger1   = GameTime%60 = 0
  Value      = 60
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = Null;PlaySnd
  TriggerAll = RoundState = 2
  Trigger1   = Var(29) = 599
  Value      = s905,0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type        = Helper
  Trigger1    = !NumHelper(7750)
  Name        = "AutoCharge"
  StateNo     = 7750
  ID          = 7750
  Pos         = 0, 0
  PosType     = P1
  HelperType  = Normal
  OwnPal      = 1
  OnTop       = 1
  KeyCtrl     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;==============================================================================;
; ダメージ関連
;==============================================================================;
;--------------------------------------------------------------------;
; コンボ補正
;--------------------------------------------------------------------;
[State -2 : コンボ補正リセット]
  Type     = VarSet
  Trigger1 = Var(2) < 3
  Trigger2 = P2MoveType != H
  FV       = 2
  Value    = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : コンボ補正]
  Type     = VarSet
  Trigger1 = Var(2) > 2
  FV       = 2
  Value    = (100-(25+Var(2)*0.5*5))*0.01
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; ネバリ値計算
;--------------------------------------------------------------------;

; 相手の最大体力を考慮に入れる場合
;￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
[State -2 : 相手の体力が40%以上のとき]
  Type     = VarSet
  Trigger1 = Enemy,Life >= Enemy,Const(Data.Life)*0.4
  FV       = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が40%未満かつ15%以上のとき]
  Type     = VarSet
  Trigger1 = (Enemy,Life >= Enemy,Const(Data.Life)*0.15) && (Enemy,Life < Enemy,Const(Data.Life)*0.4)
  FV       = 3
  Value    = 0.75
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が15%未満のとき]
  Type     = VarSet
  Trigger1 = Enemy,Life < Enemy,Const(Data.Life)*0.15
  FV       = 3
  Value    = 0.5
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

; 相手の最大体力を考慮に入れない場合
;￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
[State -2 : 相手の体力が400以上のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life >= 400
  FV       = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が400未満かつ150以上のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life >= 150 && Enemy,Life < 400
  FV       = 3
  Value    = 0.75
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が150未満のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life < 150
  FV       = 3
  Value    = 0.5
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; ダメージ計算
;--------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  FV       = 4
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 必殺技以下のダメージ補正]
  Type     = VarSet
  Trigger1 = 1
  FV       = 4
  Value    = (100*IfElse(FVar(2)<0.20,0.20,FVar(2))*FVar(3)/(100+Var(1)-4))*IfElse(Var(20)>0,1.2,1)*IfElse(Var(22)>0,0.9,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 超必殺技以上のダメージ補正]
  Type     = VarSet
  Trigger1 = 1
  FV       = 5
  Value    = (100*IfElse(FVar(2)<0.50,0.50,FVar(2))*FVar(3)/(100+Var(1)-4))*IfElse(Var(20)>0,1.2,1)*IfElse(Var(22)>0,0.9,1)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;==============================================================================;
; その他
;==============================================================================;
;--------------------------------------------------------------------;
; エフェクト削除
;--------------------------------------------------------------------;
[State -2]
  Type     = RemoveExplod
  Trigger1 = StateNo != [120, 159]
  Trigger1 = MoveType = H
  Trigger2 = IsHelper
  ID       = 6000
  IgnoreHitPause = 1
  SuparMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = RemoveExplod
  Trigger1 = StateNo != [1000,1050]
  Trigger1 = StateNo != [2000,2050]
  ID       = 1000
  IgnoreHitPause = 1

;--------------------------------------------------------------------;
; EX必殺技
;--------------------------------------------------------------------;
[State -2]
  Type           = PalFx
  TriggerAll     = MoveType != H
  Trigger1       = StateNo = [2000,2999]
  Trigger1       = GameTime%3 = 0
  Trigger1       = Time > 5
  Time           = 1
  Add            = 0, 0, 240
  Color          = 128
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type           = PalFx
  TriggerAll     = MoveType != H
  Trigger1       = StateNo = [2000,2999]
  Trigger1       = GameTime%3 = 1
  Trigger1       = Time > 5
  Time           = 1
  Add            = 0, 0, 192
  Color          = 256
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; MAX演出
;--------------------------------------------------------------------;
[State -2]
  Type       = Helper
  TriggerAll = NumHelper(7600) = 0
  Trigger1   = StateNo = 3350
  Trigger1   = Time = 1
  Trigger2   = StateNo = 3420
  Trigger2   = AnimElem = 2
  Name       = "MAX2"
  StateNo    = 7600
  ID         = 7600
  HelperType = Normal
  Pos        = 0,0
  PosType    = P2
  KeyCtrl    = 0
  OwnPal     = 1
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = Helper
  TriggerAll = NumHelper(7600) = 0
  Trigger1   = StateNo = 3400
  Trigger1   = AnimElem = 14
  Name       = "MAX2"
  StateNo    = 7610
  ID         = 7600
  HelperType = Normal
  Pos        = 0,0
  PosType    = P2
  KeyCtrl    = 0
  OwnPal     = 1
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;===========================+----------------------+===========================;
;                           |準常時監視ステート(-3)|
;===========================+----------------------+===========================;
;------------------------------------------------------------------------------;
[Statedef -3]
;------------------------------------------------------------------------------;

;ゲーム中に常にいつでも開始したいステート、ここでは「着地音」に使用しています
;下の条件は「52か106のステートに移動して１フレーム目に」と言う事です。
;52と106はバックステップとジャンプの着地のステートです。
[State -3, Landing Sound]
  Type       = PlaySnd
  TriggerAll = Time = 1
  Trigger1   = StateNo = 52 
  Trigger2   = StateNo = 106 
  Value      = s40, 3

;------------------------------------------------------------------------------;
; ハイジャンプ処理
;------------------------------------------------------------------------------;
[State -3] 
  Type     = VarSet
  Trigger1 = Command = "Jump"
  Trigger1 = Ctrl
  Trigger1 = StateType = S
  Trigger2 = PrevStateNo = [100, 101]
  Trigger2 = Command = "holdfwd"
  V        = 6
  Value    = 1

[State -3]
  Type     = VarSet
  Trigger1 = Var(6) = 1
  Trigger1 = StateNo = 40
  Trigger1 = AnimTime = 0
  V        = 6
  Value    = IfElse(sysvar(1)=0, 2, IfElse(sysvar(1)=1, 3, 4))

[State -3]
  Type       = VarSet
  TriggerAll = Time = 2
  Trigger1   = StateNo = 50
  Trigger2   = StateNo != [40,59]
  V          = 6
  Value      = 0

[State -3]
  Type     = VelAdd
  Trigger1 = Var(6) = 2
  Trigger1 = StateNo = 50
  Y        = -1.5

[State -3]
  Type     = VelAdd
  Trigger1 = Var(6) = 3
  Trigger1 = StateNo = 50
  X        = 1.5
  Y        = -0.6

[State -3]
  Type     = VelAdd
  Trigger1 = Var(6) = 4
  Trigger1 = StateNo = 50
  X        = -1.5
  Y        = -0.6

[State -3]
  Type        = AfterImage
  Trigger1    = Var(6) >= 1
  Trigger1    = StateNo = 50
  Time        = 25
  Trans       = Add1
  Length      = 4
  TimeGap     = 3
  FrameGap    = 1
  PalBright   = 0, 0, 0
  PalContrast = 128, 128, 128
  PalAdd      = 0, 0, 0
  PalMul      = 1, 1, 1

