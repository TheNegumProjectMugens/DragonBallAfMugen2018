;================================
;　超ベジット
;================================

;------------------------------------------------------
;Author:	sheld
;
;------------------------------------------------------
;====================================================--
;------------------------------------------------------

; イントロセレクト
[Statedef 190]
type 			= S
movetype		= I
physics			= N
anim			= 190
velset			= 0,0
ctrl			= 0
poweradd		= 0
juggle			= 0
facep2			= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
;sprpriority	= 0



[State 0:     2 ];対超４孫悟空（sheld）専用登場アクション
type = ChangeState
trigger1 = P2Name = "Goku_Super4" || P4Name = "Goku_Super4"
value =        193  

[State 0:     1]
type            = ChangeState;超・本気スタート
trigger1        = (command = "holdx")&&(command = "holdy")&&(command = "holdz")
value           = 5566

[State 0:     1];本気スタート
type            = ChangeState
trigger1        = (command = "holds")
value           = 6288

[State 0:     1]
type            = ChangeState;通常スタート
trigger1        = (AnimElem = 2)
value           = ifelse(random>500,7566,ifelse(random> 500,2719,191))

;---------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;超本気スタート！
[Statedef 5566]
type            = S
movetype        = A
physics         = S
anim            = 5566
;velset          = 2,0,0
ctrl            = 0
poweradd        = 9000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
supermove = 9999
supermovetime = 9999
sprpriority     = 2

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 130
x		        = 35
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 133
x		        = -35
y		        = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 140) 
trigger2        = (AnimElem = 141) 
trigger3        = (AnimElem = 142) 
trigger4        = (AnimElem = 143) 
trigger5        = (AnimElem = 144) 
trigger6        = (AnimElem = 145) 
trigger7        = (AnimElem = 146) 
trigger8        = (AnimElem = 147) 
value           = 255,255,255
time            = 2
under           = 1


[State life, 2];超本気スイッチ
type = varset
trigger1 = time = 2
var(25) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 1
var(9) = 1

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 10,10,10
ignorehitpause = 1

;ring
[State 800, 6]
type = Explod
trigger1 = AnimElem = 140
trigger2 = AnimElem = 148
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

[State 191, 4]
type = Explod
trigger1 = AnimElem = 140
trigger2 = AnimElem = 148
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1

[State 191, 4]
type = Explod
trigger1 = AnimElem = 140
trigger2 = AnimElem = 148
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2


[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 142)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = 2.8, 2.3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 140
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.2, 1.3

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 135
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.3, 1.3

[State -2]
type = PalFX;点滅
trigger1 = (Time > 50) && (GameTime%3) = 0
time = 1
add = 59,59,59
ignorehitpause = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 138
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 138
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9


[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 142
var(21) = 1


[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 135
value = 99,9995
channel = -1
volume = 255

[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 142
value = 555,5555
channel = -1
volume = 255
roop = 1

[State 0:		BGPalFX]
type			= BGPalFX
triggerall		= (Time < 1830) 
trigger1		= ((Time > 1530) && ((GameTime%5) = 0))
time			= 4
add		    	= 90,90,90
mul			    = 0,0,250
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:		BGPalFX]
type			= BGPalFX
triggerall		= (Time < 1830) 
trigger1		= ((Time > 1650) && ((GameTime%4) = 0))
time			= 4
add		    	= 190,190,190
mul			    = 0,0,250
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 800,1]
type = PalFX;点滅
triggerall = !AnimElem = 147
triggerall		= (Time < 2110) 
trigger1 = ((Time > 1801) && ((GameTime%4) = 0))
time = 1
add = 65,65,65
ignorehitpause = 1

[State 800,3]
type			= EnvShake
triggerall		= (Time < 2000) 
trigger1 		= ((Time > 1801) && ((GameTime%5) = 0))
time			= 5
freq			= 120
ampl			= -3
phase			= 90

[State 0:		BGPalFX]
type			= BGPalFX
triggerall		= (Time < 2020) 
trigger1		= ((Time > 1831) && ((GameTime%3) = 0))
time			= 4
add		    	= 255,255,255
mul			    = 250,250,250
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 140
trigger2 = AnimElem = 141
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 25
sprpriority = 4
ownpal = 1
scale = .8,.8

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 140
anim = 9850
ID = 9850
pos = 0,-50
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.8,1.8

[State 191, 4]
type = Explod
trigger1 = AnimElem = 140
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.6,1.6

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 140) 
value           = 255,255,255
time            = 3
under           = 1

;気合声
[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 138
value = 424,67;S12, 9
channel = 0
volume = 255

;ポタラをつけてくれ！
[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 90
value = 21,112
channel = -1
volume = 255



;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 140
trigger2 = AnimElem = 148
anim = 9950
ID = 9950
pos = 0,-50
postype = p1
facing = 1
bindtime = -1
removetime = 20
sprpriority = 4
ownpal = 1
scale = 2.5,2.5
supermove       = 777
pausemovetime   = 777

[State 191, 4]
type = Explod
trigger1 = AnimElem = 140
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 50
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5,1.5


[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 140
trigger2 = AnimElem = 148
time 			= 30
freq 			= 100
ampl   = 7
phase  = 1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1 = AnimElem = 140
value           = 3,1
volume          = 255
channel         = -1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1 = time = 1850
value           = 766,56
volume          = 255
channel         = -1

[State 0, ]
type            = AllPalFX
trigger1 = time = 1930
add             = (255-((time)*6)),(-255+((time)*6)),(-255+((time)*6))
mul             = (80+((time)*4)),(80+((time)*4)),(80+((time)*4))
time            = 1
ignorehitpause  = 1


[State 100, 1];合体の光
type = Explod
trigger1 = time = 1900
Anim = 9901
postype = p1
pos			= -130,-30
Id = 9901
sprpriority = 999
removetime = 50
Postype = p1
bindtime = -2
SuperMove = 1
ownpal = 1
scale = 8, 8
ontop = 0
facing = -1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 = time = 1911
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1


[State 191, 4]
type = Explod
trigger1 		= time = 1000
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 850
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 1.3,1.3

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 1000
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 150
bindtime = -1
Postype = p2
ownpal = 1
scale = 1, 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 1160
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 650
bindtime = -1
Postype = p2
ownpal = 1
scale = 1.5, 1.2

;風
[State 191, 3]
type = Explod
trigger1 = time = 1130
anim = 9353
ID = 9353
pos = 0,0
postype = p2
facing = 1
bindtime = -1
removetime = 150
sprpriority = 4
ownpal = 1
scale = .8,.8


[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= time = 1000
time 			= 15
freq 			= 60
ampl   = 5
phase  = 1


[State 800,3]
type			= EnvShake
triggerall		= (Time < 1800) 
trigger1 		= ((Time > 1000) && ((GameTime%5) = 0))
time			= 5
freq			= 100
ampl			= -3
phase			= 90

[State 0, ]
type            = BGPalFX
trigger1        = time = 1000
time            = 1000
mul             = 210,210,210
color           = 255
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = time = 1000
value           = 3,1
volume          = 255
channel         = -1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = time = 1040
value           = 89,89
volume          = 255
channel         = 0

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 990
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 990
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 193, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 2300
flag           = NoBarDisplay

;風
[State 191, 3]
type = Explod
trigger1 = time = 1000
anim = 9353
ID = 9353
pos = 0,0
postype = p2
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .7,.7

[State 8001, Explod-3];タイトル
type = Explod
trigger1 = Time = 0
Anim = 5599
id = 5599
pos = -15,-4
postype = left
ownpal = 1
bindtime = -1
removetime = 2000
scale = 0.94, 0.94
sprpriority = 99
supermovetime = 999
ontop           = 1
facing = 1

[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1        = (!AnimTime)
id			= 9416

[State 8001, Explod-3];タイトル2
type = Explod
trigger1 = Time = 1055
Anim = 5679
id = 5679
pos = -15,-4
postype = left
ownpal = 1
bindtime = -1
removetime = 1000
scale = 0.9, 0.9
sprpriority = 9999999
supermovetime = 999
ontop           = 1
facing = 1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 65,65
volume          = 255
channel         = 0

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 333,554
volume          = 255
channel         = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 135)
value           = 255,255,255
time            = 3
under           = 0


[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 1000
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 1
ignorehitpause  = 0
persistent      = 4

[State 0:    SuperPause]
type 			= SuperPause
trigger1        = (!AnimTime)
time 			= 1
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 1
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 193, 1]
type = ChangeState
trigger1        = (!AnimTime)
value = 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 193];対超４
type = S
ctrl = 0
anim = 8153
velset = 0,0

[State 193, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0:		Helper]
type			= Helper
trigger1 = time = 1
helpertype		= Normal
name			= "8158"
id			    = 8158
pos			    = 0,0
stateno = 8158
postype		    = p1
facing		    = 0
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999

[State life, 2];本気
type = varset
trigger1 = time = 1
var(9) = 1

[State life, 2];対超４本気
type = varset
trigger1 = time = 2
var(24) = 1

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 180)
flag            = Invisible



[State 5005:     TeleportSND];よけ
type            = PlaySnd
trigger1 = AnimElem = 8
value           = 211,2
volume          = 255
channel         = -1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 500
flag           = NoBarDisplay



[State 5005:     TeleportSND];そうなくっちゃ。
type            = PlaySnd
trigger1 = AnimElem = 32
value           = 222,44
volume          = 255
channel         = -1


[State 193, 1]
type = ChangeState
trigger1 = AnimElem = 43
value = 0




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[Statedef 8158]
type            = S
movetype        = I
physics         = N
ctrl            = 0
anim            = 8158
velset          = 0,0
facep2          = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
x		        = 0
y		        = 0



[State 430,	AfterImage]
type 			= AfterImage
trigger1 		= (AnimElem = 14)
time 			= 100
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 19
trigger2 = AnimElem = 20
x		        = -10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 21
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1 = AnimElem = 17
x               = (P2BodyDist X+60)

[State 500:     PosSet]
type            = VelSet
trigger1 = AnimElem = 26
x               = -5.7

[State 500:     PosSet]
type            = VelSet
trigger1 = AnimElem = 27
x               = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 5
x		        = 5
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 2
x		        = 1
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 1
y		        = 0

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1 = AnimElem = 19
value           = 1,6
volume          = 255
channel         = -1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 26
value           = 7,32
volume          = 255
channel         = -1

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
value = S3, 0
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 17) 
trigger2 = AnimElem = 26
value           = 255,255,255
time            = 3
under           = 0


[State 5005:     TeleportSND]
type            = PlaySnd
trigger1 = AnimElem = 2
value           = 7,32
volume          = 155
channel         = -1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
time 			= 15
freq 			= 100
ampl   = 7
phase  = 1

[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = parent,AnimElem = 27




; 登場（こいつが超ベジットだ！）
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 970,	ALLPalFX]
type			= ALLPalFX
trigger1 = TIME = 1
time			= 1
add			= 100,100,100
mul			= 256,256,256
sinadd		= -80,-80,-80,60
invertall		= 0
color			= 256

[State life, 2];本気スイッチ切り
type = varset
trigger1 = time = 0
var(25) = 0

[State life, 2];本気スイッチ切り
type = varset
trigger1 = time = 0
var(9) = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S665, 6
channel = 3




[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 5) 
value           = 255,255,255
time            = 1
under           = 1

[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3, 1
channel = 4
volume = 255






;ring
[State 800, 6]
type = Explod
trigger1 = AnimElem = 5
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2, 1.2


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 5
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .8,.8

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.8,1.8

[State 191, 4]
type = Explod
trigger1 = AnimElem = 5
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5,1.5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 5) 
value           = 255,255,255
time            = 3
under           = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;こいつがスーパーベジット！
[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3333, 3333
channel = 0
volume = 255

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 2
time		    = 1
add		        = 1,1,1
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 191, 4]
type = Explod
trigger1 = AnimElem = 5
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5,1.5


[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 5
time 			= 20
freq 			= 100
ampl   = 7
phase  = 1


[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9955

[State 191, 1]
type = ChangeState
trigger1 = AnimElem = 20
value = 0



; 本気スタート

[Statedef 6288]
type = S
ctrl = 0
anim = 6288
velset = 0,0
poweradd = 4000

[State 8001, Explod-3];黒背景
type = Explod
trigger1 = Time = 0
Anim = 5596
id = 5596
pos = 0,0
postype = left
ownpal = 1
bindtime = -1
removetime = 480
scale = 3, 3
sprpriority = 200
supermovetime = 480
ontop           = 0
facing = 1

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0, ]
type            = AllPalFX
trigger1        = time =[21,23]
add             = -200,-200,-200
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[24,26]
add             = -155,-155,-155
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[27,29]
add             = -55,-55,-55
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[0,20]
add             = -255,-255,-255
mul             = -255,-255,-255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 2)
time            = 10
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 2300
flag           = NoBarDisplay


[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 8001, Explod-3];タイトル
type = Explod
trigger1 = Time = 0
Anim = 2121
id = 2121
pos = -10,-8
postype = left
ownpal = 1
bindtime = -1
removetime = 533
scale = 0.74, 0.74
sprpriority = 9999999
supermovetime = 120
ontop           = 1
facing = 1


[State life, 2];本気スイッチ
type = varset
trigger1 = time = 1
var(9) = 1


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 2
time		    = 1
add		        = 1,1,1
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >560) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


[State 210, 1];気音
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S3, 1
channel = -1

[State 210, 1];よっしゃあ
type = PlaySnd
trigger1 = (AnimElem = 20)
value = S54, 545
channel = -1


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 3)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2, 1.3

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.3,1.3

[State 191, 4]
type = Explod
trigger1 = AnimElem = 3
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2.2, 1.3




[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 3
Anim = 9950
Pos = 0,-50
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3,3


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 3)
value           = 255,255,255
time            = 2
under           = 1


