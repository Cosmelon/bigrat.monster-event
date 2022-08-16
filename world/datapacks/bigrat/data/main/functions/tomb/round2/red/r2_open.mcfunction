# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/red/r1_t

# replace next door
place template main:tb/tbdoor 5113 37 -1

# open the door
fill 5069 37 5 5070 42 -1 air replace #main:tb/door
fill 5076 42 -2 5076 36 6 air replace barrier

# playsound
execute as @a[team=Red] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Red] tripwire_hook{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}

# title
title @a[team=Red] title ""
title @a[team=Red] subtitle ""
title @a[team=Red] actionbar ""

# vars
scoreboard objectives add tbR2_RedR2 dummy
scoreboard players set +wave tbR2_RedR2 0

# respawn dead
gamemode spectator @a[scores={tbR2_Deaths=1..},team=Red]
tp @a[scores={tbR2_Deaths=1..},team=Red] 5059.5 40 2.5