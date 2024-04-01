# Description: infotext for the third challenge: coop parkour
# Author: Cosmelon
# Type: single
# run from:: main:halls/tick

tag @s add halls_enter3

title @s times 5 60 10
title @s title {"text":"Co-op parkour","color":"green"}
title @s subtitle {"text":"Get to the end!"}

# Debug
tellraw @a[tag=admin] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the parkour room.","color":"gray"}]