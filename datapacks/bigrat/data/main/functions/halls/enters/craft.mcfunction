# Description: challenge 7 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the craft room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter7

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Craft an Activator Rail!","color":"green"}
title @s subtitle {"text":"Do you actually know how?"}

# debug
tellraw @a[tag=admin] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the craft room.","color":"gray"}]