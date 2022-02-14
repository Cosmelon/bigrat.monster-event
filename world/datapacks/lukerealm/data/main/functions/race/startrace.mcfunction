# starts race

# sets time of day
#  need to figure out what time works best, sunset or sunrise, ask solar
#  time set 13000
#  time set 23000

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

execute if score $yes Start matches 1 run execute at @a[team=!Spectator] run setblock ~ ~1 ~-1 barrier
execute if score $yes Start matches 1 run execute at @a[team=!Spectator] run setblock ~ ~1 ~1 barrier
execute if score $yes Start matches 1 run execute at @a[team=!Spectator] run setblock ~-1 ~1 ~ barrier
execute if score $yes Start matches 1 run execute at @a[team=!Spectator] run setblock ~1 ~1 ~ barrier