# activates shrink1
scoreboard players set $shrink1Active spleefBorder 1
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 45 20
schedule function main:cleartitle 3s replace