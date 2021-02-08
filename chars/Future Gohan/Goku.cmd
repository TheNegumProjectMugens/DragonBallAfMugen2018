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
name = "trans"     ;Required (do not remove)
command = b+y
time = 20



[Command]
name = "masenko"     ;Required (do not remove)
command = ~D, F, a
time = 20

[Command]
name = "kame"     ;Required (do not remove)
command = ~D, F, b
time = 20

[Command]
name = "beam"     ;Required (do not remove)
command = ~D, B, a
time = 20

[Command]
name = "aexplo"     ;Required (do not remove)
command = ~D, B, b
time = 20

[Command]
name = "geki"     ;Required (do not remove)
command = ~D, F, x
time = 20

[Command]
name = "maka"     ;Required (do not remove)
command = ~D, B, x
time = 20
[Command]
name = "ex"     ;Required (do not remove)
command = ~D, F, y
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

[Command]
name = "a+b"
command = a+b
time = 1


[Command]
name = "a+x"
command = a+x
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

[command]
name = "Super Jump"
command = ~D, U
time = 10

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
name = "holdb";Required (do not remove)
command = /$b
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
;Teleport Forward
[State -1, Teleport Forward]
type = ChangeState
value = 16006
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = ctrl

[State -1,escudo];
type            = ChangeState
value      = 3590
triggerall = var(10) = 0
triggerall      = (command ="a+x" )
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)

;-------------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)

[State -1, FireBall AIR]
type = ChangeState
value = 12223
triggerall = var(10) = 0
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------

;PATADA  DEBIL
[State -1, Crouching Light Punch]
type = ChangeState
value = 440
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;PATADA FUERTE
[State -1, Crouching Strong Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;PUÑO DEBIL
[State -1, Crouching Light Kick]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;PUÑO FUERTE
[State -1, Crouching Strong Kick]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl



;---------------------------------------------------------------------------
 [State -1, Crouching FireBall]
type = ChangeState
value = 12222
triggerall = var(10) = 0
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = C
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype != A
trigger1 = ctrl

; fireball--------------------------------------------------------------------------
[State -1];
type            = ChangeState
value      = 2222
triggerall      = (command ="c" )
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)

;-------------------------------------------------------------------------

;masenkorapido
[State -1,masenkorapido]
type = ChangeState
value = 3000
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "masenko"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Kamehameha
[State -1,Kamehameha]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "kame"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; beam
[State -1,Beam]
type = ChangeState
value = 22221
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "beam"
trigger1 = statetype = S
trigger1 = ctrl


; aexplo
[State -1,aexplo]
type = ChangeState
value = 9000
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "aexplo"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Gekiretsukodan
[State -1,Gekiretsukodan]
type = ChangeState
value = 3550
triggerall = var(10) = 0
triggerall = power >= 1500
triggerall = command = "geki"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
[State -1,Makankosappo]
type = ChangeState
value = 3250
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "maka"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,ex]
type = ChangeState
value = 3900
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 2500
triggerall = command = "ex"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
 [State -1,ex]
