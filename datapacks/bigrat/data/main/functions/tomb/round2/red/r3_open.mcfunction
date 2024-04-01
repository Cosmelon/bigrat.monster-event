# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/red/r1_t

# open the door
fill 5114 37 -1 5113 42 5 air replace #main:tb/door

# playsound
execute as @a[team=Red] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Red] nether_wart{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}

# title
title @a[team=Red] title ""
title @a[team=Red] subtitle ""
title @a[team=Red] actionbar ""

# vars
scoreboard objectives add tbR2_RedR3 dummy
scoreboard players set +wave tbR2_RedR3 0

# respawn dead
scoreboard players set @a[team=Red] tbR2_Deaths 0
tp @a[team=Red,gamemode=spectator] 5095.5 40 2.5
gamemode adventure @a[team=Red,gamemode=spectator]