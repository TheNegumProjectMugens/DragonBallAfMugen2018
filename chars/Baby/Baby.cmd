;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11


;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.

;-| AI Command |--------------------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = c, c, c
time = 1

[Command]
name = "AI3"
command = x, x, x
time = 1

[Command]
name = "AI4"
command = z, z, z
time = 1

[Command]
name = "AI5"
command = a, c
time = 1

[Command]
name = "AI6"
command = c, a
time = 1

[Command]
name = "AI7"
command = x, z
time = 1

[Command]
name = "AI8"
command = z, x
time = 1

[Command]
name = "AI9"
command = a, c, a
time = 1

[Command]
name = "AI10"
command = c, a, c
time = 1

[Command]
name = "AI11"
command = x, z, x
time = 1

[Command]
name = "AI12"
command = z, x, z
time = 1

[Command]
name = "AI13"
command = D, DB, B ,a, a, a
time = 1

[Command]
name = "AI14"
command = D, DB, B ,c, c, c
time = 1

[Command]
name = "AI15"
command = D, DB, B ,x, x, x
time = 1

[Command]
name = "AI16"
command = D, DB, B ,z, z, z
time = 1

[Command]
name = "AI17"
command = D, DB, B ,a, c
time = 1

[Command]
name = "AI18"
command = D, DB, B ,c, a
time = 1

[Command]
name = "AI19"
command = D, DB, B ,x, z
time = 1

[Command]
name = "AI20"
command = D, DB, B ,z, x
time = 1

[Command]
name = "AI21"
command = D, DB, B ,a, c, a
time = 1

[Command]
name = "AI22"
command = D, DB, B ,c, a, c
time = 1

[Command]
name = "AI23"
command = D, DB, B ,x, z, x
time = 1

[Command]
name = "AI24"
command = D, DB, B ,z, x, z
time = 1

[Command]
name = "AI25"
command = a, a, a+b
time = 1

[Command]
name = "AI26"
command = b, c, a+b
time = 1

[Command]
name = "AI27"
command = a, c, a+b
time = 1

[Command]
name = "AI28"
command = c, a, a+b
time = 1

[Command]
name = "AI29"
command = x, x, x+y
time = 1

[Command]
name = "AI30"
command = y, y, x+y
time = 1

[Command]
name = "AI31"
command = x, y, x+y
time = 1

[Command]
name = "AI32"
command = z, x, x+y
time = 1

[Command]
name = "AI33"
command = a, a, a, a+b
time = 1

[Command]
name = "AI34"
command = x, x, x, x+y
time = 1

;---Hypers---------------

[Command]
name = "sferette"   
command = D, DF, F, D, DF, F, a
time = 30

[Command]
name = "sfera1"   
command = D, DF, F, D, DF, F, b
time = 30

[Command]
name = "sfera2"   
command = D, DF, F, D, DF, F, c
time = 30

[Command]
name = "plant"   
command = D, DF, F, D, DF, F, x
time = 30

[Command]
name = "furia"   
command = D, DF, F, D, DF, F, y
time = 30


;---Supers---------------

[Command]
name = "trapas"   
command = D, DB, B, a
time = 15

[Command]
name = "combo"   
command = D, DB, B, b
time = 15

[Command]
name = "devast"   
command = D, DB, B, x
time = 15

[Command]
name = "sfuriata"   
command = D, DB, B, y
time = 15

[Command]
name = "fire_ball"   
command = D, DB, B, c
time = 15