[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 3
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2

[State 185, 1]
type = PlaySnd;壮絶パワー
trigger1 = AnimElem = 1
value = S22, 112
channel = 0
Volume = 255

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


; チョット遊んでやるか

[Statedef 7566]
type = S
ctrl = 0
anim = 7566
velset = 0,0

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 2
time		    = 1
add		        = 1,1,1
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd;遊んでやる
trigger1 = AnimElem = 3
value = S75, 666
channel = 0
Volume = 255

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


; さっさとかかってきやがれ

[Statedef 2719]
type = S
ctrl = 0
anim = 2719
velset = 0,0

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 2
time		    = 1
add		        = 1,1,1
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd;さっさとかかってきやがれ
trigger1 = AnimElem = 3
value = S866, 76
channel = 0
Volume = 255

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;==========================================================================================




; Lose by Time Over
; CNS difficulty: basic
; CNS レベル: 基本
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝利ポーズセレクト win
[Statedef 180]
type            = S

[State 0:     1];きれいさっぱり消えてしまえば・・
type            = ChangeState
triggerall        = var(28) = 0
triggerall        = var(29) = 1
triggerall        = Life = 3000
trigger1   = (enemynear(0),alive=0)
value           = 9099


[State 0:     1];超３勝利
type            = ChangeState
triggerall        = var(16) = 1
trigger1   = (enemynear(0),alive=0)
value           = 12149



[State 0:     1];こんなはずじゃなかったか？（普通状態パーフェクト勝利
type            = ChangeState
triggerall        = Life = 3000
triggerall        = var(25) = 0
triggerall        = var(27) = 0
triggerall        = var(9) = 0
trigger1   = (enemynear(0),alive=0)
value           = 5562

[State 0:     1];もうちっとor無駄なんだよorもう少し真剣に（本気出してない状態
type            = ChangeState
triggerall        = Life <= 3000
triggerall        = var(25) = 0
triggerall        = var(9) = 0
triggerall        = var(27) = 0
trigger1   = (enemynear(0),alive=0)
value           = ifelse(random>500,8299,ifelse(random> 500,4433,2718))

[State 0:     1];無駄なんだよorどうしたorもう少し真剣に（本気状態
type            = ChangeState
triggerall        = Life <= 3000
triggerall        = var(9) = 1
triggerall        = var(27) = 0
trigger1   = (enemynear(0),alive=0)
value           = ifelse(random>500,4433,ifelse(random> 500,7567,2718))


;---------------------------------------------------------------------------
; きれいさっぱり

[Statedef 9099]
type = S
ctrl = 0
anim = 9099
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

[State life, 2];きれいさっぱりスイッチ
type = varset
trigger1 = time = 1
var(28) = 1

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(27) = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd;きれいさっぱり消えてしまえば
trigger1 = AnimElem = 2
value = S12, 34
channel = 0
Volume = 255


[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 390
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

; 超３勝利

[Statedef 12149]
type = S
ctrl = 0
anim = 12149
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

[State life, 2];超３スイッチ切り
type = varset
trigger1 = time = 1
var(16) = 0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(27) = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 250
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0


; こんなはずじゃなかったか？

[Statedef 5562]
type = S
ctrl = 0
anim = 5562
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd;こんなはずじゃなかったか？
trigger1 = AnimElem = 2
value = S55, 1
channel = 0
Volume = 255

[State 185, 1];そんなにおちこむなよ
type = PlaySnd
trigger1 = AnimElem = 23
value = S55, 2
channel = 0
Volume = 255

[State 185, 1];おれだっておどろいてるんだ。
type = PlaySnd
trigger1 = AnimElem = 37
value = S55, 3
channel = 0
Volume = 255

[State 185, 1];ここまで貴様をこけにできるなんてな。
type = PlaySnd
trigger1 = AnimElem = 52
value = S55, 4
channel = 0
Volume = 255

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 590
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0




; もうちっと・・

[Statedef 8299 ]
type = S
ctrl = 0
anim = 8299
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd;もうちっと強いのかと思ったがな
trigger1 = AnimElem = 7
value = S52, 3
channel = 0
Volume = 255

[State 185, 1]
type = PlaySnd;普通ベジットに戻る
trigger1 = AnimElem = 2
value = S7, 55
channel = -1
Volume = 255

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 310
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

; もう少し真剣にやってもらいたいもんだぜ。

[Statedef 2718]
type = S
ctrl = 0
anim = 2718
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0




;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 90,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S86, 234
channel = 0
Volume = 255




[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 240
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0


; どうした、本気でやっていいんだぜ？

[Statedef 7567]
type = S
ctrl = 0
anim = 7567
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0




;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 90,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 185, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = S987, 7
channel = 0
Volume = 255

[State 185, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = S987, 8
channel = 0
Volume = 255


[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 260
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

; 無駄なんだよ、俺に勝とうなんて。

[Statedef 4433]
type = S
ctrl = 0
anim = 4433
velset = 0,0

[State life, 2];音楽二重起動防止スイッチ
type = varset
trigger1 = AnimElem = 1
var(21) = 0

[State 185, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1400, 0
channel = 0
Volume = 255

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 90,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


[State 185, 1]
type = PlaySnd
trigger1 = AnimElem = 13
value = S1400, 1
channel = 0
Volume = 255


[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 260
flag            = roundnotover
flag2           = NoBarDisplay

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;超・本気
[Statedef 9988]
type = S
movetype = A
physics = S
anim = 9988
velset = 0,0
ctrl = 0
poweradd = -9000
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 4
value = 1200


[State 191, 4]
type = Explod
trigger1 = AnimElem = 16
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 1
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 9
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 160
flag           = NoBarDisplay

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 160
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 160
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -8
air.velocity    = -20, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -8
air.velocity    = -20, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 160
add		        = -115,-115,-115
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 16) 
time 			= 30
freq 			= 100
ampl   = 7
phase  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1		= ((Time > 157) && ((GameTime%4) = 0))
value           = 205,205,205
time            = 1
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 16) 
trigger2        = (AnimElem = 17) 
value           = 255,255,255
time            = 2
under           = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 16
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2, 1.3

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 16
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.3,1.3

[State 191, 4]
type = Explod
trigger1 = AnimElem = 16
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 16
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2.2, 1.3




[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 16
Anim = 9950
Pos = 0,-50
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3,3




;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 17
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.4,2.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777



[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 19)
value           = SCA
time            = 50

[State life, 2];超本気スイッチ
type = varset
trigger1 = (AnimElem = 16)
var(25) = 1

[State life, 2];本気スイッチ
type = varset
triggerall=var(9) = 0
trigger1 = (AnimElem = 1)
var(9) = 1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S54, 344
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S545, 5
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S11, 4
channel = -1

[State 210, 1];この際ハッキリ教えてやろう・・！
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S53, 1
channel = 0
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S3, 1
channel = -1


[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;復活の超・本気
[Statedef 9941]
type = S
movetype = A
physics = S
anim = 9941
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2


[State 805:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9428

[State 805:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9410

[State 805:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9420

	
[State 805:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9429

[State 805:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9400

[State -2]
type = BGPalFX;点滅
triggerall =  (Time > 187) && (TIME < 250)
trigger1 = (Time > 1) && (GameTime%3) = 0
time = 1
add = 69,69,69
ignorehitpause = 1

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 16
value = 9999

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 1
value = 501

[State -2, 5];回復
type = poweradd 
trigger1= AnimElem = 16
value = 9999

[State 191, 4]
type = Explod
trigger1 = AnimElem = 16
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.2



;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 190
flag           = NoBarDisplay

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 190
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 190
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -8
air.velocity    = -20, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 0
envshake.freq   = 88
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -8
air.velocity    = -20, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 0
envshake.freq   = 88
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 18)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -8
air.velocity    = -20, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 0
envshake.freq   = 78
envshake.ampl   = -8
envshake.phase  = 3

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 190
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0



[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-100)

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 16) 
time 			= 30
freq 			= 160
ampl   = 7
phase  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 3
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 16) 
trigger2        = (AnimElem = 17) 
value           = 255,255,255
time            = 2
under           = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 16
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2, 1.3
supermove       = 777
pausemovetime   = 777

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 16
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermove       = 777
pausemovetime   = 777
sprpriority = 4
ownpal = 1
scale = 1.3,1.3

[State 191, 4]
type = Explod
trigger1 = AnimElem = 16
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
supermove       = 777
pausemovetime   = 777
ownpal = 1
scale = 2,2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 16
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2.2, 1.3
supermove       = 777
pausemovetime   = 777




[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 16
Anim = 9950
Pos = 0,-50
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
supermove       = 777
pausemovetime   = 777
ownpal = 1
scale = 3,3




;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 17
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.4,2.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 18
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.7,2.7
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777


[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 19)
value           = SCA
time            = 60

[State life, 2];超本気スイッチ
type = varset
trigger1 = (AnimElem = 16)
var(25) = 1

[State life, 2];本気スイッチ
type = varset
triggerall=var(9) = 0
trigger1 = (AnimElem = 1)
var(9) = 1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S54, 344
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S7, 34
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 14)
value = S7, 30
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S545, 5
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 12)
value = S11, 4
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S12, 9
channel = 0

[State 210, 1];復活セリフ;しつこい奴だな・・。
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S53, 4
channel = 0
volume  = 255

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S3, 1
channel = -1


[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;挑発
[Statedef 9019]
type = S
movetype = I
physics = S
anim = 9019
velset = 0,0
ctrl = 0
poweradd = 500
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2


[State 210, 1];悪趣味な野郎だぜ。
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S9, 17
channel = 0

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 16)
value           = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
以下、敵の手前ふっ飛ばされステート
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[StateDef 3002];ラインとばし攻撃 喰らった相手
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = 9

[State 9027, 1]
type = Assertspecial
trigger1 = (1)
flag = NOfg

[State 241]
Type = SelfState
Trigger1 = !Alive
Value = 5000

[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 241]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 241]
Type = AssertSpecial
Trigger1 = 1
IgnoreHitPause = 1
Flag = Invisible

[State 241]
Type = PosAdd
Trigger1 = time = 0 || time = 2 ||time = 4 ||time = 6 || time = 8
X = 2

[State 241]
Type = PosAdd
Trigger1 = time = 1 || time = 3 ||time = 5 ||time = 7 || time = 9
X = -2

[State 242]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 5030
IgnoreHitPause = 1


[State 241]
Type = Explod
Trigger1 = time = 0
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.00,Const(Size.YScale)+0.00
Shadow = -1
IgnoreHitPause = 1


[State 241]
Type = Explod
Trigger1 = time = 1
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.12,Const(Size.YScale)+0.12
Shadow = -1


[State 241]
Type = Explod
Trigger1 = time = 2
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.24,Const(Size.YScale)+0.24
Shadow = -1


[State 241]
Type = Explod
Trigger1 = time = 3
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.36,Const(Size.YScale)+0.36
Shadow = -1


[State 241]
Type = Explod
Trigger1 = time = 4
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.58,Const(Size.YScale)+0.58
Shadow = -1


[State 241]
Type = Explod
Trigger1 = time = 5
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.49,Const(Size.YScale)+0.49


[State 241]
Type = Explod
Trigger1 = time = 6
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.51,Const(Size.YScale)+0.51


[State 241]
Type = Explod
Trigger1 = time = 7
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.63,Const(Size.YScale)+0.63


[State 241]
Type = Explod
Trigger1 = time = 8
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.75,Const(Size.YScale)+0.75


[State 241]
Type = Explod
Trigger1 = time = 9
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.87,Const(Size.YScale)+0.87


[State 241]
Type = Explod
Trigger1 = time = 10
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.92,Const(Size.YScale)+0.92


[State 241]
Type = Explod
Trigger1 = time = 11
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.01,Const(Size.YScale)+1.12


[State 241]
Type = Explod
Trigger1 = time = 12
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.12,Const(Size.YScale)+1.12


[State 241]
Type = Explod
Trigger1 = time = 13
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.23,Const(Size.YScale)+1.23


[State 241]
Type = Explod
Trigger1 = time = 14
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.34,Const(Size.YScale)+1.34


[State 241]
Type = Explod
Trigger1 = time = 15
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.45,Const(Size.YScale)+1.45


[State 241]
Type = Explod
Trigger1 = time = 16
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.56,Const(Size.YScale)+1.56


[State 241]
Type = Explod
Trigger1 = time = 17
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.57,Const(Size.YScale)+1.57


[State 241]
Type = Explod
Trigger1 = time = 18
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.58,Const(Size.YScale)+1.58


[State 241]
Type = Explod
Trigger1 = time = 19
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.59,Const(Size.YScale)+1.59


[State 241]
Type = Explod
Trigger1 = time = 20
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.60,Const(Size.YScale)+1.60


[State 241]
Type = Explod
Trigger1 = time = 21
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.61,Const(Size.YScale)+1.61


[State 241]
Type = Explod
Trigger1 = time = 22
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.62,Const(Size.YScale)+1.62


[State 241]
Type = Explod
Trigger1 = time = 23
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.63,Const(Size.YScale)+1.63



[State 241]
Type = Explod
Trigger1 = time = 24
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.64,Const(Size.YScale)+1.64


[State 241]
Type = Explod
Trigger1 = time = 25
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.65,Const(Size.YScale)+1.65


[State 241]
Type = Explod
Trigger1 = time = 26
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.66,Const(Size.YScale)+1.66


[State 241]
Type = Explod
Trigger1 = time = 27
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.67,Const(Size.YScale)+1.67


[State 241]
Type = Explod
Trigger1 = time = 28
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.68,Const(Size.YScale)+1.68


[State 241]
Type = Explod
Trigger1 = time = 29
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.69,Const(Size.YScale)+1.69


[State 241]
Type = Explod
Trigger1 = time = 30
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.70,Const(Size.YScale)+1.70


[State 241]
Type = Explod
Trigger1 = time = 31
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.71,Const(Size.YScale)+1.71


[State 241]
Type = Explod
Trigger1 = time = 32
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.72,Const(Size.YScale)+1.72


[State 241]
Type = Explod
Trigger1 = time = 33
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.73,Const(Size.YScale)+1.73



[State 241]
Type = Explod
Trigger1 = time = 34
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.74,Const(Size.YScale)+1.74



[State 241]
Type = Explod
Trigger1 = time = 35
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.75,Const(Size.YScale)+1.75


[State 241]
Type = Explod
Trigger1 = time = 36
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.76,Const(Size.YScale)+1.76

[State 241]
Type = Explod
Trigger1 = time = 37
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.77,Const(Size.YScale)+1.77

[State 241]
Type = Explod
Trigger1 = time = 38
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.78,Const(Size.YScale)+1.78
ontop = 1


[State 241]
Type = Explod
Trigger1 = time = 39
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 98
BindTime = -1
RemoveTime = 23
Scale = Const(Size.XScale)+1.79,Const(Size.YScale)+1.79


[State 241]
Type = posset
Trigger1 = time = 0
Persistent = 0
X = 0
Y = 3

[State 241]
Type = posset
Trigger1 = time = 1
Persistent = 0
X = 0
Y = 6

[State 241]
Type = posset
Trigger1 = time = 2
Persistent = 0
X = 0
Y = 9

[State 241]
Type = posset
Trigger1 = time = 3
Persistent = 0
X = 0
Y = 12


[State 241]
Type = velset
Trigger1 = time = 30
Persistent = 0
X = 0.3
Y = 0.2


[State 241]
Type = ChangeState
Trigger1 = time = 60
Value = 3003

[StateDef 3003];元のラインまで戻る吹っ飛び
Type = A
MoveType = H
Physics = N

[State 500:     Turn]
type            = Turn
trigger1        = (Time = 7)

[State 9027, 1]
type = Assertspecial
trigger1 = time < 20
flag = NOfg

[State 242]
Type = AssertSpecial
Trigger1 = 1
Flag = Invisible

[State 242]
Type = NotHitBy
Trigger1 = 1
Value = SCA




[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 241]
Type = NotHitBy
Trigger1 = 1
Value = SCA


[State 241]
Type = PosAdd
Trigger1 = time = 0 || time = 2 ||time = 4 ||time = 6 || time = 8
X = 7

[State 241]
Type = PosAdd
Trigger1 = time = 1 || time = 3 ||time = 5 ||time = 7 || time = 9
X = -7

[State 242]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 5010

[State 242]
Type = ChangeAnim
Trigger1 = Time = 8
Value = 5000

[State 242]
Type = ChangeAnim
Trigger1 = Time = 10
Value = 5030

[State 241]
Type = Explod
Trigger1 = time = 1
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 15
Scale = Const(Size.XScale)+1.55,Const(Size.YScale)+1.55

[State 241]
Type = Explod
Trigger1 = time = 16
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.66,Const(Size.YScale)+1.66

[State 241]
Type = Explod
Trigger1 = time = 17
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.55,Const(Size.YScale)+1.55

[State 241]
Type = Explod
Trigger1 = time = 18
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.44,Const(Size.YScale)+1.44

[State 241]
Type = Explod
Trigger1 = time = 19
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.33,Const(Size.YScale)+1.33

[State 241]
Type = Explod
Trigger1 = time = 20
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.22,Const(Size.YScale)+1.22

[State 241]
Type = Explod
Trigger1 = time = 21
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.11,Const(Size.YScale)+1.11

[State 241]
Type = Explod
Trigger1 = time = 22
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+1.0,Const(Size.YScale)+1.0

[State 241]
Type = Explod
Trigger1 = time = 23
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.99,Const(Size.YScale)+0.99

[State 241]
Type = Explod
Trigger1 = time = 24
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.88,Const(Size.YScale)+0.88

[State 241]
Type = Explod
Trigger1 = time = 25
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.77,Const(Size.YScale)+0.77

[State 241]
Type = Explod
Trigger1 = time = 26
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.66,Const(Size.YScale)+0.66

[State 241]
Type = Explod
Trigger1 = time = 27
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.55,Const(Size.YScale)+0.55

[State 241]
Type = Explod
Trigger1 = time = 28
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.44,Const(Size.YScale)+0.44

[State 241]
Type = Explod
Trigger1 = time = 29
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.33,Const(Size.YScale)+0.33

[State 241]
Type = Explod
Trigger1 = time = 30
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.22,Const(Size.YScale)+0.22

[State 241]
Type = Explod
Trigger1 = time = 31
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.11,Const(Size.YScale)+0.11

[State 241]
Type = Explod
Trigger1 = time = 32
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.10,Const(Size.YScale)+0.10

[State 241]
Type = Explod
Trigger1 = time = 33
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 34
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 35
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 36
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 37
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 38
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 39
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 40
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 41
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 42
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 43
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01



[State 241];
Type = Explod
Trigger1 = time = 44
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 45
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 46
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 47
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 48
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 49
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 50
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 51
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 52
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 53
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 54
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 55
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 56
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 57
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01

[State 241]
Type = Explod
Trigger1 = time = 58
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01
Shadow = -1

[State 241]
Type = Explod
Trigger1 = time = 59
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01
Shadow = -1

[State 241]
Type = Explod
Trigger1 = time = 60
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01
Shadow = -1

[State 241]
Type = Explod
Trigger1 = time = 61
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01
Shadow = -1

[State 241]
Type = Explod
Trigger1 = time >= 62
Trigger1 = 1
Anim = Anim
Pos = 0, 0
PosType = P1
SprPriority = 9
BindTime = -1
RemoveTime = 1
Scale = Const(Size.XScale)+0.01,Const(Size.YScale)+0.01
Shadow = -1
IgnoreHitPause = 1

[State 242]
Type = PosFreeze
Trigger1 = Time < 9

[State 242]
Type = VelSet
Trigger1 = Time = 9
Y = -9
X = -3

[State 242]
Type = VelAdd
Trigger1 = Time > 8
Y = .34

[State 242]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 242]
Type = LifeAdd
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 0
triggerall = enemy,var(22) = 0
Trigger1 = Time = 0
Value = -130
Kill = 1

[State 242]
Type = LifeAdd
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
Trigger1 = Time = 0
Value = -180
Kill = 1

[State 242]
Type = LifeAdd
triggerall = enemy,var(25) = 1
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
Trigger1 = Time = 0
Value = -300
Kill = 1


[State 242]
Type = LifeAdd
triggerall = enemy,var(22) = 1
Trigger1 = Time = 0
Value = -800
Kill = 1

[State 725, 2]
type = SprPriority
trigger1 = Time = 50
value = 1

[State 242]
Type = SelfState
Trigger1 = time > 62
Trigger1 = pos Y > 0
Value = 5100

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;敵の手前ふっ飛ばされステート終わり
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------------------------------------------------------------------------
;弱パンチ
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2



[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 20, 1
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -18, -70
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3



[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S2, 7
channel = 0

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;スピリッツソード
[Statedef 1162]
type = S
movetype = A
physics = S
anim = 1162
velset = 0,0
ctrl = 0
poweradd = -2000
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = -1

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 2
under           = 0


[State 210, 1];ソード音
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S75, 12
channel = 0


[State 210, 1];ソード音
type = PlaySnd
trigger1 = (AnimElem = 31)
value = S32, 3
channel = 0

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 30,-75
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 30,-75
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 2) 
time		    = 25
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 25
pos			= 0,-50
movetime		= 25
darken		= 0
p2defmul		= 1
unhittable		= 1


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7, 55
channel = 0



[State 970,	PalFX]
type			= PalFX
trigger1 = AnimElem = 1
time			= 20
add			= 100,100,100
mul			= 256,256,256
sinadd		= -80,-80,-80,60
invertall		= 0
color			= 256

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 10)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 13)
trigger7        = (AnimElem = 14)
trigger8        = (AnimElem = 15)
trigger9        = (AnimElem = 16)
trigger10        = (AnimElem = 17)
trigger11        = (AnimElem = 18)
trigger12        = (AnimElem = 19)
trigger13        = (AnimElem = 20)
trigger14        = (AnimElem = 21)
trigger15        = (AnimElem = 22)
trigger16        = (AnimElem = 23)
trigger17        = (AnimElem = 24)
trigger18        = (AnimElem = 25)
trigger19        = (AnimElem = 26)
trigger20        = (AnimElem = 27)
trigger21        = (AnimElem = 28)
trigger22        = (AnimElem = 29)
trigger23        = (AnimElem = 30)
attr            = S, NT
hitflag         = MAF
priority        = 7, dodge
sparkno = S9222
guard.sparkno	= S9350
sparkxy	 = 0, -70
pausetime       = 1,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 1
hitsound        = S77,955
p1stateno       = 1166
p2facing        = 1
p2stateno = 5777
ground.cornerpush.veloff = -100
air.cornerpush.veloff = -100
envshake.time   = 8
envshake.freq   = 65
envshake.ampl   = -8
envshake.phase  = 3

[State 900: Helper];
type = Helper
trigger1 = animelem = 9
helpertype = Normal
pos = 75,2
postype	= p1
facing = 1
stateno	= 6789
keyctrl	= 0
scale = 1,1
ownpal = 1
supermovetime = 200
pausemovetime = 200


[State 800,1]
type = PalFX;点滅
triggerall		= (Time > 25) && (TIME < 238)
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
time = 1
add = 25,25,15
ignorehitpause = 1


[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 7)
value = S7, 30
channel = -1


[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ソード刺さった後、セリフ言って攻撃に移るベジット
[Statedef 1166]
type = S
movetype = A
physics = S
anim = 1166
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2



[State 0:     super effect]
type            = AssertSpecial
trigger1        = time > 140
flag           = NoBarDisplay

[State 500:     AfterImage]
type            = AfterImage
trigger1        = time = 100
time            = 150
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = time = 198
time 			= 25
freq 			= 80
ampl   = -13
phase  = 5

[State 100, 1]
type = Explod
trigger1        = time = 198 
Anim = 9300
pos = 40,-120
Id = 9300
sprpriority = 100
scale = 2.2,2.2
Postype = p2
SuperMove = 1
removetime = 15
bindtime = 1
ownpal = 1
facing          = 0
ontop = 1

[State 210, 1];強蹴り音
type = PlaySnd
trigger1 = time = 194
value = S7, 29
channel = 0
volume = 255

[State 210, 1];強蹴り音
type = PlaySnd
trigger1 = time = 195
value = S2, 5
channel = -1

[State 210, 1];強蹴り音
type = PlaySnd
trigger1 = AnimElem = 33
value = S7, 34
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = time = 195
value           = 125,125,125
time            = 1
under           = 1

[State 210, 1];強蹴り音
type = PlaySnd
trigger1 = time = 195
value = S55, 555
channel = 5
volume = 255

[State 210, 1];戻り瞬間移動
type = PlaySnd
trigger1 = time = 258
value = S99, 9995
channel = -1
volume = 255

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = time = 258
value           = 255,255,255
time            = 2
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 34
value           = 255,255,255
time            = 3
under           = 1



;蹴りベジットのEXPLOD
[State 970, 3]
type = Explod
trigger1 = AnimElem = 34
anim = 4655
ID = 4655
pos = -100,40
postype = p2
facing = 1
bindtime = 10
scale = 4.2,4.2
removetime = -2
sprpriority = 99
ownpal = 1
supermove       = 777
pausemovetime   = 777
ontop = 1

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 26)
value           = 255,255,255
time            = 2
under           = 1

[State 100, 1]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 6799
pos = 70,-20
Id = 6799
sprpriority = 99
scale = 1.32,1
Postype = p1
SuperMove = 1
removetime = 1000
bindtime = -1
ownpal = 1
facing          = 0


[State 100, 1]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9222
pos = 0,-60
Id = 9222
sprpriority = 100
scale = .4,.4
Postype = p2
SuperMove = 1
removetime = 150
bindtime = -1
ownpal = 1
facing          = 0

[State 100, 1]
type = Explod
trigger1 = (AnimElem = 27)
Anim = 9222
pos = 90,-60
Id = 9222
sprpriority = 1
scale = 1,1
Postype = p1
SuperMove = 1
removetime = 15
bindtime = -1
ownpal = 1
facing          = 0

[State 900: Helper];
type = Helper
trigger1 = animelem = 2
helpertype = Normal
pos = 75,2
postype	= p1
facing = 1
stateno	= 6711
keyctrl	= 0
scale = 1,1
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 28);相手吹っ飛び音
value = S6, 97
channel = -1

[State 210, 1];追いかけ瞬間移動
type = PlaySnd
trigger1 = (AnimElem = 34)
value = S99, 9995
channel = -1
volume = 255

[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 24
id			= 6799

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


;ソード
[State 191, 5]
type = Explod
trigger1 = AnimElem = 26
Anim = 6712
Pos = 15,-65
Id = 6712
sprpriority = 99
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 3,1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 20
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


[State 0:     Screen Flash]
type            = EnvColor
trigger1		= (AnimElem = 1)
trigger1		= (AnimElem = 34)
value           = 255,255,255
time            = 1
under           = 1

[State 210, 1];残念だったな
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S754, 1
channel = -1

[State 210, 1];ソード音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S75, 12
channel = 0

[State 210, 1];ソード音
type = PlaySnd
trigger1 = AnimElem = 29
value = S32, 3
channel = 0

[State 0:     Screen Flash]
type            = EnvColor
triggerall		= (Time > 1) && (TIME < 160)
trigger1 = (Time > 1) && (GameTime%3) = 0
value           = 185,185,155
time            = 1
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 28)
attr            = S, NT
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 20, 20
pausetime       = 20, 1
guard.pausetime = 1, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 40, -80
hitsound        = S211, 2
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -44
air.cornerpush.veloff = -44
ground.hittime  = 999
guard.hittime   = 999
air.hittime     = 999
ground.velocity = -2, -15
air.velocity    = -2, -15
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
p2stateno = 3002



[State 800,1]
type = PalFX;点滅
triggerall		= (Time > 1) && (TIME < 163)
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
time = 1
add = 25,25,15
ignorehitpause = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 262)
x               = (P2BodyDist X-55)


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 263)
x		        = 2
y		        = 0



[State 52, 1]
type = VelSet
trigger1 = (Time = 263)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 263)
y = 0


[State 200, 0]
type = ChangeState;終わって戻ってくる
trigger1 = time = 264
value = 8631
ctrl = 0

;スピリッツソード終わりのベジット戻り
[Statedef 8631]
type = S
movetype = A
physics = S
anim = 8631
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 500:     Turn]
type            = Turn
trigger1        = (Time = 3)

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X+100)

[State 5005:     Posset]
type            = Posset
trigger1        = (Time = 0)
y               = 0

[State 500:     AfterImage]
type            = AfterImage
trigger1        = time = 2
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 40, ]
type = Explod
trigger1 = (AnimElem = 8)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 10
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地音
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S1, 2
channel = 0

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;スピリッツソードヘルぱー
[Statedef 6789]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 99
juggle = 6
ctrl = 0
anim = 6789





[State 800,1]
type = PalFX;点滅
triggerall		= (Time > 1) 
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
time = 1
add = 255,255,245
ignorehitpause = 1


[State 0:     Screen Flash]
type            = EnvColor
triggerall		= (Time > 1) && (TIME < 193)
trigger1 = (Time > 1) && (GameTime%3) = 0
value           = 125,125,125
time            = 1
under           = 1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = parent,AnimElem = 31
trigger2 = parent,stateno = 1166


;スピリッツソードヘルぱー刺さったヘルパー
[Statedef 6711]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 99
juggle = 6
ctrl = 0
anim = 6711


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 990,0

[State 210, 1];ソード音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S75, 12
channel = 0


[State 800,1]
type = PalFX;点滅
triggerall		= (Time > 1) 
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
time = 1
add = 255,255,245
ignorehitpause = 1




[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9500: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 210, 1];ソード音
type = PlaySnd
trigger1 = parent,AnimElem = 23
value = S32, 3
channel = 0

[State 210, 1];ソード音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S75, 12
channel = 0



[State 9500, DestroySelf]
type = DestroySelf
trigger1 = time = 190
trigger2 = parent,AnimElem = 24

;刺さった相手
[Statedef 5777]
type = A
movetype = H
physics = S
anim = 5030
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 170, 無敵]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 300

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 0

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 75,75,0
ignorehitpause = 1

[State 500:     PosAdd]
type            = PosAdd
trigger1 = (Time > 10) && (GameTime%2) = 0
y               = -2.7

[State 500:     PosAdd]
type            = PosAdd
trigger1 = (Time > 10) && (GameTime%3) = 0
y               = 4

[State 500:     PosAdd]
type            = PosAdd
trigger1 = time = 0
x               = (P2BodyDist X-999)

[State -2, 5];減ってく気力
type = poweradd 
trigger1= (GameTime%3)=0 
value = -15

[State -2, 5];減ってく体力
type = lifeadd 
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 0
triggerall = enemy,var(22) = 0
trigger1= (GameTime%3)=0 
value = -2
kill = 0

[State -2, 5];減ってく体力
type = lifeadd 
triggerall = enemy,var(25) = 1
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
trigger1= (GameTime%3)=0 
value = -6
kill = 0

[State -2, 5];減ってく体力
type = lifeadd 
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
trigger1= (GameTime%3)=0 
value = -3
kill = 0

[State -2, 5];減ってく体力
type = lifeadd 
triggerall = enemy,var(22) = 1
trigger1= (GameTime%3)=0 
value = -10
kill = 0

