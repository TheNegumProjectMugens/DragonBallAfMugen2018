;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
name = "Super Jump"
command = ~D,U
time = 10

;-| Supers |-------------------------------------------------------

[command]
name = "Perfect Barrier"
command = ~D,DF,F,D,DF,F,a+b
time = 30

;-| Specials |-------------------------------------------------------
[command]
name = "Death Beam Barrage"
command = ~D,DF,F,a
time = 15

[command]
name = "Taiyoken"
command = ~D,DB,B,a
time = 15

[command]
name = "Perfect Combination"
command = ~D,DF,F,b
time = 15

[command]
name = "Kienzan"
command = ~D,DB,B,b
time = 15

[command]
name = "Super Kamehameha"
command = ~D,DF,F,c
time = 15

[command]
name = "Makankosappo"
command = ~D,DB,B,c
time = 15

[Defaults]

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
[Command]
name = "AI Prueba"
command = y+z ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 60
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 70
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 80
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;--------------------------------Ataques Supers-----------------------------
;===========================================================================
; Perfect Barrier
[State -1, Perfect Barrier]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 3000
value = 3000
triggerall = command = "Perfect Barrier"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
;--------------------------------------------------------------------------
; Solar Kamehameha
[State -1, Solar Kamehameha]
type = ChangeState
triggerall = var(2) = 1
Triggerall = power >= 3000
value = 3100
triggerall = command = "Perfect Barrier"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
;===========================================================================
;--------------------------------Ataques Especiales-------------------------
;===========================================================================
; Death Beam Barrage
[State -1, Death Beam Barrage]
type = ChangeState
Triggerall = power >= 1000
value = 1000
triggerall = command = "Death Beam Barrage"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Taiyoken
[State -1, Taiyoken]
type = ChangeState
triggerall = numhelper(1160) = 0
triggerall = var(2) = 0
Triggerall = power >= 500
value = 1100
triggerall = command = "Taiyoken"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Perfect Combination
[State -1, Perfect Combination]
type = ChangeState
Triggerall = power >= 1000
value = 1200
triggerall = command = "Perfect Combination"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Kienzan
[State -1, Kienzan]
type = ChangeState
Triggerall = power >= 1000
value = 1300
triggerall = command = "Kienzan"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Super Kamehameha
[State -1, Super Kamehameha]
type = ChangeState
Triggerall = power >= 1500
value = 1400
triggerall = command = "Super Kamehameha"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Makankosappo
[State -1, Makankosappo]
type = ChangeState
Triggerall = power >= 1500
value = 1500
triggerall = command = "Makankosappo"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;---------------------------------------------------------------------------
; Shunkan Ido
[State -1, Shunkan Ido]
type = ChangeState
triggerall = var(2) = 1
Triggerall = power >= 500
value = 1600
triggerall = command = "Taiyoken"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
trigger4 = (time > 10 && stateno = 400) || (time > 20 && stateno = 421)
trigger5 = time > 30 && numhelper(1050) = 0 && stateno = 1000
trigger6 = time >= 75 && stateno = 1100
trigger7 = time > 60 && stateno = 1200
trigger8 = time > 40 && numhelper(1350) = 0 && stateno = 1300
trigger9 = time > 60 && numhelper(1450) = 0 && stateno = 1400
trigger10 = time > 80 && numhelper(1550) = 0 && stateno = 1500
trigger11 = time >= 45 && stateno = 1600
;===========================================================================
;--------------------------------Ataques Normales---------------------------
;---------------------------------------------------------------------------
; Super Perfect Mode
[State -1, Super Perfect Mode]
type = ChangeState
triggerall = power >= 1500
triggerall = var(2) = 0
value = 600
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down A
[State -1, Down  A]
type = ChangeState
value = ifelse(pos y < 0,270,250)
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210)
trigger3 = movecontact && (stateno = 300||stateno = 310||stateno = 350||stateno = 370)
;---------------------------------------------------------------------------
; Down B
[State -1, Down  B]
type = ChangeState
value = ifelse(pos y < 0,370,350)
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 250)
trigger3 = movecontact && (stateno = 300||stateno = 310)
;---------------------------------------------------------------------------
; A
[State -1, A]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
value = 320
triggerall = command = "b"
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(5) = 0
Triggerall = power >= 200
value = ifelse(power >= 500,420,400)
triggerall = command = "c"
trigger1 = ctrl
trigger2 = movecontact && (stateno = 250||stateno = 270)
trigger3 = movecontact && (stateno = 350||stateno = 370)
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
Triggerall = power < 3000
value = 500
triggerall = command = "s"
trigger1 = ctrl
;-------------------------------------------------------------------------------
; Activar IA
;-------------------------------------------------------------------------------
[State -2, Activar IA]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
