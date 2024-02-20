# Description: challenge 4 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the shit room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter4

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Take the Shit","color":"green"}
title @s subtitle {"text":"bottom text"}

# debug
tellraw @a[tag=debugView] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the shit room.","color":"gray"}]