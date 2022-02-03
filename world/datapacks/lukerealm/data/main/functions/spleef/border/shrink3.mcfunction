# activates shrink3
scoreboard players set $shrink3Active spleefBorder 1
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 17 20
schedule function main:cleartitle 3s replace