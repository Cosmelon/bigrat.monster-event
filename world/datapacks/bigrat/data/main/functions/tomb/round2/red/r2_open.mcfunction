# Description: opens the door to the second room
# Author: Cosmelon
# Type: single
# @s = @a[tag=keyHolder,scores={tbR2_click=1..}]
# run from main:tomb/round2/red/r1_t

# open the door
fill 5069 37 5 5070 42 -1 air replace #main:tb/door

# playsound
execute as @a[team=Red] run playsound block.chest.open ambient @s ~ ~100 ~ 10000 0.6