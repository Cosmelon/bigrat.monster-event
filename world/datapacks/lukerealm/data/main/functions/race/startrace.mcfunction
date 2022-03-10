# starts race

# sets time of day
#  need to figure out what time works best, sunset or sunrise, ask solar
#  time set 13000
#  time set 23000

# start
scoreboard players set !gameActive race 1
scoreboard players set !countDown race 160
scoreboard players set !gate race 141
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0

# clear inventory pre-game
clear @a[team=!Admin]

# gamemodes
gamemode adventure @a[tag=player]
gamemode spectator @a[tag=!player]
scoreboard players set @a raceLap 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0

# teleporting
tp @a -191 12 132
tp @a[tag=!player] 284.5 75 42.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 75 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 75 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 75 46.5 -90 5
#barriers (face-top-back-left-right)
# red
fill 291 76 38 291 76 41 barrier
fill 290 77 38 290 77 41 barrier
fill 289 76 38 289 76 41 barrier
setblock 290 76 37 barrier
setblock 290 76 42 barrier
# blue
fill 291 76 43 291 76 46 barrier
fill 290 77 43 290 77 46 barrier
fill 289 76 43 289 76 46 barrier
setblock 290 76 42 barrier
setblock 290 76 47 barrier
# green
fill 287 76 38 287 76 41 barrier
fill 286 77 38 286 77 41 barrier
fill 285 76 38 285 76 41 barrier
setblock 286 76 37 barrier
setblock 286 76 42 barrier
# yellow
fill 287 76 43 287 76 46 barrier
fill 286 77 43 286 77 46 barrier
fill 285 76 43 285 76 46 barrier
setblock 286 76 42 barrier
setblock 286 76 47 barrier
#startline
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# depth strider boots
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}