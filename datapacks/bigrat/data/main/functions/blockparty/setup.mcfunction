# Description: Starts blockparty
# Author: Cosmelon
# Type: start
# run from main:blockparty/wins/

# create scorebaords
scoreboard objectives add blockParty dummy
scoreboard objectives add bpTimer dummy
scoreboard objectives add bpMath dummy
scoreboard objectives add bpColor dummy
scoreboard objectives add bpFloor dummy
scoreboard objectives add bpConst dummy
scoreboard objectives add bpDeaths deathCount

# set const values
scoreboard players set #2 bpConst 2
scoreboard players set #1000 bpConst 1000
scoreboard players set #10000 bpConst 10000
scoreboard players set #lcg bpConst 1103515245

# set values for scoreboards
scoreboard players set .lobby br_cgame 0
scoreboard players set ?gameActive blockParty 1
scoreboard players add ?round blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?changeFloorMax bpFloor 30
execute if score ?round blockParty matches 1 run scoreboard players set ?countDown blockParty 400
execute unless score ?round blockParty matches 1 run scoreboard players set ?countDown blockParty 100
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stop bpTimer -2000
scoreboard players set ?colorTT bpTimer 64
scoreboard players set ?removeFloor bpFloor -60
scoreboard players set ?removeStage bpFloor 1
scoreboard players set ?floorNum bpFloor 1
scoreboard players reset * bpDeaths
tag @a[tag=player] add bpAlive
scoreboard players set @a[tag=player] bpDeaths 0
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
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
bossbar set minecraft:bproundcount visible true

# randomizers set
scoreboard players set ?in bpFloor 1
scoreboard players set ?in1 bpFloor 38
function main:blockparty/floorrng/floors

scoreboard players set ?in bpTimer 40
scoreboard players set ?in1 bpTimer 200

scoreboard players set ?in bpColor 1
scoreboard players set ?in1 bpColor 9

# music schedule (needs to be replaced in future
schedule function main:blockparty/bpmusic 400t

# player spreader
# upgraded to three passes using this bullshit boilerplate fuckery
tp @a -2000.5 57 3000.5
setblock -2017 27 2984 redstone_block destroy
summon armor_stand -2000.5 56.75 3000.5 {NoGravity:1b,Invisible:1b,CustomName:'{"text":"?midL"}'}
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 2990.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2000.5 57 3010.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 56 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1990.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2010.5 57 3000.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1993.5 57 3007.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2007.5 57 2993.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1991.5 57 2996.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2009.5 57 3004.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -1996.5 57 3009.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute positioned -2000.5 57 3000.5 run tp @a[tag=player,limit=1,sort=random,distance=..3] -2004.5 57 2991.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
setblock -2017 27 2984 air destroy
execute positioned -2000.5 57 3000.5 run kill @e[limit=1,distance=..10,name="?midL"]
tp @a[tag=!player] -2000.5 61 3023.5

summon armor_stand -2000.5 57 3000.5 {NoGravity:1b,Invisible:1b,CustomName:'{"text":"?music"}'}


# create border wall
fill -2004 61 2987 -1998 57 2987 barrier replace air
fill -1997 61 2988 -1996 57 2988 barrier replace air
fill -1995 61 2989 -1994 57 2989 barrier replace air
fill -1993 61 2990 -1993 57 2990 barrier replace air
fill -1992 61 2991 -1992 57 2991 barrier replace air
fill -1991 61 2992 -1991 57 2992 barrier replace air
fill -1990 61 2993 -1990 57 2994 barrier replace air
fill -1989 61 2995 -1989 57 2996 barrier replace air
fill -1988 61 2997 -1988 57 3003 barrier replace air
fill -1989 61 3004 -1989 57 3005 barrier replace air
fill -1990 61 3006 -1990 57 3007 barrier replace air
fill -1991 61 3008 -1991 57 3008 barrier replace air
fill -1992 61 3009 -1992 57 3009 barrier replace air
fill -1993 61 3010 -1993 57 3010 barrier replace air
fill -1994 61 3011 -1995 57 3011 barrier replace air
fill -1996 61 3012 -1997 57 3012 barrier replace air
fill -1998 61 3013 -2004 57 3013 barrier replace air
fill -2005 61 3012 -2006 57 3012 barrier replace air
fill -2007 61 3011 -2008 57 3011 barrier replace air
fill -2009 61 3010 -2009 57 3010 barrier replace air
fill -2010 61 3009 -2010 57 3009 barrier replace air
fill -2011 61 3008 -2011 57 3008 barrier replace air
fill -2012 61 3007 -2012 57 3006 barrier replace air
fill -2013 61 3005 -2013 57 3004 barrier replace air
fill -2014 61 3003 -2014 57 2997 barrier replace air
fill -2013 61 2996 -2013 57 2995 barrier replace air
fill -2012 61 2994 -2012 57 2993 barrier replace air
fill -2011 61 2992 -2011 57 2992 barrier replace air
fill -2010 61 2991 -2010 57 2991 barrier replace air
fill -2009 61 2990 -2009 57 2990 barrier replace air
fill -2008 61 2989 -2007 57 2989 barrier replace air
fill -2006 61 2988 -2005 57 2988 barrier replace air