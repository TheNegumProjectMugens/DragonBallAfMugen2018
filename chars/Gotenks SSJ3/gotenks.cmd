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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "volley"
command = ~D, B, F, b
time = 20

[Command]
name = "ghost"
command = D, F, D, F, b
time = 25

[Command]
name = "shinku"
command = ~D, F, D, F, y
time = 25
;-| Special Motions |------------------------------------------------------

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 15

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 15

[Command]
name = "spiral"
command = ~D, B, x
time = 20

[Command]
name = "spiral2"
command = ~D, B, y
time = 20

[Command]
name = "donut"
command = ~B, D, x
time = 15

[Command]
name = "donut2"
command = ~B, D, y
time = 15

[Command]
name = "punches"
command = ~F, B, F, x
time = 20

[Command]
name = "punches2"
command = ~F, B, F, y
time = 20

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "headb"
command = ~D, F, a
time = 20

[Command]
name = "headb2"
command = ~D, F, b
time = 20

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

[Command]
name = "counter"
command = x+a
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = command = "volley"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact

[State -1,]
type = ChangeState
value = 3100
triggerall = var(59) <= 0
triggerall = command = "ghost"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1,]
type = ChangeState
value = 3050
triggerall = var(59) = 0
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

[State -1]
type = ChangeState
value = 2100
triggerall = var(59) = 0
triggerall = command = "tatsumaki"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact

; ƒ[ƒŠƒ“ƒOƒhƒ‰ƒSƒ“i‹­j
[State -1]
type = ChangeState
value = 2150
triggerall = var(59) = 0
triggerall = command = "tatsumaki2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact

[State -1,]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "shoryuken"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact
trigger15 = stateno = 5120

; —´ãÄŒ‚i‹­j
[State -1,]
type = ChangeState
value = 2050
triggerall = var(59) = 0
triggerall = command = "shoryuken2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact
trigger15 = stateno = 5120

[State -1]
type = ChangeState
value = 1600
triggerall = var(59) = 0
triggerall = command = "spiral"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

; ”š—óƒpƒ“ƒ`i‹­j
[State -1]
type = ChangeState
value = 1650
triggerall = var(59) = 0
triggerall = command = "spiral2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1, ]
type = ChangeState
value = 1505
triggerall = var(59) = 0
triggerall = power >= 100
triggerall = numhelper = 0
triggerall = (command = "donut")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;‹ó’†‚©‚ß‚Í‚ß”g(‹­)
[State -1, ]
type = ChangeState
value = 1555
triggerall = var(59) = 0
triggerall = power >= 100
triggerall = numhelper = 0
triggerall = (command = "donut2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

[State -1]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "donut"
triggerall = power >= 100
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1]
type = ChangeState
value = 1550
triggerall = var(59) = 0
triggerall = command = "donut2"
triggerall = power >= 100
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = command = "punches"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1]
type = ChangeState
value = 1450
triggerall = var(59) = 0
triggerall = command = "punches2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1, ]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = (command = "headb")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;•‘‹ó˜A‹ri‹­j
[State -1, ]
type = ChangeState
value = 1350
triggerall = var(59) = 0
triggerall = (command = "headb2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

[State -1]
type = ChangeState
value = 1250
triggerall = var(59) = 0
triggerall = command = "headb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact

[State -1]
type = ChangeState
value = 1255
triggerall = var(59) = 0
triggerall = command = "headb2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger14 = stateno = 910 && movecontact


[State -1]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
;trigger14 = stateno = 910 && movecontact

; ‚©‚ß‚Í‚ß”gi‹­j
[State -1]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 261 && movecontact
trigger10 = (stateno = 400 || stateno = 450) && (movecontact)
trigger11 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
trigger12 = stateno = 460 && movecontact
trigger13 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
;trigger14 = stateno = 910 && movecontact


[State -1, ]
type = ChangeState
value = 1205
triggerall = var(59) = 0
triggerall = power >= 100
triggerall = numproj = 0
triggerall = (command = "hadouken")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;‹ó’†‚©‚ß‚Í‚ß”g(‹­)
[State -1, ]
type = ChangeState
value = 1215
triggerall = var(59) = 0
triggerall = power >= 100
triggerall = numproj = 0
triggerall = (command = "hadouken2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)
;---------------------------------------------------------------------------
; Žc‘œŒiƒJƒEƒ“ƒ^[j
[State -1]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

[State -1, Grab]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;ƒ_ƒbƒVƒ…Žãƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_x"

;ƒXƒ‰ƒCƒfƒBƒ“ƒOƒLƒbƒN
[State -1, ]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ƒ_ƒbƒVƒ…•‚‚©‚¹UŒ‚
[State -1, ]
type = ChangeState
value = 920
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_y"

;ƒ_ƒbƒVƒ…‹­ƒLƒbƒN
[State -1, ]
type = ChangeState
value = 930
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_b"


[State -1, ]
type = ChangeState
value = 261
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 17) && (P2statetype != A)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
;trigger4 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;—§‚¿‹­ƒLƒbƒN
[State -1, ]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact

;—§‚¿ŽãƒLƒbƒNi‹ß‹——£j
[State -1, ]
type = ChangeState
value = 251
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;—§‚¿ŽãƒLƒbƒN
[State -1, ]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact

;—§‚¿‹­ƒpƒ“ƒ`i‹ß‹——£j
[State -1, ]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
;trigger4 = stateno = 251 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact
trigger7 = stateno = 211 && movecontact

;—§‚¿Žãƒpƒ“ƒ`i‹ß‹——£j
[State -1, ]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 10)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201) && (AnimElem = 2,>3 || MoveContact)

;---------------------------------------------------------------------------
;—§‚¿Žãƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;‹ü‚Ý‹­ƒLƒbƒN
[State -1, ]
type = ChangeState
value = 460
triggerall = var(59) = 0
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger5 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;‹ü‚ÝŽãƒLƒbƒN
[State -1, ]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
;trigger3 = (stateno = 450) && (AnimElem = 3,>6 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;‹ü‚Ý‹­ƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 201) && (movecontact)
trigger4 = (stateno = 250 || stateno = 251) && (movecontact)
trigger5 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;‹ü‚ÝŽãƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1, ]
type = ChangeState
value = 661
triggerall = var(59) = 0
triggerall = (command = "b") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
trigger3 = (stateno = 651) && (movecontact)
trigger4 = (stateno = 611) && (movecontact)

;‚’¼ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1, ]
type = ChangeState
value = 660
triggerall = var(59) = 0
triggerall = (command = "b") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 650) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1, ]
type = ChangeState
value = 651
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;‚’¼ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1, ]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------

;ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 611
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;‚’¼ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)

;---------------------------------------------------------------------------
;‚’¼ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1, ]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact)


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ƒoƒbƒNƒXƒeƒbƒv
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;‹ó’†ƒ_ƒbƒVƒ…
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;‹ó’†ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1, Back]
type = ChangeState
value = 112
triggerall = var(59) = 0
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; ‚‘¬ˆÚ“® (Œã•û)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
; ‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
; ‹C—Í—­‚ß
[State -1]
type = ChangeState
value = 4500
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"