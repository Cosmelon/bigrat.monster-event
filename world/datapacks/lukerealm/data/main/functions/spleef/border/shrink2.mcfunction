# activates shrink2
scoreboard players set $shrink2Active spleefBorder 1
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 29 20
schedule function main:cleartitle 3s replace