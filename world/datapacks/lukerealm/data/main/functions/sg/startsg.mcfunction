# starts sg

# gameActive
scoreboard players set ~gameActive sg 1

# set gamemodes
gamemode adventure @a[team=!Admin]
gamemode spectator @a[team=Admin]
gamemode spectator @a[team=Spectator]

# reset notifs
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0

# spawnpoints
spawnpoint @a -1983 90 -1983
setworldspawn -1983 90 -1983

# teleporting
# player spreader goes clockwise
tp @a -1983 133 -1983 0 -90
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 0 10

# barriers
execute at @a[team=Red] run setblock ~1 ~1 ~ barrier
execute at @a[team=Red] run setblock ~ ~2 ~ barrier
execute at @a[team=Red] run setblock ~ ~1 ~1 barrier
execute at @a[team=Red] run setblock ~ ~1 ~-1 barrier
execute at @a[team=Red] run setblock ~-1 ~1 ~ barrier
execute at @a[team=Blue] run setblock ~1 ~1 ~ barrier
execute at @a[team=Blue] run setblock ~ ~2 ~ barrier
execute at @a[team=Blue] run setblock ~ ~1 ~1 barrier
execute at @a[team=Blue] run setblock ~ ~1 ~-1 barrier
execute at @a[team=Blue] run setblock ~-1 ~1 ~ barrier
execute at @a[team=Green] run setblock ~1 ~1 ~ barrier
execute at @a[team=Green] run setblock ~ ~2 ~ barrier
execute at @a[team=Green] run setblock ~ ~1 ~1 barrier
execute at @a[team=Green] run setblock ~ ~1 ~-1 barrier
execute at @a[team=Green] run setblock ~-1 ~1 ~ barrier
execute at @a[team=Yellow] run setblock ~1 ~1 ~ barrier
execute at @a[team=Yellow] run setblock ~ ~2 ~ barrier
execute at @a[team=Yellow] run setblock ~ ~1 ~1 barrier
execute at @a[team=Yellow] run setblock ~ ~1 ~-1 barrier
execute at @a[team=Yellow] run setblock ~-1 ~1 ~ barrier

# worldborder
worldborder center -1983.5 -1983.5
worldborder set 280 0