# Description: challenge 1 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the wifi room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter1

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Password Hunt","color":"green"}
title @s subtitle {"text":"Find the wifi password!"}

# debug
tellraw @a[tag=debugView] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the wifi room.","color":"gray"}]