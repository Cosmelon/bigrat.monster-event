# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/green/r1_t

# replace next door
place template main:tb/tbdoor 5113 37 106

# open the door
fill 5069 42 106 5070 37 112 air replace #main:tb/door
fill 5076 42 104 5076 36 112 air replace barrier

# playsound
execute as @a[team=Green] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Green] tripwire_hook{display:{Name:'[{"text":"Key 1","italic":false,"color":"green"}]'}}

# title
title @a[team=Green] title ""
title @a[team=Green] subtitle ""
title @a[team=Green] actionbar ""

# vars
scoreboard objectives add tbR2_GreenR2 dummy
scoreboard players set +wave tbR2_GreenR2 0

# respawn dead
gamemode spectator @a[scores={tbR2_Deaths=1..},team=Green]
tp @a[scores={tbR2_Deaths=1..},team=Green] 5059.5 40 110.5