[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1



;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================必殺技========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;==================================================================================
;======| RELACIONADO ﾀ AI - AI RELATED |===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
;-----Hypers------------

;Furia debole
[State -1, ]
type = ChangeState
value = 3450
triggerall = command = "furia"
triggerall = power >= 1000
;triggerall = var(40) >= 2000
;triggerall = var(40) < 5000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Furia media
[State -1, ]
type = ChangeState
value = 3460
triggerall = command = "furia"
triggerall = power >= 2000
;triggerall = var(40) >= 5000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Plant Helper
[State -1, ]
type = ChangeState
value = 3300
triggerall = p2name != "Plant" && p3name != "Plant" && p4name != "Plant"
triggerall = command = "plant"
triggerall = power >= 3000
triggerall = life <= 400
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Sfera Vendicativa Hard
[State -1, ]
type = ChangeState
value = 3200
triggerall = command = "sfera2"
triggerall = power >= 3000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Sfera Vendicativa light
[State -1, ]
type = ChangeState
value = 3100
triggerall = command = "sfera1"
triggerall = power >= 2000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Sferette
[State -1, ]
type = ChangeState
value = 2099
triggerall = command = "sferette"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact

;Sferette air
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "sferette"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;-----Supers------------


;trapassing
[State -1, ]
type = ChangeState
value = 1002
triggerall = command = "trapas"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;combo teleport
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "combo"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;devastating sphere
[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "devast"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Great Fury
[State -1, ]
type = ChangeState
value = 1300
triggerall = command = "sfuriata"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;Fire ball
[State -1]
type = ChangeState
value = 1400
triggerall = command = "fire_ball"
triggerall = numproj = 0
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;Fire Ball 1
[State -1]
type = changestate
value = 1401
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1400

;Fire Ball 2        cont
[State -1]
type = changestate
value = 1402
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1401

;Fire Ball 2        cont
[State -1]
type = changestate
value = 1401
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1402

























;---------------------------------------------------------------------------

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 221
triggerall = command = "c" && var(10) = 2
trigger1 = stateno = 220

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 222
triggerall = command = "c" && var(10) = 1
trigger1 = stateno = 221



;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(18) = 0
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 2000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = var(19) = 0
triggerall = prevstateno != 1000
triggerall = stateno != 1000
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 2000
;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = var(19) = 0
triggerall = command = "hold_x" && command = "hold_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000

[State -1, ]
type = ChangeState
value = 270
triggerall = (command = "a") && (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger9 = stateno = 2000
;---------------------------------------------------------------------------
; Charge
[State -1]
type = ChangeState
value = 4500
triggerall = statetype != C
triggerall = var(9) = 0
triggerall = Power < 3000
trigger1 = ctrl = 1
triggerall = command = "hold_z"
trigger2 = stateno = 2000

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 2000
;---------------------------------------------------------------------------
;立ち強キック

;---------------------------------------------------------------------------

;;立ち弱キック（近距離）
;[State -1, ]
;type = ChangeState
;value = 271
;triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
;trigger1 = (ctrl) && (statetype = S)
;trigger2 = stateno = 200 && MoveContact
;trigger3 = stateno = 211 && MoveContact
;trigger4 = stateno = 271 && movecontact
;trigger5 = stateno = 2000
;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 2000
;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 2000
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = prevstateno != 220
triggerall = stateno != 220
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000
;---------------------------------------------------------------------------

;;立ち弱パンチ（近距離）
;[State -1, ]
;type = ChangeState
;value = 211
;triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
;trigger1 = (ctrl) && (statetype = S)
;trigger2 = stateno = 2000
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 2000
;---------------------------------------------------------------------------
;浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1

;屈み強キック
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "c") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1

;屈み強キック
[State -1, ]
type = ChangeState
value = 470
triggerall = (command = "z") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 670
triggerall = (command = "z")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)

;---------------------------------------------------------------------------

;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)

;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 620
triggerall = (command = "c")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------

;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = var(58) != 1
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly Up Air Command
[State -1]
type = ChangeState
value = 50
triggerall = stateno = 2000
triggerall = command = "s"
trigger1 = statetype = A

;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = var(58) != 1
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1, AI]
type = Varset
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
v = 59
value = 1

[State -1, AI]
type = Varset
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
v = 59
value = 1

;Guarding states

[State -1, AI Standing Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 130

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132

[State -1, Fly]
type = ChangeState
triggerall = var(59) = 1
triggerall = P2Life > 0
triggerall = MoveType != H
triggerall = MoveType != A
triggerall = P2MoveType != A
triggerall = random < 999
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
trigger1 = P2Name = "Goku-n-hd by EmuBoarding"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Mystic Gohan by Zero_X"
trigger2 = P2StateNo = 2000
trigger3 = P2Name = "Freeza by OverMind"
trigger3 = P2StateNo = 3001
trigger4 = P2Name = "Kurilin by EmuBoarding"
trigger4 = P2StateNo = 1500
trigger5 = P2Name = "Trunks por ssonic"
trigger5 = P2StateNo = 1900
trigger6 = P2Name = "Vegeta Super Sayjin 4 by EB and BS"
trigger6 = P2StateNo = 1500
trigger7 = P2Name = "N-Trunks by EmuBoarding"
trigger7 = P2StateNo = 1500
trigger8 = P2Name = "Mr.Boo by OverMind"
trigger8 = P2StateNo = 3001
trigger9 = P2Name = "Vegeta by OverMind"
trigger9 = P2StateNo = 3001
trigger10 = P2Name = "Broli Remix ver1.2"
trigger10 = P2StateNo = 2000
trigger11 = P2Name = "Mew Two"
trigger11 = P2StateNo = 1051
trigger12 = P2Name = "Raditz"
trigger12 = P2StateNo = 1510
trigger13 = P2Name = "C-Trunks by EmuBoarding"
trigger13 = P2StateNo = 1500
trigger14 = P2Name = "Piccolo por Ssonic"
trigger14 = P2StateNo = 1900
trigger15 = P2Name = "M. Bison"
trigger15 = P2StateNo = 89598
trigger16 = P2Name = "Cell por Ssonic"
trigger16 = P2StateNo = 1900
trigger17 = P2Name = "Recoom by Lucifer"
trigger17 = P2StateNo = 1500
trigger18 = P2Name = "Vegetto EX by Shishi-Ryu"
trigger18 = P2StateNo = 2000
trigger19 = P2Name = "Goku Super Sayajin 2 by ribeiro"
trigger19 = P2StateNo = 2000
trigger20 = P2Name = "Pan Dragonball GT por Ssonic"
trigger20 = P2StateNo = 1900
trigger21 = P2Name = "The Necromancer"
trigger21 = P2StateNo = 2000
trigger22 = P2StateType = S
trigger22 = P2MoveType != H
trigger22 = P2BodyDist Y < -1
value = 1999

[State -1,AI.Sair.do.Voa]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno = 2000
triggerall = MoveType != A
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 30
value = 50
ctrl = 1

[State -1, AI Gadouken]
type = ChangeState
value = 1400
triggerall = stateno != [2030,4012]
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [80,130])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 1401
triggerall = var(59)=1
Triggerall = stateno = 1400
triggerall = movehit
trigger1 = random<999

