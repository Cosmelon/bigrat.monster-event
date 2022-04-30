# start blockparty

title @a times 0 50 80

# player spreader
tp @a -2000.5 56.5 3000.5
summon armor_stand -2000.5 57 -6000.5 {NoGravity:1b,CustomName:'{"text":"?midL"}'}
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
kill @e[limit=1,name="?midL"]



scoreboard players set ?gameActive blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players set @a bpSound 0

scoreboard players set ?notifRedDead bpDead 0
scoreboard players set ?notifBlueDead bpDead 0
scoreboard players set ?notifGreenDead bpDead 0
scoreboard players set ?notifYellowDead bpDead 0

tag @a[tag=players] add bpAlive
tag @a[tag=players] remove bpDead