[State 500:     velset]
type            = velset
trigger1 = time = 3
x               = -999

[State 500:     velset]
type            = velset
trigger1 = time = 3
x               = -999

[State 500:     PosAdd]
type            = PosAdd
trigger1 = time = 2
x               = (P2BodyDist X-999)

[State 500:     PosAdd]
type            = PosAdd
trigger1 = time = 1
y               = (P2BodyDist y-23)


[State -2, 5];減る体力
type = lifeadd 
triggerall = enemy,var(22) = 1
trigger1= enemy,AnimElem = 27 
value = -200
kill = 0

[State -2, 5];減る体力
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 1
triggerall = enemy,var(9) = 1
trigger1= enemy,AnimElem = 27 
value = -60
kill = 0

[State -2, 5];減る体力
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 1
trigger1= enemy,AnimElem = 27 
value = -40
kill = 0

[State -2, 5];減る体力
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 0
trigger1= enemy,AnimElem = 27 
value = -30
kill = 0


[State 210, 0]
type = ChangeState
trigger1 = enemy,AnimElem = 27
value = 3002
ctrl = 0




[State 500:     velset]
type            = velset
trigger1 = enemy,AnimElem = 27
y               = -20

[State 500:     velset]
type            = velset
trigger1 = enemy,AnimElem = 32
y               = -1

;;;;;;;;;;;;;; メテオスマッシュＺ（弱）（投げモーション）
[Statedef 8736]
type            = S
movetype        = A
physics         = S
anim            = 8736
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     otoSound]
type            = PlaySnd
trigger1        = time = 1
value           = 545,54
channel         = 0
volume          = 255
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0
channel         = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 1,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 40,0
hitsound        = S7,22
p1stateno       = 8737
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; メテオスマッシュＺ(弱)（開始）
[Statedef 8737]
type            = S
movetype        = A
physics         = S
anim            = 8737
velset          = 0,0,0
ctrl            = 0
poweradd        = 200
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------



;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 2
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3


[State 210, 1];せりふ
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S52, 2
channel = -1
volume = 255


[State 210, 1];瞬間移動音
type = PlaySnd
trigger1 = (AnimElem = 5)
trigger2 = (AnimElem = 10)
trigger3 = (AnimElem = 15)
value = S7, 32
channel = -1


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 5)
trigger2 = (AnimElem = 10)
trigger3 = (AnimElem = 15)
value           = 255,255,255
time            = 2
under           = 1

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 7)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 12)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 15)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 7)
x               = (P2BodyDist X-100)
y               = (P2BodyDist Y-5)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 11)
x               = (P2BodyDist X+100)
y               = (P2BodyDist Y-5)

[State 500:     velset]
type            = velset
trigger1 = enemy,AnimElem = 16
x               = -30

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 16)
x               = (P2BodyDist X-100)
y               = (P2BodyDist Y-5)

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 90, 3
pausetime       = 10, 8
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -30, -90
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 55
ground.cornerpush.veloff = -4
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -15, -15
air.velocity    = -15, -15
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 90, 3
pausetime       = 8, 3
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -30, -90
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 55
ground.cornerpush.veloff = -4
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -15, 0
air.velocity    = -15, 0
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 12)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 90, 3
pausetime       = 10, 3
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -30, -90
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 55
ground.cornerpush.veloff = -4
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -13, -11
air.velocity    = -13, -11
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 100, 3
pausetime       = 9, 10
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -30, -90
hitsound        = S7, 29
guardsound      = S3, 0
ground.slidetime    = 55
ground.cornerpush.veloff = -4
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -19, 17
air.velocity    = -19, 17
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 10
air.fall        = 1
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 67
envshake.ampl   = -17
envshake.phase  = 5



[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
trigger2        = (AnimElem = 20)
trigger3        = (AnimElem = 21)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 23)
trigger6        = (AnimElem = 24)
y		        = 16

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 25)
y		        = 0


[State 52, 2]
type = PosSet
trigger1        = (AnimElem = 25)
y = 0

[State 40, ]
type = Explod
trigger1 = (AnimElem = 46)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 2
removetime = -2
sprpriority = 10
ownpal = 1

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 26)
value           = 1

[State 210, 1];降下
type = PlaySnd
trigger1 = (AnimElem = 19)
value = S211, 2

[State 210, 1];着地
type = PlaySnd
trigger1 = (AnimElem = 25)
value = S1, 2

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = time = 15
time            = 50
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 16
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;;;;;;;;;;;;;; メテオスマッシュＺ（投げモーション）
[Statedef 8732]
type            = S
movetype        = A
physics         = S
anim            = 8732
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     otoSound]
type            = PlaySnd
trigger1        = time = 1
value           = 545,54
channel         = 0
volume          = 255
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0
channel         = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 1,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 60,0
hitsound        = S7,22
p1stateno       = 8733
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------


; メテオスマッシュＺ（開始）
[Statedef 8733]
type            = S
movetype        = A
physics         = S
anim            = 8733
velset          = 0,0,0
ctrl            = 0
poweradd        = 250
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 40, ]
type = Explod
trigger1 = (AnimElem = 46)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 2
removetime = -2
sprpriority = 10
ownpal = 1

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 47)
value           = 1

[State 210, 1];降下
type = PlaySnd
trigger1 = (AnimElem = 39)
value = S211, 2

[State 210, 1];着地
type = PlaySnd
trigger1 = (AnimElem = 46)
value = S1, 2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 9
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 28
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 36
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = time = 15
time            = 124
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 22)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 26)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 35)

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 8)
pos             = 60,0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 36)
pos             = 60,-40

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 28)
pos             = 60,0



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 5)
x               = (P2BodyDist X+0)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 20)
x               = (P2BodyDist X+190)
y               = (P2BodyDist Y-10)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 23)
x               = (P2BodyDist X+0)
y               = (P2BodyDist Y-10)

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 21)
x		        = 20

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 27)
x               = (P2BodyDist X+0)
y               = (P2BodyDist Y-5)

[State 0:     VelSet]
type            = VelSet
triggerall = enemy,statetype =S || enemy,statetype =C
trigger1        = (AnimElem = 5)
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
triggerall = enemy,statetype =A
trigger1        = (AnimElem = 6)
x		        = 22
y		        = 0

[State 0:     VelSet]
type            = VelSet
triggerall = enemy,statetype =A
trigger1        = (AnimElem = 7)
x		        = 1
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 28)
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 30)
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 32)
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 33)
x		        = 22
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 34)
x		        = 35
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 35)
x		        = -88
y		        = 0


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 2
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 13
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1

[State 100, 1]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9111
pos = -10,10
Id = 9111
sprpriority = 3
removetime = -2
scale= 1,.5
Postype = p1
bindtime = 1
SuperMove = 1
ownpal = 1
facing          = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 36)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 39)
trigger2        = (AnimElem = 40)
trigger3        = (AnimElem = 41)
trigger4        = (AnimElem = 42)
trigger5        = (AnimElem = 43)
trigger6        = (AnimElem = 44)
trigger7        = (AnimElem = 45)
x		        = 0
y		        = 11.1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 46)
x		        = 0
y		        = 0

[State 52, 2]
type = PosSet
trigger1        = (AnimElem = 46)
y = 0

[State 210, 1];よ
type = PlaySnd
trigger1 = (AnimElem = 28 )
value = S1, 0
volume = 255
channel = -1


[State 210, 1];ふん
type = PlaySnd
trigger1 = (AnimElem = 31 )
value = S5, 255
volume = 255
channel = -1

[State 210, 1];ほれ
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 22)
value = S1, 1
volume = 255
channel = -1

[State 210, 1];とどめ
type = PlaySnd
trigger1 = (AnimElem = 35)
value = S55, 55
volume = 255
channel = -1

[State 40, ]
type = Explod
trigger1 = (AnimElem = 38)
anim = 9930
ID = 9930
pos = 30,-110
postype = p1
facing = 0
bindtime = -1
scale=1,1
removetime = -2
sprpriority = -1
ownpal = 1

[State 210, 1];いくぞ
type = PlaySnd
trigger1 = (AnimElem = 6)
value = S3, 54
volume = 255
channel = -1

[State 210, 1];瞬間移動音
type = PlaySnd
trigger1 = (AnimElem = 5)
trigger2 = (AnimElem = 19)
trigger3 = (AnimElem = 26)
trigger4 = (AnimElem = 33)
value = S7, 32
channel = -1

[State 210, 1];強音
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 22)
trigger3 = (AnimElem = 31)
value = S1, 6
channel = -1

[State 210, 1];弱音
type = PlaySnd
trigger1 = (AnimElem = 6)
trigger2 = (AnimElem = 8)
trigger3 = (AnimElem = 10)
value = S0, 9
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 5)
trigger2 = (AnimElem = 19)
trigger3 = (AnimElem = 26)
trigger4 = (AnimElem = 33)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 3
pausetime       = 10, 8
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -30, -90
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 55
ground.cornerpush.veloff = -4
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -28, 0
air.velocity    = -15, -5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 35, 1
pausetime       = 1, 7
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -50
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -13, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 35, 1
pausetime       = 1, 7
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -30
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 35, 1
pausetime       = 1, 7
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -50
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -11
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 2, >= 1 && AnimElem = 6, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1



[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 8, >= 1 && AnimElem = 13, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 13, >= 2 && AnimElem = 20, < 4
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 13)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 3
pausetime       = 10, 3
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -9, -16
air.velocity    = -9, -16
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 5



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 23)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 3
pausetime       = 10, 4
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -40, -82
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -3
air.velocity    = -15, -3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 29)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 50, 3
pausetime       = 5, 5
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S1, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 32)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 50, 3
pausetime       = 14, 5
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 28, -80
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -14, -6
air.velocity    = -14, -6
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 36)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 150, 3
pausetime       = 14, 13
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -16, 24
air.velocity    = -16, 24
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 15
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 30
envshake.freq   = 69
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;--------------------------------------------------------------------------------

;強パンチ
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 1
x		        = 1
y		        = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1, ifelse(random>500,0,ifelse(random> 500,0,0))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 13, 15
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -19, -70
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6
channel = 0

[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;バリア・インパクト
[Statedef 8981]
type = A
movetype = A
physics = S
anim = 8981
velset = 0,-2
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State -2, 5];回復
type = poweradd 
trigger1= AnimElem = 10
value = -3000

[State 800,1]
type = PalFX;点滅
triggerall		= (Time > 20) 
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
time = 1
add = 65,65,65
ignorehitpause = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 9)
time		    = 25
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 9)
time 			= 20
freq 			= 85
ampl   = -5
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 10) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x		        = -15
y		        = -4

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 7
x		        = 0
y		        = 0

[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 8
Anim = 9950
Pos = 0,-50
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9353
ID = 9353
pos = 0,20
postype = p1
facing = 1
bindtime = -1
removetime = 22
sprpriority = -1
ownpal = 1
scale = 1,1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 6
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 200, 50
pausetime       = 1, 4
guard.pausetime = 2, 12
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S0, 5
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -8
air.velocity    = -15, -7
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 15)
value           = SCA
time            = 30

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S211, 2
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 10)
value = S545, 5
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 9)
value = S3, 1
channel = -1


[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 9)
value = S12, 9
channel = 0





[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------------------------------------------------


;立ち弱キック
[Statedef 300]
type = S
movetype = A
physics = S
anim = 300
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 20, 1
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -50
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S0, 9
channel = 0

[State 300, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------


;立ち強キック
[Statedef 310]
type = S
movetype = A
physics = S
anim = 310
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1, ifelse(random>500,1,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 42, 3
pausetime       = 13, 15
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6


[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;スマッシュキック
[Statedef 8617]
type = A
movetype = A
physics = S
anim = 8617
velset = 0,0
ctrl = 0
poweradd = 120
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5


[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 5)
Trigger2 = (AnimElem = 6)
Y = -31
X = 55

[State 52, 2]
type = PosSet
trigger1        = (AnimElem = 26)
y = 0

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 26)
Y = 0
X = 0

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 7)
Y = -2
X = 16

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 8)
Trigger2 = (AnimElem = 9)
Trigger3 = (AnimElem = 10)
Trigger4 = (AnimElem = 11)
Trigger5 = (AnimElem = 12)
Trigger6 = (AnimElem = 13)
Trigger7 = (AnimElem = 14)
Trigger8 = (AnimElem = 15)
Y = -.18
X = 3

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 16)
Y = -1
X = 3

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 17)
Y = .2
X = 4

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 18)
Trigger2 = (AnimElem = 19)
Trigger3 = (AnimElem = 20)
Trigger4 = (AnimElem = 21)
Y = .7
X = 4

[State 242]
Type = VelSet
Trigger1 = (AnimElem = 22)
Trigger2 = (AnimElem = 23)
Trigger3 = (AnimElem = 24)
Trigger4 = (AnimElem = 25)
Y = 3
X = 4


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 18
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 5
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 1,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 40, ]
type = Explod
trigger1 = (AnimElem = 26)
anim = 9120
ID = 9120
pos = 20,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 16)
value = S1, 6
channel         = 6

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 7)
trigger2 = (AnimElem = 11)
value = S0, 1
channel         = 6

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 1,1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 10, 30
pausetime       = 5, 4
guard.pausetime = 10, 12
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -20, -40
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, -2.5
air.velocity    = -4, -2.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 70, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
snap = 60,-30

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
trigger2        = (AnimElem = 12)
attr            = S, NA
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 60, 30
pausetime       = 5, 7
guard.pausetime = 10, 12
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -20, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -1, -1.5
air.velocity    = -1, -1.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 70, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
snap = 50,-25

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = S, NA
hitflag         = MAF
guardflag       = M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 120, 30
pausetime       = 16, 7
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -4.5
air.velocity    = -15, -4.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 70, 3
givepower       = 20, 3
envshake.time   = 22
envshake.freq   = 64
envshake.ampl   = -16
envshake.phase  = 5
snap = 50,-35

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 211,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 310, 0]
type = ChangeState
trigger1 = (AnimElem = 30)
value = 0
ctrl = 1

;;スマッシュキック（弱）
[Statedef 8616]
type = S
movetype = A
physics = S
anim = 8616
velset = 0,0
ctrl = 0
poweradd = 100
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 211,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (AnimElem = 5)
time            = 35
length          = 16
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 1, ifelse(random>500,1,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 21)
value           = 1,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, NA
hitflag         = MAF
guardflag       = M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 270, 30
pausetime       = 12, 11
guard.pausetime = 15, 18
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -14, -5.6
air.velocity    = -14, -5.6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 70, 3
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 68
envshake.ampl   = -16
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S1, 6


[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;足だけで十分だぜ（弱）
[Statedef 6741]
type = A
movetype = A
physics = S
anim = 6741
velset = 0,0
ctrl = 0
poweradd = 180
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 40
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 11
Anim = 9429
Pos = 0,-80
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6

[State 106,3]
type=MakeDust
trigger1=time < 50
pos=-25,-2
spacing=4

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5


[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 11
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 18
x		        = 7
y		        = 0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
trigger2        = (AnimElem = 10)
trigger3        = (AnimElem = 15)
trigger4        = (AnimElem = 19)
trigger5        = (AnimElem = 23)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 3, 3
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5,0
air.velocity    = -3.4, -1.8
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 27)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 130, 12
pausetime       = 12, 10
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -28, -70
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -17, -5.5
air.velocity    = -17, -5.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 18
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 14)
trigger4        = (AnimElem = 18)
trigger5        = (AnimElem = 22)
value = S64, 2
channel         = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 26)
value = S64, 4
channel         = 3

[State 40, ]
type = Explod
trigger1 = (AnimElem = 26)
anim = 9120
ID = 9120
pos = 20,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S211, 2
channel         = -1

[State 210, 1];ほれ
type = PlaySnd
trigger1        = (AnimElem = 26)
value = S1, 1
channel         = -1
volume = 255


[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;足だけで十分だぜ
[Statedef 6749]
type = A
movetype = A
physics = S
anim = 6749
velset = 0,0
ctrl = 0
poweradd = 250
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 9
Anim = 9429
Pos = 0,-80
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6

[State 106,3]
type=MakeDust
trigger1=time < 50
pos=-25,-2
spacing=4

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5


[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 13
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
trigger10 = AnimElem = 24
trigger11 = AnimElem = 26
trigger12 = AnimElem = 28
trigger13 = AnimElem = 30
trigger14 = AnimElem = 32
x		        = 4
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 34
trigger2 = AnimElem = 36
trigger3 = AnimElem = 38
x		        = 6
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
trigger2        = (AnimElem = 10)
trigger3        = (AnimElem = 15)
trigger4        = (AnimElem = 19)
trigger5        = (AnimElem = 23)
trigger6        = (AnimElem = 27)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 35, 3
pausetime       = 4, 4
guard.pausetime = 9, 13
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,0
air.velocity    = -4.2, -1.7
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 31)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 100, 3
pausetime       = 18, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -14, -9
air.velocity    = -14, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 18
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 14)
trigger4        = (AnimElem = 18)
trigger5        = (AnimElem = 22)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 30)
value = S1, 6
channel         = 3

[State 40, ]
type = Explod
trigger1 = (AnimElem = 38)
anim = 9120
ID = 9120
pos = 20,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S211, 2
channel         = -1

[State 210, 1];着地
type = PlaySnd
trigger1        = (AnimElem = 32)
value = S211, 2
channel         = -1

[State 210, 1];
type = PlaySnd
trigger1        = (AnimElem = 3)
value = S74, 2
channel         = 0

[State 210, 1];着地
type = PlaySnd
trigger1        = (AnimElem = 38)
value = S1, 2
channel         = -1

[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;;;足だけで十分だぜ（空中
[Statedef 6742]
type = A
movetype = A
physics = S
anim = 6742
velset = 0,0
ctrl = 0
poweradd = 200
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 70
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 9
Anim = 9429
Pos = 0,-80
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
trigger10 = AnimElem = 24
trigger11 = AnimElem = 26
trigger12 = AnimElem = 28
trigger13 = AnimElem = 30
trigger14 = AnimElem = 32
x		        = 5
y		        = -1.3

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 34
trigger2 = AnimElem = 36
trigger3 = AnimElem = 38
trigger4 = AnimElem = 39
trigger5 = AnimElem = 40
trigger6 = AnimElem = 41
x		        = 5
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 4, 4
guard.pausetime = 9, 13
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-8
air.velocity    = -4.9, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
trigger2        = (AnimElem = 15)
trigger3        = (AnimElem = 19)
trigger4        = (AnimElem = 23)
trigger5        = (AnimElem = 27)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 4, 4
guard.pausetime = 9, 13
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -4.9, -2
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 31)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 80, 3
pausetime       = 18, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -14, -9
air.velocity    = -14, -7.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 18
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 14)
trigger4        = (AnimElem = 18)
trigger5        = (AnimElem = 22)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 30)
value = S1, 6
channel         = 3





[State 210, 1];音
type = PlaySnd
trigger1        = (AnimElem = 32)
value = S211, 2
channel         = -1

[State 210, 1];
type = PlaySnd
trigger1        = (AnimElem = 3)
value = S74, 2
channel         = 0



[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;;;;足だけで十分だぜ（空中・弱
[Statedef 6246]
type = A
movetype = A
physics = S
anim = 6246
velset = 0,0
ctrl = 0
poweradd = 150
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 60
length          = 13
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 2
Anim = 9429
Pos = 0,-80
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 7
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 19
x		        = 5
y		        = -.3


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 20
trigger2 = AnimElem = 21
trigger3 = AnimElem = 22
trigger4 = AnimElem = 23
trigger5 = AnimElem = 24
trigger6 = AnimElem = 25
trigger7 = AnimElem = 26
trigger8 = AnimElem = 27
x		        = 6
y		        = -1


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 28
trigger2 = AnimElem = 29
trigger3 = AnimElem = 31
trigger4 = AnimElem = 33
trigger5 = AnimElem = 35
x		        = 5.3
y		        = -1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 4, 4
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-8
air.velocity    = -4.6, -3.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
trigger2        = (AnimElem = 14)
trigger3        = (AnimElem = 18)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 4, 4
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -4.4, -1
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 7
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 22)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 35, 3
pausetime       = 5, 1
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -90
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -5, -4
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 8
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 24)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 120, 3
pausetime       = 16, 7
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S7, 29
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -15, 20
air.velocity    = -15, 20
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 30
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 70, 3
givepower       = 20, 3
envshake.time   = 18
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 13)
trigger4        = (AnimElem = 17)
value = S64, 3
channel         = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 21)
trigger2        = (AnimElem = 23)
value = S1, 6
channel         = 3


[State 210, 1];
type = PlaySnd
trigger1        = (AnimElem = 26)
value = S211, 2
channel         = -1

[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



;ライジングキック
[Statedef 7644]
type = S
movetype = A
physics = S
anim = 7644
velset = 0,0
ctrl = 0
poweradd = 40
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 40, ]
type = Explod
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 10)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 1
scale=1,1
removetime = -2
sprpriority = 10
ownpal = 1

[State 430,	AfterImage]
type 			= AfterImage
triggerall =var(25) = 0
trigger1 		= (AnimElem = 1)
time 			= 19
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 430,	AfterImage]
type 			= AfterImage
triggerall= var(25) = 1
trigger1 		= (AnimElem = 1)
time 			= 19
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 80,80,255
trans 		= add

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 8
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 10
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 14
x		        = 3
y		        = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 5, 255
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 11)
value           = 1,1
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 25, 3
pausetime       = 3, 2
guard.pausetime = 7, 12
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, -3
air.velocity    = -4, -3
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 30, 3
pausetime       = 17, 13
guard.pausetime = 17, 19
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 22
ground.cornerpush.veloff = -5
ground.hittime  = 22
guard.hittime   = 19
air.hittime     = 20
ground.velocity = -6, -15.5
air.velocity    = -6, -14.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 17
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 10)
value = S1, 6

