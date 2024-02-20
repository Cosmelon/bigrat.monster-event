# Description: main teleporting stuff
# Author: Cosmelon
# Type: single
# run from main:race/startrace, main:race/racetick

effect clear @a
gamemode adventure @a[tag=player]

tp @a[tag=red-1] 290.5 75 38.5 -90 5
tp @a[tag=red-2] 290.5 75 39.5 -90 5
tp @a[tag=red-3] 290.5 75 40.5 -90 5
tp @a[tag=red-4] 290.5 75 41.5 -90 5
tp @a[tag=blue-1] 290.5 75 43.5 -90 5
tp @a[tag=blue-2] 290.5 75 44.5 -90 5
tp @a[tag=blue-3] 290.5 75 45.5 -90 5
tp @a[tag=blue-4] 290.5 75 46.5 -90 5
tp @a[tag=green-1] 286.5 75 38.5 -90 5
tp @a[tag=green-2] 286.5 75 39.5 -90 5
tp @a[tag=green-3] 286.5 75 40.5 -90 5
tp @a[tag=green-4] 286.5 75 41.5 -90 5
tp @a[tag=yellow-1] 286.5 75 43.5 -90 5
tp @a[tag=yellow-2] 286.5 75 44.5 -90 5
tp @a[tag=yellow-3] 286.5 75 45.5 -90 5
tp @a[tag=yellow-4] 286.5 75 46.5 -90 5

# if team overflow
tp @a[team=Red,tag=!red-1,tag=!red-2,tag=!red-3,tag=!red-4] 284.50 75.00 42.50 -90.00 5.00
tp @a[team=Blue,tag=!blue-1,tag=!blue-2,tag=!blue-3,tag=!blue-4] 284.50 75.00 42.50 -90.00 5.00
tp @a[team=Green,tag=!green-1,tag=!green-2,tag=!green-3,tag=!green-4] 284.50 75.00 42.50 -90.00 5.00
tp @a[team=Yellow,tag=!yellow-1,tag=!yellow-2,tag=!yellow-3,tag=!yellow-4] 284.50 75.00 42.50 -90.00 5.00

# non-players
gamemode spectator @a[tag=!player]
tp @a[tag=!player] 284.50 75.00 42.50 -90.00 5.00

# candidate selection
tag @a[tag=player] add candidateAbstract