# Description: This is basically every possibility of team position hardcoded in. only > is used because I got that dislexic shit ygm
# Author: Cosmelon
# Type: math, tick
# run from main:tick

# first column
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 2
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 3
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4

execute if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .bluePos teamScores 2
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4

execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .bluePos teamScores 3
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4

execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 3
execute if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .bluePos teamScores 4

execute if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 2
execute if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .bluePos teamScores 4

execute if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 1
execute if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 2
execute if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 3
execute if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4


# second column
#but in reality I'm just typing to to make sure that my fingers still work
#yay
execute if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .greenPos teamScores 2
execute if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .blue teamScores > .green teamScores if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .redPos teamScores 4

execute if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 2
execute if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 3
execute if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4

execute if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 2
execute if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 3
execute if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4

execute if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .redPos teamScores 2
execute if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4

execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores run scoreboard players set .greenPos teamScores 3
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores run scoreboard players set .redPos teamScores 4

execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .bluePos teamScores 1
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .redPos teamScores 3
execute if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4


# third column
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .redPos teamScores 3
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .bluePos teamScores 4

execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .yellowPos teamScores 2
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .bluePos teamScores 3
execute if score .green teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .redPos teamScores 4

execute if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 2
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 3
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4

execute if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .bluePos teamScores 2
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .green teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores if score .yellow teamScores > .red teamScores run scoreboard players set .redPos teamScores 4

execute if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .redPos teamScores 2
execute if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 3
execute if score .green teamScores > .red teamScores if score .red teamScores > .yellow teamScores if score .yellow teamScores > .blue teamScores run scoreboard players set .bluePos teamScores 4

execute if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .greenPos teamScores 1
execute if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .redPos teamScores 2
execute if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .bluePos teamScores 3
execute if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .yellow teamScores run scoreboard players set .yellowPos teamScores 4

# fourth column
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .redPos teamScores 2
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .bluePos teamScores 3
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .blue teamScores if score .blue teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4

execute if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .redPos teamScores 2
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 3
execute if score .yellow teamScores > .red teamScores if score .red teamScores > .green teamScores if score .green teamScores > .blue teamScores run scoreboard players set .bluePos teamScores 4

execute if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .greenPos teamScores 2
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .redPos teamScores 3
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .red teamScores if score .red teamScores > .blue teamScores run scoreboard players set .bluePos teamScores4 4

execute if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .greenPos teamScores 2
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .bluePos teamScores 3
execute if score .yellow teamScores > .green teamScores if score .green teamScores > .blue teamScores if score .blue teamScores > .red teamScores run scoreboard players set .redPos teamScores 4

execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .bluePos teamScores 2
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .redPos teamScores 3
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .red teamScores if score .red teamScores > .green teamScores run scoreboard players set .greenPos teamScores 4

execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScorees run scoreboard players set .yellowPos teamScores 1
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScorees run scoreboard players set .bluePos teamScores 2
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScorees run scoreboard players set .greenPos teamScores 3
execute if score .yellow teamScores > .blue teamScores if score .blue teamScores > .green teamScores if score .green teamScores > .red teamScorees run scoreboard players set .redPos teamScores 4

tag @a[tag=!player] remove red-1
tag @a[tag=!player] remove red-2
tag @a[tag=!player] remove red-3
tag @a[tag=!player] remove red-4
tag @a[tag=!player] remove blue-1
tag @a[tag=!player] remove blue-2
tag @a[tag=!player] remove blue-3
tag @a[tag=!player] remove blue-4
tag @a[tag=!player] remove green-1
tag @a[tag=!player] remove green-2
tag @a[tag=!player] remove green-3
tag @a[tag=!player] remove green-4
tag @a[tag=!player] remove yellow-1
tag @a[tag=!player] remove yellow-2
tag @a[tag=!player] remove yellow-3
tag @a[tag=!player] remove yellow-4