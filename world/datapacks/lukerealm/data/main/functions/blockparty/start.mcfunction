# start blockparty

scoreboard players set $lobby currentGame 0
scoreboard players set ?gameActive blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?floorNum bpFloor 1
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players set @a bpSound 0
scoreboard players add ?round blockParty 1
tag @a[tag=player] add bpAlive
scoreboard players set @a[tag=player] bpDead 0
spawnpoint @a -2000 62 3023
spawnpoint @a[team=Red] -2018 62 3018 -135
spawnpoint @a[team=Blue] -1982 62 2982 45
spawnpoint @a[team=Green] -2018 62 2982 -45
spawnpoint @a[team=Yellow] -1982 62 3018 135
setworldspawn -2000 62 3023
time set day
title @a times 0 50 80
title @a title ""
title @a subtitle ""
title @a actionbar ""
gamemode adventure @a
clear @a[team=!Admin]
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b}
bossbar set minecraft:bproundcount visible true

# player spreader
# upgraded to three passes using this bullshit boilerplate fuckery
tp @a -2000.5 57 3000.5
setblock -2017 27 2984 redstone_block destroy
summon armor_stand -2000.5 56.75 -6000.5 {NoGravity:1b,CustomName:'{"text":"?midL"}'}
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
setblock -2017 27 2984 air destroy
kill @e[name="?midL"]
tp @a[tag=!player] -2000.5 61 3023.5

summon armor_stand -2000.5 57 -6000.5 {NoGravity:1b,CustomName:'{"text":"?music"}'}