[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ジャンプ（キック追い討ち用）
[Statedef 416]
type            = A
movetype        = I
physics         = N
anim            = 416
velset          = 0,0
ctrl            = 0
poweradd        = 50
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------



[State 100, 1]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9100
pos = -34,10
Id = 9100
sprpriority = 3
removetime = -2
scale= .9,.4
Postype = p1
SuperMove = 1
ownpal = 1
facing          = 0

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
Anim = 9400
Pos = -2,20
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.6

[State 40, ]
type = Explod
trigger1 = time=0
anim = 9120
ID = 9120
pos = 0,20
postype = p1
facing = -1
bindtime = 1
scale=1,1
removetime = -2
sprpriority = 10
ownpal = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 0, VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x               = 8
y               = -55

[State 0, VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x               = 7
y               = -28

[State 0, VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x               = 7
y               = -5

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 5)
value           = 1


[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 30
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 0,0,200
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 6,97

[State 0, ChangeState]
type            = ChangeState
trigger1        = AnimTime = 0
value           = 50
ctrl            = 1


;連続キック
[Statedef 5658]
type = S
movetype = A
physics = S
anim = 5658
velset = 0,0
ctrl = 0
poweradd = 10
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 430,	AfterImage]
type 			= AfterImage
trigger1 		= (AnimElem = 1)
time 			= 17
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
x		        = 4
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 25, 3
pausetime       = 7, 11
guard.pausetime = 10, 10
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, 0
air.velocity    = -7, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 8, 14
guard.pausetime = 13, 15
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -15, -60
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, 6
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 5)
trigger3 = (AnimElem = 8)
value = S1, 6
channel = 0


[State 310, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------

;-------------------------------------------------------------------------------------------------------------

;しゃがみ強キック
[Statedef 430]
type 			= C
movetype		= A
physics		= C
anim			= 430
ctrl			= 0
poweradd		= 0
juggle		= 2
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 430, HitDef]
type			= HitDef
trigger1		= (AnimElem = 2)
attr            = C, NA
hitflag         = MAFPD
guardflag       = L
animtype        = High
air.animtype    = High
priority        = 7,dodge
damage          = 50, 4
pausetime       = 12, 11
guard.pausetime = 7, 12
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -20
hitsound        = S64, 55
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.velocity   = -5, -4
ground.type = trip
air.velocity   = -4, -3
ground.hittime  = 22
guard.hittime   = 15
air.hittime     = 25
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -4, -2
down.hittime    = 0
down.bounce     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -22
envshake.phase  = 10

[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = S2, 1
channel = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 2
x		        = 30
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 3
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x		        = 1
y		        = 0

[State 430,	AfterImage]
type 			= AfterImage
triggerall= var(25) = 0
trigger1 		= (AnimElem = 1)
time 			= 17
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 430,	AfterImage]
type 			= AfterImage
triggerall= var(25) = 1
trigger1 		= (AnimElem = 1)
time 			= 17
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 80,80,255
trans 		= add

[State 430,End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1

;-------------------------------------------------------------------------------------------------------------

;=============================================================================================================
;=========================================

;---------------------------------------------------------------------------
;しゃがみ弱パン
[Statedef 400]
type 			= C
movetype		= A
physics		= C
anim			= 400
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 2
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 400, HitDef]
type			= HitDef
trigger1		= (AnimElem = 2)
attr			= C, NA
hitflag		= MAF
guardflag		= L
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage          = 18, 1
pausetime       = 6, 6
guard.pausetime = 6, 6
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -12, -50
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S2, 7



[State 400,End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------------------------------------------------------------------------


;しゃがみ強パン
[Statedef 410]
type = S
movetype= A
physics = S
anim = 410
;velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1, ifelse(random>500,0,ifelse(random> 500,55,55))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 410, 1]
type = HitDef
trigger1 = (AnimElem = 5)
attr = S, NA
hitflag = MAFP
guardflag = M
animtype = heavy
air.animtype = Back
priority = 7, Hit
damage          = 45, 3
pausetime       = 15, 14
guard.pausetime = 15, 27
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 20
ground.cornerpush.veloff = -5
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 25
ground.velocity = -10, 0
air.velocity    = -10, -7
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6

[State 410, 1]
type = velset
trigger1 = animelem = 5
x = 1

[State 410, 1]
type = velset
trigger1 = animelem = 2
x = 8

[State 410, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------

;しゃがみ弱キック
[Statedef 420]
type 			= C
movetype		= A
physics		= C
anim			= 420
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 2
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 420, HitDef]
type			= HitDef
trigger1		= (AnimElem = 2)
attr			= C, NA
hitflag		= MAF
guardflag		= L
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage          = 19, 1
pausetime       = 6, 6
guard.pausetime = 6, 6
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -15, -20
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 1
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S0, 9



[State 420,End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;-----------------------------------------------------------------------------------------------------------------------
===================================================================

;=============================AIR==============================================================================

;ジャンプ弱パン

[Statedef 500]
type 			= A
movetype		= A
physics		= A
anim			= 500
;velset		= 0,0
ctrl			= 0
poweradd		= 20
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2


[State 500:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 2, = 0)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage		= 20
pausetime		= 3,3
guard.pausetime	= 4,5
sparkno		= S9200
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 13
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S2, 7


[State 500, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1
;--------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------

;ジャンプふっ飛ばし

[Statedef 3363]
type 			= A
movetype		= A
physics		= A
anim			= 3363
;velset		= 0,0
ctrl			= 0
poweradd		= 100
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 20
length          = 8
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 100,100,100
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
y		        = -.8

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 1
x		        = 2


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x		        = 4
y		        = -1.5


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 9
x		        = 5
y		        = -2


[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 1, ifelse(random>500,1,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 510:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 4)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage		= 30
pausetime		= 5,4
guard.pausetime	= 11,12
sparkno		= S9200
guard.sparkno	= S9350
sparkxy		= -5,-44
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 18
ground.cornerpush.veloff = -1
ground.hittime  = 18
guard.hittime   = 10
air.hittime     = 20
ground.velocity = -6, -6
air.velocity    = -6, -6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 510:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 9)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage		= 100
pausetime		= 17,10
guard.pausetime	= 11,12
sparkno		= S9300
guard.sparkno	= S9350
sparkxy		= -5,-70
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 28
ground.cornerpush.veloff = -1
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 23
ground.velocity = -17, -10
air.velocity    = -17, -10
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 100, 3
givepower       = 20, 3
envshake.time   = 16
envshake.freq   = 94
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S1, 6

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S1, 6

[State 510, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;ジャンプ強パン

[Statedef 510]
type 			= A
movetype		= A
physics		= A
anim			= 510
;velset		= 0,0
ctrl			= 0
poweradd		= 20
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1, ifelse(random>500,0,ifelse(random> 500,0,0))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 510:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 2)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= Light
air.animtype	= Back
priority		= 7, Hit
damage		= 45
pausetime		= 12,13
guard.pausetime	= 11,12
sparkno		= S9300
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 18
ground.cornerpush.veloff = -1
ground.hittime  = 18
guard.hittime   = 10
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -3, 4
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6


[State 510, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;-------------------------------------------------------------------------------------------------------

;-------------------------------------------------------------------------------------------------------

;====================================================================================================================


;ジャンプ弱キック

[Statedef 560]
type 			= A
movetype		= A
physics		= A
anim			= 560
;velset		= 0,0
ctrl			= 0
poweradd		= 20
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2



[State 560:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 2, = 0)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= light
air.animtype	= light
priority		= 7, Hit
damage		= 21
pausetime		= 3,4
guard.pausetime	= 4,5
sparkno		= S9200
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 13
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -2, .7
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S0, 9


[State 560, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1
;------------------------------------------------------------------------------------------------------------------

;ジャンプ強キック

[Statedef 550]
type 			= A
movetype		= A
physics		= A
anim			= 550
;velset		= 0,0
ctrl			= 0
poweradd		= 20
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1, ifelse(random>500,1,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 550:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 5)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= heavy
air.animtype	= Back
priority		= 7, Hit
damage		= 45
pausetime		= 10,12
guard.pausetime	= 11,11
sparkno		= S9300
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 18
guard.hittime   = 10
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -5, 4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6


[State 550, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;叩き落とし

[Statedef 540]
type 			= A
movetype		= A
physics		= A
anim			= 540
;velset		= 0,0
ctrl			= 0
poweradd		= 70
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 40, ]
type = Explod
trigger1 = (AnimElem = 4)
anim = 9930
ID = 9930
pos = 20,-70
postype = p1
facing = 0
bindtime = -1
scale=1,1
removetime = -2
sprpriority = -1
ownpal = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 55,55
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 550:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 4)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= heavy
air.animtype	= Back
priority		= 7, Hit
damage		= 180
pausetime		= 14,9
guard.pausetime	= 11,13
sparkno		= S9300
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S7, 24
guardsound      = S3, 0
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 18
guard.hittime   = 10
air.hittime     = 20
ground.velocity = -14, 33
air.velocity    = -14, 33
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 35
air.fall        = -1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = -1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
y		        = -2

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
y		        = -2

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
y		        = -3


[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S1, 6


[State 550, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;蹴り落とし

[Statedef 982]
type 			= A
movetype		= A
physics		= A
anim			= 982
;velset		= 0,0
ctrl			= 0
poweradd		= 30
juggle		= 2
facep2          = 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 10
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 1, ifelse(random>500,1,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
y		        = -5

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
y		        = -6


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
y		        = -5

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
y		        = -4

[State 550:		HitDef]
type			= HitDef
trigger1		= (AnimElem = 3)
attr			= A, NA
hitflag		= MAF
guardflag		= HA
animtype		= heavy
air.animtype	= Back
priority		= 7, Hit
damage		= 80
pausetime		= 18,22
guard.pausetime	= 11,13
sparkno		= S9300
guard.sparkno	= S9350
sparkxy		= -5,-10
hitsound        = S7, 29
guardsound      = S3, 0
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 18
guard.hittime   = 10
air.hittime     = 20
ground.velocity = -1, 20
air.velocity    = -1, 20
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 5
air.fall        = -1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S1, 6


[State 550, End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;------------------------------------------------------------------------------------------------------------------
; ; ラッシュ１
[Statedef 991]
type            = A
movetype        = A
physics         = A
anim            = 991
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 3
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = 0
x = 7

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1



[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 22, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -33, -50
hitsound        = S64, 5
guardsound      = S2, 5
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4.7, 1.5
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 35, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

; ; ラッシュ２
[Statedef 993]
type            = A
movetype        = A
physics         = A
anim            = 993
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 3
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x = 4

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,2
volume          = 200
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 24, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -54
hitsound        = S64, 6
guardsound      = S2, 6
ground.slidetime    = 15
ground.hittime  = 15
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4.3, 1.5
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------


;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1


; ; ラッシュ３
[Statedef 999]
type            = A
movetype        = A
physics         = A
anim            = 999
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 3
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)	 
y = 0
x = 4

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,3
volume          = 200
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 21, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -32, -34
hitsound        = S64, 7
guardsound      = S2, 6
ground.slidetime    = 13
ground.hittime  = 15
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4.4, 0.7
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------





;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;; ラッシュ４
[Statedef 995]
type            = A
movetype        = A
physics         = A
anim            = 995
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 3
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x = 4.2

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1



[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,4
volume          = 200
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -32, -51
hitsound        = S64, 8
guardsound      = S2, 6
ground.slidetime    = 15
ground.hittime  = 15
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -7, -1.5
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2



;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

; 　回避　前
[Statedef 700]
type    = S
physics = S
ctrl = 0
anim = 700
sprpriority = -1

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 10
length          = 30
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 10,10,60
palpostbright   = 0,0,0
paladd          = 10,10,30
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 23

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 105, land]
type = PlaySnd
trigger1 = animelem = 1
value = 7, 28
volume = 255
channel = -1

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 1)
x = 20

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 2)
trigger2 = (animelem = 3)
trigger3 = (animelem = 4)
trigger4 = (animelem = 5)
x = 7

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 6)
x = 5

[State 106, 4]
type = ChangeState
trigger1 = (AnimTime = 0)
value = 0
ctrl = 1

; 　回避 うしろ
[Statedef 744]
type    = S
physics = S
ctrl = 0
anim = 744
sprpriority = -1

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 10
length          = 30
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 10,10,60
palpostbright   = 0,0,0
paladd          = 10,10,30
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 23

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 105, land]
type = PlaySnd
trigger1 = animelem = 1
value = 7, 28
volume = 255
channel = -1

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 1)
x = -20

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 2)
trigger2 = (animelem = 3)
trigger3 = (animelem = 4)
trigger4 = (animelem = 5)
x = -7

[State 1707: 4]
type = VelSet
trigger1 = (animelem = 6)
x = -5

[State 106, 4]
type = ChangeState
trigger1 = (AnimTime = 0)
value = 0
ctrl = 1

; 超速移動　前
[Statedef 521]
type            = S
movetype        = A
physics         = S
anim            = 521
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 100, 1]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9111
pos = -10,10
Id = 9111
sprpriority = 3
removetime = -2
scale= 1,.5
Postype = p1
bindtime = 1
SuperMove = 1
ownpal = 1
facing          = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4, 1

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 82
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1



[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = -1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0


;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 12
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 0,0,200
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

; 超速移動　後ろ
[Statedef 522]
type            = S
movetype        = A
physics         = S
anim            = 522
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 100, 1]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9111
pos = 10,0
Id = 9111
sprpriority = 3
removetime = -2
scale= 1,.5
Postype = p1
bindtime = 1
SuperMove = 1
ownpal = 1
facing          = -1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4, 1



[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = -82
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1



[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = -1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 12
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 0,0,200
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

; 回避
[Statedef 545]
type            = S
movetype        = A
physics         = S
anim            = 545
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (animelem = 6)
value           = 1

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 27


[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 105, land]
type = PlaySnd
trigger1 = animelem = 1
value = 7, 28
volume = 255
channel = -1


;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 5
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 100,100,100
palcontrast     = 0,0,100
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

;瞬間移動
[Statedef 556]
type            = S
movetype        = A
physics         = S
anim            = 556
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 105, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 12
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     Turn]
type            = Turn
trigger1        = (time = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
x               = (P2BodyDist X+25)


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,34
volume          = 155
channel         = -1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 15
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------------------------------------------------------------------------
; 超速移動　前(空)
[Statedef 911]
type            = A
movetype        = A
physics         = S
anim            = 911
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 1
y		        = -3


[State 5005:     Turn]
type            = Turn
trigger1        = (time = 11)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 105
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1



;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 12
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1


; 超速移動　前(空)追い打ち用
[Statedef 1864]
type            = A
movetype        = A
physics         = S
anim            = 1864
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------



[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 1
y		        = -3


[State 5005:     Turn]
type            = Turn
trigger1        = (time = 11)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 105
y		        = -15

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 3,54
volume          = 155
channel         = -1


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 12
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1

; 超速移動　前(空)追い打ち用・ほれほれ用
[Statedef 1861]
type            = A
movetype        = A
physics         = S
anim            = 1864
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------



[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 1
y		        = -1.5


[State 5005:     Turn]
type            = Turn
trigger1        = (time = 11)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 105
y		        = -8

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     TeleportSND];いくぞ
type            = PlaySnd
trigger1        = (Time = 0)
value           = 3,54
volume          = 155
channel         = -1


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 12
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1


; 超速移動　後ろ（空中）
[Statedef 523]
type            = A
movetype        = A
physics         = S
anim            = 523
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = -55
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,25
volume          = 155
channel         = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 10
length          = 18
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 3
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1

; 瞬間移動　空
[Statedef 5659]
type            = A
movetype        = A
physics         = S
anim            = 5659
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 5
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 5
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)


[state 5005:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 15

[State 105, 3]
type = CtrlSet
trigger1 = (AnimElem = 3)
value = 1


[State 105, 3]
type = Veladd
trigger1 = (AnimElem = 3)
y = -2

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 3)
y = 0

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 4)
y = -1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X+65)
y               = (P2BodyDist Y-15)


;---------------
;Sound
;---------------

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,32
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 5005:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 10
length          = 25
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------


[State 5005:     End]
type            = ChangeState
trigger1        = (animelem = 6)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; 投げ１
[Statedef 622]
type            = S
movetype        = A
physics         = S
anim            = 622
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = time = 1
value           = 545,54
channel         = 0
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0
channel         = 0

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 1,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 40,0
hitsound        = S7,22
p1stateno       = 623
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------


; 投げ１始め
[Statedef 623]
type            = S
movetype        = A
physics         = S
anim            = 623
velset          = 0,0,0
ctrl            = 0
poweradd        = 150
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------


[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 0, 9
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 64, 4
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 6)
value           = 64, 3
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 70,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 13, 1
pausetime       = 1, 4
guard.pausetime = 1, 4
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S64, 8
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -.5, 0
air.velocity    = -.5, -.2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 13, 1
pausetime       = 1, 4
guard.pausetime = 1, 4
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -60
hitsound        = S64, 7
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -.5, 0
air.velocity    = -.5, -.2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 13, 1
pausetime       = 2, 4
guard.pausetime = 2, 4
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -20
hitsound        = S64, 5
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -.5, 0
air.velocity    = -.5, -.2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 13, 1
pausetime       = 1, 4
guard.pausetime = 1, 4
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = 8, -60
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -.7, 0
air.velocity    = -.7, -.2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(9) = 0
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 18
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(9) = 1
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 30
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(9) = 1
triggerall = var(25) = 1
trigger1        = (!Time)
time            = 60
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 100,100,250
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     ChangeState]
type            = ChangeState
triggerall = var(9) = 0
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!AnimTime)
value           = 655
ctrl		    = 0

[State 0:     ChangeState]
type            = ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = time = 30
value           = 655
ctrl		    = 0

[State 0:     VelSet]
type            = VelSet
triggerall = var(9) = 1
triggerall = var(25) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
x		        = 1
y		        = 0


[State 0:     ChangeState]
type            = ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 1
triggerall = var(22) = 0
trigger1        = time = 60
value           = 655
ctrl		    = 0

[State 0:     ChangeState]
type            = ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 1
triggerall = var(22) = 1
trigger1        = time = 80
value           = 655
ctrl		    = 0

; 投げ１とどめ
[Statedef 655]
type            = S
movetype        = A
physics         = S
anim            = 655
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(9) = 1
triggerall = var(25) = 1
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 100,100,250
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 50, 3
pausetime       = 5, 10
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -50
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -1, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 6
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3


[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 7
x		        = -20
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 8
x		        = -7
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 9
x		        = -2
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 100, 3
pausetime       = 10, 9
guard.pausetime = 14, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -90
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 22
ground.cornerpush.veloff = -10
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -17, -7
air.velocity    = -17, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S1, 6

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S55, 555
channel = -1


[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;とどめエフェクト
[Statedef 1122]
type            = S
movetype        = I
physics	        = N
velset          = 0,0,0
ctrl            = 0



[State 0, ]
type            = AssertSpecial
trigger1        = (1)
flag            = Noshadow
flag2           = Invisible
ignorehitpause  = 1

[State 0:     super effect]
type            = AssertSpecial
triggerall = roundstate != 2
trigger1        = time < 1500
flag           = NoBarDisplay




[State 0, ]
type            = AllPalFX
triggerall = roundstate != 2
trigger1        = time =[0,40]
add             = (255-((time)*6)),(-255+((time)*6)),(-255+((time)*6))
mul             = (80+((time)*4)),(0+((time)*4)),(0+((time)*4))
time            = 1
ignorehitpause  = 1

[State -1:		BGPalFX]
type			= BGPalFX
triggerall = roundstate != 2
trigger1 		= time = 0
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1

[State 0:     PlaySND]
type            = PlaySnd
triggerall = roundstate != 2
trigger1        = (Time = 0)
value           = 1122, 0
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0




;---------------------------------------------------------------------------
; 投げ２
[Statedef 627]
type            = S
movetype        = A
physics         = S
anim            = 627
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     otoSound]
type            = PlaySnd
trigger1        = time = 1
value           = 545,54
channel         = 0
volume          = 255
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0
channel         = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
triggerall = var(25) = 0
triggerall = var(22) = 0
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 8,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 40,0
hitsound        = S7,22
p1stateno       = 629
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------


; 投げ２始め
[Statedef 629]
type            = A
movetype        = A
physics         = S
anim            = 629
velset          = 0,0,0
ctrl            = 0
poweradd        = 250
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1, 1
channel = -1
volume = 255

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 9)
trigger2       = (animelem = 10)
trigger3        = (animelem = 11)
trigger4        = (animelem = 12)
trigger5        = (animelem = 13)
trigger6        = (animelem = 14)
trigger7        = (animelem = 15)
trigger8        = (animelem = 16)
trigger9        = (animelem = 17)
trigger10        = (animelem = 18)
trigger11        = (animelem = 19)
trigger12        = (animelem = 20)
trigger13        = (animelem = 21)
x		        = -3
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 10)
x		        = -3
y		        = 0

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 24)


[State 404:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 35
length          = 12
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 100,100,100
palpostbright   = 10,10,20
paladd          = 10,10,20
palmul          = .35,.35,.35
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 8)
x               = (P2BodyDist X+90)


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3) 
value           = 255,255,255
time            = 1
under           = 1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 3) 
value           = 77,567
volume          = 155
channel         = -1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 150, 3
pausetime       = 11, 10
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -90
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 22
ground.cornerpush.veloff = 5
air.cornerpush.veloff = 55
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = 17, -9.5
air.velocity    = 17, -9.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 9)
value = S1, 6

[State 40, ]
type = Explod
trigger1 = (AnimElem = 24)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地
type = PlaySnd
trigger1 = (AnimElem = 24)
value = S1, 2


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 50, 3
pausetime       = 6, 1
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -70
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 44
ground.cornerpush.veloff = 25
air.cornerpush.veloff = 25
ground.hittime  = 44
guard.hittime   = 44
air.hittime     = 20
ground.velocity = -18, 0
air.velocity    = -7, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 2
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3




[State 100, 1]
type = Explod
trigger1 = (AnimElem = 10)
Anim = 9100
pos = 34,10
Id = 9100
sprpriority = 3
removetime = -2
scale= .9,.4
Postype = p1
SuperMove = 1
ownpal = 1
facing          = -1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 7)
pos             = 5,-3



[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = -5,0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 10)
pos             = -31,-15

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; サイヤクラッシュ
[Statedef 6750]
type            = S
movetype        = A
physics         = S
anim            = 6750
ctrl            = 0
poweradd        = 70
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 2
time 			= 5
freq 			= 80
ampl   = 7
phase  = 1


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 13
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 45
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 7)
x		        = 11
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 11)
x		        = 13
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 16)
x		        = 2
y		        = 0

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 20
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0, ]
type            = MakeDust
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,Hit
damage          = 0, 
pausetime       = 0, 1
guard.pausetime = 12, 15
sparkno = S93500
guard.sparkno	= S93550
sparkxy	 = 4, -0
hitsound        = S2, 800
guardsound      = S3, 231
ground.slidetime    = 27
ground.hittime  = 27
guard.hittime   = 27
air.hittime     = 24
ground.velocity = -10,0
air.velocity    = -15,-.1
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 0
envshake.freq   = 0
envshake.ampl   = 0
envshake.phase  = 0
snap = 50

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 90, 15
pausetime       = 4, 2
guard.pausetime = 12, 15
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 4, -70
hitsound        = S2, 8
guardsound      = S3, 0 
ground.slidetime    = 27
ground.hittime  = 27
guard.hittime   = 27
air.hittime     = 24
ground.velocity = -15,0
air.velocity    = -15,-.4
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10
snap = 60

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 90, 15
pausetime       = 4, 5
guard.pausetime = 12, 15
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -3, -70
hitsound        = S2, 8
guardsound      = S3, 0 
ground.slidetime    = 27
ground.hittime  = 27
guard.hittime   = 27
air.hittime     = 24
ground.velocity = -2,0
air.velocity    = -7,-.9
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10
snap = 60

