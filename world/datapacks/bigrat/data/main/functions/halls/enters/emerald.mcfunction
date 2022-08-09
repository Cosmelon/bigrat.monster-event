# Description: challenge 5 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the emerald room entrance
# run from main:halls/hallstick

# tag
tag @s add halls_enter5

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Emerald Hunt","color":"green"}
title @s subtitle {"text":"Find the emerald!"}

# debug
tellraw @a[tag=debugView] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the emerald room.","color":"gray"}]