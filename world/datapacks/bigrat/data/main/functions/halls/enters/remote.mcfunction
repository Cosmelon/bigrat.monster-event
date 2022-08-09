# Description: challenge 2 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the remote room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter2

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Find the Remote!","color":"green"}
title @s subtitle {"text":"Turn on the TV after you find it!"}

# debug
tellraw @a[tag=debugView] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the remote room.","color":"gray"}]