
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

;-| Hyper Motions |--------------------------------------------------------

;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, a
;time = 20
;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, ~a
;time = 20
;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, b
;time = 20
;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, ~b
;time = 20
;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, c
;time = 20
;[Command]
;name = "qcbf_K"
;command = ~D, $B, F, ~c
;time = 20

;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, a
;time = 30
;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, ~a
;time = 30
;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, b
;time = 30
;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, ~b
;time = 30
;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, c
;time = 30
;[Command]
;name = "qcbhcf_K"
;command = ~D, DB, B, D, F, ~c
;time = 30

;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, a
;time = 30
;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, ~a
;time = 30
;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, b
;time = 30
;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, ~b
;time = 30
;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, c
;time = 30
;[Command]
;name = "qcfhcb_K"
;command = ~D, F, D, B, ~c
;time = 30

;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, x
;time = 30
;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, ~x
;time = 30
;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, y
;time = 30
;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, ~y
;time = 30
;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, z
;time = 30
;[Command]
;name = "qcfhcb_P"
;command = ~D, DF, F, D, B, ~z
;time = 30

[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, x+y
time = 20
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, x+z
time = 20
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, y+z
time = 20

[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, a+b
time = 20
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, a+c
time = 20
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, b+c
time = 20

[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, a+b
time = 20
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, a+c
time = 20
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, b+c
time = 20

[Command]
name = "qcbf3p"
command = ~D, $B, F, x+y+z
time = 20

;[Command]
;name = "qcbf2p"
;command = ~D, $B, F, x+y
;time = 20
;[Command]
;name = "qcbf2p"
;command = ~D, $B, F, x+z
;time = 20
;[Command]
;name = "qcbf2p"
;command = ~D, $B, F, y+z
;time = 20

;[Command]
;name = "rage"
;command = D, D, D, y+b
;time = 30

[Command]
name = "ddx"
command = D, D, x
time = 30

[Command]
name = "ddy"
command = D, D, y
time = 30

[Command]
name = "ddz"
command = D, D, z
time = 30

;[Command]
;name = "dudx"
;command = D, U, D, x
;time = 20

;[Command]
;name = "dudy"
;command = D, U, D, y
;time = 20

;[Command]
;name = "dudz"
;command = D, U, D, z
;time = 20


;-| Super Motions |--------------------------------------------------------

[Command]
name = "qcbfx"
command = ~D, $B, F, x
time = 20
[Command]
name = "qcbfx"
command = ~D, $B, F, ~x
time = 20
[Command]
name = "qcbfy"
command = ~D, $B, F, y
time = 20
[Command]
name = "qcbfy"
command = ~D, $B, F, ~y
time = 20
[Command]
name = "qcbfz"
command = ~D, $B, F, z
time = 20
[Command]
name = "qcbfz"
command = ~D, $B, F, ~z
time = 20

;[Command]
;name = "qcbfa"
;command = ~D, $B, F, a
;time = 20
;[Command]
;name = "qcbfa"
;command = ~D, $B, F, ~a
;time = 20
;[Command]
;name = "qcbfb"
;command = ~D, $B, F, b
;time = 20
;[Command]
;name = "qcbfb"
;command = ~D, $B, F, ~b
;time = 20
;[Command]
;name = "qcbfc"
;command = ~D, $B, F, c
;time = 20
;[Command]
;name = "qcbfc"
;command = ~D, $B, F, ~c
;time = 20

[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, x
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, ~x
time = 20
[Command]
name = "2qcfy"
command = ~D, DF, F, D, DF, y
time = 20
[Command]
name = "2qcfy"
command = ~D, DF, F, D, DF, ~y
time = 20
[Command]
name = "2qcfz"
command = ~D, DF, F, D, DF, z
time = 20
[Command]
name = "2qcfz"
command = ~D, DF, F, D, DF, ~z
time = 20

[Command]
name = "2qcbx"
command = ~D, DB, B, D, DB, x
time = 20
[Command]
name = "2qcbx"
command = ~D, DB, B, D, DB, ~x
time = 20
[Command]
name = "2qcby"
command = ~D, DB, B, D, DB, y
time = 20
[Command]
name = "2qcby"
command = ~D, DB, B, D, DB, ~y
time = 20
[Command]
name = "2qcbz"
command = ~D, DB, B, D, DB, z
time = 20
[Command]
name = "2qcbz"
command = ~D, DB, B, D, DB, ~z
time = 20

[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, a
time = 20
[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, ~a
time = 20
[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, b
time = 20
[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, ~b
time = 20
[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, c
time = 20
[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, ~c
time = 20

[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, a
time = 20
[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, ~a
time = 20
[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, b
time = 20
[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, ~b
time = 20
[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, c
time = 20
[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, ~c
time = 20

;-| EX Motions |------------------------------------------------------

;[Command]
;name = "dp2k"
;command = ~F, D, DF, a+b
;[Command]
;name = "dp2k"
;command = ~F, D, DF, a+c
;[Command]
;name = "dp2k"
;command = ~F, D, DF, b+c

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z

[Command]
name = "qcf2k"
command = ~D, DF, F, a+b
[Command]
name = "qcf2k"
command = ~D, DF, F, a+c
[Command]
name = "qcf2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c

[Command]
name = "dp2k"
command = ~F, D, DF, a+b
[Command]
name = "dp2k"
command = ~F, D, DF, a+c
[Command]
name = "dp2k"
command = ~F, D, DF, b+c

;-| Special Motions |------------------------------------------------------

;[Command]
;name = "fbfx"
;command = ~F, B, F, x
;[Command]
;name = "fbfx"
;command = ~F, B, F, ~x
;[Command]
;name = "fbfy"
;command = ~F, B, F, y
;[Command]
;name = "fbfy"
;command = ~F, B, F, ~y
;[Command]
;name = "fbfz"
;command = ~F, B, F, z
;[Command]
;name = "fbfz"
;command = ~F, B, F, ~z

[Command]
name = "qcfx"
command = ~D, DF, F, x
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
[Command]
name = "qcfy"
command = ~D, DF, F, y
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
[Command]
name = "qcfz"
command = ~D, DF, F, z
[Command]
name = "qcfz"
command = ~D, DF, F, ~z

[Command]
name = "qcfa"
command = ~D, DF, F, a
[Command]
name = "qcfa"
command = ~D, DF, F, ~a
[Command]
name = "qcfb"
command = ~D, DF, F, b
[Command]
name = "qcfb"
command = ~D, DF, F, ~b
[Command]
name = "qcfc"
command = ~D, DF, F, c
[Command]
name = "qcfc"
command = ~D, DF, F, ~c

[Command]
name = "qcbx"
command = ~D, DB, B, x
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
[Command]
name = "qcby"
command = ~D, DB, B, y
[Command]
name = "qcby"
command = ~D, DB, B, ~y
[Command]
name = "qcbz"
command = ~D, DB, B, z
[Command]
name = "qcbz"
command = ~D, DB, B, ~z

[Command]
name = "qcba"
command = ~D, DB, B, a
[Command]
name = "qcba"
command = ~D, DB, B, ~a
[Command]
name = "qcbb"
command = ~D, DB, B, b
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
[Command]
name = "qcbc"
command = ~D, DB, B, c
[Command]
name = "qcbc"
command = ~D, DB, B, ~c

;[Command]
;name = "dpa"
;command = ~F, D, DF, a
;[Command]
;name = "dpa"
;command = ~F, D, DF, ~a
;[Command]
;name = "dpb"
;command = ~F, D, DF, b
;[Command]
;name = "dpb"
;command = ~F, D, DF, ~b
;[Command]
;name = "dpc"
;command = ~F, D, DF, c
;[Command]
;name = "dpc"
;command = ~F, D, DF, ~c

[Command]
name = "dpx"
command = ~F, D, DF, x
[Command]
name = "dpx"
command = ~F, D, DF, ~x
[Command]
name = "dpy"
command = ~F, D, DF, y
[Command]
name = "dpy"
command = ~F, D, DF, ~y
[Command]
name = "dpz"
command = ~F, D, DF, z
[Command]
name = "dpz"
command = ~F, D, DF, ~z

[Command]
name = "rdpx"
command = ~B, D, DB, x
[Command]
name = "rdpx"
command = ~B, D, DB, ~x
[Command]
name = "rdpy"
command = ~B, D, DB, y
[Command]
name = "rdpy"
command = ~B, D, DB, ~y
[Command]
name = "rdpz"
command = ~B, D, DB, z
[Command]
name = "rdpz"
command = ~B, D, DB, ~z

;[Command]
;name = "rdpa"
;command = ~B, DB, D, a
;[Command]
;name = "rdpa"
;command = ~B, DB, D, ~a
;[Command]
;name = "rdpb"
;command = ~B, DB, D, b
;[Command]
;name = "rdpb"
;command = ~B, DB, D, ~b
;[Command]
;name = "rdpc"
;command = ~B, DB, D, c
;[Command]
;name = "rdpc"
;command = ~B, DB, D, ~c

[Command]
name = "f2p"
command = $F, x+y
;time = 1
[Command]
name = "f2p"
command = $F, x+z
;time = 1
[Command]
name = "f2p"
command = $F, y+z
;time = 1

[Command]
name = "f2k"
command = $F, a+b
;time = 1
[Command]
name = "f2k"
command = $F, a+c
;time = 1
[Command]
name = "f2k"
command = $F, b+c
;time = 1

[Command]
name = "BBz"
command = B, B, z
time = 10


;-| Dir + Button |-----------------------------------------------------------
[Command]
name = "Fc"
command = F, c
time = 1

;-| Double Tap button |-----------------------------------------------------------
[Command]
name = "FFc"
command = F, F, c
time = 15

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
name = "superjump"     ;Required (do not remove)
command = $D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = $D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = $D, UB
time = 10

[Command]
name = "tripleS"
command = s,s,s
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "xa"
command = x+a
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

[Command]
name = "down_y"
command = /$D,y
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
name = "mp_sp"
command = y+z
time = 10

[Command]
name = "mk_sk"
command = b+c
time = 10

[Command]
name = "lp_lk"
command = x+a
time = 10

[Command]
name = "F"
command = F
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
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1

;-| Hold Button |--------------------------------------------------------
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





[Statedef -1]

;--------------------------------------------------------------------------
[State -1, AI Helper]
type=changestate
trigger1= ishelper(9741)
value=9741

;===========================================================================
; HYPERS LV.3
;===========================================================================
;Babidi's Curse
[State -1, Babidi Lv.3]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !NumHelper(2100) ;no Yakon on screen
;triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
;triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = power >= 3000
triggerall = (command = "qcbfx") || (command = "qcbfy") || (command = "qcbfz");"qcbf3p"
triggerall = !WinKo
triggerall = stateno != 2900
trigger1 = Ctrl
value = 2900


;===========================================================================
; SUPERS LV.2
;===========================================================================

;Darbura
[State -1, Darbura Lv.2]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = power >= 2000
triggerall = command = "2qcb2k"
triggerall = statetype != A  && !WinKo
triggerall = stateno != 2350
trigger1 = Ctrl
value = 2350

;===========================================================================
; SUPERS LV.1
;===========================================================================
;Darbura
[State -1, Darbura Lv.1]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = power >= 1000
triggerall = (command = "2qcba") || (command = "2qcbb") || (command = "2qcbc")
triggerall = statetype != A  && !WinKo
triggerall = stateno != 2300
trigger1 = Ctrl
value = 2300

;YAKON
[State -1, Yakon Lv.1]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = power >= 1000
triggerall = (command = "2qcfx") || (command = "2qcfy") || (command = "2qcfz")
triggerall = statetype != A  && !WinKo
triggerall = stateno != 2000
trigger1 = Ctrl
value = 2000

;PUI-PUI Lv.1
[State -1, Pui-Pui Lv.1]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = power >= 1000
triggerall = (command = "2qcbx") || (command = "2qcby") || (command = "2qcbz")
triggerall = statetype != A  && !WinKo
triggerall = stateno != 2600
trigger1 = Ctrl
value = 2600

;===========================================================================
; SPECIALS
;===========================================================================
;Teleport
[State -1, Teleport]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !Numhelper(6800) ; No Crystal Ball
;triggerall = (command = "dudx") + 2*(command = "dudy") + 3*(command = "dudz")
;triggerall = var(15):=(command = "dudx") + 2*(command = "dudy") + 3*(command = "dudz")
triggerall = command = "dpx" || command = "dpy" || command = "dpz" || command = "rdpx" || command = "rdpy" || command = "rdpz"
triggerall = var(15):=(command = "dpx" || command = "dpy" || command = "dpz") + 2*(command = "rdpx" || command = "rdpy" || command = "rdpz")
triggerall = !WinKo ;&& statetype != A
triggerall = stateno != [1800,1805]
trigger1 = ctrl
value = 1800

;Gravity Trap
[State -1, Gravity Trap]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(6200) ;no Gravity Trap
triggerall = (command = "ddx") + 2*(command = "ddy") + 3*(command = "ddz")
triggerall = var(15):=(command = "ddx") + 2*(command = "ddy") + 3*(command = "ddz")
triggerall = statetype != A  && !WinKo
trigger1 = ctrl
value = 1200

;EX Pui-Pui special
[State -1, EX Pui-Pui special]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = power >= 500
triggerall = command = "qcb2p" && statetype != A  && !WinKo
trigger1 = ctrl
value = 1100

;Pui-Pui special
[State -1, Pui-Pui special]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = (command = "qcbx") + 2*(command = "qcby") + 3*(command = "qcbz")
triggerall = var(15):=(command = "qcbx") + 2*(command = "qcby") + 3*(command = "qcbz")
triggerall = statetype != A  && !WinKo
trigger1 = ctrl
value = 1000

;EX Floating Bomb
[State -1, EX Floating Bomb]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2950) ;no Floating Bomb
triggerall = !NumHelper(2960) ;no EX Floating Bomb
triggerall = power >= 500
triggerall = (command = "qcb2k")
triggerall = !WinKO ;&& statetype != A
trigger1 = ctrl
value = 1950

;Floating Bomb
[State -1, Floating Bomb]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(2960) ;no EX Floating Bomb
triggerall = NumHelper(2950)<2 ;not reached max Floating Bomb
triggerall = (command = "qcba") || (command = "qcbb") || (command = "qcbc")
triggerall = !WinKO ;&& statetype != A
trigger1 = ctrl
value = 1900


;Sticky Bomb
[State -1, Sticky Bomb]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !NumHelper(2400) ;no Sticky Bomb
triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = (command = "qcfa") + 2*(command = "qcfb") + 3*(command = "qcfc")
triggerall = var(15):=(command = "qcfa") + 2*(command = "qcfb") + 3*(command = "qcfc")
triggerall = statetype != A  && !WinKo
triggerall = ctrl
trigger1 = !NumHelper(2400) ;no Sticky Bomb
trigger2 = NumHelper(2400)=1
trigger2 = Helper(2400),stateno=11111
value = 1400

;Sticky Bomb Detonation
[State -1, Sticky Bomb Detonation]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = NumHelper(2400)=1 ;Sticky Bomb in play
triggerall = Helper(2400),stateno=2402 ;attached
triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = (command = "qcfa") + 2*(command = "qcfb") + 3*(command = "qcfc")
triggerall = var(15):=(command = "qcfa") + 2*(command = "qcfb") + 3*(command = "qcfc")
triggerall = statetype != A  && !WinKo
trigger1 = ctrl
value = 1450

;Curse You!
[State -1, Curse You]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = statetype = A  && !WinKo
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
trigger1 = ctrl
value = 1550

;===========================================================================
; COMMAND & SYSTEM MOVES
;===========================================================================

; Slashing Chop (aka Focus Attack)
[State -1, Slashing Chop]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = stateno !=[1300,1302]
triggerall = stateno != 106
;triggerall = command = "hold_z" && command = "hold_c"
triggerall = command = "z" && command = "c"
trigger1 = statetype = S
trigger1 = ctrl
value = 1300

;Power Charge
[State -1]
type = ChangeState
triggerall = var(59)<=0
;triggerall = var(32)=0 ;No rage mode
;triggerall = roundstate = 2
triggerall = StateType != A
triggerall = Power < 3000
triggerall = stateno != 900
triggerall = Ctrl
;trigger1 = command = "b" && command = "y"
trigger1 = command = "hold_b" && command = "hold_y"
value = 900

; Forward Throw
[State -1, Forward Throw]
type = changestate
triggerall = var(59)<=0
triggerall = command="xa"
triggerall = roundstate=2 && ctrl && statetype=S && stateno!=100
trigger1 = command="holdfwd"
value = 800

; Backward Throw
[State -1, Backward Throw]
type = changestate
triggerall = var(59)<=0
triggerall = command="xa"
triggerall = roundstate=2 && ctrl && statetype=S && stateno!=100
trigger1 = command="holdback"
value = 810

;===========================================================================
; SYSTEM
;===========================================================================

;===========================================================================
; NORMALS
;===========================================================================

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "x"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl
trigger3 = stateno = 100 || stateno = 101
value = 200

; Stand FW+Light Punch
[State -1, Stand FW+Light Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype !=A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 205

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "y"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 210

; Stand FW+Medium Punch
[State -1, Stand FW+Medium Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = command = "y"
triggerall = command = "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 215

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "z"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 220

; Stand FW+Strong Punch
[State -1, Stand FW+Strong Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 225

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "a"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 230

; Standing FW+Light Kick
[State -1, Stand FW+Light Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = command = "a"
triggerall = command = "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 235


; Standing Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "b"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 240

; Standing FW+Medium Kick
[State -1, Stand FW+Medium Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 245


; Standing Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holdfwd"
;triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 250

; Standing FW+Strong Kick
[State -1, Stand FW+Strong Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
triggerall = enemy,stateno!=6876 ; No frozen enemy
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
value = 255

; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "x"
;triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 600

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "y"
;triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 610

; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "z"
;triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 620

; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "a"
;triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 630

; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
;triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 640

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = var(59)<=0
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
value = 650

;Air Dash Forward
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) <= 0
;triggerall = roundstate = 2
triggerall = var(10) = 0 ;limiter
trigger1 = pos Y < -20
triggerall = stateno != 105
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;Air Dash Back
[State -1, Back]
type = ChangeState
value = 115
triggerall = var(59) <= 0
;triggerall = roundstate = 2
triggerall = var(10) = 0 ;limiter
triggerall = vel x <= 0
trigger1 = pos Y < -20
triggerall = stateno != 105
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
trigger1 = roundstate=2 && (stateno!=[100,106])
value = 100

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Taunt
[State -1, Taunt]
type = ChangeState
triggerall = var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
triggerall = command = "s" && stateno!=195
trigger1 = statetype != A
trigger1 = ctrl
value = 195

;===========================================================================
; END BABIDI
;===========================================================================



;===========================================================================
; HYPERS
;===========================================================================



;===========================================================================
; SUPERS LV.2
;===========================================================================





;===========================================================================
; SUPERS LV.1
;===========================================================================




;===========================================================================
; AIR SPECIALS
;===========================================================================




;===========================================================================
; GROUND SPECIALS
;===========================================================================



;===========================================================================
; COMMAND & SYSTEM MOVES
;===========================================================================


;===========================================================================
; NORMALS
;===========================================================================









;===========================================================================
; SYSTEM
;===========================================================================



;____________________________________________________________________________
; AI
;____________________________________________________________________________

[State -1, AI ctrlset]
type = CtrlSet
triggerall = var(59) >= 1
triggerall = ctrl = 0
trigger1 = stateno = 0 && time=2
value = 1

[State -1, AI Guard]
type= changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155])&& !(enemynear,ctrl)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
;trigger1= random<ifelse((p2stateno=[200,699]), 300, ifelse((p2stateno=[1000,2999]), 650, 1000))
trigger1= random<ifelse((p2stateno=[200,699]), 150, ifelse((p2stateno=[1000,2999]), 175, 200))

[State -1, AI Guard fix]
Type=Assertspecial
Triggerall=StateNo!=[120,155]
Trigger1=var(59)>=1
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1, AI Power Charge]
type=changestate
value=900
triggerall= var(59)>=1 && numenemy && roundstate=2 && statetype!=A ;&& !var(32)
triggerall= power<const(data.power) && enemynear,Movetype!=A && !(enemynear,ctrl)
triggerall=  power < const(data.power) && power < powermax
triggerall= !inguarddist && p2bodydist x>=120 && random<150*(var(53)/8.0)
triggerall = stateno != 900
;triggerall = numhelper(2531) = 0
triggerall= ctrl
trigger1=(enemynear,Movetype=H||enemynear,statetype=L)
trigger2=enemynear,vel x<0
trigger3=enemynear,stateno=[120,155]
trigger4 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen

[State -1, AI Slashing Chop]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && (stateno !=[1300,1302]) && stateno != 106 && statetype = S && (enemynear, Movetype != A)
triggerall= (p2bodydist x = [45,135]) && (p2bodydist y = [ -70, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall= (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype != A)
trigger1 = ctrl && random<25*(var(53)/8.0)
value = 1300

[State -1, AI FW Throw]
type = ChangeState
value = 800
triggerall = var(59)>=1 && random < 500*(var(53)/8.0) ;&& !var(32)
triggerall = roundstate=2 && statetype!=A && enemynear,statetype!=L && (enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H && enemynear,statetype!=A && enemynear,Hitover && (p2bodydist x =[0,30])
triggerall = BackEdgeDist > 100
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random<200*(var(53)/8.0)
trigger2 = enemynear,stateno=[120,155]
trigger2 = random<500*(var(53)/8.0)
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30]) && random<250*(var(53)/8.0)
trigger5=(p2stateno=[120,155]) && (p2bodydist x=[0,30]) && random<500*(var(53)/8.0)

[State -1, AI BW Throw]
type = ChangeState
value = 810
triggerall = var(59)>=1 && random < 500*(var(53)/8.0) ;&& !var(32)
triggerall = roundstate=2 && statetype!=A && enemynear,statetype!=L && (enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H && enemynear,statetype!=A && enemynear,Hitover && (p2bodydist x =[0,30])
triggerall = BackEdgeDist <= 100
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random<200*(var(53)/8.0)
trigger2 = enemynear,stateno=[120,155]
trigger2 = random<500*(var(53)/8.0)
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30]) && random<250*(var(53)/8.0)
trigger5=(p2stateno=[120,155]) && (p2bodydist x=[0,30]) && random<500*(var(53)/8.0)

[State -1, AI Standing Low Punch]
type = ChangeState
value = 200
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall =(p2bodydist x = [-10, 42])&&(p2bodydist y = [-80,5])&&P2statetype != C&&P2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 550*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 550*(var(53)/8.0)
;trigger2 = (stateno = [100,101]) && random < 250*(var(53)/8.0)
;trigger3 = ctrl&&(enemynear,ctrl) && random < 700*(var(53)/8.0)

[State -1, AI Launcher]
type = ChangeState
value = 205
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall =(p2bodydist x =[0,45])&&(p2bodydist y = [-80,5])&&P2statetype != L
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 250*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 250*(var(53)/8.0)

;trigger2 = (stateno = [100,101]) && random < 250*(var(53)/8.0)
;trigger3 = ctrl&&(enemynear,ctrl) && random < 700*(var(53)/8.0)

[State -1, AI Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall = (p2bodydist x = [-15, 45]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 150*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 150*(var(53)/8.0)
;trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
;trigger2 = random < 700*(var(53)/8.0)

[State -1, AI Tornado]
type = ChangeState
value = 215
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall =(p2bodydist x =[0,45])&&(p2bodydist y = [-80,5])&&P2statetype != L
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 250*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 250*(var(53)/8.0)
;trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
;trigger2 = random < 700*(var(53)/8.0)

[State -1, AI Standing High Punch]
type = ChangeState
value = 220
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [-10, 50]) && (p2bodydist y = [ -80, 80]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 200*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 200*(var(53)/8.0)
;trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
;trigger2 = random < 750*(var(53)/8.0)

[State -1, AI Rockfall]
type = ChangeState
value = 225
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType = S
triggerall = (p2bodydist x>150) && (p2bodydist y = [ -80, 80]) && p2statetype != L
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 250*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 250*(var(53)/8.0)
;trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
;trigger2 = random < 750*(var(53)/8.0)

[State -1, AI Standing Low Kick]
type = ChangeState
value = 230
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 45]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 150*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 150*(var(53)/8.0)
;trigger2 = (stateno = [100,101]) && random < 100*(var(53)/8.0)
;trigger3 = ctrl&&(enemynear,ctrl) && random < 600*(var(53)/8.0)

[State -1, AI Fireworks]
type = ChangeState
value = 235
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall= (p2stateno != [120, 155]) && p2statetype != L && (p2bodydist x = [-5,50]) && (p2bodydist y =[-105,5]) && (enemynear, statetype != C)
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 250*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 250*(var(53)/8.0)
;trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
;trigger2 = random < 700*(var(53)/8.0)

[State -1, AI Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [5, 45]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 150*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 150*(var(53)/8.0)
;trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
;trigger2 = random < 550*(var(53)/8.0)

[State -1, AI Lightning Strike]
type = ChangeState
value = 245
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType = S && P2statetype != C
triggerall = (p2bodydist x>150) && p2statetype != L
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 200*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 200*(var(53)/8.0)
;trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
;trigger2 = random < 550*(var(53)/8.0)

[State -1, AI Standing High Kick]
type = ChangeState
value = 250
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [5, 44]) && (p2bodydist y = [ -70, 50]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 250*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 250*(var(53)/8.0)
;trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit
;trigger2 = random < 200*(var(53)/8.0)

[State -1, AI Freeze Ball]
type = ChangeState
value = 255
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType = S && P2statetype != C
triggerall = (p2bodydist x>150) && (p2bodydist y = [ -70, 50]) && p2statetype != L
triggerall = (enemy,stateno!=6876); No Frozen
trigger1 = !Numhelper(6850) ; No Crystal Ball
trigger1 = ctrl && random < 300*(var(53)/8.0)
trigger2 = NumHelper(6850)=1
trigger2 = Helper(6850),stateno=11111
trigger2 = ctrl && random < 300*(var(53)/8.0)
;trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit
;trigger2 = random < 200*(var(53)/8.0)

[State -1, AI Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A && stateno != 600
triggerall = (p2bodydist x = [2,40]) && (p2bodydist y = [-80,-40]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 200*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 200*(var(53)/8.0)

[State -1, AI Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A
triggerall = (p2bodydist x = [-5, 65]) && (p2bodydist y = [ -80, -40]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 350, 150))
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 350, 150))
;trigger2 = ((stateno = 600)||(stateno = 630))&& movehit && random<700*(var(53)/8.0)

[State -1, AI Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A && (p2bodydist y = [ -70, -30]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 100 && (p2bodydist x = [10, 60])
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 100 && (p2bodydist x = [10, 60])
;trigger2 = (stateno = 610)&& movehit && random < 300*(var(53)/8.0)
;trigger3 = (stateno = 640)&& movehit && random < 150*(var(53)/8.0)

[State -1, AI Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A && enemynear,Statetype=A
triggerall = (p2bodydist x = [-5,25]) && (p2bodydist y = [ -50, 20]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 200*(var(53)/8.0)
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 200*(var(53)/8.0)

[State -1, AI Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A
triggerall = (p2bodydist y = [ -40, 45]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 150*(var(53)/8.0) && (p2bodydist x = [-25,40])
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 150*(var(53)/8.0) && (p2bodydist x = [-25,40])
;trigger2 = ((stateno = 600)||(stateno = 630))&& movehit && random<700*(var(53)/8.0)

[State -1, AI Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59)>=1 && numenemy && roundstate=2 && statetype = A && (p2bodydist y = [ -60, 50]) && p2statetype != L
trigger1 = !Numhelper(6800) ; No Crystal Ball
trigger1 = ctrl && random < 100*(var(53)/8.0) && p2statetype != A && (p2bodydist x = [40,90])
trigger2 = NumHelper(6800)=1
trigger2 = Helper(6800),stateno=11111
trigger2 = ctrl && random < 100*(var(53)/8.0) && p2statetype != A && (p2bodydist x = [40,90])
;trigger2 = (stateno = 610)&& movehit && random < 250*(var(53)/8.0) && enemynear,Statetype=A
;trigger3 = (stateno = 640)&& movehit

[State -1, AI Pui-Pui Special]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x=[80,150]) ;&& (p2bodydist y=[-70,5])
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
trigger1 = ctrl && (Random<200*(var(53)/8.0))
trigger2 = ctrl && enemynear,statetype=L && random<150*(var(53)/8.0)
trigger3 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1000+100*(power >= 500)

[State -1, AI Teleport]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x=[0,100]) ;&& (p2bodydist y=[-70,5])
triggerall = !Numhelper(6800) ; No Crystal Ball
triggerall = stateno != [1800,1805]
trigger1 = ctrl && (Random<200*(var(53)/8.0))
trigger2 = ctrl && (enemynear,movetype=A || !(enemynear,ctrl)) && random<350*(var(53)/8.0)
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1800

[State -1, AI Gravity Trap]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x=[80,150]) ;&& (p2bodydist y=[-70,5])
triggerall = !NumHelper(6200) ;no Gravity Trap
trigger1 = ctrl && (Random<200*(var(53)/8.0))
trigger2 = ctrl &&enemynear,statetype=L && random<150*(var(53)/8.0)
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1200

[State -1, AI EX Floating Bomb]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 ;&& statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40)
triggerall = !NumHelper(2950) ;no Floating Bomb
triggerall = !NumHelper(2960) ;no EX Floating Bomb
;triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = power >= 500
trigger1 = ctrl && (Random<100*(var(53)/8.0))
trigger2 = ctrl &&enemynear,statetype=L && random<150*(var(53)/8.0)
trigger3 = ctrl && NumHelper(2950)=1
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1950


[State -1, AI Floating Bomb]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 ;&& statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40)
triggerall = !NumHelper(2960) ;no EX Floating Bomb
triggerall = NumHelper(2950)<2 ;not reached max Floating Bomb
;triggerall = !NumHelper(1500)   ;No Cursed State
trigger1 = ctrl && (Random<100*(var(53)/8.0))
trigger2 = ctrl &&enemynear,statetype=L && random<150*(var(53)/8.0)
trigger3 = ctrl && NumHelper(2950)=1
trigger3 = (Helper(2950),rootdist X !=[-120,120]) && (Random<350*(var(53)/8.0))
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1900



[State -1, AI Sticky Bomb]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x=[80,150]) ;&& (p2bodydist y=[-70,5])
triggerall = !NumHelper(1500)   ;No Cursed State
trigger1 = !NumHelper(2400) ;no Sticky Bomb
trigger1 = ctrl && (Random<200*(var(53)/8.0))
trigger2 = NumHelper(2400)=1
trigger2 = Helper(2400),stateno=11111
trigger2 = ctrl && enemynear,statetype=L && random<150*(var(53)/8.0)
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1400

[State -1, AI Sticky Bomb Detonation]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120]);&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x=[80,150]) ;&& (p2bodydist y=[-70,5])
triggerall = NumHelper(2400)=1 ;Sticky Bomb in play
triggerall = Helper(2400),stateno=2402 ;attached
triggerall = !NumHelper(1500)   ;No Cursed State
trigger1 = ctrl && (Random<200*(var(53)/8.0))
trigger2 = ctrl && enemynear,statetype=L && random<50*(var(53)/8.0)
;trigger3 = ((stateno = [200, 221]) || (stateno = [230, 257]) || (stateno = [400, 440])) && (movehit = [1, 16]) && (Random<20*(var(53)/8.0))
;trigger4 = stateno = 455 && movehit && random<200*(var(53)/8.0)
;trigger5 = ctrl && random<250*(var(53)/8.0) && enemynear,stateno=652 && enemynear,movetype=H && enemynear,statetype=A
value = 1450

[State -1, AI Curse You]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype = A && pos Y < -60 && vel x>=0
triggerall= (enemy,stateno!=[120,155]) && (p2bodydist x=[50,100]) ;&& (p2bodydist y=[40,355])
triggerall = !NumHelper(1500)   ;No Cursed State
trigger1 = ctrl && random<250*(var(53)/8.0) && (prevstateno!=[600,650])
trigger2 = (stateno=[600,640]) && movehit && random<50*(var(53)/8.0)
trigger3 = enemynear,statetype=L && ctrl && random<300*(var(53)/8.0)
value = 1550

[State -1, AI Pui-Pui Lv.1]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A   && power >= 1000 && stateno != 2600
triggerall= (enemy,stateno!=[120,155]) && (enemy,stateno!=[5100,5120]) && (enemynear,statetype!=L) && (enemynear,vel y>=-2)
triggerall= (p2bodydist x>100) && (enemynear,vel x=[0,2))
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
trigger1 = (Ctrl || stateno = 100 || stateno = 101) && random<200*(var(53)/8.0)
trigger2 = stateno = 1300 && movehit && Ifelse(var(32),random<150*(var(53)/8.0),random<50*(var(53)/8.0))
trigger3 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen
;trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 221)) && movehit && Ifelse(var(32),random<100*(var(53)/8.0),random<50*(var(53)/8.0))
;trigger4 = ((stateno = 230) || (stateno = 241) || (stateno = 256)) && movehit && Ifelse(var(32),random<150*(var(53)/8.0),random<100*(var(53)/8.0))
;trigger5 = ((stateno = 400) || (stateno = 410) || (stateno = 250)) && movehit && Ifelse(var(32),random<200*(var(53)/8.0),random<150*(var(53)/8.0))
;trigger6 = ((stateno = 430) || (stateno = 440)) && movehit && Ifelse(var(32),random<250*(var(53)/8.0),random<200*(var(53)/8.0))
value = 2600

[State -1, AI Yakon Lv.1]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A   && power >= 1000 && stateno != 2000
triggerall= (enemy,stateno!=[120,155]) && (enemy,stateno!=[5100,5120]) && (enemynear,statetype!=L) && (enemynear,vel y>=-2)
triggerall= (p2bodydist x>100) && (enemynear,vel x=[0,2))
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
trigger1 = (Ctrl || stateno = 100 || stateno = 101) && random<200*(var(53)/8.0)
trigger2 = stateno = 1300 && movehit && Ifelse(var(32),random<150*(var(53)/8.0),random<50*(var(53)/8.0))
trigger3 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen
;trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 221)) && movehit && Ifelse(var(32),random<100*(var(53)/8.0),random<50*(var(53)/8.0))
;trigger4 = ((stateno = 230) || (stateno = 241) || (stateno = 256)) && movehit && Ifelse(var(32),random<150*(var(53)/8.0),random<100*(var(53)/8.0))
;trigger5 = ((stateno = 400) || (stateno = 410) || (stateno = 250)) && movehit && Ifelse(var(32),random<200*(var(53)/8.0),random<150*(var(53)/8.0))
;trigger6 = ((stateno = 430) || (stateno = 440)) && movehit && Ifelse(var(32),random<250*(var(53)/8.0),random<200*(var(53)/8.0))
value = 2000

[State -1, AI Darbura Lv.1]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A  && power >= 1000 && stateno != 2300
triggerall= (enemynear,stateno != [120, 155]) && (enemy,stateno!=[5100,5120])&&(enemynear,statetype!=L) && (enemynear,vel y>=-1) && (enemynear,vel x=[0,2))
triggerall= (p2bodydist x=[20,140])
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
trigger1 = (Ctrl || stateno = 100 || stateno = 101) && random<200*(var(53)/8.0)
trigger2 = stateno = 1300 && movehit && random<50*(var(53)/8.0)
trigger3 = Ctrl && enemynear,Movetype=H && enemynear,Statetype=S && random<50*(var(53)/8.0)
trigger4 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen
;trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 221)) && movehit && random<150*(var(53)/8.0)
;trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 241) || (stateno = 242) || (stateno = 250) || (stateno = 256) || (stateno = 257)) && movehit && random<150*(var(53)/8.0)
;trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movehit && random<50*(var(53)/8.0)
;trigger7 = ((stateno = 430) || (stateno = 440)) && movehit && random<50*(var(53)/8.0)
value = 2300


[State -1, AI Darbura Lv.2]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A   && power >= 2000 && stateno != 2350
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120])&&(enemynear,statetype!=L) && (enemynear,vel y>=-2)
triggerall= (p2bodydist x>100)  && (enemynear,vel x=[0,2))
triggerall = !NumHelper(2100) ;no Yakon on screen
triggerall = !NumHelper(2200)   ;No Pui-Pui on screen
triggerall = !NumHelper(2300)   ;No Darbura on screen
trigger1 = (Ctrl || stateno = 100 || stateno = 101) && random<300*(var(53)/8.0)
trigger2 = stateno = 1300 && movehit && random<200*(var(53)/8.0)
trigger3 = Ctrl && NumHelper(8888)=1 && random<350*(var(53)/8.0) ;Cursed/Frozen
;trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && random<250*(var(53)/8.0)
;trigger4 = ((stateno = 230) || (stateno = 240) || (stateno = 242) || (stateno = 250)) && movehit && random<250*(var(53)/8.0)
;trigger5 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movehit && random<250*(var(53)/8.0)
;trigger6 = ((stateno = 430) || (stateno = 440)) && movehit && random<200*(var(53)/8.0)
;trigger7 = stateno=1050 && AnimElemTime(3)>=0 && enemynear,Movetype=H && enemynear,Statetype=S && random<250*(var(53)/8.0)
;trigger8 = stateno=1120 && Movehit && random<200*(var(53)/8.0)
value = 2350

[State -1, AI Pong Lv.3]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && power >= 3000 && stateno != 2900
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120])&&(enemynear,statetype!=L) && (enemynear,vel y>=-2)
triggerall= (p2bodydist x>100)  && (enemynear,vel x=[0,2))
triggerall = !NumHelper(1500)   ;No Cursed State
triggerall = !Numhelper(6800) ; No Crystal Ball
trigger1 = (Ctrl || stateno = 100 || stateno = 101) && random<400*(var(53)/8.0)
trigger2 = stateno = 1300 && movehit && random<200*(var(53)/8.0)
;trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && random<250*(var(53)/8.0)
;trigger4 = ((stateno = 230) || (stateno = 240) || (stateno = 242) || (stateno = 250)) && movehit && random<250*(var(53)/8.0)
;trigger5 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movehit && random<250*(var(53)/8.0)
;trigger6 = ((stateno = 430) || (stateno = 440)) && movehit && random<200*(var(53)/8.0)
;trigger7 = stateno=1050 && AnimElemTime(3)>=0 && enemynear,Movetype=H && enemynear,Statetype=S && random<250*(var(53)/8.0)
;trigger8 = stateno=1120 && Movehit && random<200*(var(53)/8.0)
value = 2900


