# Description: challenge 3 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the soap room entrance
# run from main:halls/hallstick

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"turn on the right heads","color":"green"}
title @s subtitle {"text":"dont drop the soap!"}

# debug
tellraw @a[tag=debugView] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the soap room.","color":"gray"}]