# Description: challenge 6 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the wifi room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter6

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Find Your Car Keys!","color":"green"}
title @s subtitle {"text":"\"Dang I know I left them somewhere...\""}

# debug
tellraw @a[tag=admin] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the keys room.","color":"gray"}]