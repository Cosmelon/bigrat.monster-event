# Description: opens the door to the third room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/yellow/r1_t

# open the door
fill 5113 42 158 5114 37 164 air replace #main:tb/door
fill 5121 42 105 5121 37 112 air replace barrier

# playsound
execute as @a[team=Yellow] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Yellow] tripwire_hook{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}

# title
title @a[team=Yellow] title ""
title @a[team=Yellow] subtitle ""
title @a[team=Yellow] actionbar ""

# vars
scoreboard objectives add tbR2_YellowR3 dummy
scoreboard players set +wave tbR2_YellowR3 0

# respawn dead
scoreboard players set @a[team=Yellow] tbR2_Deaths 0
tp @a[team=Yellow,gamemode=spectator] 5095.5 40 161.5
gamemode adventure @a[team=Yellow,gamemode=spectator]