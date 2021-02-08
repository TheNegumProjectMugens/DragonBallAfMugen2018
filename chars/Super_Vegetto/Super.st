;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;超サイヤ人３ベジット;;;;
[Statedef 12272]
type = S
movetype = A
physics = S
anim = 12272
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2



[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x		        = 20
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 5
x		        = 5
y		        = 0


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 1
time 			= 3
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 3
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
x		        = 1
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 7
x		        = 1
y		        = 0

[State 191, 4];リング
type = Explod
trigger1 = (AnimElem = 5)
Anim = 9852
Pos = 0,-35
Id = 9852
sprpriority = 1
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,2
supermove       = 777
pausemovetime   = 777

;瞬間移動して相手の前
[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S7, 32
channel = 0


[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 3)
value = S2, 5
channel = -1


[State 52, 2];位置
type = PosSet
trigger1 = (AnimElem = 2)
x = (P2BodyDist X-60)
y               = 0

[State 52, 2];位置
type = Posadd
trigger1 = (AnimElem = 3)
x = (P2BodyDist X-40)
y               = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 1)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NT
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 300, 50
pausetime       = 14, 7
guard.pausetime = 10, 10
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S7, 27
guardsound      = S3, 0
ground.slidetime    = 22
ground.cornerpush.veloff = -11
ground.hittime  = 22
guard.hittime   = 27
air.hittime     = 20
ground.velocity = -19, -2
air.velocity    = -19, -2
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
givepower       = 0, 3
envshake.time   = 30
envshake.freq   = 69
envshake.ampl   = -15
envshake.phase  = 5
snap = 130,0
p2stateno       = 11412;超３にやられるすてーとへ



[State 200, 0]
type = ChangeState;当ったら超３化
triggerall = enemy,stateno = 11412
trigger1        = (AnimElem = 8)
value = 12444
ctrl = 0



[State 500:     AfterImage]
type            = AfterImage
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

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;敵が超３にやられるすてーと
[Statedef 11412]
type = S
movetype = H
physics = S
anim = 11412
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 8



[State -2, 5];減る体力
type = lifeadd 
trigger1= time = 440
value = -53212
kill = 1

[State 200, 0]
type = Changeanim
trigger1= time = 1
value = 5050
ctrl = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag           = NoBarDisplay


[State 52, 2];位置
type = PosSet
trigger1 = time = 1
x = (P2BodyDist X-50)
y =  (P2BodyDist Y-10)

[State 52, 2];位置
type = Posadd
trigger1 = time = 3
x = (P2BodyDist X-80)
y =  (P2BodyDist Y-20)

[State 52, 2];位置
type = Posadd
trigger1 = time = 4
x = (P2BodyDist X-110)
y =  (P2BodyDist Y-30)

[State 52, 2];位置
type = Posadd
trigger1 = time = 5
x = (P2BodyDist X-150)
y =  (P2BodyDist Y-30)

[State 52, 2];位置
type = Posadd
trigger1 = time = 6
x = (P2BodyDist X-190)
y =  (P2BodyDist Y-30)

[State 52, 2];位置
type = Posadd
trigger1 = time = 7
x = (P2BodyDist X-250)
y =  (P2BodyDist Y-30)

[State 52, 2];位置
type = Posadd
trigger1 = time = 8
x = (P2BodyDist X-380)
y =  (P2BodyDist Y-30)

[State 52, 2];位置
type = Posadd
trigger1 = time = 333
x = 0
y = -24

[State 52, 2]
type = Posadd
trigger1 = time = 335
x = (P2BodyDist X+300)
y =  (P2BodyDist Y+25)

[State 52, 2]
type = Posadd
trigger1 = time = 345
x = (P2BodyDist X+140)
y =  (P2BodyDist Y-40)

[State 52, 2]
type = Posadd
trigger1 = time = 350
x = (P2BodyDist X+100)
y =  (P2BodyDist Y+25)

[State 52, 2]
type = Posadd
trigger1 = time = 354
x = (P2BodyDist X+100)
y =  (P2BodyDist Y-45)

[State 52, 2]
type = Posadd
trigger1 = time = 360
x = (P2BodyDist X+100)
y =  (P2BodyDist Y+20)

[State 52, 2]
type = Posadd
trigger1 = time = 365
x = (P2BodyDist X+90)
y =  (P2BodyDist Y-40)

[State 52, 2]
type = Posadd
trigger1 = time = 370
x = (P2BodyDist X+90)
y =  (P2BodyDist Y+25)

[State 52, 2]
type = Posadd
trigger1 = time = 375
x = (P2BodyDist X+80)
y =  (P2BodyDist Y-35)

[State 52, 2]
type = Posadd
trigger1 = time = 379
x = (P2BodyDist X-20)
y =  (P2BodyDist Y+28)

[State 52, 2]
type = Posadd
trigger1 = time = 385
x = (P2BodyDist X-60)
y =  (P2BodyDist Y-49)

[State 52, 2]
type = Posadd
trigger1 = time = 395
x = (P2BodyDist X-100)
y =  (P2BodyDist Y+25)

[State 52, 2]
type = Posadd
trigger1 = time = 395
x = (P2BodyDist X-200)
y =  (P2BodyDist Y-45)

[State 210, 1];
type = PlaySnd
trigger1 = time = 347
value = S11, 0
channel = -1
volume = 255

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 335)
trigger1        = (Time > 10)
flag            = Invisible

[State -2]
type = PalFX;点滅
trigger1 = (Time < 335) && (GameTime%3) = 0
time = 1
add = 177,177,177
ignorehitpause = 1

[State 0:     AfterImage]
type            = AfterImage
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

[State 0:     1]
type            = NotHitBy;無敵時間
trigger1        = time = 1
value           = SCA
time            = 400


[State 210, 0]
type = ChangeState
trigger1 = time = 2000
value = 0
ctrl = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;超サイヤ人３ベジット;;;;;発動
[Statedef 12444]
type = S
movetype = A
physics = S
anim = 12444
velset = 0,0
ctrl = 0
poweradd = 0
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
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 8001, Explod-3];超３化背景
type = Explod
trigger1 = (animelem = 6)
Anim = 5666
id = 5666
pos = 0, -20
postype = back
ownpal = 1
bindtime = -1
removetime = 530
scale = 1,1
sprpriority = -1
supermovetime = 530
supermove = 530


[State 52, 2]
type = PosSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 32
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
supermove       = 777
pausemovetime   = 777


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = ((time >50) && (timemod = 15,0)) 
value           = 255,255,255
time            = 2
under           = 1

[State 191, 4];リング
type = Explod
trigger1 = (AnimElem = 5)
Anim = 9852
Pos = 0,-35
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

[State 191, 4];リング
type = Explod
trigger1 = (AnimElem = 32)
Anim = 9852
Pos = 0,-35
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

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 32)
value           = 255,255,255
time            = 2
under           = 1


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 32
Anim = 9420
Pos = 0,-55
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9,.9
supermove       = 777
pausemovetime   = 777

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 2)
value = S7, 30
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 32)
value = S545, 5
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 4)
value = S3, 1
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 5)
value = S557, 557
channel = 0
volume = 225


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = time = 90
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
supermove       = 777
pausemovetime   = 777


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = time = 140
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
supermove       = 777
pausemovetime   = 777

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag           = NoBarDisplay

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 2
time 			= 166
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 166
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 191, 4];オーラ
type = Explod
trigger1 = (AnimElem = 4) 
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 160
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.7,1.7
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = (AnimElem = 4) 
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 160
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.1,1.1
supermove       = 777
pausemovetime   = 777


[State 191, 4];オーラ
type = Explod
trigger1 = (AnimElem = 31) 
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 1
removeongethit = 1
removetime = 50
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,.3
supermove       = 777
pausemovetime   = 777

[State 191, 4];リング
type = Explod
trigger1 = time = 166
Anim = 9852
Pos = 0,-5
Id = 9852
sprpriority = 1
removeongethit = 1
removetime = 10
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3,3
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = time = 166
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 1
removeongethit = 1
removetime = 10
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3,3
supermove       = 777
pausemovetime   = 777

;ring;地面
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 4) 
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 166
bindtime = -1
Postype = p1
ownpal = 1
scale = 1.8, 1
supermove       = 777
pausemovetime   = 777

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 166
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p1
ownpal = 1
scale = 3, 1.2
supermove       = 777
pausemovetime   = 777

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
scale = 1.3,1.3
supermove       = 777
pausemovetime   = 777

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 4)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= ((time >53) && (timemod = 8,0)) 
time 			= 10
freq 			= 75
ampl 			= 6



[State 0:		Helper]
type			= Helper
trigger1		= (Time > 50) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
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
trigger1		= (Time > 50) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
trigger1		= (Time > 50) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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


[State -2]
type = PalFX;点滅
triggerall = (Time > 50)
triggerall = (Time < 120) 
trigger1 = (GameTime%3) = 0
time = 1
add = 65,65,65
ignorehitpause = 1

[State -2]
type = PalFX;点滅
triggerall = (Time > 121) 
trigger1 = (GameTime%3) = 0
time = 1
add = 155,155,155
ignorehitpause = 1

[State 9027, 1]
type = Assertspecial
trigger1 = (1)
flag = NOfg

[State 200, 0]
type = ChangeState
trigger1 = time = 167;188
value = 12445
ctrl = 0

;超サイヤ人３ベジット;;;;;;;（変身完了！そしてかめはめ波）
[Statedef 12445]
type = S
movetype = A
physics = S
anim = 12445
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 1
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

[State 0, 画面自分]
type = ScreenBound
trigger1 = time < 300
value = 0
movecamera = 1,0
time = 99
ignorehitpause = 1

[State 52, 2]
type = PosSet
trigger1 = AnimElem = 26
y = 0
x = -15

[State life, 2];超３スイッチ
type = varset
trigger1 = (AnimElem = 2)
var(16) = 1

[State 100, 1]
type = Explod
trigger1 = time = 330
Anim = 7682
postype = p2
pos			= 0,0
Anim = 7682
sprpriority = -1
removetime = -2
Postype = p1
bindtime = -2
SuperMove = 1
ownpal = 1
scale = 11, 11
ontop = 0

[State 210, 1];
type = PlaySnd
trigger1 = (animelem = 25)
value = S766, 56
channel = -1

[State 210, 1];どうだ
type = PlaySnd
trigger1 = (AnimElem = 22)
value = S86, 75
channel = 5

[State 210, 1];気の音
type = PlaySnd
trigger1 = (AnimElem = 24)
value = S2444, 6
channel = 6
volume = 255

[State 210, 1];気の音
type = PlaySnd
trigger1 = (AnimElem = 24)
value = S2444, 6
channel = 6
volume = 255

[State 210, 1];気の音
type = PlaySnd
trigger1 = time = 370
value = S766, 56
channel = 6
volume = 255

[State 210, 1];
type = PlaySnd
trigger1 = time = 300
value = S0, 0
channel = -1


[State 191, 4]
type = Explod
trigger1 = time = 350
Anim = 7682
pos	= 0,0
Id = 7682
sprpriority = 5
removeongethit = 1
removetime = 100
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 4,4
supermove       = 777
pausemovetime   = 777
ontop = 1


[State 191, 4]
type = Explod
trigger1 = time = 356
Anim = 7682
pos	= -80,33
Id = 7682
sprpriority = 6
removeongethit = 1
removetime = 50
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 6,6
supermove       = 777
pausemovetime   = 777
ontop = 1

[State 960: Helper];ヘルパー
type = Helper
trigger1 = animelem = 23
helpertype = Normal
pos	= 40,-110
postype	= p1
facing = 1
stateno	= 12322
keyctrl	= 0
ownpal = 1
bindtime = -1
supermovetime = 200
pausemovetime = 200

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 6)
value           = 255,255,255
time            = 3
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = (AnimElem = 30)
value           = 255,255,255
time            = 3
under           = 0


;リング
[State 980, 3]
type = Explod
trigger1 = (AnimElem = 6)
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 4,4
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1



