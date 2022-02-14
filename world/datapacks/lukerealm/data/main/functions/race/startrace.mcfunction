# starts race

# sets time of day
#  need to figure out what time works best, sunset or sunrise, ask solar
#  time set 13000
#  time set 23000

# start
scoreboard players set !gameActive race 1
scoreboard players set !countDown race 160

# clear inventory pre-game
clear @a[team=Red]
clear @a[team=Blue]
clear @a[team=Green]
clear @a[team=Yellow]
clear @a[team=Spectator]

# gamemodes
gamemode adventure @a[team=Red]
gamemode adventure @a[team=Blue]
gamemode adventure @a[team=Green]
gamemode adventure @a[team=Yellow]
gamemode spectator @a[team=Admin]
gamemode spectator @a[team=Spectator]

# teleporting
tp @a[team=Admin] 284.5 15 42.5 -90 5
tp @a[team=Spectator] 284.5 15 42.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Red,limit=1,sort=random,distance=..50] 290.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Blue,limit=1,sort=random,distance=..50] 290.5 14 46.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 38.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 39.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 40.5 -90 5
execute positioned -191 12 132 run tp @a[team=Green,limit=1,sort=random,distance=..50] 286.5 14 41.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 43.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 44.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 45.5 -90 5
execute positioned -191 12 132 run tp @a[team=Yellow,limit=1,sort=random,distance=..50] 286.5 14 46.5 -90 5
#barriers (face-top-back-left-right)
# red
fill 291 15 38 291 15 41 barrier
fill 290 16 38 290 16 41 barrier
fill 289 15 38 289 15 41 barrier
setblock 290 15 37 barrier
setblock 290 15 42 barrier
# blue
fill 291 15 43 291 15 46 barrier
fill 290 16 43 290 16 46 barrier
fill 289 15 43 289 15 46 barrier
setblock 290 15 42 barrier
setblock 290 15 47 barrier
# green
fill 287 15 38 287 15 41 barrier
fill 286 16 38 286 16 41 barrier
fill 285 15 38 285 15 41 barrier
setblock 286 15 37 barrier
setblock 286 15 42 barrier
# yellow
fill 287 15 43 287 15 46 barrier
fill 286 16 43 286 16 46 barrier
fill 285 15 43 285 15 46 barrier
setblock 286 15 42 barrier
setblock 286 15 47 barrier
#startline
fill 294 18 37 294 14 47 light_gray_stained_glass
setblock 294 18 38 white_wool
setblock 294 18 39 black_wool
setblock 294 18 45 black_wool
setblock 294 18 46 white_wool