;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 13)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 4,Hit
damage          = 110, 15
pausetime       = 15, 7
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S7, 27
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -15,-7
air.velocity    = -15,-6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 3
givepower       = 20, 3
envshake.time   = 26
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 2, 1
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 7)
trigger2        = (animelem = 12)
value           = 2, 5
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 64, 1
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd;掛け声
trigger1        = (animelem = 3)
value           = 55, 55
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (animelem = 19)
value           = 0
ctrl		    = 1


; サイヤクラッシュ（弱）
[Statedef 4628]
type            = S
movetype        = A
physics         = S
anim            = 4628
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 2
time 			= 5
freq 			= 80
ampl   = 7
phase  = 1


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5


[State 100, 1]
type = Explod
trigger1 = !time
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 40
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 8)
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 9)
x		        = 1
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 10)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 20
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0, ]
type            = MakeDust
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 130, 15
pausetime       = 15, 10
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S21, 211
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -16,-6.4
air.velocity    = -16,-6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 50


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 2, 1
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 2, 5
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 64, 1
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd;掛け声
trigger1        = (animelem = 2)
value           = 1, 1
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (animelem = 11)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 気合砲
[Statedef 7322]
type            = S
movetype        = A
physics         = S
anim            = 7322
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 3
supermove       = 1
pausemovetime   = 10

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x		        = -2
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = -1
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1 		= (animelem = 14)
trigger2 		= (animelem = 15)
trigger3 		= (animelem = 16)
trigger4 		= (animelem = 17)
trigger5 		= (animelem = 18)
trigger6 		= (animelem = 19)
trigger7 		= (animelem = 20)
trigger8 		= (animelem = 21)
value           = 255,255,255
time            = 1
under           = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 14
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 100
SuperMovetime = 100
ownpal = 1
scale = 2, 1.2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 13
Anim = 9420
Pos = 0,-45
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7
SuperMove = 100
SuperMovetime = 100



[State 9500:	HitDef]
type			= HitDef
trigger1 		= (animelem = 14)
trigger2 		= (animelem = 15)
trigger3 		= (animelem = 16)
trigger4 		= (animelem = 17)
trigger5 		= (animelem = 18)
trigger6 		= (animelem = 19)
trigger7 		= (animelem = 20)
trigger8 		= (animelem = 21)
attr			= S, NP
hitflag		= MAFPD
guardflag		= 
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 5,5
pausetime		= 0,1
guard.pausetime	= 1,4
sparkno = S92300
guard.sparkno	= S92350
sparkxy	 = -25, -26
hitsound		= S0,54
guardsound		= S0,94
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -26,-8.7
guard.velocity	= -26
air.velocity	= -26,-7.5
fall = 1
air,fall = 1
airguard.velocity	= -26,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -26,-12
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0
kill = 0

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 100

;---------------
;Sound/Effects
;---------------

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 85
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 90
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 90
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 53, 2
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 14)
value           = 7, 55
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0


[State 0:    ChangeState]
type            = ChangeState
trigger1        = (animelem = 22)
value           = 0
ctrl		    = 1



; 残像拳
[Statedef 8109]
type            = S
movetype        = A
physics         = S
anim            = 8109
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
supermove       = 1
pausemovetime   = 10

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 75
length          = 12
palcolor        = 156
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 0,0,270
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 5)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 4)
x               = (P2BodyDist X+30)

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = -9
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
x		        = -8
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 7)
x		        = -7
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 8)
x		        = -6
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 9)
x		        = -6
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 10)
x		        = -4
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 11)
x		        = -3
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 12)
x		        = -2
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 13)
x		        = -1
y		        = 0

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 100

;---------------
;Sound/Effects
;---------------

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 93
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 95
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 95
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 4)
value           = 7, 34
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 8, 778
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0


[State 0:    ChangeState]
type            = ChangeState
trigger1        = (animelem = 22)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; 本気！！
[Statedef 2976]
type            = S
movetype        = A
physics         = S
anim            = 2976
velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2

[State life, 2];本気
type = varset
trigger1 = AnimElem = 3
var(9) = 1

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 4
value = 500



[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 11)
value           = SCA
time            = 10

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 	4)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 2
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S3, 6
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -10, -6
air.velocity    = -10, -6
air.juggle      = 0
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -6, -9
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 3)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

;ring
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.1, 1.1

[State 191, 4]
type = Explod
trigger1 = AnimElem = 3
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1

[State 191, 4]
type = Explod
trigger1 = AnimElem = 3
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 2) 
value           = 54,545
volume          = 255
channel         = 0



[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 3) 
value           = 3,1
volume          = 255
channel         = -1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.8, 1.1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 3
Anim = 9420
Pos = 0,-45
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6

[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .7,.7

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.7,1.7



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 5) 
value           = 255,255,255
time            = 3
under           = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; 瞬間移動　空（地面へ行く）
[Statedef 3961]
type            = S
movetype        = A
physics         = S
anim            = 3961
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 40, ]
type = Explod
trigger1 = (AnimElem = 3)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 2
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 2
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 330,330
volume          = 155
channel         = -1

[state 5005:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 25

[State 105, 3]
type = CtrlSet
trigger1 = (Time = 3)
value = 1


[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-55)


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 2)
x		        = 2
y		        = 0

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 7,32
volume          = 155
channel         = -1

[State 5005:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 10
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 0,0
palcontrast     = 0,0,270
palpostbright   = 0,0,0
paladd          = 0,0,0
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0



[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; ベジットイリュージョン（打撃当て身・キックボタン）
[Statedef 7989]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 30
velset = 0,0
anim = 7989
sprpriority = 1
ctrl = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 210, 1];構え音
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S665, 6
channel         = 0



;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 2
trigger2= animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
attr = S, ST
reversal.attr = SCA, NA, SA, HA
hitflag = MAFPD
priority = 7, miss
pausetime = 1,10
sparkno = s7002
hitsound = S7,32
p2facing = 1
p1stateno = 7999
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動
[Statedef 7999]
type            = S
movetype        = A
physics         = S
anim            = 7999
;velset          = 0,0,0
ctrl            = 0
poweradd        = 300
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 12
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 1
ignorehitpause  = 0
persistent      = 4

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 0,0

[State 500:     Turn]
type            = Turn
trigger1        = (time = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
x               = (P2BodyDist X+25)

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 9)
trigger2        = (AnimElem = 17)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 23)
pos             = 50,0

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 8)
trigger2        = (AnimElem = 16)
trigger3        = (AnimElem = 19)
trigger4        = (AnimElem = 22)
value = S1, 6
channel         = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 8)
value = S1, 0
channel         = 0

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 19)
value = S5, 255
channel         = 0

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 22)
value = S1, 1
channel         = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 23
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 13
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 52, 1]
type = VelSet
trigger1        = (AnimElem = 8)
trigger2        = (AnimElem = 16)
trigger3        = (AnimElem = 19)
x = 4



[State 0, ]
type            = MakeDust
trigger1        = time = 10
pos             = 0,0
postype             = p1
spacing         = 2
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = MakeDust
trigger1        = time = 20
pos             = 0,0
postype             = p2
spacing         = 2
ignorehitpause  = 0
persistent      = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 60, 3
pausetime       = 2, 5
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -18, -70
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 33
ground.cornerpush.veloff = -2
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
trigger2        = (AnimElem = 20)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 2, 5
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -28, -80
hitsound        = S2, 8
guardsound      = S3, 0
ground.slidetime    = 33
ground.cornerpush.veloff = -2
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 23)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 3
pausetime       = 15, 9
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -8, -50
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 40
ground.cornerpush.veloff = -20
ground.hittime  = 43
guard.hittime   = 43
air.hittime     = 43
ground.velocity = -22, 0
air.velocity    = -22, -13
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 23
envshake.freq   = 64
envshake.ampl   = -17
envshake.phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 3
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 10
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 10
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 50
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1


;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;相手の攻撃避けまくって重い一撃を入れてふっ飛ばす。;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 圧倒的な差;;;;;;;;;;;;;;;;;;;;
[Statedef 9310]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 30
velset = 0,0
anim = 7923
facep2          = 1
sprpriority = 1
ctrl = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 210, 1];構え音
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S665, 6
channel         = 0

[State 1700, 0];敵がオレ式ベジットじゃない場合
type = ReversalDef
triggerall = P2name != "Goku_Super4"
trigger1 = animelem = 2
trigger2= animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
attr = S, ST
reversal.attr = SCA, NA, SA, HA
hitflag = MAFPD
priority = 7, miss
pausetime = 1,10
sparkno = s7002
hitsound = S1,6
p2stateno = 9311;攻撃しまくるモーション
p1stateno = 9312;攻撃避けまくるモーション
numhits         = 0


[State 1700, 0];敵がオレ式ベジットの場合
type = ReversalDef
triggerall = P2name = "Goku_Super4"
trigger1 = animelem = 2
trigger2= animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
attr = S, ST
reversal.attr = SCA, NA, SA, HA
hitflag = MAFPD
priority = 7, miss
pausetime = 1,15
sparkno = s73332
hitsound = S3,0
p2stateno = 15251;超４
p1stateno = 11222;うちあい
numhits         = 0

;---------------------[当身判定]

[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動
[Statedef 9312]
type            = S
movetype        = A
physics         = S
anim            = 9312
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     Bind]
type            = TargetBind
trigger1        = time < 300
pos             = 70,0

[State 0:     AfterImage];攻撃避けまくり
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = time = 1
time            = 200
length          = 8
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 106,3]
type=MakeDust
trigger1=time < 200
pos= 5,-2
spacing=4




[State 52, 1]
type = VelSet
trigger1 = (1)
x = -1.5



[State 210, 1];そんな技が通用すると思っているのか？
type = PlaySnd
trigger1        = time = 5
value           = 13,53
channel         = -1
volume = 255

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = time = 150
trigger2 = time = 20
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 210, 1];強振り音
type = PlaySnd
triggerall        = (time <220)
trigger1        = ((time >15) && (timemod = 13,0)) 
value = S64, 2
channel         = -1


[State 210, 1];強振り音
type = PlaySnd
triggerall        = (time <220)
trigger1        = ((time >11) && (timemod = 25,0)) 
value = S64, 1
channel         = -1

[State 210, 1];強振り音
type = PlaySnd
triggerall        = (time <220)
trigger1        = ((time >11) && (timemod = 25,0)) 
value = S64, 1
channel         = -1


[State 210, 1];強振り音
type = PlaySnd
triggerall        = (time <220)
trigger1        = ((time >1) && (timemod = 22,0)) 
value = S64, 3
channel         = -1


[State 210, 1];強振り音
type = PlaySnd
triggerall        = (time <220)
trigger1        = ((time >6) && (timemod = 20,0)) 
value = S64, 4
channel         = -1


[state a]
type = changestate
triggerall = Target,stateno  != 9311
trigger1 = time = 2
value = 744
ctrl = 0


;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = time = 185
value           = 9315
ctrl		    = 0



; 避けた後
[Statedef 9315]
type            = S
movetype        = A
physics         = S
anim            = 9315
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 5
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5


[State 100, 1]
type = Explod
trigger1 = AnimElem = 5
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = A, NA
hitflag         = MAFP
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 300, 12
pausetime       = 12, 10
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -28, -70
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -19, -6.5
air.velocity    = -19, -6.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5
snap = 50

[State 52, 1]
type = VelSet
trigger1 = (AnimElem = 5)
x = 7

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 避けた後;相手が超４
[Statedef 9119]
type            = A
movetype        = A
physics         = S
anim            = 9119
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 5)
value           = 255,255,255
time            = 4
under           = 1


[State 210, 1];うちあい勝ち音
type = PlaySnd
trigger1        = (AnimElem = 4)
value           = 55,555
channel         = 5

[State 100, 1]
type = Explod
trigger1 = AnimElem = 5
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.5,.5
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = A, NA
hitflag         = MAFP
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 180, 12
pausetime       = 15, 18
guard.pausetime = 11, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -28, -70
hitsound        = S7, 29
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -19, -6.5
air.velocity    = -19, -6.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 71
envshake.ampl   = -15
envshake.phase  = 5
snap = 50

[State 52, 1]
type = VelSet
trigger1 = (AnimElem = 5)
x = 7

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = (AnimElem = 4)
anim = 9850
ID = 9850
pos = 15,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.3,2.3
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = (AnimElem = 4)
anim = 9850
ID = 9850
pos = 15,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.5,2.5
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

; 当身発動;相手が超４(打ちあい)
[Statedef 11222]
type            = S
movetype        = A
physics         = S
anim            = 11222
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 1) && ((GameTime%5) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     AfterImage]
type            = AfterImage
trigger1        = time = 1
time            = 1
length          = 1
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = time = 1
time 			= 20
freq 			= 65
ampl   = -45
phase  = 5

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 1
Anim = 9400
Pos = 15,0
Id = 9400
sprpriority = -1
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3, 1.2


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = ((time >1) && (timemod = 23,0)) 
value           = 255,255,255
time            = 2
under           = 1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 200
flag           = NoBarDisplay

[State 800,	PowerAdd]
type			= PowerAdd
trigger1		= (Time > 20)
value			= 16

[State 0:     Bind]
type            = TargetBind
trigger1        = time < 300
pos             = 90,2

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 4

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1        = time = 1
anim = 9850
ID = 9850
pos = 25,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.2,2.2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1        = ((time >1) && (timemod = 40,0)) 
anim = 9850
ID = 9850
pos = 35,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.4,2.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 970, 3]
type = Explod
trigger1        = ((time >1) && (timemod = 20,0)) 
anim = 9850
ID = 9850
pos = 35,-50
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 20,0)) 
Anim = 9428
Pos = 20,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 1
Anim = 9950
Pos = 0,-50
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = 5
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 5,5

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 28,0)) 
Anim = 9428
Pos = 30,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 6,0)) 
Anim = 9200
Pos = 30,-55
Id = 9200
sprpriority = 4
removeongethit = 1
removetime = 4
bindtime = -1
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 1
scale = 1,1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 9,0)) 
Anim = 9300
Pos = 40,-55
Id = 9300
sprpriority = 4
removeongethit = 1
removetime = 4
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1,1


[State 52, 1]
type = VelSet
trigger1        = time > 15
trigger1 = (1)
y = -1.3



[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 5
value           = 754,2
channel         = 2
volume = 255

[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 40
value           = 754,2
channel         = 2
volume = 255

[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 70
value           = 754,2
channel         = 2
volume = 255


[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 5
value           = 754,2
channel         = -1

[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 40
value           = 754,2
channel         = -1

[State 210, 1];うちあい音
type = PlaySnd
trigger1        = time = 70
value           = 754,2
channel         = -1


;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = time = 155
value           = 9119
ctrl		    = 0

;当て身成功時、攻撃しまくる相手
[Statedef 9311]
type = S
movetype = H
physics = S
anim = 9311
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 52, 1]
type = VelSet
trigger1 = (1)
x = 1.5

[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 170, 無敵]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 180

[State 106,3]
type=MakeDust
triggerall=time > 20
trigger1= (1)
pos=-25,-2
spacing=4


[State 106,3]
type=MakeDust
trigger1=time < 190
pos=-45,-2
spacing=4

[State 0:     AfterImage]
type            = AfterImage
trigger1        = time = 1
time            = 190
length          = 5
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >1) && (timemod = 10,0)) 
value = 210
ctrl = 0

[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >5) && (timemod = 20,0)) 
value = 200
ctrl = 0

[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >15) && (timemod = 29,0)) 
value = 300
ctrl = 0

[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >20) && (timemod = 39,0)) 
value = 310
ctrl = 0

[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >25) && (timemod = 49,0)) 
value = 400
ctrl = 0

[State 200, 0]
type = Changeanim
triggerall        = (time <190)
trigger1        = ((time >30) && (timemod = 55,0)) 
value = 410
ctrl = 0



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
y               = (P2BodyDist y+0)


[State 200,1]
type = SelfState
trigger1 = time = 215
value = 5300 
ctrl		    = 1

[State -2, 5]
type = poweradd 
trigger1= (GameTime%3)=0 
value = -5

[State 200, 0]
type = Changeanim
trigger1       = time = 185
value = 5300
ctrl = 0

[State 0:    ChangeState]
type            = ChangeState
trigger1        = time = 220
value           = 5300
ctrl		    = 1





;相手のステート超４（打ちあい）
[Statedef 15251]
type = S
movetype = H
physics = S
anim = 15251
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 800,	PowerAdd]
type			= PowerAdd
trigger1		= (Time > 20)
value			= 10

[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 170, 無敵]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 140



[State 0:     AfterImage]
type            = AfterImage
trigger1        = time = 1
time            = 190
length          = 5
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:    ChangeState]
type            = ChangeState
trigger1        = time = 220
value           = 5300
ctrl		    = 1


; 連続衝撃波（飛び道具当て身）
[Statedef 7923]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 9310;さて・・のモーション
sprpriority = 1
ctrl = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 210, 1];さて・・
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S64, 54
channel         = 0



;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 2
trigger2= animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
attr = S, ST
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
hitflag = MAFPD
priority = 7, miss
pausetime = 1,10
sparkno = s7002
hitsound = S7,32
p2facing = 1
p1stateno = 7924
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動;飛び道具
[Statedef 7924]
type            = S
movetype        = A
physics         = S
anim            = 7924
;velset          = 0,0,0
ctrl            = 0
poweradd        = -500
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 10
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 10
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 2)
pos             = 90,0


[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 3)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 4)
x               = (P2BodyDist X-60)

[State 210, 1];音
type = PlaySnd
trigger1 = movecontact = 1
value = S3, 6
channel = 0


[State 210, 1];無駄なんだよ
type = PlaySnd
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1 = AnimElem = 4
value = S1400,0
channel = -1
volume = 255

[State 210, 1];なにやってんだ
type = PlaySnd
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = AnimElem = 4
value = S52,4
channel = -1
volume = 255

[State 210, 1];とろとろやってんじゃねーよ
type = PlaySnd
triggerall = var(9) = 1
triggerall = var(25) = 1
trigger1 = AnimElem = 4
value = S52,2
channel = -1
volume = 255

[State 210, 1];音
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
value = S7, 35
channel = 1

;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
anim = 9550
ID = 9550
pos = 60,-85
postype = p1
facing = 1
bindtime = -1
scale = 1,1.3
removetime = -2
sprpriority = 4
ownpal = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 5
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.2


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = time = 30
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, NT
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 1, 5
guard.pausetime = 15, 20
sparkno = S9222
guard.sparkno	= S9222
sparkxy	 = -18, -70
hitsound        = S23, 6
guardsound      = S23, 0
ground.slidetime    = 33
ground.cornerpush.veloff = -2
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 20
ground.velocity = -11, 0
air.velocity    = -10, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, NT
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 1, 5
guard.pausetime = 15, 20
sparkno = S9222
guard.sparkno	= S9222
sparkxy	 = -18, -70
hitsound        = S23, 6
guardsound      = S23, 0
ground.slidetime    = 33
ground.cornerpush.veloff = -2
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 20
ground.velocity = -11, 0
air.velocity    = -10, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
value           = 155,155,155
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 10
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 10
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 50
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------

[State 0:    ChangeState]
type            = ChangeState
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = time = 50
value           = 7925
ctrl		    = 0

[State 0:    ChangeState]
type            = ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = time = 60
value           = 7925
ctrl		    = 0

[State 0:    ChangeState]
type            = ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 1
trigger1        = time = 80
value           = 7925
ctrl		    = 0


; 当身発動;飛び道具;とどめ
[Statedef 7925]
type            = S
movetype        = A
physics         = S
anim            = 7925
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 210, 1];音
type = PlaySnd
trigger1 = movecontact = 1
value = S3, 6
channel = 0

;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 9550
ID = 9550
pos = 60,-85
postype = p1
facing = 1
bindtime = -1
scale = 1,1.4
removetime = -2
sprpriority = 4
ownpal = 1

[State 210, 1];音
type = PlaySnd
trigger1 = AnimElem = 3
value = S7, 35
channel = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NT
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 70, 3
pausetime       = 3, 9
guard.pausetime = 15, 20
sparkno = S9222
guard.sparkno	= S9222
sparkxy	 = -18, -70
hitsound        = S23, 6
guardsound      = S23, 0
ground.slidetime    = 33
ground.cornerpush.veloff = -2
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 20
ground.velocity = -18, -7
air.velocity    = -18, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 67
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 3
value           = 155,155,155
time            = 1
under           = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1        = (!Time)
time            = 26
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; 超ベジットラッシュ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
[Statedef 2963]
type            = S
movetype        = A
physics         = S
anim            = 2963
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------



;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 3244
id = 3244
pos = 110, -120
postype = back
ownpal = 1
bindtime = -1
removetime = 25
scale = .66,.67
sprpriority = -2
supermovetime = 120
supermove = 120


[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 3244
postype = back
pos = ceil(48+(time*15)),0

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 7) 
value           = 255,255,255
time            = 2
under           = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 50
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = time = 0
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
x		        = 115
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 8)
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 9)
x		        = 1
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 10)
x		        = 0
y		        = 0

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 2
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.2