[State 191, 4];かめはめ波エフェクト
type = Explod
trigger1 = animelem = 22
Anim = 9901
pos	= -20,-164
Id = 9901
sprpriority = 5
removeongethit = 1
removetime = 70
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 4,4
supermove       = 777
pausemovetime   = 777


[State 9027, 1]
type = Assertspecial
trigger1 = time < 430
flag = NOfg

[State 0:     EnvShake]
type 			= EnvShake
triggerall        = (Time < 270)
trigger1 		= ((time >20) && (timemod = 8,0)) 
time 			= 10
freq 			= 55
ampl 			= 3

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 4
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State -2]
type = PalFX;点滅
triggerall        = (Time < 500)
trigger1 = (GameTime%3) = 0
time = 1
add = 75,75,75
ignorehitpause = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag           = NoBarDisplay

[State 191, 4];リング
type = Explod
trigger1 = animelem = 6
Anim = 6501
Pos = 0,-35
Id = 6501
sprpriority = 1
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 4,4
supermove       = 777
pausemovetime   = 777

[State 191, 4];リング
type = Explod
trigger1 = time = 10
Anim = 9852
Pos = 0,-35
Id = 9852
sprpriority = 1
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 4,4
supermove       = 777
pausemovetime   = 777


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 22)
time 			= 77
freq 			= 140
ampl   = -17
phase  = 4

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1 = time = 10
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
scale           = 1.7, 1.1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191, 4]
type = Explod
trigger1 = (AnimElem = 1) 
Anim = 9899
Pos = 0,-5
Id = 9899
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
trigger1        = (AnimElem = 1)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

;風
[State 191, 3]
type = Explod
trigger1 = time = 10
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

;ring;地面
[State 800, 6]
type = Explod
trigger1 = time = 10
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 200
bindtime = -1
Postype = p1
ownpal = 1
scale = 1.5, 1.2
supermove       = 777
pausemovetime   = 777

[State -2, 5];回復
type = lifeadd 
trigger1= AnimElem = 1
value = 9999

[State 191, 4];オーラ
type = Explod
trigger1 = time = 1
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 1
removeongethit = 1
removetime = 300
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.8,1.6
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = time = 3
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 4
removeongethit = 1
removetime = 300
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4,1.4
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = time = 2
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = -1
removeongethit = 1
removetime = 300
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.3,1.3
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = time = 1
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = -1
removeongethit = 1
removetime = 300
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2,.3
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = AnimElem = 6
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 200
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.8,2.1
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = AnimElem = 22
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 1
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 9,1
supermove       = 777
pausemovetime   = 777

[State 191, 4];オーラ
type = Explod
trigger1 = AnimElem = 22
Anim = 9416
Pos = 0,0
Id = 9416
sprpriority = 3
removeongethit = 1
removetime = 45
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 5,1
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 3
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
scale = 3,.5
supermove       = 777
pausemovetime   = 777


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall        = (Time < 240)
trigger1 = (Time > 20) && ((GameTime%40) = 0)
Anim = 9420
Pos = -20,-15
Id = 9420
sprpriority = 3
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.2,1.2
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall        = (Time < 240)
trigger1 = (Time > 40) && ((GameTime%30) = 0)
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
scale = .9,.9
supermove       = 777
pausemovetime   = 777


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall        = (Time < 240)
trigger1 = (Time > 30) && ((GameTime%70) = 0)
Anim = 9420
Pos = 0,-111
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1,1
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall        = (Time < 240)
trigger1 = (Time > 10) && ((GameTime%50) = 0)
Anim = 9420
Pos = 0,-55
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.1,1.1
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall        = (Time < 240)
trigger1 = (Time > 50) && ((GameTime%60) = 0)
Anim = 9428
Pos = -20,-55
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2,2
supermove       = 777
pausemovetime   = 777


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



;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
ownpal = 1
scale = 2.3, 1.3
supermove       = 777
pausemovetime   = 777


[State 191, 4];広がる覆うリング
type = Explod
trigger1 = AnimElem = 2
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
supermove       = 777
pausemovetime   = 777


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
scale = 2.4,2.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 0:		Helper]
type			= Helper
triggerall        = (Time < 270)
trigger1		= (Time > 70) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
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
triggerall        = (Time < 270)
trigger1		= (Time > 70) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
triggerall        = (Time < 270)
trigger1		= (Time > 70) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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

[State 0:     Screen Flash]
type            = EnvColor
triggerall = (time < 60)
trigger1 = ((time >1) && (timemod = 6,0)) 
value           = 255,255,255
time            = 4
under           = 0


;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9950
ID = 9950
pos = 0,-40
postype = p1
facing = 1
bindtime = -1
removetime = 150
sprpriority = 1
ownpal = 1
scale = 3.5,3.5
supermove       = 777
pausemovetime   = 777



[State 100, 1]
type = Explod
trigger1 = animelem = 23
Anim = 9901
postype = p1
pos			= -300,-100
Id = 9901
sprpriority = 2
removetime = 50
Postype = p1
bindtime = -1
SuperMove = 1
ownpal = 1
;facing = -1
scale = 5, 5

;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9950
ID = 9950
pos = -10,-47
postype = p1
facing = 1
bindtime = -1
removetime = 120
sprpriority = 2
ownpal = 1
scale = 3,3
supermove       = 777
pausemovetime   = 777



;発射前に手に集まる気
[State 970, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9902
ID = 9902
pos = -14,-66
postype = p1
facing = 1
bindtime = -1
scale = .39,.39
removetime = 157
sprpriority = 8
ownpal = 1
supermove       = 9999
pausemovetime   = 9999

;発射前に手に集まる気
[State 970, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 6501
ID = 6501
pos = -18,-63
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = 160
sprpriority = 8
ownpal = 1
supermove       = 9999
pausemovetime   = 9999

[State 210, 1];かめはめ溜め音
type = PlaySnd
trigger1 = AnimElem = 6
value = S65, 58
channel = 2

[State 210, 1];かめはめ発射音
type = PlaySnd
trigger1 = AnimElem = 22
value = S3, 5
channel = 2

[State 210, 1];しゅいしゅいおん
type = PlaySnd
trigger1 = time = 20
value = S1, 5
channel = 5

[State 210, 1];セリフ
type = PlaySnd
trigger1 = (AnimElem = 5)
value = S4, 467
channel = -1
volume = 200

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 210, 1];しゅいしゅいおん
type = PlaySnd
trigger1 = time = 140
value = S1, 5
channel = 5


[State 210, 1];しゅいしゅいおん
type = PlaySnd
trigger1 = time = 220
value = S1, 5
channel = 5

[State 210, 1];超３から超への戻り音
type = PlaySnd
trigger1 = (AnimElem = 30)
value = S7,55
channel = -1

[State 210, 1];
type = PlaySnd
trigger1 = (AnimElem = 1)
value = S31, 122
channel = -1

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------------------------------------------------------------------------------------------------------------

;超３・ファイナルかめはめ波;ヘルパー

;helepr
[Statedef 12322]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 0
ctrl = 0
anim = 12322

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag           = nokosnd

[State 0:     Invisible]
type            = AssertSpecial
trigger1 		= (1)
flag            = Invisible

[State 800,3]
type			= EnvShake
trigger1 		= time = 1
time   = 85
freq   = 84
ampl   = -35
phase  = 3


[State 9901,	Hitdef]
type = HitDef
trigger1 = (AnimElem = 16)
attr = S, NA
hitflag = MAFPD
guardflag = 
animtype = diagup
air.animtype = diagup
priority = 7, Hit
damage = 53210,5999
pausetime = 0,3
guard.pausetime	= 0,2
sparkno	= S4343
guard.sparkno	= S43434
hitsound = S763, 773
;guardsound = S0, 9
ground.type=High
ground.slidetime= 44
ground.hittime = 44
ground.velocity= -29,-5
air.velocity= -29,-5
getpower = 0
givepower = 0
fall=1
ownpal = 1
kill = 1

[State 9901,	Hitdef]
type = HitDef
trigger1 = (AnimElem = 15)
attr = S, NA
hitflag = MAFPD
guardflag = 
animtype = diagup
air.animtype = diagup
priority = 7, Hit
damage = 53210,5999
pausetime = 0,3
guard.pausetime	= 0,2
sparkno	= S4343
guard.sparkno	= S43434
hitsound = S763, 773
;guardsound = S0, 9
ground.type=High
ground.slidetime= 44
ground.hittime = 44
ground.velocity= -29,-5
air.velocity= -29,-5
getpower = 0
givepower = 0
fall=1
ownpal = 1
kill = 1

[State 9901, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 100, 1]
type = Explod
trigger1 = time = 1
Anim = 9901
postype = p1
pos			= -330,-183
Id = 9901
sprpriority = 999
removetime = 90
Postype = p1
bindtime = -2
SuperMove = 1
ownpal = 1
scale = 15, 15
ontop = 1



[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 999,9999


[State 9901: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 9901,	DestroySelf]
type			= DestroySelf
trigger1		= time = 500

;==================================================================================================================
;ビッグバン・アタック;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Statedef 8833]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 8833
poweradd = -3000
facep2          = 1

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

;風
[State 7030, 3]
type = Explod
trigger1 = AnimElem = 18
anim = 9430
ID = 9430
pos = 0,10
postype = p1
facing = 1
bindtime = 10
SuperMove = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 2.2,.2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = (AnimElem =18)
Anim = 9428
Pos = 82,-80
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2.5,2.5


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = (AnimElem =18)
Anim = 9428
Pos = 62,-80
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 3.5,3.5



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem =18)
value           = 255,255,255
time            = 5
under           = 1


[State 900: Helper]
type = Helper
trigger1 = animelem = 18
helpertype = Normal
pos	= 40,-60
postype	= p1
facing = 1
bindtime = -1
stateno	= 1725
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200



;ビッグバンエフェクト
[State 970, 3]
type = Explod
triggerall= var(9) = 1
triggerall= var(25) = 0
trigger1 = AnimElem = 18
anim = 1729
ID = 1729
pos = 45,-85
postype = p1
facing = 1
bindtime = -1
scale = 4,4
removetime = 80
sprpriority = 2
ownpal = 1
supermove       = 777
pausemovetime   = 777

;ビッグバンエフェクト
[State 970, 3]
type = Explod
triggerall= var(9) = 1
triggerall= var(25) = 1
trigger1 = AnimElem = 18
anim = 1729
ID = 1729
pos = 40,-85
postype = p1
facing = 1
bindtime = -1
scale = 5,5
removetime = 80
sprpriority = 2
ownpal = 1
supermove       = 777
pausemovetime   = 777

;ビッグバンエフェクト
[State 970, 3]
type = Explod
triggerall= var(9) = 1
triggerall= var(25) = 1
triggerall= var(22) = 1
trigger1 = AnimElem = 18
anim = 1729
ID = 1729
pos = 40,-85
postype = p1
facing = 1
bindtime = -1
scale = 6,6
removetime = 80
sprpriority = 2
ownpal = 1
supermove       = 777
pausemovetime   = 777

;ビッグバンエフェクト
[State 970, 3]
type = Explod
triggerall= var(9) = 0
triggerall= var(25) = 0
trigger1 = AnimElem = 18
anim = 1729
ID = 1729
pos = 50,-85
postype = p1
facing = 1
bindtime = -1
scale = 3,3
removetime = 80
sprpriority = 1
ownpal = 1
supermove       = 777
pausemovetime   = 777


