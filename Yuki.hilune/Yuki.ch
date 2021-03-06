; FileName : Yuki.ch
;------------------------------------------------------------------------------;
;==============================================================================;
; キャラクターの基本データ
;==============================================================================;
[Data]
  Life              = 1000             ; 体力ゲージの初期値
  Power             = 5000             ; パワーゲージの初期値
  Attack            = 100              ; 攻撃力(これ以上に設定すると強くなる)
  Defence           = 100              ; 防御力(これ以上に設定すると強くなる)
  Fall.Defence_Up   = 50               ; コンボをくらっている時にあがる防御力
  LieDown.Time      = 60               ; 倒れてから起上がるまでのフレーム数
  AirJuggle         = 15               ; 空中でどれだけコンボが繋がるか(高くすると無限コンボになるので注意)
  SparkNo           = 2                ; HitDefで設定していない時の基本ヒットスパークナンバー
  Guard.SparkNo     = 40               ; 設定してない時のガードナンバー
  KO.Echo           = 0                ; KOした時に声にエコーをかけるか(1でON)
  Volume            = 0                ; キャラの標準の音量
  IntPersistIndex   = 26               ; 次のラウンドへ持ち越せる「Var」のアドレスの範囲（Var(26)〜Var(59)まで持ち越す）
  FloatPersistIndex = 40               ; 次のラウンドへ持ち越せる「FVar」のアドレスの範囲（すべて持ち越さない）

;==============================================================================;
; キャラクターのサイズ
;==============================================================================;
[Size]
  XScale           = 1                 ; 水平方向の縮尺(通常1)
  YScale           = 1                 ; 垂直方向の縮尺(通常1)
  Ground.Front     = 16                ; キャラの幅(前方, 地上)
  Ground.Back      = 18                ; キャラの幅(後方, 地上)
  Air.Front        = 12                ; キャラの幅(前方, 空中)
  Air.Back         = 12                ; キャラの幅(後方, 空中)
  Height           = 60                ; キャラの高さ
  Attack.Dist      = 160               ; 攻撃をした時相手がガード体制に入る最低距離
  Proj.Attack.Dist = 90                ; 攻撃をした時相手がガード体制に入る最低距離(飛び道具)
  Proj.DoScale     = 0                 ; 上で設定した縮尺を飛び道具にも適用するか(1でON)   
  Head.Pos         = -8, -92           ; 頭の大体の座標
  Mid.Pos          = -2, -65           ; 体の中心の大体の座標
  ShadowOffSet     = 0                 ; 影の垂直方向のオフセット
  Draw.OffSet      = 0, 0              ; 使用しない

;==============================================================================;
; キャラクターの移動速度
;==============================================================================;
[Velocity]
  Walk.Fwd     =  2.9                  ; 前進の速度
  Walk.Back    = -2.4                  ; 後退の速度
  Run.Fwd      =  5.7,   0             ; 前ダッシュの速度(ホップする時はYを-にする)
  Run.Back     = -4.9,  -4.2           ; 後ダッシュの速度(ホップする時はYを-にする)
  Jump.Neu     =  0,    -9.4           ; 垂直ジャンプの速度
  Jump.Fwd     =  3.4                  ; 前ジャンプの速度
  Jump.Back    = -3.2                  ; 後ジャンプの速度
  RunJump.Fwd  =  4,    -8.1           ; 前ダッシュしながらのジャンプ速度(オプション)
  RunJump.Back = -2.55, -8.1           ; 後ダッシュしながらのジャンプ速度(オプション)
  AirJump.Neu  =  0,    -8.1           ; 2段ジャンプ以降の垂直ジャンプの速度(オプション)
  AirJump.Fwd  =  2.5                  ; 2段ジャンプ以降の前ジャンプの速度
  AirJump.Back = -2.55                 ; 2段ジャンプ以降の後ジャンプの速度(オプション)

;==============================================================================;
; キャラクターの運動関係
;==============================================================================;
[Movement]
  AirJump.Num     = 0                  ; 空中でジャンプする回数
  AirJump.Height  = 35                 ; 空中でジャンプする最低限の高さ
  YAccel          = 0.52               ; 重力
  Stand.friction  = 0.85               ; 立ち状態の摩擦係数
  Crouch.friction = 0.82               ; 屈み状態の摩擦係数

