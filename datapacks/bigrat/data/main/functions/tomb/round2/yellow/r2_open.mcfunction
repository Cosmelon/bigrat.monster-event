# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/yellow/r1_t

# replace next door
place template main:tb/tbdoor 5113 37 158

# open the door
fill 5069 37 158 5070 42 164 air replace #main:tb/door
fill 5076 42 158 5076 36 164 air replace barrier

# playsound
execute as @a[team=Yellow] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Yellow] nether_wart{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}

# title
title @a[team=Yellow] title ""
title @a[team=Yellow] subtitle ""
title @a[team=Yellow] actionbar ""

# vars
scoreboard objectives add tbR2_YellowR2 dummy
scoreboard players set +wave tbR2_YellowR2 0

# respawn dead
scoreboard players set @a[team=Yellow] tbR2_Deaths 0
tp @a[team=Yellow,gamemode=spectator] 5059.5 40 161.5
gamemode adventure @a[team=Yellow,gamemode=spectator]