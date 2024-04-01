# Description: opens the door to the third room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/blue/r1_t

# debug
tellraw @a "ok yeah this is where the script stops"
tellraw @a "SOLAR BUILD THE NEXT ROOM"

# open the door
fill 5114 37 52 5113 42 58 air replace #main:tb/door
fill 5121 42 52 5121 37 59 air replace barrier

# playsound
execute as @a[team=Blue] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Blue] nether_wart{display:{Name:'[{"text":"Key 2","italic":false,"color":"blue"}]'}}

# title
title @a[team=Blue] title ""
title @a[team=Blue] subtitle ""
title @a[team=Blue] actionbar ""

# vars
scoreboard objectives add tbR2_BlueR3 dummy
scoreboard players set +wave tbR2_BlueR3 0

# respawn dead
scoreboard players set @a[team=Blue] tbR2_Deaths 0
tp @a[team=Blue,gamemode=spectator] 5095.5 40 55.5
gamemode adventure @a[team=Blue,gamemode=spectator]