[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420


[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.7,1.7


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 1, 50
guard.pausetime = 8, 15
sparkno = S93010
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S22, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5
snap            = 30,0
p1stateno       = 2964
p2facing        = 1


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 25
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 25
pos			= 0,-50
movetime		= 25
darken		= 0
p2defmul		= 1
unhittable		= 1


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S7, 32
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3, 1
channel = -1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超ベジットラッシュ(発動
;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 2964]
type            = S
movetype        = A
physics         = S
anim            = 2964
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     BGPalFX]
type            = BGPalFX
triggerall = var(25) = 0
trigger1        = time = 0
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 3
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 7
Anim = 9455
Pos = -2,0
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.3



[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S12, 9
channel = -1
volume = 255

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S12, 9
channel = -1
volume = 255

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 80
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = animelem = 9
time            = 5
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = animelem = 14
time            = 120
length          = 4
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 13)
trigger2        = (AnimElem = 15)
trigger3        = (AnimElem = 17)
trigger4        = (AnimElem = 19)
trigger5        = (AnimElem = 21)
trigger6        = (AnimElem = 23)
trigger7        = (AnimElem = 25)
value = S64, 4
channel         = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 29)
value = S1,6
channel         = 3

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 3
y		        = -1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 25
y		        = -1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
x		        = 5


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 8)
x		        = 2

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 14)
trigger2        = (AnimElem = 16)
trigger3        = (AnimElem = 18)
trigger4        = (AnimElem = 20)
trigger5        = (AnimElem = 22)
trigger6        = (AnimElem = 24)
trigger7        = (AnimElem = 26)
trigger8        = (AnimElem = 27)
trigger9        = (AnimElem = 28)
x		        = 15
y		        = -2


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 33
value = S7, 32
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 33) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S7, 32
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 11) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NT
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,Hit
damage          = 50, 80
pausetime       = 5, 5
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S2, 0
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 22
ground.velocity = -9,-2
air.velocity    = -9,-2
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70,-5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = C, NT
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 80, 100
pausetime       = 9, 8
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S7, 27
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -22,-7
air.velocity    = -22,-7
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70,-5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14)
attr            = A, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 30
pausetime       = 1, 1
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -80, -70
hitsound        = S64, 6
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -7, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 80,-15

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
attr            = A, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 30
pausetime       = 1, 1
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -70
hitsound        = S64, 6
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -7, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 60,-13


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 29)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 60, 3
pausetime       = 10, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -12, -8
air.velocity    = -12, -8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 36)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 60, 3
pausetime       = 10, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -15, -25
air.velocity    = -15, -25
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5


[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 12)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 13)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-0)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 33)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 34)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-0)

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 17
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 8, >= 1 && AnimElem = 13, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 29, >= 1 && AnimElem = 34, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 36
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 7, >= 1 && AnimElem = 13, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 2965
ctrl = 0



[Statedef 2965];掴んで叩き落とす
type            = A
movetype        = A
physics         = S
anim            = 2965
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 8
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = Time = 9
value           = 255,255,255
time            = 2
under           = 1




[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 7
Id = 3244
postype = back
pos = ceil(10+(time*355)),0

[State 9027, 1]
type = Assertspecial
trigger1 = time < 200
flag = NOfg

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 0
time            = 1
length          = 1
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[state a]
type = changestate;何かあって外れた場合（バグ回避
triggerall = time > 40
triggerall = enemy,alive = 1
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = Target,stateno  != 12139
value = 2966
ctrl = 0



[State 988, PlaySnd];敵が落下中の音
type = PlaySnd
trigger1 = time = 105
value = S754, 44
channel = -1
volume = 255

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 215
anim            = 8215
ID              = 8215
pos             = -30,-80
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 4, 6
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 215
anim            = 8215
ID              = 8215
pos             = 30,-80
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 4, 6
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 210
anim            = 8215
ID              = 8215
pos             = -30,-20
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 210
anim            = 8215
ID              = 8215
pos             = 30,-20
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = time = 196
anim            = 8215
ID              = 8215
pos             = -30,-50
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 6, 8
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 196
anim            = 8215
ID              = 8215
pos             = 30,-50
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 6, 8
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;ring;風
[State 800, 6]
type = Explod
trigger1 = time = 193
Anim = 9920
Pos = -2,30
Id = 9920
sprpriority = 99
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p2
ownpal = 1
ontop = 1
scale = 3, 2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 190
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 70
bindtime = -1
Postype = p2
ownpal = 1
scale = 4, 2

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 2, 2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 4, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = time = 190
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 0
pausemovetime   = 0
scale           = 4, 5
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6501
ID              = 6501
pos		        = 10,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 8
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191, 4]
type = Explod
triggerall = var(9) = 0
trigger1 = AnimElem = 12
Anim = 9416
Pos = 10,-5
Id = 9416
sprpriority = 7
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2


[State 191, 4]
type = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = AnimElem = 12
Anim = 9416
Pos = 10,-5
Id = 9416
sprpriority = 7
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.3,1.3


[State 191, 4]
type = Explod
triggerall = var(25) = 1
trigger1 = AnimElem = 12
Anim = 9416
Pos = 0,-4
Id = 9416
sprpriority = 7
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.4

[State 191, 4]
type = Explod
triggerall = var(22) = 1
trigger1 = AnimElem = 12
Anim = 9416
Pos = 0,-4
Id = 9416
sprpriority = 7
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.7,1.7

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = S3, 1
channel = -1

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(9) = 0
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 7
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 7
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 7
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(22) = 1
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 7
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.1,1.1

[State 7030, 3];リング
type = Explod
triggerall = var(9) = 0
trigger1 = AnimElem = 12
anim = 9850
ID = 9850
pos = 0,-45
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 7
ownpal = 1
SuperMove = 1
scale = 1.4,1.4

[State 7030, 3];リング
type = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = AnimElem = 12
anim = 9850
ID = 9850
pos = 0,-45
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 7
ownpal = 1
SuperMove = 1
scale = 1.6,1.6

[State 7030, 3];リング
type = Explod
triggerall = var(25) = 1
trigger1 = AnimElem = 12
anim = 9850
ID = 9850
pos = 0,-45
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 7
ownpal = 1
SuperMove = 1
scale = 1.7,1.7

[State 7030, 3];リング
type = Explod
triggerall = var(22) = 1
trigger1 = AnimElem = 12
anim = 9850
ID = 9850
pos = 0,-45
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 7
ownpal = 1
SuperMove = 1
scale = 2,2

[State 0:     BGPalFX]
type            = BGPalFX
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1        = time = 1
time		    = 180
add		        = -255,-255,-255
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


;[State 8001, Explod-3];カットイン
;type = Explod
;trigger1 = Time = 9
;Anim = 3245
;id = 3245
;pos = 110, 190
;postype = back
;ownpal = 1
;bindtime = -1
;removetime = 15
;scale = 1,1
;sprpriority = -2
;supermovetime = 120
;supermove = 120

[State 8001, Explod-3];落下背景
type = Explod
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = time = 1
Anim = 5767
id = 5767
pos = 145, 130
postype = back
ownpal = 1
bindtime = -1
removetime = 20
scale = 1.3,1.7
sprpriority = -1
supermovetime = 55
supermove = 20


[State 8001, Explod-3];落下背景
type = Explod
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = time = 68
Anim = 5766
id = 5766
pos = 145, 130
postype = back
ownpal = 1
bindtime = -1
removetime = 54
scale = 1.3,1.7
sprpriority = -1
supermovetime = 54
supermove = 54

[State 8001, Explod-3];落下背景
type = Explod
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = time = 105
Anim = 5777
id = 5777
pos = 145, 130
postype = back
ownpal = 1
bindtime = -1
removetime = 80
scale = 1.3,1.7
sprpriority = -1
supermovetime = 80
supermove = 80



[State 8001, Explod-3];掴みエフェクト
type = Explod
trigger1        = AnimElem = 4
Anim = 9200
id = 9200
pos = 55, -25
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
scale = 1.1,1.1
sprpriority = 4
supermovetime = 80
supermove = 80

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag           = NoBarDisplay

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 2)
pos             = 80,-10

[State 52, 2]
type = PosSet
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = AnimElem = 4
y = -70;画面真ん中らへん
x = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 1,1
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 50,0
hitsound        = S87,8
p2stateno  = 12139;落とされる相手


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S15, 6
channel = -1
volume = 255


[State 52, 2]
type = PosSet
triggerall = teammode = single;シングルの時のみ。
triggerall = enemy,teammode = single;シングルの時のみ。
trigger1 = AnimElem = 1
y = -70
x = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S87, 8
channel = -1
volume = 255




[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 2)
x               = (P2BodyDist X-0)
y               = (P2BodyDist Y-0)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-0)
y               = (P2BodyDist Y-110)



[State 500:     PosAdd]
type            = Posset
trigger1        = time = 190
x               = (P2BodyDist X-2)
y               = (P2BodyDist Y-30)

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 1, >= 1 && AnimElem = 3, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 30, >= 1 && AnimElem = 34, < 60
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1



[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 29
value = S6, 97
channel = -1



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
trigger2        = (AnimElem = 12) 
value           = 255,255,255
time            = 2
under           = 0
;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = time = 1
time            = 30
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 8
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 37
value = S6, 97
channel = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = time = 190
value = S0, 0
channel = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7, 32
channel = -1

[State 900: Helper]
type = Helper
trigger1 = time = 180
helpertype = Normal
pos	= 0,0
postype	= p2
facing = 1
stateno	= 2967
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 900: Helper]
type = Helper
trigger1 = time = 190
helpertype = Normal
pos	= 0,0
postype	= p2
facing = 1
stateno	= 2967
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 2
under           = 1




;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2966
ctrl		    = 0

;ベジット戻り
[Statedef 2966]
type = S
movetype = A
physics = S
anim = 2966
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-100)

[State 5005:     Posset]
type            = Posset
trigger1        = (Time = 0)
y               = 0

[State 500:     AfterImage]
type            = AfterImage
trigger1        = time = 2
time            = 15
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 0,0,0
palcontrast     = 0,0,250
palpostbright   = 0,0,40
paladd          = 0,0,40
palmul          = .25,.25,.25
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 40, ]
type = Explod
trigger1 = (AnimElem = 8)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 10
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地音
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S1, 2
channel = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S99, 9995
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 2
under           = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 190
time		    = 50
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0




[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;落とされる相手
[Statedef 12139]
type = A
movetype = H
physics = S
anim = 12139
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = -1

[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 170
time		    = 20
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State -2, 5];ダメージ;回復早すぎる奴用追加ダメージ
type = lifeadd 
triggerall      = P1Name = "Z-TON" ;←ここにそいつの名前いれる
trigger1= time = 170
value = -300
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(22) = 1
trigger1= time = 170
value = -1550
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(25) = 1
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
trigger1= time = 170
value = -550
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 1
triggerall = enemy,var(22) = 0
trigger1= time = 170
value = -350
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 0
triggerall = enemy,var(22) = 0
trigger1= time = 170
value = -230
kill = 1

[State 500:     PosAdd]
type            = PosAdd
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1        = time = 1
x               = (P2BodyDist X-30)
y               = (P2BodyDist Y+32)

[State 0:    Changeanim]
type            = Changeanim
trigger1        = time = 20
value           = 5030

[State 500:     PosAdd];降下中
type            = PosAdd
triggerall        = (time <80)
trigger1        = ((time >37) && (timemod = 2,0)) 
x               = (P2BodyDist X+22)
y               = (P2BodyDist Y-68)

[State 500:     PosAdd];降下中
type            = PosAdd
triggerall        = (time <80)
trigger1        = ((time >39) && (timemod = 4,0)) 
x               = (P2BodyDist X+22)
y               = (P2BodyDist Y-63)


[State 500:     PosAdd];降下中
type            = PosAdd
triggerall        = (time <165)
trigger1        = ((time >88) && (timemod = 2,0)) 
x               = (P2BodyDist X+12)
y               = (P2BodyDist Y+29)

[State 500:     PosAdd];降下中
type            = PosAdd
triggerall        = (time <165)
trigger1        = ((time >87) && (timemod = 4,0)) 
x               = (P2BodyDist X+11)
y               = (P2BodyDist Y+14)

[State 500:     PosAdd];降下中
type            = PosAdd
triggerall        = time = 80
trigger1        = ((time >37) && (timemod = 2,0)) 
x               = (P2BodyDist X+22)
y               = (P2BodyDist Y-68)

[State 0:     Screen Flash];落下フラッシュ
type            = EnvColor
triggerall		= (Time < 170) 
trigger1		= ((Time > 86) && ((GameTime%6) = 0))
value           = 255,255,255
time            = 1
under           = 1


[State 52, 2]
type = PosSet
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1 = time = 82
y = -110
x = 10

[State 52, 2]
type = PosSet
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1 = time = 83
y = -100
x = 15

[State 52, 2]
type = PosSet
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1 = time = 84
y = -90
x = 20


[State 52, 2]
type = PosSet
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1 = time = 85
y = -80
x = 25

[State 52, 2]
type = PosSet
triggerall = enemy,teammode = single;シングルの時のみ。
triggerall = teammode = single;シングルの時のみ。
trigger1 = time = 84
y = -70
x = 30


[State 500:     Turn]
type            = Turn
trigger1        = time = 85

[State 0:    Changeanim]
type            = Changeanim
trigger1        = time = 16
value           = 5035

[State 500:     PosAdd];振り上がっている状態
type            = PosAdd
trigger1        = time = 21
x               = (P2BodyDist X-23)
y               = (P2BodyDist Y-82)

[State 500:     PosAdd];降下体勢
type            = PosAdd
trigger1        = time = 30 
x               = (P2BodyDist X+23)
y               = (P2BodyDist Y-69)


[State 500:     Turn]
type            = Turn
trigger1        = time = 20



[State 0:    Changeanim]
type            = Changeanim
trigger1        = time = 170
value           = 5110

[State 0:    Changeanim];ベジットが超本気以下状態で超４が超界王拳以上状態だった場合
type            = Changeanim
triggerall = alive = 1
triggerall = enemy,var(25) = 0
triggerall = var(22) = 1
triggerall = p1name = "Goku_Super4"
trigger1        = time = 171
value           = 1838

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = time = 170
time 			= 70
freq 			= 250
ampl   = -12
phase  = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = time = 241
time 			= 5
freq 			= 15
ampl   = -10
phase  = 1

[State 52, 2]
type = PosSet
trigger1 = time = 166
y = -300
x = -40

[State 52, 2]
type = PosSet
trigger1 = time = 167
y = -230
x = -20

[State 52, 2]
type = PosSet
trigger1 = time = 168
y = -180
x = 0

[State 52, 2]
type = PosSet
trigger1 = time = 169
y = -80
x = 20

[state 5005:     nothitby]
type = nothitby
trigger1 = time = 1
value = SCA
time = 290

[State 52, 2]
type = PosSet
trigger1 = time = 170
y = 0
x = 40

;ベジット超本気未満で超４悟空が超界王拳状態の無敵カットイン
[State 8001, Explod-3]
type = Explod
triggerall = enemy,var(25) = 0
triggerall = var(22) = 1
triggerall = p1name = "Goku_Super4"
triggerall = alive = 1
trigger1        = time = 230
Anim = 2977
id = 2977
pos = 150, -20
postype = back
ownpal = 1
bindtime = -1
removetime = 40
scale = .7,.7
sprpriority = 4
supermovetime = 40
ontop = 0
facing = 1

[State 0, ]
type            = BGPalFX
triggerall = enemy,var(25) = 0
triggerall = var(22) = 1
triggerall = p1name = "Goku_Super4"
triggerall = alive = 1
trigger1        = time = 230
time            = 40
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 200,1]
type = SelfState
triggerall = enemy,var(25) = 0
triggerall = var(22) = 1
triggerall = p1name = "Goku_Super4"
triggerall = alive = 1
trigger1 = time = 290
value = 0
ctrl		    = 1

[State 500:     Turn]
type            = Turn
triggerall = enemy,var(25) = 0
triggerall = var(22) = 1
triggerall = p1name = "Goku_Super4"
triggerall = alive = 1
triggerall = time > 172
triggerall = time < 173
trigger1        = (P2BodyDist X < 0)

[State 200,1]
type = SelfState
triggerall = alive = 1
trigger1 = time = 300
value = 5110
ctrl		    = 1

[State 200,1]
type = SelfState
triggerall = alive = 0
trigger1 = time = 230
value = 5110
ctrl		    = 0


;落下した相手ヘルパー
[Statedef 2967]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 2967

[State 9940: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,NP,SP,HP
ignorehitpause = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = movecontact = 1
slot            = 1
time            = 1
stateno         = 2967
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 355,355
pausetime		= 0,16
guard.pausetime	= 1,4
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= 18,-9
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= 18,-7
airguard.velocity	= 18,-7
ground.cornerpush.veloff = 0
down.velocity	= 18,-7
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0


[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 455,455
pausetime		= 0,16
guard.pausetime	= 1,4
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= 19,-8
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= 19,-8
airguard.velocity	= 20,-7
ground.cornerpush.veloff = 0
down.velocity	= 22,-9
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 600,600
pausetime		= 0,16
guard.pausetime	= 1,4
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= 22,-10
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= 22,-10
airguard.velocity	= 20,-7
ground.cornerpush.veloff = 0
down.velocity	= 22,-10
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 20


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; 空中：超ベジットラッシュ(特定技後);;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
[Statedef 2978]
type            = A
movetype        = A
physics         = S
anim            = 2978
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 3244
id = 3244
pos = 110, -120
postype = back
ownpal = 1
bindtime = -1
removetime = 25
scale = .66,.67
sprpriority = -2
supermovetime = 120
supermove = 120


[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 3244
postype = back
pos = ceil(48+(time*15)),0

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 7) 
value           = 255,255,255
time            = 2
under           = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 50
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = time = 0
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 6)
x		        = 0
y		        = -10

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 7)
trigger2        = (animelem = 8)
trigger3        = (animelem = 9)
trigger4        = (animelem = 10)
trigger5        = (animelem = 11)
x		        = 120
y		        = -10

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 12)
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 13)
x		        = 1
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 14)
x		        = 0
y		        = 0

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 2
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.2



[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420


[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.7,1.7


[State 0:     HitDef]
type            = HitDef
trigger1        = (animelem = 7)
trigger2        = (animelem = 8)
trigger3        = (animelem = 9)
trigger4        = (animelem = 10)
trigger5        = (animelem = 11)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 1, 50
guard.pausetime = 8, 15
sparkno = S93010
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S22, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5
snap            = 30,0
p1stateno       = 2974
p2facing        = 1


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 25
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 25
pos			= 0,-50
movetime		= 25
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S7, 32
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3, 1
channel = -1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 2973];;;;;;;;;;;;;空中超ベジットラッシュ
type            = A
movetype        = A
physics         = S
anim            = 2973
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 3244
id = 3244
pos = 110, -120
postype = back
ownpal = 1
bindtime = -1
removetime = 25
scale = .66,.67
sprpriority = -2
supermovetime = 120
supermove = 120


[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 3244
postype = back
pos = ceil(48+(time*15)),0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 7) 
value           = 255,255,255
time            = 2
under           = 1



[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 50
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = time = 0
x		        = 0
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
x		        = 130
y		        = -10

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 8)
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 9)
x		        = 1
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 10)
x		        = 0
y		        = 0

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 2
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.2



[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420


[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.7,1.7


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 1, 50
guard.pausetime = 8, 15
sparkno = S93010
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S22, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5
snap            = 30,0
p1stateno       = 2974
p2facing        = 1


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 25
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 25
pos			= 0,-50
movetime		= 25
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S7, 32
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3, 1
channel = -1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 空中：超ベジットラッシュ(発動
;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 2974]
type            = S
movetype        = A
physics         = S
anim            = 2974
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     BGPalFX]
type            = BGPalFX
triggerall = var(25) = 0
trigger1        = time = 0
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S12, 9
channel = -1
volume = 255

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S12, 9
channel = -1
volume = 255

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 80
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = animelem = 9
time            = 5
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = animelem = 14
time            = 120
length          = 4
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 13)
trigger2        = (AnimElem = 15)
trigger3        = (AnimElem = 17)
trigger4        = (AnimElem = 19)
trigger5        = (AnimElem = 21)
trigger6        = (AnimElem = 23)
trigger7        = (AnimElem = 25)
value = S64, 4
channel         = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1        = (AnimElem = 29)
value = S1,6
channel         = 3

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 3
y		        = -.3

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 25
y		        = -.5

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
x		        = 5


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 8)
x		        = 2

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 14)
trigger2        = (AnimElem = 16)
trigger3        = (AnimElem = 18)
trigger4        = (AnimElem = 20)
trigger5        = (AnimElem = 22)
trigger6        = (AnimElem = 24)
trigger7        = (AnimElem = 26)
trigger8        = (AnimElem = 27)
trigger9        = (AnimElem = 28)
x		        = 15
y		        = 4


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 33
value = S7, 32
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 33) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S7, 32
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 11) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NT
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,Hit
damage          = 50, 80
pausetime       = 5, 5
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S2, 0
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 22
ground.velocity = -9,-1
air.velocity    = -9,-1
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70,-5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = C, NT
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 80, 100
pausetime       = 9, 8
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S7, 27
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -22,-14
air.velocity    = -22,-14
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70,-5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14)
attr            = A, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 30
pausetime       = 1, 1
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -80, -40
hitsound        = S64, 6
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -7, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 80,15

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
attr            = A, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 30, 30
pausetime       = 1, 1
guard.pausetime = 9, 13
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -38, -40
hitsound        = S64, 6
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6,-7
air.velocity    = -7, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 20, 3
givepower       = 20, 3
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 60,12


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 29)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 60, 3
pausetime       = 10, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S21, 211
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -12, -9
air.velocity    = -12, -9
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 36)
attr            = A, NA
hitflag         = MAFP
guardflag       = HA
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 60, 3
pausetime       = 10, 8
guard.pausetime = 15, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -48, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 53
ground.cornerpush.veloff = -45
air.cornerpush.veloff = -55
ground.hittime  = 22
guard.hittime   = 21
air.hittime     = 20
ground.velocity = -15, -19
air.velocity    = -15, -19
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 68
envshake.ampl   = -15
envshake.phase  = 5


[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 12)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 13)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-0)

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 33)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 34)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-0)

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 17
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 8, >= 1 && AnimElem = 13, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 29, >= 1 && AnimElem = 34, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 36
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 7, >= 1 && AnimElem = 13, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 2965
ctrl = 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; 魔人ブウ出現;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
[Statedef 5510]
type            = S
movetype        = A
physics         = S
anim            = 5510
;velset          = 0,0,0
ctrl            = 0
poweradd        = -5000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg


[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 35
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = time = 0
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 8
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 9
x		        = 7
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 10
x		        = 3
y		        = 0




[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 4
anim = 9850
ID = 9850
pos = -10,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.7,1.7

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 8
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 300, 50
pausetime       = 20, 20
guard.pausetime = 20, 20
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S87, 10
guardsound      = S3, 0
ground.slidetime    = 22
ground.cornerpush.veloff = -11
ground.hittime  = 22
guard.hittime   = 27
air.hittime     = 20
ground.velocity = -16, 0
air.velocity    = -16, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 30
envshake.freq   = 69
envshake.ampl   = -15
envshake.phase  = 5
snap            = 30,0
p1stateno       = 5511
p2stateno       = 5512


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1        = (movecontact = 1)
value = S87, 10
channel = -1
volume = 255

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = (movecontact = 1)
flag			= Intro
flag2			= NoMusic



[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7, 55
channel = -1


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, 0
channel = -1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:     super effect]
type            = AssertSpecial
trigger1        = (movecontact = 1)
flag           = NoBarDisplay

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, 6
channel = -1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 25
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 25
pos			= 0,-50
movetime		= 25
darken		= 0
p2defmul		= 1
unhittable		= 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 発動（ブウの挙動を見るベジット）

[Statedef 5511]
type = S
ctrl = 0
anim = 5511
velset = 0,0
poweradd = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1 = AnimElem = 1
x               = (P2BodyDist X-90)

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = time > 59
flag			= Intro
flag2			= NoMusic

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time > 30
flag           = NoBarDisplay

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 20
value = S11, 111
channel = -1
volume = 255

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 14) 
time		    = 550
add		        = -125,-125,-125
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0




[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 19) 
value           = 255,255,255
time            = 3
under           = 1


[State 191, 4]
type = Explod
trigger1 = (AnimElem = 19) 
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 240
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 1.1,1.2

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 19) 
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 260
bindtime = -1
Postype = p2
ownpal = 1
scale = 1, 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 19)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

;風
[State 191, 3]
type = Explod
trigger1 = (AnimElem = 19) 
anim = 9353
ID = 9353
pos = 0,0
postype = p2
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .7,.7

[State 988, PlaySnd];入り込むブウの音
type = PlaySnd
trigger1 = animelem = 19
value = S3, 1
channel = -1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 19) 
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 260
bindtime = -1
Postype = p2
ownpal = 1
scale = 1.5, 1.2


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall      = time < 550
trigger1        = ((time >1) && (timemod = 100,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall      = time > 551
trigger1        = ((time >1) && (timemod = 70,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 988, PlaySnd];入り込むブウの音
type = PlaySnd
trigger1 = animelem = 14
value = S549, 35
channel = -1
volume = 255

[State 9027, 1]
type = Assertspecial
trigger1 = time > 60
flag = NOfg

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 12
value           = 255,255,255
time            = 2
under           = 0

[State 988, PlaySnd];気づき
type = PlaySnd
trigger1 = animelem = 13
value = S11, 43
channel = -1
volume = 255

[State 988, PlaySnd];入り込むブウの音
type = PlaySnd
trigger1 = animelem = 14
value = S775, 55
channel = 4

[State 988, PlaySnd];入り込むブウの音
type = PlaySnd
trigger1 = animelem = 16
value = S545, 5
channel = -1

;入り込むブウ
[State 191, 5]
type = Explod
trigger1        = (AnimElem = 16) 
Anim = 5513
Pos = 0,-60
Id = 5513
sprpriority = 4
removeongethit = 1
removetime = 80
bindtime = -1
Postype = p2
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.5,3


;ブウカットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (animelem = 14)
Anim = 5514
id = 5514
pos = 0, -10
postype = back
ownpal = 1
bindtime = -1
removetime = 70
scale = .8,.8
sprpriority = 99
ontop = 1
supermovetime = 90

;ブウカットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (animelem = 14)
Anim = 5566
id = 5566
pos = 0, -10
postype = back
ownpal = 1
bindtime = -1
removetime = 70
scale = 1,1
sprpriority = 99
ontop = 0
supermovetime = 90

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = time = 550
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (time = 550) 
value           = 255,255,255
time            = 3
under           = 1

;風
[State 191, 3]
type = Explod
trigger1 = time = 550
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .8,.8

[State -2]
type = PalFX;点滅
trigger1 = (Time > 550) && (GameTime%3) = 0
time = 1
add = 39,39,39
ignorehitpause = 1

[State 191, 4];広がる覆うリング
type = Explod
trigger1 = time= 560
Anim = 9850
Pos = 0,-60
Id = 9850
sprpriority = 6
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 1,1

[State 191, 4];広がる覆うリング
type = Explod
trigger1 = time= 550
Anim = 9850
Pos = 0,-60
Id = 9850
sprpriority = 6
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = (Time = 580)
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9

;オーラ
[State 8001, Explod-3]
type = Explod
trigger1 = time = 550
Anim = 9410
id = 9410
pos = 0, 0
postype = p1
ownpal = 1
bindtime = -1
removetime = 900
scale = 1.3,1.5
sprpriority = 4
ontop = 0
supermovetime = 900

;オーラ
[State 8001, Explod-3]
type = Explod
trigger1 = time = 550
Anim = 9410
id = 9410
pos = 0, 0
postype = p1
ownpal = 1
bindtime = -1
removetime = 900
scale = 1,1.2
sprpriority = 2
ontop = 0
supermovetime = 900

[State 988, PlaySnd];オーラ音
type = PlaySnd
trigger1 = time = 550
value = S3, 1
channel = -1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 550 
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 900
bindtime = -1
Postype = p1
ownpal = 1
scale = 1.2, 1
supermovetime = 900


[State 988, PlaySnd];ブウの動きが封じられる音
type = PlaySnd
trigger1 = animelem = 23
value = S76, 197
channel = -1

[State -2, 5];回復
type = lifeadd 
trigger1= (animelem = 25)
value = 3000

[State 185: 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 988, PlaySnd];うごけん
type = PlaySnd
trigger1 = AnimElem = 22
value = S11, 112
channel = -1

[State life, 2];ブウけし飛びスイッチ※あたらん用
type = varset
trigger1 = (AnimElem = 26)
var(26) = 1

[State life, 2];ブウけし飛びスイッチ※消し飛ばした後用
type = varset
trigger1 = (AnimElem = 27)
var(29) = 1




[State 988, PlaySnd];しゅいしゅい音
type = PlaySnd
trigger1 = time = 330
value = S22, 133
channel = 8


[State 988, PlaySnd];しゅいしゅい音
type = PlaySnd
trigger1 = time = 550
value = S22, 133
channel = 8


[State 988, PlaySnd];しゅいしゅい音
type = PlaySnd
trigger1 = time = 750
value = S22, 133
channel = 8

[State 988, PlaySnd];当然だ
type = PlaySnd
trigger1 = AnimElem = 24
value = S11, 113
channel = 1

[State 988, PlaySnd];
type = PlaySnd
trigger1 = AnimElem = 22
value = S76, 197
channel = -1

[State 988, PlaySnd];俺の気で
type = PlaySnd
trigger1 = AnimElem = 34
value = S11, 114
channel = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 970
ctrl = 0


;ブウに入られる相手
[Statedef 5512]
type = S
movetype = H
physics = S
anim = 5512
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2


[State 0:     Intro]
type            = AssertSpecial
triggerall = time > 60
trigger1        =  (1)
flag           = NoBarDisplay

[State 52, 2]
type = PosSet
trigger1 = Time = 1
y = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1 = time = 1
x               = (P2BodyDist X-90)


[State 200, 0]
type = Changeanim;喰らうアクション
trigger1= enemy,AnimElem = 1
value = 5000
ctrl = 0



[State 200, 0]
type = Changeanim;疲れアクション
trigger1= enemy,AnimElem = 8
value = 5300
ctrl = 0

[State 800,1]
type = PalFX;点滅
triggerall		= time > 240
triggerall		= time < 290
trigger1 = (Time > 10) && (GameTime%2) = 0
time = 1
add = 155,85,25
ignorehitpause = 1

[State 200, 0]
type = Changeanim;入り込まれるアクション
trigger1= enemy,AnimElem = 17 
value = 5000
ctrl = 0

[State 800,1]
type = PalFX;点滅
triggerall		= time > 590
triggerall		= time < 1170
trigger1 = (Time > 10) && (GameTime%2) = 0
time = 1
add = 38,38,225
ignorehitpause = 1

[State 200, 0]
type = Changeanim;疲れアクション
trigger1= enemy,AnimElem = 18
value = 5300
ctrl = 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = time < 550
flag			= Intro
flag2			= NoMusic

[State 0:     BGPalFX]
type            = BGPalFX
triggerall		= time > 590
trigger1        = (1)
time		    = 5
add		        = -100,-100,-100
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 200, 0]
type = Changeanim;封じられアクション
trigger1= enemy,AnimElem = 22
value = 5000
ctrl = 0


[State 988, PlaySnd];ひめい
type = PlaySnd
trigger1= enemy,AnimElem = 17 
value = S11, 0
channel = -1


[State 200, 0]
type = Changeanim;これはいいアクション
trigger1= enemy,AnimElem = 20
value = 0
ctrl = 0

[State 200, 0]
type = Changeanim;疲れアクション
trigger1= enemy,AnimElem = 19
value = 5300
ctrl = 0



[State 170, 無敵]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 650


[State 210, 0]
type = ChangeState
trigger1 = time = 2000
value = 0
ctrl = 1

; アルティメットバリヤ―
[Statedef 9234]
type            = S
movetype        = A
physics         = S
anim            = 9234
velset          = 0,0,0
ctrl            = 0
poweradd        = -5000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2

[State -1,Helper];バリヤ管理ヘルパー
type = Helper
trigger1 = AnimElem = 5
name = "singo"
ID = 9543
pos = -50, 0
postype = back
sprpriority = -99
stateno = 9543
keyctrl = 0
ownpal = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 30
flag           = NoBarDisplay



[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 35
pos			= 0,-50
movetime		= 35
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 5)
value           = SCA
time            = 9999



[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 0
time		    = 35
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 5)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

;ring
[State 800, 6]
type = Explod
trigger1 = AnimElem = 5
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2, 1.2


[State 800, 6]
type = Explod
trigger1 = AnimElem = 7
Anim = 9950
Pos = -2,0
Id = 9950
sprpriority = 6
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.6, 1.6

[State 191, 4]
type = Explod
trigger1 = AnimElem = 5
Anim = 9955
Pos = 0,-5
Id = 9955
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1

[State 191, 4]
type = Explod
trigger1 = AnimElem = 5
Anim = 9416
Pos = 0,-5
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 5) 
value           = 789,12
volume          = 255
channel         = -1


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 6) 
value           = 545,5
channel         = -1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 1) 
value           = 7,55
volume          = 255
channel         = 0

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 9) 
value           = 76,197
volume          = 255
channel         = -1


[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 8)
anim            = 6501
ID              = 6501
pos		        = -5,-60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.1, 1.1
sprpriority     = 8
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 5
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.8, 1.1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9420
Pos = 0,-45
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6,.6



;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .7,.7

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.7,1.7

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9850
ID = 9850
pos = 0,-42
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.4,1.4



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 5) 
value           = 255,255,255
time            = 3
under           = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; Zカウンター（超必殺当て身）
[Statedef 7979]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= -2000
velset = 0,0
anim = 7979
sprpriority = 1
ctrl = 0


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay



[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 65
pos			= 0,-50
movetime		= 65
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6500
ID              = 6500
pos		        = 7,-69
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6501
ID              = 6501
pos		        = 7,-69
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 0
time		    = 35
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 210, 1];超必殺発動音
type = PlaySnd
trigger1        = (AnimElem = 1)
value = S7, 55
channel         = -1


[State 210, 1];かかってこい
type = PlaySnd
trigger1        = (AnimElem = 2)
value = S97, 27
channel         = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7



;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
trigger4 = animelem = 12
attr = S, ST
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
hitflag = MAFPD
priority = 7, miss
pausetime = 1,10
sparkno = s7002
hitsound = S2,622
p2facing = 1
p1stateno = 9989;当て身発動ステートへ
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;超必殺当て身発動
[Statedef 9989]
type = S
movetype = A
physics = S
anim = 9989
velset = 0,0
ctrl = 0
poweradd = -4000
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2






[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 30
flag           = NoBarDisplay



[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 35
pos			= 0,-50
movetime		= 35
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6500
ID              = 6500
pos		        = -20,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6501
ID              = 6501
pos		        = -20,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 170
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 0,0,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 31
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = AnimElem = 1
time		    = 20
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = AnimElem = 3
time		    = 170
add		        = -35,-35,-35
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0




[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 8
x		        = -5
y		        = 0

[State 500:     Turn]
type            = Turn
trigger1        = AnimElem = 7

[State 500:     PosAdd]
type            = PosAdd
trigger1        = AnimElem = 5
x               = (P2BodyDist X+80)


[State 500:     Turn]
type            = Turn
trigger1        = AnimElem = 19

[State 500:     PosAdd]
type            = PosAdd
trigger1        = AnimElem = 20
x               = (P2BodyDist X-80)

[State 500:     Turn]
type            = Turn
trigger1        = AnimElem = 26

[State 500:     PosAdd]
type            = PosAdd
trigger1        = AnimElem = 27
x               = (P2BodyDist X-100)
y               = (P2BodyDist Y-60)



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14);１撃目
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 230, 3
hittime = 55
pausetime       = 3, 13
guard.pausetime = 15, 23
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 888
ground.cornerpush.veloff = -15
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 55
ground.velocity = -37, 0
air.velocity    = -17, -8
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 74
envshake.ampl   = -18
envshake.phase  = 5
snap = 90,0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 22);２撃目
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 280, 3
hittime = 55
pausetime       = 5, 9
guard.pausetime = 15, 23
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -80
hitsound        = S7, 29
guardsound      = S3, 0
ground.slidetime    = 888
ground.cornerpush.veloff = -15
ground.hittime  = 44
guard.hittime   = 44
air.hittime     = 44
ground.velocity = -14, -18
air.velocity    = -14, -18
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 25
envshake.freq   = 74
envshake.ampl   = -18
envshake.phase  = 5
snap = 90,0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 33);３撃目
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 350, 3
hittime = 55
pausetime       = 5, 9
guard.pausetime = 15, 23
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -10, -50
hitsound        = S7, 24
guardsound      = S3, 0
ground.slidetime    = 888
ground.cornerpush.veloff = -15
ground.hittime  = 44
guard.hittime   = 44
air.hittime     = 44
ground.velocity = -22, 43
air.velocity    = -22, 43
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 100
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 25
envshake.freq   = 74
envshake.ampl   = -18
envshake.phase  = 5
snap = 90,0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 27);敵ふわり
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 1
hittime = 55
pausetime       = 1, 1
guard.pausetime = 15, 23
sparkno = S93003
guard.sparkno	= S93503
sparkxy	 = -10, -80
hitsound        = S7, 24
guardsound      = S3, 0
ground.slidetime    = 888
ground.cornerpush.veloff = -15
ground.hittime  = 44
guard.hittime   = 44
air.hittime     = 44
ground.velocity = 5, -3
air.velocity    = 5, -3
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 0
envshake.freq   = 74
envshake.ampl   = -18
envshake.phase  = 5
snap = 90,0



[State 7030, 3];リング
type = Explod
trigger1 = (AnimElem = 14)
trigger2 = (AnimElem = 22)
trigger3 = (AnimElem = 33)
anim = 9852
ID = 9852
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = 9
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.7,1.7


[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (AnimElem = 34)
anim            = 8215
ID              = 8215
pos             = -30,-80
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 4, 6
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (AnimElem = 34)
anim            = 8215
ID              = 8215
pos             = 30,-80
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 4, 6
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 210, 1];叩きつけ音
type = PlaySnd
triggerall = enemy,movetype = H
trigger1 = (AnimElem = 34)
value = S7, 31
channel = -1

;ring;地面
[State 800, 6]
type = Explod
triggerall = enemy,movetype = H
trigger1        = (AnimElem = 34)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 30
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 2.3, 1.1

[State 0:     EnvShake]
type 			= EnvShake
triggerall = enemy,movetype = H
trigger1        = (AnimElem = 34)
time 			= 27
freq 			= 75
ampl   = -13
phase  = 4



[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1 = (AnimElem = 34)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 30
supermove       = 0
pausemovetime   = 0
scale           = 1.7, 1.9
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1 = (AnimElem = 34)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 30
supermove       = 0
pausemovetime   = 0
scale           = 2, 1.8
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1 = (AnimElem = 34)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 30
supermove       = 0
pausemovetime   = 0
scale           = 1.6, 2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1 = (AnimElem = 34)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 30
supermove       = 0
pausemovetime   = 0
scale           = 2.2, 3
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 19)
trigger3 = (AnimElem = 26)
value           = 255,255,255
time            = 1
under           = 1

[State 210, 1];ボイス
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S7, 55
channel = -1
volume = 255

[State 210, 1];ボイス
type = PlaySnd
trigger1 = (AnimElem = 12)
value = S754, 3
channel = 0
volume = 255

[State 210, 1];ボイス
type = PlaySnd
trigger1 = (AnimElem = 21)
value = S43, 12
channel = 0
volume = 255

[State 210, 1];ボイス
type = PlaySnd
trigger1 = (AnimElem = 32)
value = S55, 555
channel = 0
volume = 255

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 13)
trigger2= (AnimElem = 22)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 8
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.1

[State 210, 1];瞬間移動音
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 19)
trigger3 = (AnimElem = 26)
value = S7, 32
channel = -1

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 38)
x               = (P2BodyDist X-80)


[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 37)
value           = 99,9995
volume          = 155
channel         = -1

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 44)
value           = 1,2
volume          = 155
channel         = -1

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 37)
y = 0

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 45)
value           = 1

[State 210, 0]
type = ChangeState
trigger1 = (AnimElem = 49)
value = 0
ctrl = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; レイジングブラスト;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
[Statedef 2449]
type            = S
movetype        = A
physics         = S
anim            = 2449
;velset          = 0,0,0
ctrl            = 0
poweradd        = -7000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 40, ]
type = Explod
trigger1 = (AnimElem = 29)
anim = 9120
ID = 9120
pos = 0,0
postype = p1
facing = -1
bindtime = 10
removetime = -2
sprpriority = 10
ownpal = 1

[State 210, 1];着地音
type = PlaySnd
trigger1 = (AnimElem = 29)
value = S1, 2
channel = 0

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 4
Anim = 9428
Pos = 0,-50
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 800, 6]
type = Explod
trigger1 = AnimElem = 6
Anim = 9950
Pos = -2,0
Id = 9950
sprpriority = 2
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.6, 1.6

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 5)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.1, 1.1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 4
time 			= 30
freq 			= 100
ampl   = 7
phase  = 1

[State 9027, 1]
type = Assertspecial
triggerall        = time < 55
trigger1        = time > 15
flag = NOfg

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 26) 
value           = 255,255,255
time            = 2
under           = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 60
length          = 13
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = time = 0
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 26)
x		        = 125
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 27)
x		        = 8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 27)
x		        = 5
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 28)
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 5
Anim = 9416
Pos = 0,2
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = 25
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.7,1.6

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 5
Anim = 9416
Pos = 0,2
Id = 9416
sprpriority = -1
removeongethit = 1
removetime = 25
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.6,.3

[State 191, 4];:オーラ
type = Explod
trigger1 = AnimElem = 5
Anim = 9416
Pos = 0,2
Id = 9416
sprpriority = -4
removeongethit = 1
removetime = 25
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.1,1.1

[State 191:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 25
id			= 9420


[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 5
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.6,1.6

[State 7030, 3];リング
type = Explod
trigger1 = AnimElem = 6
anim = 9850
ID = 9850
pos = 0,-40
postype = p1
facing = 1
bindtime = 10
removetime = -2
sprpriority = 9
ownpal = 1
SuperMove = 1
scale = 1.8,1.8


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
trigger2        = (AnimElem = 15)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S93001
guard.sparkno	= S93501
sparkxy	 = 8, -70
hitsound        = S37, 236
guardsound      = S2, 62
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, 0
air.velocity    = -15, -4
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -19, -11
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 0
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 23)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S93001
guard.sparkno	= S93501
sparkxy	 = 8, -70
hitsound        = S37, 236
guardsound      = S2, 62
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, 0
air.velocity    = -15, -4
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -19, -11
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 0
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0


;ダッシュエフェクト
[State 970, 3]
type = Explod
trigger1 = AnimElem = 26
anim = 6569
ID = 6569
pos = 5,-50
postype = p1
facing = 1
bindtime = 1
scale = 2.1,2.1
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 26)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 1, 50
guard.pausetime = 8, 15
sparkno = S93010
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S22, 8
guardsound      = S3, 0
ground.slidetime    = 12
ground.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5
snap            = 30,0
p1stateno       = 2455
p2facing        = 1


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
triggerall        = time < 55
trigger1        = time > 15
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1) 
time		    = 15
add		        = -85,-85,-85
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 5) 
time		    = 30
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 47
pos			= 0,-50
movetime		= 47
darken		= 0
p2defmul		= 1
unhittable		= 1


[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S424, 67
volume = 255
channel = 0

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 26
value = S7, 32
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S3, 1
channel = -1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1



;;;;;;;;;;;;;;;;レイジングブラスト発動
[Statedef 2455]
type            = S
movetype        = A
physics         = S
anim            = 2455
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 90
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 2)
x               = (P2BodyDist X-35)

[State 0:     Bind]
type            = TargetBind
trigger1        = (Time = 1)
pos             = 50,0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 10
add		        = -85,-85,-85
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = ((time >1) && (timemod = 42,0)) 
value           = 255,255,255
time            = 2
under           = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = ((time >1) && (timemod = 20,0)) 
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 30,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 4)
pos             = 50,0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 7)
trigger4        = (AnimElem = 8)
x		        = 6
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 30, 1
pausetime       = 2, 4
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -50, -50
hitsound        = S64, 7
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 30, 1
pausetime       = 1, 5
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -30, -40
hitsound        = S2, 3
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 65,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 30, 1
pausetime       = 2, 5
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -40, -70
hitsound        = S64, 8
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 6)
value = S2, 7
channel = 0



;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 210, 1];お楽しみはこれからさ
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S32, 32
channel = 2
volume          = 255

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 4)
trigger2 = (AnimElem = 8)
value = S0, 9
channel = 0
volume          = 155