[State -2]
type = PalFX;点滅
triggerall        = time < 150
triggerall        = time > 25
trigger1 = (GameTime%3) = 0
time = 1
add = 55,55,55
ignorehitpause = 1

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
sprpriority     = 0
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
scale           = 2.8, 2.3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9850
ID = 9850
pos = 5,-60
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9850
ID = 9850
pos = 80,-90
postype = p1
facing = 1
bindtime = -1
scale = .8,.8
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;発射前に手に集まる気
[State 970, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 9902
ID = 9902
pos = 75,-83
postype = p1
facing = 1
bindtime = -1
scale = .85,.85
removetime = 80
sprpriority = 2
ownpal = 1
supermove       = 777
pausemovetime   = 777


;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 18
anim = 9950
ID = 9950
pos = 75,-83
postype = p1
facing = 1
bindtime = -1
removetime = 10
sprpriority = -1
ownpal = 1
scale = .9,.9
supermove       = 777
pausemovetime   = 777

;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9950
ID = 9950
pos = 0,-60
postype = p1
facing = 1
bindtime = -1
removetime = 100
sprpriority = -1
ownpal = 1
scale = 1.5,1.5
supermove       = 777
pausemovetime   = 777

;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9950
ID = 9950
pos = 0,-60
postype = p1
facing = 1
bindtime = -1
removetime = 100
sprpriority = 2
ownpal = 1
scale = 1.7,1.7
supermove       = 777
pausemovetime   = 777



[State 0:		Helper]
type			= Helper
triggerall        = time < 80
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
triggerall        = time < 80
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
triggerall        = time < 80
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


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 110
flag           = NoBarDisplay

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 1
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem =1)
value           = 255,255,255
time            = 2
under           = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem =5)
value           = 255,255,255
time            = 2
under           = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem =1)
trigger2        = (AnimElem =7)
attr            = S, NT
hitflag         = MAFPD
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
ground.cornerpush.veloff = -35
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -14, -5.8
air.velocity    = -14, -5.8
air.juggle      = 0
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -6, -11
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
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 8
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S3, 62
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -35
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -14, -5.8
air.velocity    = -14, -5.8
air.juggle      = 0
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -6, -7
down.hittime    = 44
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 1
time 			= 15
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 15
darken 		    = 0
poweradd 		= 0
supermove       = 777
pausemovetime   = 777

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 35
time 			= 71
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 71
darken 		    = 0
poweradd 		= 0
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 1
Anim = 9428
Pos = 0,-40
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

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 5
Anim = 9428
Pos = 0,-40
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


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 9
Anim = 9428
Pos = 0,-40
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

;リング
[State 980, 3]
type = Explod
trigger1 = (AnimElem = 1)
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 1.1,1.1
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1

;リング
[State 980, 3]
type = Explod
trigger1 = (AnimElem = 1)
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 1.4,1.4
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1

;feu jaune
[State 980, 3]
type = Explod
trigger1 = (AnimElem = 1)
anim = 9900
ID = 9900
;pos = 5,-40
postype = p1
facing = 1
bindtime = -1
;scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1


;集中するバチバチ
[State 980, 5]
type = Explod
trigger1 = (AnimElem = 7)
Anim = 9420
Pos = 80,-90
Id = 9420
sprpriority = 6
removeongethit = 1
removetime = 100
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .7, .7


;地面
[State 980, 6]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = 120
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.2

;aura
[State 980, 4]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9410
Pos = 0,-2
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.9, 1.5

;aura
[State 980, 4]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9410
Pos = 0,-2
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.9, 1.5

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 20
add		        = -255,-255,-255
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 21
time		    = 100
add		        = -55,-55,-55
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 40
time		    = 100
add		        = -255,-255,-255
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 110
time		    = 60
add		        = -55,-55,-55
mul		        = 255,255,255
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 100, PlaySnd];ビッグバンアタークの言い始め
type = PlaySnd
trigger1 = animelem = 8
value = S86, 38
volume = 255
channel = 1

[State 100, PlaySnd];気音
type = PlaySnd
trigger1 = animelem = 1
value = S3, 1
channel = -1

[State 100, PlaySnd];広がるオーラ音
type = PlaySnd
trigger1 = animelem = 5
value = S545, 5
channel = -1



[State 100, PlaySnd];発射音した時の音
type = PlaySnd
trigger1 = animelem = 18
value = S3, 5
channel = 3

[State 100, PlaySnd];構え音
type = PlaySnd
trigger1 = animelem = 5
value = S7, 30
channel = -1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= AnimElem = 1
time 			= 15
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
triggerall        = time < 120
trigger1 		= (TimeMod = 25, 0)
time 			= 25
freq 			= 99
ampl 			= 4

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = AnimElem = 18
time 			= 40
freq 			= 99
ampl 			= -17

[State 901, Hurt]
type = TargetLifeAdd
triggerall= var(9) = 0
triggerall= var(25) = 0
trigger1 = (AnimElem = 19)
value = -300
kill = 1 



[State 901, Hurt]
type = TargetLifeAdd
triggerall= var(9) = 1
triggerall= var(25) = 0
triggerall= var(22) = 0
trigger1 = (AnimElem = 19)
value = -600
kill = 1 


[State 901, Hurt]
type = TargetLifeAdd
triggerall= var(9) = 1
triggerall= var(25) = 1
triggerall= var(22) = 0
trigger1 = (AnimElem = 19)
value = -900
kill = 1 

[State 901, Hurt]
type = TargetLifeAdd
triggerall= var(9) = 1
triggerall= var(25) = 1
triggerall= var(22) = 1
trigger1 = (AnimElem = 19)
value = -2700
kill = 1 

[State 900, 4];ビッグバン・アタックの動作終わり
type =  ChangeState
trigger1 = AnimTime = 0
value =  0
ctrl= 1

;ビッグバン・アタックヘルパー
[Statedef 1725]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
juggle = 6
ctrl = 0
anim = 1725

[State 9940:	HitDef]
type			= HitDef
trigger1        = (AnimElem = 1)
attr = S, HP
hitflag = MAFPD
guardflag = M
air.animtype =  DIAGUP
priority        = 9, dodge
sparkno = S9910
guard.sparkno	= S9910
sparkxy	 = 0, -40
damage   = 30,5
animtype = DIAGUP
pausetime = 1,4
hitsound   = S31,122
guardsound = S32,62
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-9
air.velocity= -25,-9
down.velocity= -25,-11
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 0
envshake.freq 	= -80
envshake.ampl 	= -22

[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(9) = 0
triggerall= parent,var(25) = 0
triggerall= parent,var(22) = 0
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 4)
trigger4        = (AnimElem = 5)
trigger5        = (AnimElem = 6)
trigger6        = (AnimElem = 7)
trigger7        = (AnimElem = 8)
trigger8        = (AnimElem = 9)
trigger9        = (AnimElem = 10)
trigger10        = (AnimElem = 11)
trigger11        = (AnimElem = 12)
trigger12        = (AnimElem = 13)
trigger13       = (AnimElem = 14)
trigger14        = (AnimElem = 15)
trigger15        = (AnimElem = 16)
trigger16        = (AnimElem = 17)
trigger17        = (AnimElem = 18)
trigger18        = (AnimElem = 19)
attr = S, HP
hitflag = MAFPD
guardflag = M
air.animtype =  DIAGUP
priority        = 9, dodge
sparkno = S99102
guard.sparkno	= S99102
sparkxy	 = 0, -40
damage   = 30,5
animtype = DIAGUP
pausetime = 1,4
hitsound   = S532,322
guardsound = S32,62
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-9
air.velocity= -25,-9
down.velocity= -25,-11
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 0
envshake.freq 	= -80
envshake.ampl 	= -22

[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(9) = 1
triggerall= parent,var(25) = 0
triggerall= parent,var(22) = 0
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 4)
trigger4        = (AnimElem = 5)
trigger5        = (AnimElem = 6)
trigger6        = (AnimElem = 7)
trigger7        = (AnimElem = 8)
trigger8        = (AnimElem = 9)
trigger9        = (AnimElem = 10)
trigger10        = (AnimElem = 11)
trigger11        = (AnimElem = 12)
trigger12        = (AnimElem = 13)
trigger13       = (AnimElem = 14)
trigger14        = (AnimElem = 15)
trigger15        = (AnimElem = 16)
trigger16        = (AnimElem = 17)
trigger17        = (AnimElem = 18)
trigger18        = (AnimElem = 19)
attr = S, HP
hitflag = MAFPD
guardflag = M
air.animtype =  DIAGUP
priority        = 7, dodge
sparkno = S93300
guard.sparkno	= S93530
sparkxy	 = 0, -50
damage   = 40,10
animtype = DIAGUP
down.velocity= -25,-11
pausetime = 1,4
hitsound   = S523,322
guardsound = S32,62
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-9
air.velocity= -25,-9
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 0
envshake.freq 	= -80
envshake.ampl 	= -22


[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(25) = 1
triggerall= parent,var(22) = 0
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 4)
trigger4        = (AnimElem = 5)
trigger5        = (AnimElem = 6)
trigger6        = (AnimElem = 7)
trigger7        = (AnimElem = 8)
trigger8        = (AnimElem = 9)
trigger9        = (AnimElem = 10)
trigger10        = (AnimElem = 11)
trigger11        = (AnimElem = 12)
trigger12        = (AnimElem = 13)
trigger13       = (AnimElem = 14)
trigger14        = (AnimElem = 15)
trigger15        = (AnimElem = 16)
trigger16        = (AnimElem = 17)
trigger17        = (AnimElem = 18)
trigger18        = (AnimElem = 19)
attr = S, HP
hitflag = MAFPD
guardflag = M
down.velocity= -25,-11
air.animtype =  DIAGUP
priority        = 7, dodge
sparkno = S93300
guard.sparkno	= S93350
sparkxy	 = 0, -50
damage   = 80,30
animtype = DIAGUP
pausetime = 0,4
hitsound   = S523,322
guardsound = S32,62
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-9
air.velocity= -25,-9
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 0
envshake.freq 	= -80
envshake.ampl 	= -22

[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(22) = 1
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 4)
trigger4        = (AnimElem = 5)
trigger5        = (AnimElem = 6)
trigger6        = (AnimElem = 7)
trigger7        = (AnimElem = 8)
trigger8        = (AnimElem = 9)
trigger9        = (AnimElem = 10)
trigger10        = (AnimElem = 11)
trigger11        = (AnimElem = 12)
trigger12        = (AnimElem = 13)
trigger13       = (AnimElem = 14)
trigger14        = (AnimElem = 15)
trigger15        = (AnimElem = 16)
trigger16        = (AnimElem = 17)
trigger17        = (AnimElem = 18)
trigger18        = (AnimElem = 19)
attr = S, HP
hitflag = MAFPD
guardflag = M
down.velocity= -25,-11
air.animtype =  DIAGUP
priority        = 7, dodge
sparkno = S93300
guard.sparkno	= S93350
sparkxy	 = 0, -50
damage   = 240,60
animtype = DIAGUP
pausetime = 0,4
hitsound   = S523,322
guardsound = S32,62
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-9
air.velocity= -25,-9
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 0
envshake.freq 	= -80
envshake.ampl 	= -22


[State 9940,	AfterImage]
type 			= AfterImage
trigger1 		= AnimElem = 3
time 			= 30
timegap		= 1
framegap 		= 1
length 		= 5
paladd 		= 0, 0, 90
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9940, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9940: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,NP,SP,HP
ignorehitpause = 1



[State 9940, DestroySelf]
type = DestroySelf
trigger1 = time = 60

;気力溜め
[Statedef 800]
type 			= S
movetype		= A
physics		= S
anim			= 800
;velset		= 0,0
ctrl			= 0
poweradd		= 5
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
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
trigger1		= (Time > 20) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
trigger1		= (Time > 20) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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


[State 800,	PowerAdd]
type			= PowerAdd
trigger1		= (Time = [10,20])
value			= 4

[State 800,	PowerAdd]
type			= PowerAdd
trigger1		= AnimElem = 2
value			= 300

[State 800,	PowerAdd]
type			= PowerAdd
triggerall = var(9) = 0
triggerall = var(22) = 0
triggerall = var(25) = 0
trigger1		= (Time > 20)
value			= 20

[State 800,	PowerAdd]
type			= PowerAdd
triggerall = var(9) = 1
triggerall = var(25) = 0
triggerall = var(22) = 0
trigger1		= (Time > 20)
value			= 28

[State 800,	PowerAdd]
type			= PowerAdd
triggerall = var(9) = 1
triggerall = var(25) = 1
triggerall = var(22) = 0
trigger1		= (Time > 20)
value			= 45

