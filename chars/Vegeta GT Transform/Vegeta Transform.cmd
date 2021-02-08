;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;-| Special Motions |------------------------------------------------------
[Command]
name = "Teleport"     ;Required (do not remove)
command = a+c
time = 1

[Command]
name = "trans"     ;Required (do not remove)
command = b+y
time = 20


[Command]
name = "Galick Gun"     ;Required (do not remove)
command = ~D, F, D, F, a
time = 20

[Command]
name = "Big Bang Attack"     ;Required (do not remove)
command = ~D, F, D, F, b
time = 20

[Command]
name = "Final Flash"     ;Required (do not remove)
command =  ~D, F, D, F, x
time = 20

[Command]
name = "10 Ki Balls"     ;Required (do not remove)
command = ~D, F, D, F, z
time = 20

[Command]
name = "Combo"     ;Required (do not remove)
command = ~D, F, D, F, y
time = 20

[Command]
name = "Teleport Punch"     ;Required (do not remove)
command = D,B,a
time = 20

[Command]
name = "Teleport Kick"     ;Required (do not remove)
command = D,B,b
time = 20
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
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

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

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;----------------------------------------------

;FireBall2
[State -1, Crouching FireBall2]
type = ChangeState
value = 3901
triggerall = var(10) = 0
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = power >= 100
trigger1 = statetype = C
triggerall = stateno != 1006
trigger1 = Time > 6 && stateno = 3900





;FireBall
[State -1, Crouching FireBall]
type = ChangeState
value = 3900
triggerall = var(10) = 0
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = C
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Time > 6 && stateno = 3901

;-----------------------------------

;FireBall2
[State -1, FireBall2]
type = ChangeState
value = 901
triggerall = var(10) = 0
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 6 && stateno = 900



;FireBall
[State -1, FireBall]
type = ChangeState
value = 900
triggerall = var(10) = 0
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Time > 6 && stateno = 901

;air FireBall2
[State -1, FireBall2]
type = ChangeState
value = 1901
triggerall = var(10) = 0
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 6 && stateno = 1900

;air FireBall
[State -1, FireBall]
type = ChangeState
value = 1900
triggerall = var(10) = 0
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 6 && stateno = 1901

;---------------------------------------------------------------------------
;Super Saiyan 2
[State -1, Super Saiyan 2]
type = ChangeState
value = 100000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = power < 3000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Quick Super Saiyan 2
[State -1, Quick Super Saiyan 2]
type = ChangeState
value = 100005
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = power < 3000
triggerall = command = "trans"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Super Saiyan 2
[State -1, Super Saiyan 2]
type = ChangeState
value = 100000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Quick Super Saiyan 2
[State -1, Quick Super Saiyan 2]
type = ChangeState
value = 100005
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Saiyan 3
[State -1, Super Saiyan 3]
type = ChangeState
value = 200000
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Quick Super Saiyan 3
[State -1, Quick Super Saiyan 3]
type = ChangeState
value = 200000
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------------------------------------
;Super Saiyan 4
[State -1, Super Saiyan 4]
type = ChangeState
value = 300000
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = power >= 3000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Quick Super Saiyan 4
[State -1, Quick Super Saiyan 4]
type = ChangeState
value = 300000
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = power >= 3000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Galick Gun
[State -1, Galick Gun]
type = ChangeState
value = 6008
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Galick Gun"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Big Bang normal Attack
[State -1, Big Bang Attack normal]
type = ChangeState
value = 6011
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 2000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl

