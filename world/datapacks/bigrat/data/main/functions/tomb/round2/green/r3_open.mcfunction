# Description: opens the door to the third room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/green/r1_t

# open the door
fill 5114 37 105 5113 42 111 air replace #main:tb/door
fill 5121 42 105 5121 37 112 air replace barrier

# playsound
execute as @a[team=Green] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Green] tripwire_hook{display:{Name:'[{"text":"Key 2","italic":false,"color":"green"}]'}}

# title
title @a[team=Green] title ""
title @a[team=Green] subtitle ""
title @a[team=Green] actionbar ""

# vars
scoreboard objectives add tbR2_GreenR3 dummy
scoreboard players set +wave tbR2_GreenR3 0

# respawn dead
scoreboard players set @a[team=Green] tbR2_Deaths 0
tp @a[team=Green,gamemode=spectator] 5095.5 40 108.5
gamemode adventure @a[team=Green,gamemode=spectator]