[State 800,	PowerAdd]
type			= PowerAdd
triggerall = var(22) = 1
trigger1		= (Time > 20)
value			= 65

[State 800,	2]
type			= PalFX
trigger1 		= ((Time > 18) && ((GameTime%5) = 0))
time			= 5
;trigger1		= (Time > 55) && ((GameTime%35) = 0)
;time			= 75
add 			= 15,20,0
sinadd 		= 40,35,5,4

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 3

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 4

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(25) = 1
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 6

[State 0, ]
type            = BGPalFX
triggerall = var(25) = 0
trigger1        = (1)
time            = 2
mul             = 210,210,210
color           = 255
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = BGPalFX
triggerall = var(25) = 1
trigger1        = (1)
time            = 2
add = -40,-40,-40
mul             = 250,250,250
color           = 255
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 800,3]
type			= EnvShake
trigger1 		= AnimElem = 2
time			= 6
freq			= 222
ampl			= -17
phase			= 308

;風
[State 7030, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 9430
ID = 9430
pos = 0,0
postype = p1
facing = 1
bindtime = 10
SuperMove = 1
removetime = -2
sprpriority = 4
ownpal = 1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 1
Anim = 9428
Pos = 0,-40
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


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 1.4,1.4
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
triggerall = var(25) = 1
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 1.7,1.7
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
triggerall = var(22) = 1
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = -2
sprpriority = 3
ownpal = 1
supermove       = 777
pausemovetime   = 777

[State 900: Helper];ふっとびへるぱー
type = Helper
triggerall = var(22) = 1
trigger1   = ((Time > 12) && ((GameTime%30) = 0))
helpertype = Normal
pos	= 0,0
postype	= p1
facing = 1
bindtime = -1
stateno	= 9341
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

;周りを覆うリング(バーストリミット限定)
[State 970, 3]
type = Explod
triggerall = var(22) = 1
trigger1   = ((Time > 20) && ((GameTime%30) = 0))
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.24,2.24
removetime = -2
sprpriority = 3
ownpal = 1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング(バーストリミット限定)
[State 970, 3]
type = Explod
triggerall = var(22) = 1
trigger1   = ((Time > 20) && ((GameTime%30) = 0))
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2.6,2.6
removetime = -2
sprpriority = 3
ownpal = 1
supermove       = 777
pausemovetime   = 777

;aura
[State 800, 4]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.3, 1.3

;aura
[State 800, 4]
type = Explod
triggerall = var(9) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.77, 1.77

;aura
[State 800, 4]
type = Explod
triggerall = var(25) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.97, 1.97

;aura
[State 800, 4]
type = Explod
triggerall = var(22) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -2
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.3, 2.3

;aura
[State 800, 4]
type = Explod
triggerall = var(9) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.9, .3

;aura
[State 800, 4]
type = Explod
triggerall = var(25) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.2, .4

;aura
[State 800, 4]
type = Explod
triggerall = var(22) = 1
trigger1 = (AnimElem = 2)
Anim = 9410
Pos = 0,0
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3, .5

;eclairs
[State 800, 5]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9429
Pos = -2,-40
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1, 1

;ring
[State 800, 6]
type = Explod
triggerall = var(9) = 1
trigger1 = (AnimElem = 2)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.7, 1

;ring
[State 800, 6]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1, 1

;eclairs
[State 800, 5]
type = Explod
triggerall = var(9) = 1
trigger1 = (AnimElem = 2)
Anim = 9429
Pos = -2,-40
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.2, 1.2


;eclairs
[State 800, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = (AnimElem = 2)
Anim = 9429
Pos = -12,-40
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

;eclairs
[State 800, 5]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9420
Pos = -2,-55
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .6, .6

;eclairs
[State 800, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = (AnimElem = 2)
Anim = 9420
Pos = -5,-25
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .9, .7



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAFP
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 20, 0
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
ground.velocity = -18, -7
air.velocity    = -18, -6
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
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
triggerall = var(25) = 1
trigger1        = (AnimElem = 4)
attr            = S, NT
hitflag         = MAFP
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 2, 0
pausetime       = 0, 2
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S33, 63
guardsound      = S32, 63
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
triggerall = var(25) = 1
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFP
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 2, 0
pausetime       = 0, 2
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S33, 63
guardsound      = S32, 63
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
triggerall = var(25) = 0
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFP
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 2, 0
pausetime       = 0, 2
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S33, 36
guardsound      = S23, 63
ground.slidetime    = 12
ground.cornerpush.veloff = -3
ground.hittime  = 10
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -4
air.velocity    = -15, -3
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
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 1
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = AnimElem = 3
Anim = 9428
Pos = 2,-50
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.4,1.4

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = AnimElem = 2
Anim = 9428
Pos = -20,-80
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 3,3

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 = (Time > 30) && ((GameTime%30) = 0)
Anim = 9428
Pos = -20,-60
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1,1


[State 170, 無敵]
type = NotHitBy
triggerall = var(22) = 1
trigger1 = (1)
value = SCA
time = 30

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = (Time > 30) && ((GameTime%30) = 0)
Anim = 9428
Pos = -70,-60
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2,2

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(25) = 1
trigger1 = (Time > 50) && ((GameTime%30) = 0)
Anim = 9428
Pos = 2,-80
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2.5,2.5


;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(22) = 1
trigger1 = (Time > 30) && ((GameTime%28) = 0)
Anim = 9428
Pos = -80,-40
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2.9,2.9

;eclairs;バチバチ
[State 191, 5]
type = Explod
triggerall = var(22) = 1
trigger1 = (Time > 50) && ((GameTime%28) = 0)
Anim = 9428
Pos = -12,-90
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 3.3,3.3

[State 40, ]
type = Explod
trigger1 = (AnimElem = 2)
anim = 9120
ID = 9120
pos = 20,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 800, PlaySnd]
type = PlaySnd
trigger1        = (movecontact = 1)
value = S7, 26
channel = 4

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3, 1
channel = -1



[State 800, PlaySnd]
type = PlaySnd
trigger1 = (Time > 27) && ((GameTime%22) = 0)
value	= S1,5
channel = 0







[State 700, 1]
type = PlaySnd;気溜め掛け声
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1 = AnimElem = 2
value = S67, 221
channel = 1
volume = 255

[State 700, 1]
type = PlaySnd;気溜め掛け声
triggerall = var(25) = 1
triggerall = var(9) = 1
trigger1 = AnimElem = 2
value = S64, 64
channel = 1
volume = 255


[State 700, 1]
type = stopSnd;気溜め掛け声
trigger1 = (StateNo != 800)
channel = 1


[State 800, Stop.Next]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = command != "holda" && command != "holdx" && command != "holda"
trigger2		= (StateNo != 800)
value = 805
ctrl = 0



;---------------------------------------------------------------------------------------------------------



[Statedef 805];気力溜め終わり
type 			= S
movetype		= I
physics		= S
anim			= 805
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S545, 54
channel = 1
volume = 255

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S545, 54
channel = 0
volume = 255

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3, 1
channel = -1

[State 700, 1]
type = stopSnd;気溜め掛け声
trigger1 = time = 1
channel = 1

;[State 7035:	VelSet]
;type			= VelSet
;trigger1		= (!Time)
;y	= 0

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

[State 805, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;風
[State 191, 3]
type = Explod
trigger1 = time = 1
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = 1
SuperMove = 1
removetime = 23
sprpriority = 4
ownpal = 1
scale = .8,.8

;--------------------------------------------------------------------------------------------------------------

;拡散エネルギー弾

[Statedef 4182]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 4182
poweradd = -400
facep2          = 1


[State 900: Helper]
type = Helper
trigger1 = animelem = 4
helpertype = Normal
pos	= 0,-90
postype	= p1
facing = 1
stateno	= 5413
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 900: Helper]
type = Helper
trigger1 = animelem = 7
helpertype = Normal
pos	= 0,-90
postype	= p1
facing = 1
stateno	= 5412
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 900: Helper]
type = Helper
trigger1 = animelem = 11
helpertype = Normal
pos	= 0,-70
postype	= p1
facing = 1
stateno	= 5411
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200






[State 900: Helper]
type = Helper
trigger1 = animelem = 5
helpertype = Normal
pos	= 0,-50
postype	= p1
facing = 1
stateno	= 5413
keyctrl	= 0
scale = 1.1
ownpal = 1
supermovetime = 200
pausemovetime = 200

[State 900: Helper]
type = Helper
trigger1 = animelem = 8
helpertype = Normal
pos	= 0,-60
postype	= p1
facing = 1
stateno	= 5412
keyctrl	= 0
scale = 1.1
ownpal = 1
supermovetime = 200
pausemovetime = 200



;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = animelem = 7
anim = 9550
ID = 9550
pos = 55,-80
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1

;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = animelem = 11
anim = 9550
ID = 9550
pos = 55,-60
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1


;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = animelem = 4
anim = 9550
ID = 9550
pos = 55,-100
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S11, 6
volume = 210
channel = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S11, 6
volume = 210
channel = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S11, 6
volume = 210
channel = 1

[State 100, PlaySnd];ほれ！
type = PlaySnd
trigger1 = animelem = 1
value = S1, 1
volume = 255
channel = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= AnimElem = 7
time 			= 2
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= AnimElem = 4
time 			= 2
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= AnimElem = 11
time 			= 2
freq 			= 50
ampl   = -10
phase  = 10






[State 900, 4];動作終わり
type =  ChangeState
trigger1 = AnimTime = 0
value =  0
ctrl= 1



;拡散エネルギー弾・ヘルパー１
[Statedef 5411]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9500

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = 4
y = 1

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
stateno         = 5411
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 106,3]
type=MakeDust
trigger1=1
pos= 25,80
spacing = 2

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFPD
guardflag		= L
animtype		= heavy
air,animtype		= heavy
ground.type = trip
air.type = trip
priority		= 9, dodge
damage		= 100,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -22,-3
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= -22,15
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -22,-.3
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0


