# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/blue/r1_t

# replace next door
place template main:tb/tbdoor 5113 37 52

# open the door
fill 5069 37 58 5070 42 52 air replace #main:tb/door
fill 5076 42 51 5076 36 59 air replace barrier

# playsound
execute as @a[team=Blue] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6

# remove key
clear @a[team=Blue] tripwire_hook{display:{Name:'[{"text":"Key 1","italic":false,"color":"blue"}]'}}

# title
title @a[team=Blue] title ""
title @a[team=Blue] subtitle ""
title @a[team=Blue] actionbar ""

# vars
scoreboard objectives add tbR2_BlueR2 dummy
scoreboard players set +wave tbR2_BlueR2 0

# respawn dead
scoreboard players set @a[team=Blue] tbR2_Deaths 0
tp @a[team=Blue,gamemode=spectator] 5059.5 40 55.5
gamemode adventure @a[team=Blue,gamemode=spectator]