[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 45,45,45
ignorehitpause = 1


[State 0:     ChangeState]
type            = ChangeState;敵もこっちも一人
triggerall = numpartner = 0
triggerall = enemy,numpartner = 0
trigger1        = time = 70
value           = 2456
ctrl		    = 0


[State 0:     ChangeState]
type            = ChangeState;敵が二人
triggerall = numpartner = 0
triggerall = enemy,numpartner = 1
trigger1        = time = 69
value           = 9989
ctrl		    = 0


[State 0:     ChangeState]
type            = ChangeState;こっちが二人
triggerall = numpartner = 1
triggerall = enemy,numpartner = 0
trigger1        = time = 69
value           = 9989
ctrl		    = 0

[State 0:     ChangeState]
type            = ChangeState;こっちが二人
triggerall = numpartner = 1
triggerall = enemy,numpartner = 1
trigger1        = time = 69
value           = 9989
ctrl		    = 0

[State -2, 5];パワー追加
type = poweradd 
triggerall = numpartner = 1
triggerall = enemy,numpartner = 1
trigger1= time = 1
value = 6000

[State -2, 5];パワー追加
type = poweradd 
triggerall = enemy,numpartner = 0
triggerall = numpartner = 1
trigger1= time = 1
value = 6000

[State -2, 5];パワー追加
type = poweradd 
triggerall = enemy,numpartner = 1
triggerall = numpartner = 0
trigger1= time = 1
value = 6000

[Statedef 2456];レイジング発動２
type            = S
movetype        = A
physics         = S
anim            = 2456
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 30,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 45,45,45
ignorehitpause = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
pos             = 10,0

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 2)
x               = (P2BodyDist X+50)

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
anim = 9852
ID = 9852
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.1,2.1
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 6)
x               = (P2BodyDist X+50)
y               = (P2BodyDist y-1)

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
value           = 7,32
volume          = 155
channel         = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 5)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 70, 15
pausetime       = 7, 5
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -15, -76
hitsound        = S2, 0
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -19,-9.4
air.velocity    = -19,-7.8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 100, 1
pausetime       = 8, 2
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -40, -70
hitsound        = S7, 27
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -11, -16
air.velocity    = -11, -16
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 26
envshake.freq   = 67
envshake.ampl   = -11
envshake.phase  = 3

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 6)
value = S1, 6
channel = -1


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 200
add		        = -85,-85,-85
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 3)
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.1


[State 0:     ChangeState]
type            = ChangeState
trigger1 = (AnimTime = 0)
value           = 2457
ctrl		    = 0

;;;;;;;;;;;;;;;;レイジングブラスト発動3
[Statedef 2457]
type            = S
movetype        = A
physics         = S
anim            = 2457
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 7,34
volume          = 255
channel         = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 1)
value           = 255,255,255
time            = 2
under           = 1

[State 1002:     AfterImage]
type            = AfterImage
trigger1 = time = 1
time            = 90
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 5)
x               = (P2BodyDist X-1)
y               = (P2BodyDist Y-15)


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 10
add		        = -85,-85,-85
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = ((time >1) && (timemod = 42,0)) 
value           = 255,255,255
time            = 2
under           = 1


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >1) && (timemod = 30,0)) 
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 5)
pos             = 50,0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 7)
trigger4        = (AnimElem = 8)
x		        = 6
y		        = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 50, 1
pausetime       = 2, 4
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -50, -50
hitsound        = S2, 0
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 50, 1
pausetime       = 1, 5
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -30, -40
hitsound        = S2, 0
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
snap = 65,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 50, 1
pausetime       = 2, 5
guard.pausetime = 6, 7
sparkno = S9200
guard.sparkno	= S9350
sparkxy	 = -40, -70
hitsound        = S2, 0
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -8, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 6)
value = S1, 6
channel = 0



[State 210, 1];弱振り音
type = PlaySnd
trigger1 = (AnimElem = 4)
trigger2 = (AnimElem = 8)
value = S2, 5
channel = 0
volume          = 155


[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 45,45,45
ignorehitpause = 1


[State 0:     ChangeState];敵が喰らってる状態だったら
type            = ChangeState
triggerall = enemy,movetype = H
trigger1        = time = 35
value           = 2458
ctrl		    = 0

[State 0:     ChangeState];攻撃当ってない時戻る
type            = ChangeState
triggerall = enemy,movetype != H
trigger1        = time = 38
value           = 2966
ctrl		    = 0



[Statedef 2458];レイジング発動4
type            = S
movetype        = A
physics         = S
anim            = 2458
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1


[State 8001, Explod-3];岩激突背景
type = Explod
trigger1 = (animelem = 24)
Anim = 5666
id = 5666
pos = 0, -20
postype = back
ownpal = 1
bindtime = -1
removetime = 194
scale = 1,1
sprpriority = -1
supermovetime = 194
supermove = 194

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 45)

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 39)
x		        = 70
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 43)
x		        = 40
y		        = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1 = time = 1
time            = 270
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 0,0,255
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = (time < 80) 
trigger1        = ((time >1) && (timemod = 90,0)) 
Anim = 9428
Pos = 0,-25
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 40
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8,.8

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 45,45,45
ignorehitpause = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3        = (AnimElem = 13)
pos             = 10,0



[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 21)
pos             = 20,-30

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 7)


[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 12)


[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 22)


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 23
anim = 9852
ID = 9852
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.1,2.1
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 6)
x               = (P2BodyDist X+50)
y               = (P2BodyDist y-1)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 12)
x               = (P2BodyDist X-50)
y               = (P2BodyDist y-20)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 21)
x               = (P2BodyDist X-50)

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 20)
y = 0

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 5)
trigger2        = (AnimElem = 10)
trigger3        = (AnimElem = 20)
value           = 7,32
volume          = 255
channel         = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 5)
trigger2        = (AnimElem = 9)
trigger3        = (AnimElem = 20)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 80, 15
pausetime       = 5, 6
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -40, 17
hitsound        = S7, 27
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -19,4.4
air.velocity    = -19,4.8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 40


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = C, NA
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 80, 15
pausetime       = 5, 5
guard.pausetime = 22, 25
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -65, -56
hitsound        = S7, 27
guardsound      = S3, 0 
ground.slidetime    = 7
ground.hittime  = 11
guard.hittime   = 11
air.hittime     = 14
ground.velocity = -19,-24.4
air.velocity    = -19,-24.8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = 15
envshake.phase  = 4
snap = 70

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 13)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 100, 1
pausetime       = 11, 10
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -40, -20
hitsound        = S7, 27
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -11, 16
air.velocity    = -11, 16
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 26
envshake.freq   = 67
envshake.ampl   = -11
envshake.phase  = 3


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 23)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 180, 1
pausetime       = 2, 5
guard.pausetime = 6, 7
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -40, -70
hitsound        = S7, 29
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -25, -8
air.velocity    = -25, -8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 26
envshake.freq   = 67
envshake.ampl   = -11
envshake.phase  = 3
p2stateno = 6668


[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 2)
trigger2 = (AnimElem = 6)
trigger3 = (AnimElem = 13)
value = S1, 6
channel = -1

[State 210, 1];強振り音
type = PlaySnd
trigger1 = (AnimElem = 22)
value = S55, 555
channel = -1

[State 210, 1];吹っ飛び音
type = PlaySnd
trigger1 = (AnimElem = 24)
value = S754, 44
channel = -1

[State 210, 1];敵の岩ぶつかり音
type = PlaySnd
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
value = S7, 31
channel = 6

[State 210, 1];敵の岩ぶつかり音
type = PlaySnd
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
value = S31, 122
channel = 7

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 23)
Anim = 9400
Pos = -20,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1.1

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 39)
x               = (P2BodyDist X+100)


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 39)
value           = 7,34
volume          = 155
channel         = -1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = time = 270
value           = 43,666
volume          = 255
channel         = -1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 270
Anim = 9455
Pos = -2,5
Id = 9455
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 2, 1.3

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 23, >= 3 && AnimElem = 39
value = 0
movecamera = 0,1
time = 200
ignorehitpause = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 270
Anim = 7926
Pos = -72,5
Id = 7926
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 0
Postype = p2
SuperMove = 1
ownpal = 1
scale = 3, 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
value           = 255,255,255
time            = 2
under           = 0

;岩
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
Anim = 5667
Pos = 20,-210
Id = 5667
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 3.8, 3.8


;煙
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
Anim = 9188
Pos = -70,120
Id = 9188
sprpriority = 1
removeongethit = 1
removetime = 9
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 8, 12

;煙
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
Anim = 7926
Pos = -180,130
Id = 7926
sprpriority = 1
removeongethit = 1
removetime = 10
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 2, 7

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = (AnimElem = 25)
trigger2 = (AnimElem = 26)
trigger3 = (AnimElem = 27)
trigger4 = (AnimElem = 28)
trigger5 = (AnimElem = 29)
trigger6 = (AnimElem = 30)
time 			= 15
freq 			= 115
ampl   = -8
phase  = 7



[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 120
add		        = -85,-85,-85
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1 = (AnimElem = 25)
time		    = 190
add		        = -285,-285,-285
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = time = 270
time 			= 15
freq 			= 45
ampl   = -5
phase  = 5

[State 0:     ChangeState]
type            = ChangeState
trigger1 = (AnimTime = 0)
value           = 0
ctrl		    = 1

;吹っ飛ばされて岩にぶつかりまくる相手
[Statedef 6668]
type = A
movetype = H
physics = S
anim = 6668
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = -1

[State 170, 無敵]
type = NotHitBy
trigger1 =(1)
value = SCA
time = 5

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 80
add		        = -255,-255,-255
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 9027, 1]
type = Assertspecial
trigger1 = (1)
flag = NOfg

[State 241]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 190
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time < 190
trigger1        = (1)
time		    = 5
add		        = -235,-235,-235
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 25
value = 12322
ctrl = 0


[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 26
value = 33334
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 27
value = 5670
ctrl = 0


[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 28
value = 5050
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 29
value = 16123
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 30
value = 5050
ctrl = 0

[State -2, 5];ダメージ;回復早すぎる奴用追加ダメージ
type = lifeadd 
triggerall      = P1Name = "Z-TON" ;←ここにソイツの名前
trigger1= time = 1
value = -200
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(22) = 1
trigger1= enemy,AnimElem = 25
trigger2= enemy,AnimElem = 26
trigger3= enemy,AnimElem = 27
trigger4= enemy,AnimElem = 28
trigger5= enemy,AnimElem = 29
trigger6= enemy,AnimElem = 30
value = -225
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 1
triggerall = enemy,var(9) = 1
trigger1= enemy,AnimElem = 25
trigger2= enemy,AnimElem = 26
trigger3= enemy,AnimElem = 27
trigger4= enemy,AnimElem = 28
trigger5= enemy,AnimElem = 29
trigger6= enemy,AnimElem = 30
value = -85
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 1
trigger1= enemy,AnimElem = 25
trigger2= enemy,AnimElem = 26
trigger3= enemy,AnimElem = 27
trigger4= enemy,AnimElem = 28
trigger5= enemy,AnimElem = 29
trigger6= enemy,AnimElem = 30
value = -50
kill = 1

[State -2, 5];ダメージ
type = lifeadd 
triggerall = enemy,var(22) = 0
triggerall = enemy,var(25) = 0
triggerall = enemy,var(9) = 0
trigger1= enemy,AnimElem = 25
trigger2= enemy,AnimElem = 26
trigger3= enemy,AnimElem = 27
trigger4= enemy,AnimElem = 28
trigger5= enemy,AnimElem = 29
trigger6= enemy,AnimElem = 30
value = -33
kill = 1


[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 26
value = 5050
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 28
value = 5350
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= enemy,AnimElem = 29
value = 5050
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= time = 30
value = 5030
ctrl = 0

[State 200, 0]
type = Changeanim
trigger1= time = 190
value = 33222
ctrl = 0

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 1
x = (P2BodyDist X+22)
y               = 0

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 5
x = (P2BodyDist X+32)
y               = 0

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 10
x = (P2BodyDist X+72)
y               = 0

[State 500:     PosAdd];吹っ飛び中
type = PosSet
triggerall = time < 198
trigger1        = ((time >18) && (timemod = 4,0)) 
x               = 12
y               = -36


[State 500:     PosAdd];吹っ飛び中
type = PosSet
triggerall = time < 198
trigger1        = ((time >17) && (timemod = 2,0)) 
x               = 2
y               = -50

[State 500:     PosAdd];吹っ飛び中
type = PosSet
triggerall = time < 198
trigger1        = ((time >15) && (timemod = 4,0)) 
x               = 12
y               = -45

[State 500:     Turn]
type            = Turn
trigger1        = time = 10


[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 199
y = -80
x = 50

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 201
y = -50
x = 60

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 202
y = 0
x = 70

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 203
y = 30
x = 80

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 204
y = -20
x               = (P2BodyDist X+40)

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 205
y = 0
x               = (P2BodyDist X+50)

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 206
y = 30
x               = (P2BodyDist X+60)

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 207
y = 30
x               = (P2BodyDist X+70)

[State 52, 2];吹っ飛び位置
type = PosSet
trigger1 = time = 210
y = 30
x               = (P2BodyDist X+80)

[State 200,1]
type = SelfState
triggerall = alive = 1
trigger1= time = 210
value = 5080
ctrl		    = 1



[State 0:     ChangeState]
type            = ChangeState
triggerall = enemy,movetype != H
trigger1 		= (AnimElem = 24)
value           = 2966
ctrl		    = 0


[State 200,1]
type = SelfState
triggerall = alive = 0
trigger1= time = 210
value = 5080
ctrl		    = 0


;;;;超絶爆発波;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 9129]
type = S
movetype = A
physics = S
anim = 9129
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 5)
time 			= 35
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 35
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time > 8
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 5)
time		    = 35
add		        = -125,-125,-125
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 7,30
volume          = 255
channel         = 1


[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 9130
ctrl = 1


;;;;超絶爆発波・発動;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 9130]
type = S
movetype = A
physics = S
anim = 9130
velset = 0,0
ctrl = 0
poweradd = -8000
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 11

[State 0:     Screen Flash]
type            = EnvColor
triggerall        = (time < 160)
trigger1        = ((time >105) && (timemod = 4,0)) 
value           = 255,255,255
time            = 1
under           = 1


[State 191, 4];広がる覆うリング
type = Explod
trigger1 = time = 54
Anim = 8783
Pos = 0,-50
Id = 8783
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 3,3

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 80) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p2
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 80) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p2
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 80) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p2
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 2
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 12
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9353
ID = 9353
pos = 0,0
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1
scale = 2,5

[State 7030, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9850
ID = 9850
pos = 0,-40
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
scale = 2,4


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = S, NA
hitflag         = MAFPD
guardflag       = M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 39999, 200
pausetime       = 37, 3
guard.pausetime	= 1,63
sparkno = S92002
guard.sparkno	= S93502
sparkxy	 = -18, -70
hitsound        = S53, 322
guardsound      = S53, 322
ground.slidetime    = 55
ground.cornerpush.veloff = -3
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 20
ground.velocity = -33, -17
guard.pausetime	= 1,70
air.velocity    = -3, -17
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3



[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 7)
time 			= 70
freq 			= 168
ampl   = -28
phase  = 9

;ring
[State 800, 6]
type = Explod
trigger1 = AnimElem = 6
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 3.1, 3.1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 7
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 3, 1.7

;爆発
[State 800, 6]
type = Explod
trigger1 = AnimElem = 7
Anim = 9912
Pos = -2,0
Id = 9912
sprpriority = 5
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p2
ownpal = 1
scale = 2.4, 6

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 77
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 77
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 39,39,39
ignorehitpause = 1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 43,6
volume          = 255
channel         = 0

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 7,55
volume          = 255
channel         = -1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = time = 55
value           = 545,5
volume          = 255
channel         = -1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 7,35
volume          = 255
channel         = -1

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 0,0
volume          = 255
channel         = -1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 77
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 0
time		    = 77
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0



[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 78
time		    = 25
add		        = -100,-100,-100
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6500
ID              = 6500
pos		        = 42,-80
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 6501
ID              = 6501
pos		        = 42,-80
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 12
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State -1,Helper];爆発ヘルパー
type = Helper
trigger1 = AnimElem = 7
name = "singo"
ID = 9912
pos = 0, 0
postype = p2
sprpriority = 9
stateno = 9912
keyctrl = 0
ownpal = 1
bindtime = 1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;爆発波ヘルパー
[Statedef 9912]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9912

[State 9940: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,NP,SP,HP
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = ((time >1) && (timemod = 4,0)) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = movecontact = 1
slot            = 1
time            = 1
stateno         = 9912
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 8888,500
pausetime		= 0,3
guard.pausetime	= 1,70
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 44
ground.hittime	= 44
air.hittime		= 20
ground.velocity	= 4,-17
fall = 1
air.fall = 1
air.velocity	= 4,-17
airguard.velocity	= 3,-15
ground.cornerpush.veloff = 0
down.velocity	= 18,-17
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0


[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 9999,600
pausetime		= 0,3
guard.pausetime	= 1,70
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= 4,-17
fall = 1
air.fall = 1
air.velocity	= 4,-17
airguard.velocity	= 20,-7
ground.cornerpush.veloff = 0
down.velocity	= 22,-19
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
trigger1		= (1)
attr			= S, NT
hitflag		= MAFPD
guardflag		= M
animtype        = diagup
air.animtype    = diagup
ground.type     = high
air.type = heavy
priority		= 9, dodge
damage		= 9999,750
pausetime		= 0,3
guard.pausetime	= 1,70
sparkno		= S8215
guard.sparkno	= S8215
sparkxy		= 0,0
hitsound		= S82,5
guardsound		= S28,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= 4,-17
fall = 1
air.fall = 1
air.velocity	= 4,-17
airguard.velocity	= 20,-7
ground.cornerpush.veloff = 0
down.velocity	= 22,-20
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = time = 30

;バーストリミット;;;;;;;（「超本気」の更に上の本気状態）
[Statedef 12345]
type = S
movetype = A
physics = S
anim = 12345
velset = 0,0
ctrl = 0
poweradd = -9000
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 4
add		        = -75,-75,-75
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 8)
value           = 255,255,255
time            = 4
under           = 1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 4)
value = S211, 2
channel = -1
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 8)
value = S545, 5
channel = -1
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S7, 30
channel = 0
volume = 225

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 1
Anim = 9428
Pos = 0,-55
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7
supermove       = 777
pausemovetime   = 777



[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 190
flag           = NoBarDisplay

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 100
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.3,1.3
supermove       = 777
pausemovetime   = 777


[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= ((time >40) && (timemod = 8,0)) 
time 			= 10
freq 			= 75
ampl 			= 6


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))


[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 8
Anim = 9950
Pos = 0,-140
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2
supermove       = 777
pausemovetime   = 777


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 9850
ID = 9850
pos = 5,-140
postype = p1
facing = 1
bindtime = -1
scale = 2.1,2.1
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777


[State 200, 0]
type = ChangeState
trigger1 = time = 100
value = 12346
ctrl = 0

;バーストリミット;;;;;;;（状態変化完了！）
[Statedef 12346]
type = S
movetype = A
physics = S
anim = 12346
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 9027, 1]
type = Assertspecial
trigger1 = (1)
flag = NOfg

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S3, 1
channel = -1
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S12, 9
channel = 0
volume = 225

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 67
flag           = NoBarDisplay

[State 191, 4];リング
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9852
Pos = 0,-195
Id = 9852
sprpriority = 1
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2
supermove       = 777
pausemovetime   = 777

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-195
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.7, 1.1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 1)
time 			= 30
freq 			= 85
ampl   = -15
phase  = 5


;風
[State 191, 3]
type = Explod
trigger1 = (AnimElem = 1) 
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = .7,.7
supermove       = 777
pausemovetime   = 777

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 1
value = 9999


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 3
Anim = 9428
Pos = 0,-195
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9428
Pos = 0,-195
Id = 9428
sprpriority = 4
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7,.7
supermove       = 777
pausemovetime   = 777

[State 0:     HitDef];状態変化した瞬間に敵吹っ飛び（投げ属性
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -10.9
air.velocity    = -20, -10.8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2);状態変化した瞬間に敵吹っ飛び（打撃属性
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 1
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S73, 263
guardsound      = S73, 236
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -10.9
air.velocity    = -20, -10.8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -20, -10
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0

;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1.3,1.3



[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 2
Anim = 9950
Pos = 0,-190
Id = 9950
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3,3
supermove       = 777
pausemovetime   = 777


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 9850
ID = 9850
pos = 5,-190
postype = p1
facing = 1
bindtime = -1
scale = 2.4,2.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 9850
ID = 9850
pos = 5,-190
postype = p1
facing = 1
bindtime = -1
scale = 2.8,2.8
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 0:     1]
type            = NotHitBy;変化した後の無敵時間
trigger1        = (AnimElem = 3)
value           = SCA
time            = 200

[State life, 2];バーストリミットスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(22) = 1

[State 210, 1];
type = PlaySnd
trigger1 = time = 1
value = S7, 21
channel = -1
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = time = 2
value = S7, 35
channel = -1
volume = 225

[State 0:     Screen Flash]
type            = EnvColor
triggerall = (time < 40)
trigger1 = ((time >1) && (timemod = 6,0)) 
value           = 255,255,255
time            = 4
under           = 0

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 15)
value = S1, 2
channel = -1
volume = 225

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S31, 122
channel = -1
volume = 225

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

超４当て身時アクション
[Statedef 1815]
type = S
movetype = I
physics = S
anim = 1815
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 65
flag           = NoBarDisplay


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 12
Anim = 9400
Pos = 30,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = 1
Postype = p1
ownpal = 1
scale = 2.2, 1.3

;パンチエフェクト
[State 800, 6]
type = Explod
trigger1 = AnimElem = 12
Anim = 9300
Pos = 0,-50
Id = 9300
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 1, 1

[State 500:     Turn]
type            = Turn
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11

[State 500:     PosAdd]
type            = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
x               = (P2BodyDist X-55)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
x		        = 10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 10
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 13
x		        = -23
y		        = 0

[State -2, 5];削りダメージ
type = lifeadd 
trigger1= AnimElem = 12
value = -100
kill　= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value           = 255,255,255
time            = 2
under           = 1

[State 210, 1];
type = PlaySnd
trigger1 = AnimElem = 12
value = S3, 0
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value = S7, 32
channel = -1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value           = 255,255,255
time            = 2
under           = 1

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 12
anim = 9850
ID = 9850
pos = -35,-50
postype = p1
facing = 1
bindtime = 1
scale = 2,2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 12)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

[State 210, 1];
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = S2, 5
channel = -1


;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 1
Anim = 9400
Pos = 15,0
Id = 9400
sprpriority = -1
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3, 1.2

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= 4



[State 0:		Helper]
type			= Helper
trigger1		= (Time > 1) && ((GameTime%5) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p2
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 210, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