[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFPD
guardflag		= L
animtype		= heavy
air,animtype		= heavy
ground.type = trip
air.type = trip
priority		= 9, dodge
damage		= 130,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -22,-3
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= -22,15
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -22,-.3
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFPD
guardflag		= L
animtype		= heavy
air,animtype		= heavy
ground.type = trip
air.type = trip
priority		= 9, dodge
damage		= 170,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -22,-3
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= -22,15
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -22,-.3
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0


[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= (1)
attr			= S, NP
hitflag		= MAFPD
guardflag		= L
animtype		= heavy
air,animtype		= heavy
ground.type = trip
air.type = trip
priority		= 9, dodge
damage		= 410,50
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -22,-3
guard.velocity	= -15
fall = 1
air.fall = 1
air.velocity	= -22,15
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -22,-.3
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


[State 100,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 1
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 12 

;拡散エネルギー弾・ヘルパー2
[Statedef 5412]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9500

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = 4

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
stateno         = 9500
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 106,3]
type=MakeDust
trigger1=1
pos= 25,80
spacing = 2

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= MA
animtype		= heavy
air,animtype		= heavy
priority		= 9, dodge
damage		= 100,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -15
guard.velocity	= -15
air.fall = 1
air.velocity	= -15,15
airguard.velocity	= -15,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= MA
animtype		= heavy
air,animtype		= heavy
priority		= 9, dodge
damage		= 130,10
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -15
guard.velocity	= -15
air.fall = 1
air.velocity	= -15,15
airguard.velocity	= -15,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= MA
animtype		= heavy
air,animtype		= heavy
priority		= 9, dodge
damage		= 160,25
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -15
guard.velocity	= -15
air.fall = 1
air.velocity	= -15,15
airguard.velocity	= -15,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= MA
animtype		= heavy
air,animtype		= heavy
priority		= 9, dodge
damage		= 480,60
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= High
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -15
guard.velocity	= -15
air.fall = 1
air.velocity	= -15,15
airguard.velocity	= -15,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


[State 100,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 1
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 12 

;拡散エネルギー弾・ヘルパー3
[Statedef 5413]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9500

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = 4
y = -2.3

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
stateno         = 9500
attr            = SCA, NP, SP, HP
ignorehitpause  = 1



[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= M
animtype		= diagup
air,animtype		= diagup
priority		= 9, dodge
damage		= 120,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -15,-6
guard.velocity	= -17
air.velocity	= -17,-2
fall = 1
air.fall = 1
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= M
animtype		= diagup
air,animtype		= diagup
priority		= 9, dodge
damage		= 170,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -15,-6
guard.velocity	= -17
air.velocity	= -17,-2
fall = 1
air.fall = 1
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= M
animtype		= diagup
air,animtype		= diagup
priority		= 9, dodge
damage		= 230,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -15,-6
guard.velocity	= -17
air.velocity	= -17,-2
fall = 1
air.fall = 1
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= (1)
attr			= S, NP
hitflag		= MAFP
guardflag		= M
animtype		= diagup
air,animtype		= diagup
priority		= 9, dodge
damage		= 580,80
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -15,-6
guard.velocity	= -17
air.velocity	= -17,-2
fall = 1
air.fall = 1
airguard.velocity	= -22,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


[State 100,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 1
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 12 


;衝撃波・ヘルパー：ちょこっと吹っ飛ぶ
[Statedef 4186]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 4183


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
stateno         = 4183
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 106,3]
type=MakeDust
trigger1=1
pos= 25,80
spacing = 2

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
air.animtype    = HEAVY
air.animtype    = HEAVY
priority		= 9, dodge
damage		= 80,10
pausetime		= 1,1
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -26
hitsound		= S0,52
guardsound		= S0,92
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -5,-5
guard.velocity	= -5
air.velocity	= -5,-5
fall = 1
air,fall = 1
airguard.velocity	= -1,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-5
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
air.animtype    = HEAVY
air.animtype    = HEAVY
priority		= 9, dodge
damage		= 100,10
pausetime		= 1,1
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -26
hitsound		= S0,54
guardsound		= S0,94
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -5,-5
guard.velocity	= -5
air.velocity	= -5,-5
fall = 1
air,fall = 1
airguard.velocity	= -1,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-5
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
air.animtype    = HEAVY
air.animtype    = HEAVY
priority		= 9, dodge
damage		= 120,10
pausetime		= 1,1
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -26
hitsound		= S0,544
guardsound		= S0,944
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -5,-5
guard.velocity	= -5
air.velocity	= -5,-5
fall = 1
air,fall = 1
airguard.velocity	= -1,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-5
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
air.animtype    = HEAVY
air.animtype    = HEAVY
priority		= 9, dodge
damage		= 320,50
pausetime		= 1,1
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -26
hitsound		= S0,544
guardsound		= S0,944
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -5,-5
guard.velocity	= -5
air.velocity	= -5,-5
fall = 1
air,fall = 1
airguard.velocity	= -1,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-5
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
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
trigger2 = time = 11


;衝撃波・ヘルパー2:思いっきり吹っ飛ぶ
[Statedef 4183]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 4183


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
stateno         = 4183
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 106,3]
type=MakeDust
trigger1=1
pos= 25,80
spacing = 2

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 160,10
pausetime		= 1,10
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
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
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 250,20
pausetime		= 1,10
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
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
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 450,30
pausetime		= 1,10
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
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
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0


[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= 1
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 1000,90
pausetime		= 1,10
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
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
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
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
trigger2 = time = 11

[Statedef 9341];バーストリミットヘルパー
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9341


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
stateno         = 9341
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


[State 9500:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFPD
guardflag		= 
animtype        = diagup
air.animtype    = diagup
priority		= 9, dodge
damage		= 200,10
pausetime		= 1,4
guard.pausetime	= 1,4
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = -25, -26
hitsound		= S0,54
guardsound		= S0,94
ground.type		= High
air.type		= high
ground.slidetime	= 33
ground.hittime	= 33
air.hittime		= 33
ground.velocity	= -20,-8.7
guard.velocity	= -20
air.velocity	= -20,-7.5
fall = 1
air,fall = 1
airguard.velocity	= -26,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -26,-12
getpower		= 0
givepower		= 20
p1power = 0
ownpal = 1
envshake.time   = 0
envshake.freq   = 80
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0
kill = 1



[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 10

;エネルギー弾

[Statedef 900]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 900
poweradd = -100
facep2          = 1


[State 900: Helper]
type = Helper
trigger1 = animelem = 1
helpertype = Normal
pos	= 55,-90
postype	= p1
facing = 1
stateno	= 9500
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

;effet depart de boule
[State 900, 3]
type = Explod
;trigger1 = !time
trigger1 = animelem = 1
anim = 9550
ID = 9550
pos = 55,-82
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1

[State 900, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S11, 6
volume = 200
channel = 2

[State 900, 4];動作終わり
type =  ChangeState
trigger1 = AnimTime = 0
value =  0
ctrl= 1

;エネルギー弾・ヘルパー
[Statedef 9500]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9500

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = 4

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
stateno         = 9500
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 106,3]
type=MakeDust
trigger1=1
pos= 25,80
spacing = 2

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NA
hitflag		= MAFP
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 35,5
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -3
guard.velocity	= -3
air.velocity	= -8,-1
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NA
hitflag		= MAFP
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 60,15
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -9,-1
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NA
hitflag		= MAFP
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 100,20
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -9,-1
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= 1
attr			= S, NA
hitflag		= MAFP
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 350,40
pausetime		= 1,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -9,-1
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


[State 100,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 2
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 12 


;================================================================================================================================================

;=============================================================================================================================================================

;エネルギー弾２
[Statedef 940]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 940
poweradd = -200
facep2          = 1

[State 940:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9650

[State 940:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9700


[State 940: Helper]
type = Helper
trigger1 = animelem = 1
helpertype = Normal
pos	= 35,-57
postype	= p1
facing = 1
stateno	= 9500
keyctrl	= 0
ownpal = 1
scale = 2,2
supermovetime = 200
pausemovetime = 200

;effet depart de boule
[State 940, 3]
type = Explod
;trigger1 = !time
trigger1 = animelem = 1
anim = 9550
ID = 9550
pos = 45,-60
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1

[State 940, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S11, 6
volume = 200
channel = 2



[State 950, 4]
type =  ChangeState
trigger1 = AnimTime = 0
value =  0
ctrl= 1


;==========================================================================================================================





;エネルギー弾（空中）

[Statedef 6200]
type = A
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 6200
poweradd = -100
facep2          = 1

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = -2
y		        = -.5

[State 900: Helper]
type = Helper
trigger1 = animelem = 1
helpertype = Normal
pos	= 50,-64
postype	= p1
facing = 1
stateno	= 9580
keyctrl	= 0
scale = 2.2
ownpal = 1
supermovetime = 200
pausemovetime = 200

;effet depart de boule
[State 900, 3]
type = Explod
trigger1 = animelem = 1
anim = 9550
ID = 9550
pos = 55,-60
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1

[State 900, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S11, 6
volume = 200
channel = 2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S545, 54
channel = 0

[State 900, 4];動作終わり
type =  ChangeState
trigger1 = AnimTime = 0
value =  50
ctrl= 1

[State 900, 4];動作終わり
type =  ChangeState
triggerall = (command = "holdz")
triggerall      = (power <= 100)
trigger1 = (AnimElem = 4)
value =  50
ctrl= 1

[State 900, 4];動作終わり
type =  ChangeState
triggerall = var(9) = 0
triggerall = var(25) = 0
triggerall = (command = "holdz")
triggerall      = (power >= 100)
trigger1 = (AnimElem = 5)
value =  6200
ctrl= 0

[State 900, 4];動作終わり
type =  ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 0
triggerall = (command = "holdz")
triggerall      = (power >= 100)
trigger1 = (AnimElem = 4)
value =  6200
ctrl= 0

[State 900, 4];動作終わり
type =  ChangeState
triggerall = var(9) = 1
triggerall = var(25) = 1
triggerall = (command = "holdz")
triggerall      = (power >= 100)
trigger1 = (AnimElem = 3)
value =  6200
ctrl= 0

;エネルギー弾・ヘルパー(空中)
[Statedef 9580]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9500

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = 4
y = 3

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
stateno         = 9500
attr            = SCA, NP, SP, HP
ignorehitpause  = 1



[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 0
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= (1)
attr			= S, NA
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 35,5
pausetime		= 0,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,30
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -3
guard.velocity	= -3
air.velocity	= -5,2
airguard.velocity	= -5,.7
ground.cornerpush.veloff = 0
down.velocity	= -5,0
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NA
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 60,15
pausetime		= 0,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -9,-1
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -5,0
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(9) = 1
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1		= 1
attr			= S, NA
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 100,20
pausetime		= 0,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -12,2
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -5,0
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 9500:	HitDef]
type			= HitDef
triggerall = parent,var(22) = 1
trigger1		= 1
attr			= S, NA
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 9, dodge
damage		= 350,40
pausetime		= 0,3
guard.pausetime	= 1,4
sparkno		= S9600
guard.sparkno	= S9600
sparkxy		= -25,0
hitsound		= S0,5
guardsound		= S0,5
ground.type		= High
air.type		= high
ground.slidetime	= 20
ground.hittime	= 20
air.hittime		= 20
ground.velocity	= -4
guard.velocity	= -4
air.velocity	= -12,2
airguard.velocity	= -9,-3.5
ground.cornerpush.veloff = 0
down.velocity	= -5,0
getpower		= 0
givepower		= 0
p1power = 0
ownpal = 1
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
parent,numhits = 1
envshake.phase  = 3
persistent		= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


[State 100,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 2
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9500, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1


[State 9500, DestroySelf]
type = DestroySelf
trigger1 = (movecontact) 
trigger2 = time = 12 




;------------------------ファイナルかめはめ波-------------------------------------------------------------


;ファイナルかめはめ波
[Statedef 970]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 970
poweradd = -9000
supermove       = 777
pausemovetime   = 777



[State 0:     Intro]
type            = AssertSpecial
triggerall = var(24) = 1
trigger1        =  (1)
flag           = NoBarDisplay


[State 9027, 1]
type = Assertspecial
triggerall = var(24) = 1
trigger1        =  (1)
flag = NOfg

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 80) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
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
trigger1		= (Time > 80) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
trigger1		= (Time > 80) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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

;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 15
anim = 9950
ID = 9950
pos = 0,-40
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 1
ownpal = 1
scale = 2.5,2.5
supermove       = 777
pausemovetime   = 777




[State 605, 1]
type = PlaySnd
triggerall = var(27) = 1
trigger1 = (AnimElem = 6)
value = S12, 9
channel = -1

[State 605, 1]
type = PlaySnd
trigger1 = (movecontact = 1)
value = S3, 6
channel = 5


;eclairs
[State 800, 5]
type = Explod
trigger1 = (AnimElem = 16)
Anim = 9429
Pos = -2,-40
Id = 9429
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1, 1

;まるいオーラ
[State 191, 3]
type = Explod
trigger1 = AnimElem = 16
anim = 9950
ID = 9950
pos = -10,-45
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1
scale = 2,2
supermove       = 777
pausemovetime   = 777

[State 0:     HitDef]
type            = HitDef
triggerall      = var(26) = 0
triggerall      = P2Name = "Z-TON" || P4Name = "Z-TON"
trigger1        = (AnimElem = 5)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S3, 62
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -35
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -14, -8
air.velocity    = -14, -7
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
numhits         = 0
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0

[State 0:     HitDef]
type            = HitDef
triggerall      = var(26) = 0
trigger1        = (AnimElem = 6)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S3, 62
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -35
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -14, -8
air.velocity    = -14, -7
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

[State 0:     HitDef]
type            = HitDef
triggerall      = var(26) = 0
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S3, 624
guardsound      = S2, 6
ground.slidetime    = 12
ground.cornerpush.veloff = -35
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -14, -7
air.velocity    = -14, -6
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
numhits         = 0
Kill            = 0
getpower        = 0, 0
givepower       = 0, 0


[State 0:     HitDef]
type            = HitDef
triggerall      = var(26) = 0
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
guard.pausetime = 0, 2
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 8, -70
hitsound        = S37, 226
guardsound      = S32, 63
ground.slidetime    = 12
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -21, -8
air.velocity    = -21, -7
air.juggle      = 0
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -17, -11
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
triggerall      = var(26) = 0
trigger1        = (AnimElem = 18)
attr            = S, NT
hitflag         = MAFPD
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
hitsound        = S37, 236
guardsound      = S2, 62
ground.slidetime    = 12
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
air.juggle      = 0
fall            = 1
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

[State 0:     EnvShake]
type 			= EnvShake
trigger1 = AnimElem = 6
time 			= 35
freq 			= 100
ampl   = 9
phase  = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 50
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 50
darken 		    = 0
poweradd 		= 0
unhittable 		= 1
supermove       = 777
pausemovetime   = 777


[State 0:    Super effect];超必エフェクト
type            = Explod
trigger1        = (AnimElem = 6)
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
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 6)
trigger2        = (AnimElem = 13)
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
scale           = 2.8, 2.3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;風
[State 191, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 9353
ID = 9353
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 30
sprpriority = 4
ownpal = 1
scale = 1,1
supermove       = 777
pausemovetime   = 777

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9850
ID = 9850
pos = 5,-40
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;feu jaune
[State 970, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 9900
ID = 9900
;pos = 5,-40
postype = p1
facing = 1
bindtime = -1
;scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777

;eclairs
[State 970, 5]
type = Explod
trigger1 = (AnimElem = 6)
Anim = 9420
Pos = -2,-35
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 2, 2
supermove       = 777
pausemovetime   = 777

;ring
[State 970, 6]
type = Explod
;trigger1 = !time
trigger1 = (AnimElem = 8)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2, 1
supermove       = 777
pausemovetime   = 777


[State 0:    Super effect 2];光エフェクト
type            = Explod
trigger1        = (AnimElem = 15)
anim            = 6501
ID              = 6501
pos		        = -10,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 2, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;aura
[State 970, 4]
type = Explod
trigger1 = (AnimElem = 6)
Anim = 9410
Pos = 0,5
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.8, 1.7
supermove       = 777
pausemovetime   = 777

[State 970, 4]
type = Explod
trigger1 = time = 220
Anim = 9410
Pos = 0,5
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.4, 1.8
supermove       = 777
pausemovetime   = 777

[State 970, 4]
type = Explod
trigger1 = (AnimElem = 6)
Anim = 9410
Pos = 0,5
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3.5, 1.4
supermove       = 777
pausemovetime   = 777

[State -2]
type = PalFX;点滅
trigger1 = (Time > 50) && (GameTime%3) = 0
time = 1
add = 59,59,59
ignorehitpause = 1

;aura
[State 970, 4]
type = Explod
trigger1 = (AnimElem = 6)
Anim = 9410
Pos = 0,5
Id = 9410
sprpriority = -1
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.3, .2
supermove       = 777
pausemovetime   = 777

;[State 970, PlaySnd];これであの世へおくってやる
;type = PlaySnd
;trigger1 = Animelem = 14
;value = ;S4, 467
;volume = 255
;channel = -1

[State 970, PlaySnd];音
type = PlaySnd
trigger1 = Animelem = 14
value = S7,55
volume = 220
channel = -1

[State 970, PlaySnd];ファイナル・・！
type = PlaySnd
trigger1 = Animelem = 14
value = S65,111
volume = 255
channel = -1

;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 14
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 2,2
removetime = 15
sprpriority = 4
ownpal = 1
supermove       = 777
pausemovetime   = 777


;周りを覆うリング
[State 970, 3]
type = Explod
trigger1 = AnimElem = 14
anim = 9850
ID = 9850
pos = 5,-50
postype = p1
facing = 1
bindtime = -1
scale = 3,3
removetime = 15
sprpriority = 2
ownpal = 1
supermove       = 777
pausemovetime   = 777

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 14
Anim = 9428
Pos = 0,-40
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 12
Anim = 9428
Pos = -60,-200
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 14
Anim = 9428
Pos = 30,-40
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 13
Anim = 9428
Pos = -100,10
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 12
Anim = 9428
Pos = 0,-40
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = 35
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 3,3


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 13
Anim = 9428
Pos = 0,-50
Id = 9428
sprpriority = 9
removeongethit = 1
removetime = -2
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

;boule bleue
[State 970, 5]
type = Explod
trigger1 = (AnimElem = 16)
Anim = 9902
Pos = -15,-58
Id = 9902
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .8, .8
supermove       = 777
pausemovetime   = 777

[State 970, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 6
value = S3, 1
channel = -1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 9)
time 			= 90
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 90
darken 		    = 0
poweradd 		= 0
unhittable 		= 1
supermove       = 777
pausemovetime   = 777

[State 970, PlaySnd]
type = PlaySnd
trigger1 = (Time > 80) && ((GameTime%20) = 0)
value	= S1,5
channel = 1

[State 970, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 6
value = S545, 5
channel = -1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 200
flag           = NoBarDisplay


[State 970, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S7, 30
channel = -1

[State 970, PlaySnd]
type = PlaySnd
trigger1 = time = 520
value = S7, 777
channel = 6

[State 970, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 15
value = S65, 58
channel = 0

[State 970,3]
type			= EnvShake
trigger1 		= ((Time > 65) && ((GameTime%4) = 0))
time			= 10
freq			= 165
ampl			= -8
phase			= 45

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 2) 
time		    = 50
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 10) 
time		    = 80
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 6
value           = 255,255,255
time            = 3
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 14
value           = 255,255,255
time            = 2
under           = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 15
value           = 255,255,255
time            = 3
under           = 0



[State 0:     Screen Flash]
type            = EnvColor
trigger1 = AnimElem = 13
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = ((Time > 65) && ((GameTime%40) = 0))
value           = 255,255,255
time            = 5
under           = 1


[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)



;--------------------------------------------------------------------------------------------------------------------------

;Fかめはめ放つ
[Statedef 960]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 0
ctrl = 0
anim = 960
poweradd = 0


[State life, 2];ブウけし飛びスイッチ切り
type = varset
trigger1 = (AnimElem = 2)
var(26) = 0

[State 970, stopSnd]
type = stopSnd
trigger1 = time = 1
channel = 6

[State 9905, noshadow]
type=AssertSpecial
trigger1= time < 50 
flag=nobardisplay
ignorehitpause=1


;ブウ経由時ブウけし飛び
[State 8001, Explod-3]
type = Explod
triggerall      = var(26) = 1
trigger1 = (AnimElem = 1)
Anim = 5712
id = 5712
pos = 0, -60
postype = p2
ownpal = 1
bindtime = -1
removetime = 100
scale = 1.5,3
sprpriority = 99
supermovetime = 70
facing = 1


;かめはめ波ーーー！！！カットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 3)
Anim = 11111
id = 11111
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 15
scale = .9,.9
sprpriority = 99
supermovetime = 70
facing = 1

;かめはめ波ーーー！！！カットイン拡大
[State 8001, Explod-3]
type = Explod
trigger1 = time = 15
Anim = 11112
id = 11112
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 5
scale = 1,1
sprpriority = 99
supermovetime = 70
ontop = 1
facing = 1

;かめはめ波ーーー！！！カットイン拡大
[State 8001, Explod-3]
type = Explod
trigger1 = time = 20
Anim = 11112
id = 11112
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 5
scale = 1.1,1.1
sprpriority = 99
supermovetime = 70
ontop = 1
facing = 1

;かめはめ波ーーー！！！カットイン拡大
[State 8001, Explod-3]
type = Explod
trigger1 = time = 25
Anim = 11112
id = 11112
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 5
scale = 1.2,1.2
sprpriority = 99
supermovetime = 70
ontop = 1
facing = 1

;かめはめ波ーーー！！！カットイン拡大
[State 8001, Explod-3]
type = Explod
trigger1 = time = 30
Anim = 11112
id = 11112
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 5
scale = 1.3,1.3
sprpriority = 99
supermovetime = 70
ontop = 1
facing = 1

;かめはめ波ーーー！！！カットイン拡大
[State 8001, Explod-3]
type = Explod
trigger1 = time = 35
Anim = 11112
id = 11112
pos = 70, 60
postype = back
ownpal = 1
bindtime = -1
removetime = 5
scale = 1.4,1.4
sprpriority = 99
supermovetime = 70
ontop = 1
facing = 1


;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 2
Anim = 9428
Pos = 100,0
Id = 9428
sprpriority = 99
removeongethit = 1
removetime = 55
bindtime = -1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 5,5

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = ((Time > 1) && ((GameTime%4) = 0))
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
triggerall = P2Name = "Z-TON" || P4Name = "Z-TON"
trigger1        = (AnimElem = 2)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 989899, 0
pausetime       = 0, 5
guard.pausetime = 0, 9
sparkno = S93040
guard.sparkno	= S93540
sparkxy	 = 8, -70
hitsound        = S766, 563
guardsound      = S82, 6
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
Kill            = 1
getpower        = 0, 0
givepower       = 0, 0
snap = 888,-20

[State 0:     HitDef]
type            = HitDef
triggerall = P2Name = "Z-TON" || P4Name = "Z-TON"
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 94399, 0
pausetime       = 0, 5
guard.pausetime = 0, 9
sparkno = S93040
guard.sparkno	= S93540
sparkxy	 = 8, -70
hitsound        = S766, 563
guardsound      = S82, 6
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
Kill            = 1
getpower        = 0, 0
givepower       = 0, 0


[State 0:     HitDef]
type            = HitDef
triggerall = !P2Name = "Z-TON" || !P4Name = "Z-TON"
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 200, 0
pausetime       = 0, 5
guard.pausetime = 0, 9
sparkno = S93040
guard.sparkno	= S93540
sparkxy	 = 8, -70
hitsound        = S766, 563
guardsound      = S82, 6
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
p2stateno = 32331

[State 0:     HitDef]
type            = HitDef
triggerall = !P2Name = "Z-TON" || !P4Name = "Z-TON"
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 99999, 0
pausetime       = 0, 5
guard.pausetime = 0, 9
sparkno = S93040
guard.sparkno	= S93540
sparkxy	 = 8, -70
hitsound        = S766, 56
guardsound      = S82, 6
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
Kill            = 1
getpower        = 0, 0
givepower       = 0, 0
p2stateno = 32331

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = diagup
air.animtype    = diagup
ground.type     = high
priority        = 7, dodge
damage          = 99999, 0
pausetime       = 0, 5
guard.pausetime = 0, 9
sparkno = S93040
guard.sparkno	= S93540
sparkxy	 = 8, -70
hitsound        = S766, 563
guardsound      = S82, 6
ground.slidetime    = 22
ground.cornerpush.veloff = -15
ground.hittime  = 22
guard.hittime   = 22
air.hittime     = 20
ground.velocity = -19, -8
air.velocity    = -19, -7
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
Kill            = 1
getpower        = 0, 0
givepower       = 0, 0

;aura
[State 800, 4]
type = Explod
trigger1 = AnimElem = 1
Anim = 9416
Pos = -20,0
Id = 9416
sprpriority = -1
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 2.5, .3

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 4)
value = -9999
kill = 1 

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 5)
value = -9999
kill = 1 

;aura
[State 800, 4]
type = Explod
trigger1 = AnimElem = 1
Anim = 9416
Pos = -20,0
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.5, 1.5

[State 800, 4]
type = Explod
trigger1 = AnimElem = 1
Anim = 9416
Pos = -20,0
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 3.5, 2

;aura
[State 800, 4]
type = Explod
trigger1 = AnimElem = 1
Anim = 9416
Pos = -20,0
Id = 9416
sprpriority = 2
removeongethit = 1
removetime = 15
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 1.8, 1.7

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

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 50
add		        = -225,-225,-225
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = AnimTime = 0
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9955

[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9429

[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9410


[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 6501
	
[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= time = 70
id			= 9950
	
[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9420

[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9400

[State 960:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9902

[State 960, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S3, 5
channel = 0

[State 960, PlaySnd];ブウ経由時のブウ吹っ飛びボイス
type = PlaySnd
triggerall = var(26) = 1
trigger1 = Animelem = 1
value = S11, 116
channel = -1
volume = 255

[State 960, PlaySnd];かめはめ波！！
type = PlaySnd
trigger1 = Animelem = 3
value = S855, 2
volume = 255
channel = 1

[State 960: Helper]
type = Helper
trigger1 = animelem = 3
helpertype = Normal
pos	= 40,-110
postype	= p1
facing = 1
stateno	= 9901
keyctrl	= 0
ownpal = 1
bindtime = -1
supermovetime = 200
pausemovetime = 200




[State 100, 1]
type = Explod
trigger1 = animelem = 3
Anim = 9920
pos = 30,30
Id = 9920
postype	= p1
sprpriority = 1
removetime = -2
Postype = p1
bindtime = -1
SuperMove = 1
ownpal = 1
scale = 4, .4
facing = -1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = -60
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = time < 80
x		        = -2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 6
x		        = -2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 7
x		        = -1
y		        = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999

[State 960, 4]
type =  ChangeState
trigger1 = AnimTime = 0
value =  2132
ctrl= 0

;
[Statedef 2132]
type = S
movetype = I
physics = S
anim = 2132
velset = 0,0
ctrl = 0
poweradd = 20
juggle = 6
facep2          = 1
hitdefpersist = 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority = 2

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1        = ((time >20) && (timemod = 40,0)) 
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



[State 5005:     TeleportSND];バチ音
type            = PlaySnd
trigger1 = ((time >20) && (timemod = 40,0)) 
value           = 11,4
volume          = 255
channel         = -1

[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999

[State 200, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------------------------------------------

;ファイナルかめはめ波;ヘルパー

;helepr
[Statedef 9901]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 0
ctrl = 0
anim = 9901

[State 800,3]
type			= EnvShake
trigger1 		= time = 1
time   = 85
freq   = 64
ampl   = -25
phase  = 4



[State 9901,	Hitdef]
type = HitDef
triggerall = P2Name = "Z-TON" || P4Name = "Z-TON"
trigger1 = 1
attr = S, NT
hitflag = MAFPD
guardflag = 
animtype = diagup
air.animtype = diagup
priority        = 7, dodge
damage = 9999,250
pausetime = 0,55
guard.pausetime	= 0,2
sparkno	= S4343
guard.sparkno	= S43434
hitsound = S763, 773
;guardsound = S0, 9
ground.type=High
ground.slidetime= 44
ground.hittime = 44
ground.velocity= -29,-5
air.velocity= -29,-5
getpower = 0
givepower = 0
fall=1
ownpal = 1
kill = 1


[State 9901,	Hitdef]
type = HitDef
triggerall = !P2Name = "Z-TON" || !P4Name = "Z-TON"
trigger1 = 1
attr = S, NA
hitflag = MAFPD
guardflag = 
animtype = diagup
air.animtype = diagup
priority = 7, Hit
damage = 250,250
pausetime = 0,3
guard.pausetime	= 0,2
sparkno	= S4343
guard.sparkno	= S43434
hitsound = S763, 773
;guardsound = S0, 9
ground.type=High
ground.slidetime= 44
ground.hittime = 44
ground.velocity= -29,-5
air.velocity= -29,-5
getpower = 0
givepower = 0
fall=1
ownpal = 1
kill = 0


[State 9901,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 5)
time 			= 25
timegap		= 1
framegap 		= 1
length 		= 6
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 170,170,170
trans 		= add



[State life, 2];ファイナル相手けし飛びスイッチ
type = varset
triggerall = var(12) = 0
trigger1 = enemy,alive = 0
var(12) = 1



[State 9901, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9901:	BindToParent]
type			= BindToParent
trigger1		= 1
time			= 1
pos			= 28,-90

[State 100, 1]
type = Explod
trigger1 = animelem = 3
Anim = 9901
postype = p1
pos			= 0,-5
Id = 9901
sprpriority = 1
removetime = -2
Postype = p1
bindtime = -1
SuperMove = 1
ownpal = 1
;facing = -1
scale = 2, 2

[State 100, 1]
type = Explod
trigger1 = animelem = 3
Anim = 9901
postype = p1
pos			= 10,-20
Id = 9901
sprpriority = -1
removetime = -2
Postype = p1
bindtime = -1
SuperMove = 1
ownpal = 1
;facing = -1
scale = 3, 3


[State 100, 1]
type = Explod
trigger1 = enemy,alive = 0
Anim = 9901
postype = p1
pos			= 50,-30
Id = 9901
sprpriority = 999
removetime = 40
Postype = p1
bindtime = -2
SuperMove = 1
ownpal = 1
scale = 8, 8
ontop = 0


[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999


[State 9901: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 9901,	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 960)

;====================================================================================================
;======================HARD KAMEHA ROUTINE=====================================================================

;hard kameha
[Statedef 980]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 99
ctrl = 0
anim = 980
poweradd = -2500

[State 980,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 150
anim			= S1505
sound			= S2,6
pos			= 0,-50
movetime		= 150
supermovetime = move_time = 160
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 980,	PalFX]
type			= PalFX
trigger1 = AnimElem = 3
time			= 5
add			= 100,100,100
mul			= 256,256,256
sinadd		= -80,-80,-80,60
invertall		= 0
color			= 256

[State 980,3]
type			= EnvShake
trigger1 		= ((Time > 1) && ((GameTime%5) = 0))
time			= 5
freq			= 140
ampl			= -4
phase			= 90

[State 980:	AllPalFX]
type			= AllPalFX
;trigger1		= (AnimElem = 2, < 0)
trigger1		= AnimElem = 1
time			= 15
add			= 0,0,0
mul			= 256,256,256
sinadd		= 0,0,0,1
invertall		= 0
color			= (Time*5)


[State 980,4]
type=EnvColor
trigger1=Time=0
value=0, 0, 0
time=40
under=1

;effet bleu
[State 980, 3]
type = Explod
;trigger1 = !time
trigger1 = (AnimElem = 3)
anim = 9850
ID = 9850
pos = 5,-40
postype = p1
facing = 1
bindtime = -1
scale = .9,.9
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1

;feu jaune
[State 980, 3]
type = Explod
trigger1 = (AnimElem = 3)
anim = 9900
ID = 9900
;pos = 5,-40
postype = p1
facing = 1
bindtime = -1
;scale = .8,.8
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1

;eclairs
[State 980, 5]
type = Explod
trigger1 = !time
trigger2 = (AnimElem = 3)
Anim = 9420
Pos = -2,-35
Id = 9420
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.85, 0.85

;ring
[State 980, 6]
type = Explod
;trigger1 = !time
trigger1 = (AnimElem = 5)
Anim = 9400
Pos = -2,0
Id = 9400
sprpriority = 0
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.8, 0.8

;aura
[State 980, 4]
type = Explod
;trigger1 = !time
trigger1 = (AnimElem = 3)
Anim = 9410
Pos = 0,-5
Id = 9410
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.9, 0.9

;-------------------------sons-------------------------------

;debut aura
[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S3, 1
channel = 0

[State 980, PlaySnd]
type = PlaySnd
trigger1 = (Time > 24) && ((GameTime%16) = 0)
value	= S1,5
channel = 1

[State 980, PlaySnd]
type = PlaySnd
trigger1 = (Time > 24) && ((GameTime%40) = 0)
value	= S11,4
volume = 10
channel = 2

[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S2, 4
channel = 3

[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 11
value = S1, 8
channel = 4

[State 980, PlaySnd]
type = PlaySnd
trigger1 = (Time > 6) && ((GameTime%280) = 0)
value	= S12,0
channel = 5

;[State 980, PlaySnd]
;type = PlaySnd
;trigger1 = (Time > 6) && ((GameTime%300) = 0)
;value	= S12,2
;channel = 6

;------------------------------------------------------------

[State 980]
type = Pause
trigger1 = time = [90,102]
time = 1

[State 980, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 955
ctrl = 1

;---------------------------------------------------------------------------------------------------------------

[Statedef 955]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 955
poweradd = 0

[State 955,3]
type			= EnvShake
trigger1 		= ((Time > 1) && ((GameTime%5) = 0))
time			= 5
freq			= 140
ampl			= -4
phase			= 90

[State 955, PlaySnd]
type = PlaySnd
trigger1 = ((Time > 1) && ((GameTime%16) = 0))
;trigger2 = ((GameTime%16) = 0)
value	= S1,5
channel = 1

[State 955, PlaySnd]
type = PlaySnd
trigger1 = ((Time > 1) && ((GameTime%40) = 0))
trigger2 = AnimElem = 1
;trigger2 = ((GameTime%40) = 0)
value	= S11,4
volume = 10
channel = 2

[State 955, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S2, 4
channel = 3

[State 955, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 11
value = S1, 8
channel = 4

[State 955, PlaySnd]
type = PlaySnd
trigger1 = (Time > 6) && ((GameTime%180) = 0)
value	= S12,0
channel = 5


[State 955, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 990
ctrl = 1

[State 955]
type = Pause
trigger1 = time = [0,150]
time = 1

;boule bleue
[State 955, 5]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9902
Pos = -16,-50
Id = 9902
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

;---------------------------------------------------------------------------------------------------------------


;hard kameha
[Statedef 990]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 990
poweradd = 0

[State 990,3]
type			= EnvShake
trigger1 		= ((Time > 1) && ((GameTime%5) = 0))
time			= 5
freq			= 140
ampl			= -4
phase			= 90

[State 990, PlaySnd]
type = PlaySnd
trigger1 = ((GameTime%16) = 0)
;trigger1 = (AnimElem = 1) && ((GameTime%16) = 0)
value	= S1,5
channel = 6

[State 990, PlaySnd]
type = PlaySnd
trigger1 = ((GameTime%40) = 0)
;trigger1 = (Time > 1) && ((GameTime%40) = 0)
trigger2 = AnimElem = 1
;trigger2 = Time > 1
value	= S11,4
volume = 10
channel = 7

[State 990, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = S2, 4
channel = 3

[State 990, PlaySnd]
type = PlaySnd
trigger1 = (Time > 1) && ((GameTime%220) = 0)
value	= S12,0
channel = 8

;[State 980, PlaySnd]
;type = PlaySnd
;trigger1 = (Time > 6) && ((GameTime%300) = 0)
;value	= S12,2
;channel = 9

[State 990]
type = Pause
trigger1 = time > 0
time = 1


[State 990]
type = Pause
trigger1 = AnimTime = 0
time = 2

;--------------------------------------------------------------------------------------------------------------

;

[Statedef 1000]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 1000
poweradd = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S3, 5
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S12, 4
channel = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S12, 6
volume = 255
channel = 1

[State 1000: Helper]
type = Helper
trigger1 = animelem = 2
helpertype = Normal
pos			= 11,0
postype		= p1
size.xscale = 2.0
size.yscale = 2.0
facing = 1
stateno	= 9905
keyctrl	= 0
ownpal = 1
bindtime = -1
supermovetime = 200
pausemovetime = 200

[State 100, 1]
type = Explod
trigger1 = animelem = 2
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
;scale=.5,.5
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

[State 955]
type = Pause
trigger1 = time = [6,10]
time = 18


[State 1000,	PalFX]
type			= PalFX
trigger1 = ((Time > 0) && ((GameTime%25) = 0))
time			= 5
add			= 100,100,100
mul			= 256,256,256
sinadd		= -80,-80,-80,60
invertall		= 0
color			= 256


[State 1000:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9410
	
[State 1000:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9400

[State 1000:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9902

[State 1000:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9902

[State 1000:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimTime = 0
id			= 9420

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------------------------------------------------

;helepr
[Statedef 9905]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 99
ctrl = 0
scale = 0.1, 0.1
anim = 9905



[State 9905,	Hitdef]
type = HitDef
Trigger1=animelem=1
Trigger2=animelem=2
Trigger3=animelem=3
Trigger4=animelem=4
Trigger5=animelem=5
Trigger6=animelem=6
Trigger7=animelem=7
Trigger8=animelem=8
Trigger9=animelem=9
Trigger10=animelem=10
Trigger11=animelem=11
Trigger12=animelem=12
Trigger13=animelem=13
Trigger14=animelem=14
Trigger15=animelem=15
Trigger16=animelem=16
Trigger17=animelem=17
Trigger18=animelem=18
Trigger19=animelem=19
Trigger20=animelem=20
Trigger21=animelem=21
Trigger22=animelem=22
Trigger23=animelem=23
Trigger24=animelem=24
Trigger25=animelem=25
Trigger26=animelem=26
Trigger27=animelem=27
Trigger28=animelem=28
Trigger29=animelem=29
Trigger30=animelem=30
Trigger31=animelem=31
Trigger32=animelem=32
Trigger33=animelem=33
Trigger34=animelem=34
Trigger35=animelem=35
Trigger36=animelem=36
Trigger37=animelem=37
Trigger38=animelem=38
Trigger39=animelem=39
Trigger40=animelem=40
Trigger41=animelem=41
Trigger42=animelem=42
Trigger43=animelem=43
Trigger44=animelem=44
Trigger45=animelem=45
Trigger46=animelem=46
Trigger47=animelem=47
Trigger48=animelem=48
Trigger49=animelem=49
Trigger50=animelem=50
Trigger51=animelem=51
Trigger52=animelem=52
Trigger53=animelem=53
Trigger54=animelem=54
Trigger55=animelem=55
Trigger56=animelem=56
Trigger57=animelem=57
Trigger58=animelem=58
Trigger59=animelem=59
Trigger60=animelem=60
Trigger61=animelem=61
Trigger62=animelem=62
Trigger63=animelem=63
Trigger64=animelem=64
Trigger65=animelem=65
Trigger66=animelem=66
Trigger67=animelem=67
Trigger68=animelem=68
Trigger69=animelem=69
Trigger70=animelem=70
Trigger71=animelem=71
Trigger72=animelem=72
Trigger73=animelem=73
Trigger74=animelem=74
Trigger75=animelem=75
Trigger76=animelem=76
Trigger77=animelem=77
Trigger78=animelem=78
Trigger79=animelem=79
Trigger80=animelem=80
attr = S, NA
hitflag = MAFDP
guardflag = ML
animtype = heavy
air.animtype = Back
priority = 7, Hit
damage   = 9,1
pausetime = 0,3
hitsound   = S12,5
hitspark = S3007
sparkxy = 500,500
guardsound = S8,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity=-20,-5
air.velocity=-20,-5
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
palfx.add = 192,192,256
palfx.sinadd = 180,180,200,15
palfx.mul = 160,160,256
ownpal = 1
envshake.time 	= 12
envshake.freq 	= 140
envshake.ampl 	= -4
persistent		= 1

[State 9905:	BindToParent]
type			= BindToParent
trigger1		= 1
time			= 1
pos			= 11,-62

[State 9905,	AfterImage]
type 			= AfterImage
trigger1 		= (Time = 4)
time 			= -1
timegap		= 2
framegap 		= 1
length 		= 30
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9905, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9905, nojuggles]
type=AssertSpecial
trigger1=1
flag=nojugglecheck
ignorehitpause=1


[State 9905, noshadow]
type=AssertSpecial
trigger1=1
flag=nobardisplay
ignorehitpause=1


[State 9905: NotHitBy]
type = NotHitBy
trigger1 = (Time > 0)
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

;[State x]
;type = Pause
;trigger1 = time = [0,400]
;time = 3


[State 9905,	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 1000)
trigger2 = AnimTime = 0


;ギャリック砲

[Statedef 988]
type = S
movetype = A
physics =S
velset = 0,0,0
juggle = 4
ctrl = 0
anim = 988
poweradd = -1000

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x		        = -1
y		        = 0

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
sprpriority     = 0
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
scale           = 1.2, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 100, 1]
type = Explod
trigger1 = AnimElem = 4
Anim = 9100
pos = 0,-(floor(pos y))
Id = 9100
sprpriority = 3
;removeongethit = 1
removetime = -2
scale=.7,.7
;bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1

;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 1
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
scale = 1.7, 1.1


;ring;地面
[State 800, 6]
type = Explod
trigger1 = AnimElem = 4
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
scale = 1.9, 1.1

;eclairs;バチバチ
[State 191, 5]
type = Explod
trigger1 = AnimElem = 1
Anim = 9428
Pos = -20,-50
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

[State 9027, 1]
type = Assertspecial
trigger1 = time < 25
flag = NOfg

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 988,	SuperPause]
type			= SuperPause
trigger1		= (!Time)
time			= 30
pos			= 0,-50
movetime		= 30
darken		= 0
p2defmul		= 1
unhittable		= 1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S53, 7777
channel = 0



[State 970,	PalFX]
type			= PalFX
trigger1 = AnimElem = 3
time			= 5
add			= 100,100,100
mul			= 256,256,256
sinadd		= -80,-80,-80,60
invertall		= 0
color			= 256

[State 970,3]
type			= EnvShake
trigger1 		= (AnimElem = 1)
time			= 35
freq			= 140
ampl			= -4
phase			= 90

[State 970,3]
type			= EnvShake
trigger1 		= (AnimElem = 4)
time			= 20
freq			= -80
ampl			= -22
phase			= 90




[State 970,4]
type=EnvColor
trigger1=Time=0
value=0, 0, 0
time=20
under=1

;りんぐ
[State 988, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 9950
ID = 9950
pos = 50,-75
postype = p1
facing = -1
bindtime = -1
scale = .5,.5
removetime = 3
sprpriority = 4
ownpal = 1
SuperMove = 1

;りんぐ
[State 988, 3]
type = Explod
;trigger1 = !time
trigger1 = AnimElem = 1
anim = 9850
ID = 9850
pos = 5,-70
postype = p1
facing = 1
bindtime = -1
scale = 1,1
removetime = -2
sprpriority = 4
ownpal = 1
SuperMove = 1



;boule bleue
[State 988, 5]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9902
Pos = 30,-65
Id = 9902
sprpriority = 4
removeongethit = 1
removetime = 10
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.3, 1.3

;boule bleue
[State 988, 5]
type = Explod
trigger1 = (AnimElem = 2)
Anim = 9902
Pos = 0,-65
Id = 9902
sprpriority = 4
removeongethit = 1
removetime = 10
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1, 1

;boule bleue
[State 988, 5]
type = Explod
trigger1 = (AnimElem = 3)
Anim = 9950
Pos = -30,-65
Id = 9950
sprpriority = 4
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = .4, .4

;boule bleue
[State 988, 5]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 9950
Pos = 0,-65
Id = 9950
sprpriority = 4
removeongethit = 1
removetime = 20
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1.2, 1.2




;boule bleue
[State 988, 5]
type = Explod
trigger1 = (AnimElem = 3)
Anim = 9902
Pos = -18,-60
Id = 9902
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
;ontop = 1 
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.45, 0.45

;りんぐ
[State 988, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 9850
ID = 9850
pos = -10,-60
postype = p1
facing = 1
bindtime = -1
scale = 0.5,0.5
removetime = 22
sprpriority = 4
ownpal = 1
SuperMove = 1



[State 988:	RemoveExplod]
type			= RemoveExplod
trigger1		= AnimElem = 4
id			= 9902




[State 988: Helper]
type = Helper
trigger1 = animelem = 4
helpertype = Normal
size.xscale = 0.5
size.yscale = 0.5
pos	= 0,-75
postype	= p1
facing = 1
stateno	= 9940
keyctrl	= 0
ownpal = 1
supermovetime = 200
pausemovetime = 200




[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7, 55
volume = 100
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1, 4
volume = 255
channel = -1

[State 988, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S54, 7777
volume = 255
channel = -1


[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 55,55,55
ignorehitpause = 1


[State 988, STOPSnd]
type = STOPSnd
trigger1 = animelem = 4
channel = 0

[State 988, 7]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;ギャリック砲ヘルパー
[Statedef 9940]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 2
juggle = 6
ctrl = 0
anim = 9940





[State 0, ]
type = VelSET
trigger1 = animTime = 3
x = 44

[State 0:     Screen Flash]
type            = EnvColor
trigger1 = animTime = 4
value           = 255,255,255
time            = 2
under           = 1

[State 106,3]
type=MakeDust
trigger1=time < 50
pos= -10,70
spacing= 8




[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(9) = 0
triggerall= parent,var(25) = 0
triggerall= parent,var(22) = 0
trigger1		= (1)
attr = S, NA
hitflag = MAFP
guardflag = M
animtype = heavy
air.animtype = Back
priority        = 9, dodge
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 0, -30
damage   = 400,50
animtype = DIAGUP
guardflag = MA
hitflag = MAFDP
pausetime = 3,12
hitsound   = S53,322
guardsound = S3,6
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-7
air.velocity= -25,-7
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 18
envshake.freq 	= -80
envshake.ampl 	= -22
persistent		= 1

[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(9) = 1
triggerall= parent,var(25) = 0
triggerall= parent,var(22) = 0
trigger1		= (1)
attr = S, NA
hitflag = MAFP
guardflag = M
animtype = heavy
air.animtype = Back
priority        = 7, dodge
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 0, -30
damage   = 600,80
animtype = DIAGUP
guardflag = MA
hitflag = MAFDP
pausetime = 3,12
hitsound   = S53,322
guardsound = S3,6
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-7
air.velocity= -25,-7
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 18
envshake.freq 	= -80
envshake.ampl 	= -22
persistent		= 1

[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(25) = 1
triggerall= parent,var(22) = 0
trigger1		= (1)
attr = S, NA
hitflag = MAFP
guardflag = M
animtype = heavy
air.animtype = Back
priority        = 7, dodge
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 0, -30
damage   = 900,150
animtype = DIAGUP
guardflag = MA
hitflag = MAFDP
pausetime = 3,12
hitsound   = S53,322
guardsound = S3,6
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-7
air.velocity= -25,-7
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 18
envshake.freq 	= -80
envshake.ampl 	= -22
persistent		= 1


[State 9940:	HitDef]
type			= HitDef
triggerall= parent,var(22) = 1
trigger1		= (1)
attr = S, NA
hitflag = MAFP
guardflag = M
animtype = heavy
air.animtype = Back
priority        = 7, dodge
sparkno = S9300
guard.sparkno	= S9350
sparkxy	 = 0, -30
damage   = 2700,350
animtype = DIAGUP
guardflag = MA
hitflag = MAFDP
pausetime = 3,12
hitsound   = S53,322
guardsound = S3,6
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity= -25,-7
air.velocity= -25,-7
air.animtype = Back
palfx.time = 50
pos	= 11,200
postype	= p1
fall = 1
AIR.FALL = 1
fall.recover    = 0
ownpal = 1
envshake.time 	= 18
envshake.freq 	= -80
envshake.ampl 	= -22
persistent		= 1

[State 9940,	AfterImage]
type 			= AfterImage
trigger1 		= AnimElem = 3
time 			= 8
timegap		= 1
framegap 		= 1
length 		= 5
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 9940, noshadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

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
stateno         = 9940
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


[State 9940, DestroySelf]
type = DestroySelf
trigger1 = movecontact
trigger2 = TIME = 20

;Rock
[Statedef 8200]
type 			= S
movetype		= I
physics		    = N
anim			= 8200
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-.5,-1))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .5




[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 1
[Statedef 8210]
type 			= S
movetype		= I
physics		    = N
anim			= 8210
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-1.5,-2.5))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .1


[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 2
[Statedef 8220]
type 			= S
movetype		= I
physics		    = N
anim			= 8220
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		= (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			= var(0)
y			= 0

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
y			= 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			= (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			= (IfElse(Random <= 499,-2,-3))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			= .1



[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		= 1
framegap 		= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)