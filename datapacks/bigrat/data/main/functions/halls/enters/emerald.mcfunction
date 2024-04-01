# Description: challenge 5 enter text
# Author: Cosmelon
# Type: single
# @s = @a in range of the emerald room entrance
# run from main:halls/tick

# tag
tag @s add halls_enter5

# title
title @s times 5 60 10
title @s title ""
title @s subtitle ""
title @s title {"text":"Emerald Hunt","color":"green"}
title @s subtitle {"text":"Find the emerald!"}

# reset the place
tellraw @s [{"text":"» ","color":"gray"},{"text":"Click "},{"text":"here","color":"gray","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger halls_emReset"}},{"text":" if you need to reset the mine.","color":"gray"}]

# debug
tellraw @a[tag=admin] [{"text":"[Debug] ","color":"gray"},{"selector":"@s"},{"text":" has discovered the emerald room.","color":"gray"}]