[State -1, AI Gadouken]
type = ChangeState
value = 1402
triggerall = var(59)=1
Triggerall = stateno = 1401
triggerall = movehit
trigger1 = random<999

[State -1,A2]
;Parar de voar
type = ChangeState
;trigger1 = Var(9) = 0
trigger1 = var(59) != 0
trigger1 = stateno = 10001
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 42
value = 50

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = (var(59) >= 1) 
trigger1 = (stateno != [100,107]) && statetype = S && ctrl
trigger1 = p2bodydist x > 40 &&  p2movetype != A && random < 300

[State -1,BACKDASH]
type = ChangeState
value = 105
triggerall = (var(59) >= 1) 
trigger1 = (stateno != [100,107]) && statetype = S && ctrl
trigger1 = p2bodydist x > 100 &&  p2movetype != A && random < 100

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (var(59) >= 1) && statetype = C && RoundState = 2 
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl && random < 500 

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (var(59) >= 1) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (var(59) >= 1) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 450
triggerall = (var(59) >= 1) && statetype = C 
triggerall = stateno != 450
trigger1 = p2bodydist x <= 40
trigger1 = statetype != A 
trigger1 = ctrl && random < 800

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 460
triggerall = (var(59) >= 1) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 470
triggerall = (var(59) >= 1) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 460) && movecontact


[State -1, Projectile]
type = ChangeState
triggerall = (var(59) = 1) && p2life!= 0 && Random < 550 && Life != 0 && stateno != [800,899] 
triggerall = StateType = S
triggerall = ctrl && p2life!= 0 
triggerall = p2movetype = A
triggerall = p2statetype != L
triggerall = Stateno!= 40 && Prevstateno!= 40
trigger1 = P2BodyDist X = [100,250]
trigger1 = enemy, Numproj <= 0&&enemy,stateno<2999
trigger2 = P2BodyDist X = [100,250]
trigger2 = enemy, Numhelper <= 0&&enemy,stateno<2999
trigger3 = Stateno = 140
trigger3 = ctrl && enemynear,movetype=A && (p2bodydist x=[20,200])
trigger3 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100)
trigger4 = (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AT) && (p2bodydist x=[-20,200])
trigger4 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100) 
trigger4 = Stateno = 140
trigger4 = (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger4 = random<ifelse((enemy,hitdefattr=SC,AT),500,100)
value = 40

[State -1, Jump mp]
type = ChangeState
value = 610
triggerall = (var(59)=1)
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit


[State -1, AI Jump hp]
type = ChangeState
value = 620
triggerall = (var(59)=1)
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 640 && movehit


[State -1, Jump lk]
type = ChangeState
value = 650
triggerall = (var(59)=1)
trigger1 = statetype = A
trigger1 = stateno = 600 && movehit


[State -1, Jump mk]
type = ChangeState
value = 660
triggerall = (var(59)=1)
trigger1 = statetype = A
trigger1 = stateno = 610 && movehit && random <=300


[State -1, AI Jump Heavy kick]
type = ChangeState
value = 670
triggerall = (var(59)=1)
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 660 && movehit && random <=500

; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = (var(59)=1) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,650,IfElse(StateNo = 610,660,670))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = (var(59)=1) && StateType = A
trigger1 = (StateNo = [650,660]) && (MoveContact)
value = IfElse(StateNo = 650,610,620)