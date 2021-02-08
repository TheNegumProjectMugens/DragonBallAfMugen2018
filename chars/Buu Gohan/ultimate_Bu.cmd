
;-| Super Motions |--------------------------------------------------------

[Command]
name = "Makankosappo"
command = ~D, F, x

[Command]
name = "kamehameha"
command = ~D, F, y


;-| Special Motions |------------------------------------------------------

[Command]
name = "fireball"
command = s

[Command]
name = "fly"
command = a+x

[Command]
name = "combo"
command = ~D, B, b

[Command]
name = "atack"
command = x+y

[Command]
name= "special kick"
command= ~F, D, DF, b

[Command]
name = "teleport"
command = b+y

[Command]
name = "teleportb"
command = ~B, D, DB, a

[Command]
name = "SGKA"
command = ~D, DF, F, z

[Command]
name = "air special kick"
command = ~F, D, a

[Command]
name = "air special kick"
command = ~F, D, b

[Command]
name = "air special kick"
command = ~F, D, c

[Command]
name = "ki burn"
command = b+c


;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

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

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[Command]
name = "ja"
command = y
time = 1

[Command]
name = "ja"
command = z
time = 1

[Command]
name = "ja"
command = x
time = 1

[Command]
name = "jb"
command = a
time = 1

[Command]
name = "jb"
command = b
time = 1

[Command]
name = "jb"
command = c
time = 1

[Command]
name = "jb2"
command = a
time = 1

[Command]
name = "jb2"
command = b
time = 1

[Command]
name = "jb2"
command = c
time = 1

[Command]
name = "db"
command = a
time = 1

[Command]
name = "db"
command = b
time = 1

[Command]
name = "db"
command = c
time = 1

[Command]
name = "da"
command = x
time = 1

[Command]
name = "da"
command = y
time = 1

[Command]
name = "da"
command = z
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;Teleport
[State -1]
type = ChangeState
value = 1600
triggerall = command = "teleport"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
;Teleport Back
[State -1]
type = ChangeState
value = 1630
triggerall = command = "teleportb"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;---------------------------------------------------------
;Kick Combo
[State -1]
type = ChangeState
value = 345
triggerall = command = "combo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
;fly
[State -1]
type = ChangeState
value = 2000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Pos Y < 0
trigger1 = command = "fly"

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Pos Y < 0
trigger1 = command = "fly"

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Pos Y < 0
trigger1 = command = "fly"
trigger1 = P2BodyDist Y <= 200

;---------------------------------------------------------------------------
; Knee
[State -1]
type = ChangeState
value = 1120
triggerall = command = "special kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
;Air Special Kick
[State -1]
type = ChangeState
value = 1050
triggerall = command = "air special kick"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = Power < 3000
triggerall = command = "charge"
triggerall = command = "charge 1"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000

;-Makankosappo
[State -1]
type = ChangeState
value = 1800
triggerall = command = "Makankosappo"
triggerall = power >= 2000
triggerall = stateno != 1800 
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
; Kamehameha
[State -1]
type = ChangeState
value = 5656
triggerall = command = "kamehameha"
triggerall = power >= 3000
triggerall = stateno != 5656 
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;SGKA
[State -1]
type = ChangeState
value = 1503
triggerall = command = "SGKA"
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 2000

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Fireball
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000


;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;punch close
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 15

;---------------------------------------------------------------------------
;kick close
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 15

;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
;trigger2 = stateno = 200
;trigger2 = time >= 7
trigger2 = stateno = 2000
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 220
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 201
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 400
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "da"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "db"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "ja"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 620
triggerall = command = "jb2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel X != 0
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "jb"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 620
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