type = ChangeState
value = 3800
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 2500
triggerall = command = "ex"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power up
[State -1, Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl

;Power up
[State -1, Power up]
type = ChangeState
value = 17000
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Forward
[State -1,Dash Forward]
type = ChangeState
value = 100
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Backward
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal - Super Saiyan
[State -1,Normal - Super Saiyan]
type = ChangeState
value = 7000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = power < 2000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal - Super Saiyan 2
[State -1,Normal - Super Saiyan 2]
type = ChangeState
value = 7000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 2000
triggerall = power < 3000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Normal - Super Saiyan 2
[State -1,Normal - Super Saiyan 2]
type = ChangeState
value = 7000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 3000
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------




; Turn To Normal
[State -1, Turn Normal]
type = ChangeState
value = 7001
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = power >= 50
triggerall = command = "trans"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Air Attack 1
[State -1,Air Attack 1]
type = ChangeState
value = 6011
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 2
[State -1,Air Attack 2]
type = ChangeState
value = 6012
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 3
[State -1,Air Attack 3]
type = ChangeState
value = 6013
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 4
[State -1,Air Attack 4]
type = ChangeState
value = 6014
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 1
[State -1,Attack 1]
type = ChangeState
value = 6025
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 1
[State -1, Attack 1]
type = ChangeState
value = 6026
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6025
;---------------------------------------------------------------------------
;Attack 1
[State -1, Attack 1]
type = ChangeState
value = 6027
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6026
;---------------------------------------------------------------------------
;Attack 2
[State -1,Attack 2]
type = ChangeState
value = 6028
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 2
[State -1, Attack 2]
type = ChangeState
value = 6029
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6028
;---------------------------------------------------------------------------
;Attack 2
[State -1, Attack 2]
type = ChangeState
value = 6030
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6029
;---------------------------------------------------------------------------
;Attack 3
[State -1,Attack 3]
type = ChangeState
value = 6045
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 3
[State -1, Attack 3]
type = ChangeState
value = 6046
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6045
;---------------------------------------------------------------------------
;Attack 3
[State -1, Attack 3]
type = ChangeState
value = 6047
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6046
;---------------------------------------------------------------------------
;Attack 3
[State -1, Attack 3]
type = ChangeState
value = 6048
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 20
trigger2 = stateno = 6047
;---------------------------------------------------------------------------
;Attack 4
[State -1,Attack 4]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 4
[State -1, Attack 4]
type = ChangeState
value = 6056
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6055
;---------------------------------------------------------------------------
;Attack 4
[State -1, Attack 4]
type = ChangeState
value = 3000
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 20
trigger2 = stateno = 6056
;---------------------------------------------------------------------------
;SSJ Attack 1
[State -1,SSJ Attack 1]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Attack 1
[State -1,SSJ Attack 1]
type = ChangeState
value = 6061
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6060
;---------------------------------------------------------------------------
;SSJ Attack 1
[State -1,SSJ Attack 1]
type = ChangeState
value = 6062
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6061
;---------------------------------------------------------------------------
;SSJ Attack 2
[State -1,SSJ Attack 2]
type = ChangeState
value = 6065
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Attack 2
[State -1,SSJ Attack 2]
type = ChangeState
value = 6066
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6065
;---------------------------------------------------------------------------
;SSJ Attack 2
[State -1,SSJ Attack 2]
type = ChangeState
value = 6067
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6066
;---------------------------------------------------------------------------
;SSJ Attack 2
[State -1,SSJ Attack 2]
type = ChangeState
value = 22221
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6067
;---------------------------------------------------------------------------
;SSJ Attack 3
[State -1,SSJ Attack 3]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Attack 3
[State -1,SSJ Attack 3]
type = ChangeState
value = 6071
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6070
;---------------------------------------------------------------------------
;SSJ Attack 3
[State -1,SSJ Attack 3]
type = ChangeState
value = 6072
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6071
;---------------------------------------------------------------------------
;SSJ Attack 3
[State -1,SSJ Attack 3]
type = ChangeState
value = 22221
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6072
;---------------------------------------------------------------------------
;SSJ Attack 4
[State -1,SSJ Attack 4]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ Attack 4
[State -1,SSJ Attack 4]
type = ChangeState
value = 6081
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 15
trigger2 = stateno = 6080
;---------------------------------------------------------------------------
;SSJ Attack 4
[State -1,SSJ Attack 4]
type = ChangeState
value = 6082
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 20
trigger2 = stateno = 6081
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
;ai Normal - Super Saiyan
[State -1,ai Normal - Super Saiyan]
type = ChangeState
value = 7000
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = life <= 900
triggerall = random < 20
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;ai MASENKO
[State -1,ai MASENKO]
type = ChangeState
value = 3000
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 40 && random < 45
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 230
;---------------------------------------------------------------------------

[State -1,ai KAME]
type = ChangeState
value = 6020
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 50 && random < 60
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 250
;---------------------------------------------------------------------------
 [State -1,ai BEAM]
type = ChangeState
value = 22221
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 40 && random < 45
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 230
;---------------------------------------------------------------------------

[State -1,ai AIREXPLO]
type = ChangeState
value = 9000
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 50 && random < 60
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 250

;---------------------------------------------------------------------------


[State -1,ai GEKI]
type = ChangeState
value = 3550
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 105
trigger1 = (p2dist x) > 205
trigger1 = (p2dist x) < 210



;---------------------------------------------------------------------------

[State -1,ai MAKI]
type = ChangeState
value = 3250
triggerall = var(10) = 1
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 125
trigger1 = (p2dist x) > 250
trigger1 = (p2dist x) < 300
;---------------------------------------------------------------------------
;ai EX
[State -1,ai EX]
type = ChangeState
value = 3900
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 125
trigger1 = (p2dist x) > 250
trigger1 = (p2dist x) < 300
;---------------------------------------------------------------------------
 ;ai EX
[State -1,ai EX]
type = ChangeState
value = 3800
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 125
trigger1 = (p2dist x) > 250
trigger1 = (p2dist x) < 300
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ai Power up
[State -1, ai Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 200

;ai Power up
[State -1, ai Power up]
type = ChangeState
value = 17000
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 200
;---------------------------------------------------------------------------
;ai Dash Forward
[State -1, ai Dash Forward]
type = ChangeState
value = 100
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 130 && random < 135
trigger1 = (p2dist x) > 100
;---------------------------------------------------------------------------
;ai Dash Back
[State -1, ai Dash Back]
type = ChangeState
value = 105
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 120 && random < 122
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Attack 1
[State -1, ai Air Attack 1]
type = ChangeState
value = 6011
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 50
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Air Attack 2
[State -1, ai Air Attack 2]
type = ChangeState
value = 6012
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 50 && random < 100
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Air Attack 3
[State -1, ai Air Attack 3]
type = ChangeState
value = 6013
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 100 && random < 150
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Air Attack 4
[State -1, ai Air Attack 4]
type = ChangeState
value = 6014
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 150 && random < 200
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Attack 1
[State -1, ai Attack 1]
type = ChangeState
value = 6025
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 200 && random < 250
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Attack 2
[State -1, ai Attack 2]
type = ChangeState
value = 6028
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 50 && random < 100
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Attack 3
[State -1,ai Attack 3]
type = ChangeState
value = 6045
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 150
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Attack 4
[State -1, ai Attack 4]
type = ChangeState
value = 6055
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 150 && random < 200
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ Attack 1
[State -1, ai SSJ Attack 1]
type = ChangeState
value = 6060
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 50
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ Attack 2
[State -1, ai SSJ Attack 2]
type = ChangeState
value = 6065
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 50 && random < 100
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ Attack 3
[State -1, ai SSJ Attack 3]
type = ChangeState
value = 6070
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 150
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai SSJ Attack 4
[State -1, ai SSJ Attack 4]
type = ChangeState
value = 6080
triggerall = var(10) = 1
triggerall = var(7) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 150 && random < 200
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------

