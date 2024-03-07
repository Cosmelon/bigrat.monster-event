# Description: main teleporting stuff
# Author: Cosmelon
# Type: single
# run from main:race/start, main:race/tick

effect clear @a
gamemode adventure @a[tag=player]

tp @r[team=Red,distance=20..] 290.5 75 38.5 -90 5
tp @r[team=Red,distance=20..] 290.5 75 39.5 -90 5
tp @r[team=Red,distance=20..] 290.5 75 40.5 -90 5
tp @r[team=Red,distance=20..] 290.5 75 41.5 -90 5
tp @r[team=Blue,distance=20..] 290.5 75 43.5 -90 5
tp @r[team=Blue,distance=20..] 290.5 75 44.5 -90 5
tp @r[team=Blue,distance=20..] 290.5 75 45.5 -90 5
tp @r[team=Blue,distance=20..] 290.5 75 46.5 -90 5
tp @a[team=Green,distance=20..] 286.5 75 38.5 -90 5
tp @a[team=Green,distance=20..] 286.5 75 39.5 -90 5
tp @a[team=Green,distance=20..] 286.5 75 40.5 -90 5
tp @a[team=Green,distance=20..] 286.5 75 41.5 -90 5
tp @a[team=Yellow,distance=20..] 286.5 75 43.5 -90 5
tp @a[team=Yellow,distance=20..] 286.5 75 44.5 -90 5
tp @a[team=Yellow,distance=20..] 286.5 75 45.5 -90 5
tp @a[team=Yellow,distance=20..] 286.5 75 46.5 -90 5

# if team overflow
tp @a[distance=20..] 284.50 75.00 42.50 -90.00 5.00

# non-players
gamemode spectator @a[tag=!player]