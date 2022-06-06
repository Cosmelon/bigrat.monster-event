# returns players to lobby
#  3/25 note: Hi it's me. Going to have to go through this and make it look better in the future.
#  For instance, a lot of these commands should be included in their respective games and not in this more central function
time set 12750
tp @a 1000.5 28 -6000.5
spawnpoint @a 1000 28 -6000
setworldspawn 1000 28 -6000
summon armor_stand 1000.5 27.5 -6000.5 {NoGravity:1b,CustomName:'{"text":".midL"}'}
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1000.5 28 -5996.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 996.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1000.5 28 -6004.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1004.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 998.5 28 -5998.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 998.5 28 -6002.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1002.5 28 -6002.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1002.5 28 -5998.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 997.5 28 -6001.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1001.5 28 -6003.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1003.5 28 -5999.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 999.5 28 -5997.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 997.5 28 -5999.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 999.5 28 -6003.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1003.5 28 -6001.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1001.5 28 -5997.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1000.5 28 -5993.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 993.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1007.5 28 -6000.5 facing entity @a[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1000.5 28 -5993.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
kill @e[limit=1,name=".midL"]
effect clear @a
clear @a[team=!Admin]
title @a title ""
title @a subtitle ""
title @a actionbar ""
gamemode adventure @a
worldborder set 6000000 1
worldborder center 0 0

# currentGame scoreboard lobby pos set
scoreboard players set .lobby currentGame 1
scoreboard players set .spleef currentGame 0
scoreboard players set .race currentGame 0
scoreboard players set .sg currentGame 0
scoreboard players set .blockParty currentGame 0
scoreboard players set .bingo currentGame 0
scoreboard players set .diggy currentGame 0 

# reset stuff for spleef
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0
scoreboard players set $shrink3Timer spleefBorder 5000
scoreboard players set $shrink2Timer spleefBorder 3400
scoreboard players set $shrink1Timer spleefBorder 2400
scoreboard players set $countDown spleef 160
scoreboard players set $round spleef 1
scoreboard players set $shrinkActual spleefBorder 400
bossbar set minecraft:spleefroundcount visible false
schedule clear main:spleef/border/removetop

# reset stuff for race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
scoreboard players set !gateOpen race 100
scoreboard players set !gateShut race 0
scoreboard players set !milli race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
bossbar set minecraft:racetime visible false

# reset stuff for sg
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players set ~shrinkActual sgBorder 0
scoreboard players set ~countDown sg 300
scoreboard players set ~round sg 1
scoreboard objectives remove sgVampire
scoreboard objectives remove sgRedditorGrass
scoreboard objectives remove sgCreeperTNT
scoreboard objectives remove sgWitch
scoreboard objectives remove sgKills
scoreboard objectives remove sgMedic
scoreboard objectives remove sgPyro
bossbar set minecraft:sgshrink visible false
bossbar set minecraft:sgshrinkactual visible false

# reset stuff for blockparty
bossbar set minecraft:bproundcount visible false
scoreboard players set ?gameActive blockParty 0
scoreboard players set ?round blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players set ?random blockParty 0
tag @a remove bpAlive
tag @a remove bpDead