;Big Bang Attack    ssj2
[State -1, Big Bang Attack ssj2]
type = ChangeState
value = 6011
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;Big Bang Attack   ssj3
[State -1, Big Bang Attack ssj3]
type = ChangeState
value = 7011
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = power >= 2000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;Big Bang Attack    ssj4
[State -1, Big Bang Attack ssj4]
type = ChangeState
value = 7011
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = power >= 2000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;kienzan normal
[State -1, kienzan normal]
type = ChangeState
value = 2100
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Final shine
[State -1, Final shine ssj2]
type = ChangeState
value = 4100
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 3000
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Final Flash    ssj3
[State -1, Final Flash ssj3]
type = ChangeState
value = 7036
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = power >= 3000
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Final Flash  ssj4
[State -1, Final Flash ssj4]
type = ChangeState
value = 6036
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = power >= 3000
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;10 Ki Balls
[State -1, 10 Ki Balls]
type = ChangeState
value = 6040
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "10 Ki Balls"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Normal Combo
[State -1, Normal Combo]
type = ChangeState
value = 2500
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 2000
triggerall = command = "Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;follow this ssj2
[State -1, follow this ssj2]
type = ChangeState
value = 6107
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = command = "Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;super ki explox
[State -1, super ki explox]
type = ChangeState
value = 3200
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = power >= 2000
triggerall = command = "Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;goku help ssj4
[State -1, goku help ssj4]
type = ChangeState
value = 6111
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = power >= 2000
triggerall = command = "Combo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power up
[State -1, Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Forward
[State -1, Teleport Forward]
type = ChangeState
value = 6006
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Back
[State -1, Teleport Back]
type = ChangeState
value = 6007
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Punch
[State -1, Teleport Punch]
type = ChangeState
value = 6022
triggerall = var(10) = 0
triggerall = power >= 200
triggerall = command = "Teleport Punch"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Kick
[State -1, Teleport Kick]
type = ChangeState
value = 6023
triggerall = var(10) = 0
triggerall = power >= 200
triggerall = command = "Teleport Kick"
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Normal Punch 1
[State -1,Normal Punch 1]
type = ChangeState
value = 6015
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Punch 1
[State -1,Normal Punch 1]
type = ChangeState
value = 6017
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6015
;---------------------------------------------------------------------------
;Normal Punch 1
[State -1,Normal Punch 1]
type = ChangeState
value = 6018
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6017
;---------------------------------------------------------------------------
;Normal Punch 2
[State -1,Normal Punch 2]
type = ChangeState
value = 6019
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Punch 2
[State -1,Normal Punch 2]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6019
;---------------------------------------------------------------------------
;Normal Punch 2
[State -1,Normal Punch 2]
type = ChangeState
value = 6021
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6020
;---------------------------------------------------------------------------
;Normal Punch 3
[State -1,Normal Punch 3]
type = ChangeState
value = 6024
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Punch 3
[State -1,Normal Punch 3]
type = ChangeState
value = 6025
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6024
;---------------------------------------------------------------------------
;Normal Punch 3
[State -1,Normal Punch 3]
type = ChangeState
value = 6026
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6025
;---------------------------------------------------------------------------
;Normal Punch 3
[State -1,Normal Punch 3]
type = ChangeState
value = 6027
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6026
;---------------------------------------------------------------------------
;Normal Punch 4
[State -1,Normal Punch 4]
type = ChangeState
value = 6028
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Punch 4
[State -1,Normal Punch 4]
type = ChangeState
value = 6029
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6028
;---------------------------------------------------------------------------
;Normal Punch 4
[State -1,Normal Punch 4]
type = ChangeState
value = 6030
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6029
;---------------------------------------------------------------------------
;Normal Punch 4
[State -1,Normal Punch 4]
type = ChangeState
value = 6031
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6030
;---------------------------------------------------------------------------
;Normal Air Punch 1
[State -1,Normal Air Punch 1]
type = ChangeState
value = 6032
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Air Punch 2
[State -1,Normal Air Punch 2]
type = ChangeState
value = 6033
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Air Punch 3
[State -1,Normal AirPunch 3]
type = ChangeState
value = 6034
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal Air Punch 4
[State -1,Normal AirPunch 4]
type = ChangeState
value = 6035
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Punch 1
[State -1,SSJ Punch 1]
type = ChangeState
value = 6048
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Punch 1
[State -1,SSJ Punch 1]
type = ChangeState
value = 6049
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6048
;---------------------------------------------------------------------------
;SSJ Punch 1
[State -1,SSJ Punch 1]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6049
;---------------------------------------------------------------------------
;SSJ Punch 1
[State -1,SSJ Punch 1]
type = ChangeState
value = 6051
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6050
;---------------------------------------------------------------------------
;SSJ Punch 2
[State -1,SSJ Punch 2]
type = ChangeState
value = 6052
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Punch 2
[State -1,SSJ Punch 2]
type = ChangeState
value = 6053
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6052
;---------------------------------------------------------------------------
;SSJ Punch 2
[State -1,SSJ Punch 2]
type = ChangeState
value = 6054
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6053
;---------------------------------------------------------------------------
;SSJ Punch 2
[State -1,SSJ Punch 2]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6054
;---------------------------------------------------------------------------
;SSJ Punch 3
[State -1,SSJ Punch 3]
type = ChangeState
value = 6056
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Punch 3
[State -1,SSJ Punch 3]
type = ChangeState
value = 6057
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6056
;---------------------------------------------------------------------------
;SSJ Punch 3
[State -1,SSJ Punch 3]
type = ChangeState
value = 6058
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6057
;---------------------------------------------------------------------------
;SSJ Punch 3
[State -1,SSJ Punch 3]
type = ChangeState
value = 6059
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6058
;---------------------------------------------------------------------------
;SSJ Punch 4
[State -1,SSJ Punch 4]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Punch 4
[State -1,SSJ Punch 4]
type = ChangeState
value = 6061
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6060
;---------------------------------------------------------------------------
;SSJ Punch 4
[State -1,SSJ Punch 4]
type = ChangeState
value = 6062
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6061
;---------------------------------------------------------------------------
;SSJ2 Punch 1
[State -1,SSJ2 Punch 1]
type = ChangeState
value = 6065
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ2 Punch 1
[State -1,SSJ2 Punch 1]
type = ChangeState
value = 6066
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6065
;---------------------------------------------------------------------------
;SSJ2 Punch 1
[State -1,SSJ2 Punch 1]
type = ChangeState
value = 6067
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6066
;---------------------------------------------------------------------------
;SSJ2 Punch 1
[State -1,SSJ2 Punch 1]
type = ChangeState
value = 6068
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6067
;---------------------------------------------------------------------------
;SSJ2 Punch 1
[State -1,SSJ2 Punch 1]
type = ChangeState
value = 6069
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6068
;---------------------------------------------------------------------------
;SSJ2 Punch 2
[State -1,SSJ2 Punch 2]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ2 Punch 2
[State -1,SSJ2 Punch 2]
type = ChangeState
value = 6071
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6070
;---------------------------------------------------------------------------
;SSJ2 Punch 2
[State -1,SSJ2 Punch 2]
type = ChangeState
value = 6072
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6071
;---------------------------------------------------------------------------
;SSJ2 Punch 2
[State -1,SSJ2 Punch 2]
type = ChangeState
value = 6073
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 25
trigger2 = stateno = 6072
;---------------------------------------------------------------------------
;SSJ2 Punch 2
[State -1,SSJ2 Punch 2]
type = ChangeState
value = 6074
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 25
trigger2 = stateno = 6073
;---------------------------------------------------------------------------
;SSJ2 Punch 3
[State -1,SSJ2 Punch 3]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ2 Punch 3
[State -1,SSJ2 Punch 3]
type = ChangeState
value = 6076
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6075
;---------------------------------------------------------------------------
;SSJ2 Punch 3
[State -1,SSJ2 Punch 3]
type = ChangeState
value = 6077
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6076
;---------------------------------------------------------------------------
;SSJ2 Punch 3
[State -1,SSJ2 Punch 3]
type = ChangeState
value = 6078
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6077
;---------------------------------------------------------------------------
;SSJ2 Punch 4
[State -1,SSJ2 Punch 4]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ2 Punch 4
[State -1,SSJ2 Punch 4]
type = ChangeState
value = 6087
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6080
;---------------------------------------------------------------------------
;SSJ2 Punch 4
[State -1,SSJ2 Punch 4]
type = ChangeState
value = 6088
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6087
;---------------------------------------------------------------------------
;SSJ2 Punch 4
[State -1,SSJ2 Punch 4]
type = ChangeState
value = 6089
triggerall = var(10) = 0
triggerall = var(7) = 2
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6088
;---------------------------------------------------------------------------
;SSJ3 Punch 1
[State -1,SSJ3 Punch 1]
type = ChangeState
value = 6090
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ3 Punch 1
[State -1,SSJ3 Punch 1]
type = ChangeState
value = 6091
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6090
;---------------------------------------------------------------------------
;SSJ3 Punch 1
[State -1,SSJ3 Punch 1]
type = ChangeState
value = 6092
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6091
;---------------------------------------------------------------------------
;SSJ3 Punch 1
[State -1,SSJ3 Punch 1]
type = ChangeState
value = 6093
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 20
trigger2 = stateno = 6092
;---------------------------------------------------------------------------
;SSJ3 Punch 2
[State -1,SSJ3 Punch 2]
type = ChangeState
value = 6094
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ3 Punch 2
[State -1,SSJ3 Punch 2]
type = ChangeState
value = 6095
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6094
;---------------------------------------------------------------------------
;SSJ3 Punch 2
[State -1,SSJ3 Punch 2]
type = ChangeState
value = 6096
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6095
;---------------------------------------------------------------------------
;SSJ3 Punch 2
[State -1,SSJ3 Punch 2]
type = ChangeState
value = 6097
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6096
;---------------------------------------------------------------------------
;SSJ3 Punch 3
[State -1,SSJ3 Punch 3]
type = ChangeState
value = 6098
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ3 Punch 3
[State -1,SSJ3 Punch 3]
type = ChangeState
value = 6099
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6098
;---------------------------------------------------------------------------
;SSJ3 Punch 3
[State -1,SSJ3 Punch 3]
type = ChangeState
value = 6100
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6099
;---------------------------------------------------------------------------
;SSJ3 Punch 3
[State -1,SSJ3 Punch 3]
type = ChangeState
value = 6101
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6100
;---------------------------------------------------------------------------
;SSJ3 Punch 4
[State -1,SSJ3 Punch 4]
type = ChangeState
value = 6103
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ3 Punch 4
[State -1,SSJ3 Punch 4]
type = ChangeState
value = 6104
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 8
trigger2 = stateno = 6103
;---------------------------------------------------------------------------
;SSJ3 Punch 4
[State -1,SSJ3 Punch 4]
type = ChangeState
value = 6105
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6104
;---------------------------------------------------------------------------
;SSJ3 Punch 4
[State -1,SSJ3 Punch 4]
type = ChangeState
value = 6106
triggerall = var(10) = 0
triggerall = var(7) = 3
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6105
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------
[State -1, AI on]
type = VarSet
triggerAll = Var(10) < 1
triggerAll = RoundState = 2
trigger1 = AILevel > 0
v = 10
value = 1
Ignorehitpause = 1

[State -1, AI OFF]
type=VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
Ignorehitpause = 1
;---------------------------------------------------------------------------
;ai Galick Gun
[State -1, ai Galick Gun]
type = ChangeState
value = 6008
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350
;---------------------------------------------------------------------------
;ai Big Bang Attack normal
[State -1, ai Big Bang Attack normal]
type = ChangeState
value = 6011
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 5 && random < 15
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350

;ai Big Bang Attack   ssj2
[State -1, ai Big Bang Attack ssj2]
type = ChangeState
value = 6011
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 5 && random < 15
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350

;ai Big Bang Attack  ssj3
[State -1, ai Big Bang Attack ssj3]
type = ChangeState
value = 7011
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 5 && random < 15
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350

;ai Big Bang Attack  ssj4
[State -1, ai Big Bang Attack ssj4]
type = ChangeState
value = 7011
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 5 && random < 15
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350
;---------------------------------------------------------------------------



[State -1,ai Final Flash ssj3]
type = ChangeState
value = 7036
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 15 && random < 35
trigger1 = (p2dist x) > 150

[State -1,ai Final Flash ssj4]
type = ChangeState
value = 6036
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 15 && random < 35
trigger1 = (p2dist x) > 150
;---------------------------------------------------------------------------
;ai 10 Ki Balls
[State -1, ai 10 Ki Balls]
type = ChangeState
value = 6040
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 35 && random < 37
trigger1 = (p2dist x) > 240
trigger1 = (p2dist x) < 250

;---------------------------------------------------------------------------
;ai Normal Air Punch 1
[State -1, ai Normal Air Punch 1]
type = ChangeState
value = 6032
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 50
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Normal Air Punch 2
[State -1, ai Normal Air Punch 2]
type = ChangeState
value = 6033
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 50 && random < 100
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Normal Air Punch 3
[State -1, ai Normal AirPunch 3]
type = ChangeState
value = 6034
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 100 && random < 150
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Normal Air Punch 4
[State -1, ai Normal AirPunch 4]
type = ChangeState
value = 6035
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 150 && random < 200
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Teleport Back
[State -1, ai Teleport Back]
type = ChangeState
value = 6007
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = ctrl
trigger1 = random < 120 && random < 150
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Teleport Punch
[State -1, ai Teleport Punch]
type = ChangeState
value = 6022
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = ctrl
trigger1 = random > 150 && random < 155
trigger1 = (p2dist x) > 240
trigger1 = (p2dist x) < 250
;---------------------------------------------------------------------------
;ai Teleport Kick
[State -1, ai Teleport Kick]
type = ChangeState
value = 6023
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = ctrl
trigger1 = random > 155 && random < 160
trigger1 = (p2dist x) > 240
trigger1 = (p2dist x) < 250
;---------------------------------------------------------------------------
;ai Power up
[State -1, ai Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 20
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 250
;---------------------------------------------------------------------------
;ai Normal Punch 1
[State -1, ai Normal Punch 1]
type = ChangeState
value = 6015
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 120 && random < 150
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Normal Punch 2
[State -1, ai Normal Punch 2]
type = ChangeState
value = 6019
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Normal Punch 3
[State -1,ai Normal Punch 3]
type = ChangeState
value = 6024
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Normal Punch 4
[State -1, ai Normal Punch 4]
type = ChangeState
value = 6028
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 120
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai kienzan
[State -1,ai kienzan]
type = ChangeState
value = 2011
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 15 && random < 35
trigger1 = (p2dist x) > 150

;ai Normal Combo
[State -1, ai Normal Combo]
type = ChangeState
value = 2500
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 35 && random < 50
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 250
;---------------------------------------------------------------------------
;ai Quick Super Saiyan 2
[State -1, ai Quick Super Saiyan 2]
type = ChangeState
value = 100000
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 300 && random < 350
;---------------------------------------------------------------------------
;ai SSJ2 Punch 1
[State -1, ai SSJ2 Punch 1]
type = ChangeState
value = 6048
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ2 Punch 2
[State -1, ai SSJ2 Punch 2]
type = ChangeState
value = 6052
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ2 Punch 3
[State -1, ai SSJ2 Punch 3]
type = ChangeState
value = 6056
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ2 Punch 4
[State -1, ai SSJ2 Punch 4]
type = ChangeState
value = 6060
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 120
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------

;ai final shine
[State -1,ai Final shine ssj2]
type = ChangeState
value = 4100
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 15 && random < 35
trigger1 = (p2dist x) > 150

;ai follow this ssj2
[State -1, ai follow this ssj2]
type = ChangeState
value = 6107
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 35 && random < 50
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350
;---------------------------------------------------------------------------
;ai Quick Super Saiyan 3
[State -1, ai Quick Super Saiyan 3]
type = ChangeState
value = 200000
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 300 && random < 350
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ai SSJ3 Punch 1
[State -1, ai SSJ3 Punch 1]
type = ChangeState
value = 6065
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ3 Punch 2
[State -1, ai SSJ3 Punch 2]
type = ChangeState
value = 6070
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ3 Punch 3
[State -1, ai SSJ3 Punch 3]
type = ChangeState
value = 6075
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ3 Punch 4
[State -1, ai SSJ3 Punch 4]
type = ChangeState
value = 6080
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 120
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai super ki explox ssj3
[State -1, ai super ki explox ssj3]
type = ChangeState
value = 3200
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = p2movetype != H
trigger1 = ctrl
trigger1 = random > 35 && random < 40
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 300
;---------------------------------------------------------------------------
;ai Quick Super Saiyan 4
[State -1, ai Quick Super Saiyan 4]
type = ChangeState
value = 300000
triggerall = var(10) = 1
triggerall = var(7) = 2
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 300 && random < 350
;---------------------------------------------------------------------------
;ai SSJ4 Punch 1
[State -1, ai SSJ4 Punch 1]
type = ChangeState
value = 6090
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ4 Punch 2
[State -1, ai SSJ4 Punch 2]
type = ChangeState
value = 6094
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ4 Punch 3
[State -1, ai SSJ4 Punch 3]
type = ChangeState
value = 6098
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ4 Punch 4
[State -1, ai SSJ4 Punch 4]
type = ChangeState
value = 6103
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 120
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai goku help ssj4
[State -1, ai goku help ssj4]
type = ChangeState
value = 6111
triggerall = var(10) = 1
triggerall = var(7) = 3
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 35 && random < 45
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 350
