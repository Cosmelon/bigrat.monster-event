# activates shrink2
scoreboard players set $shrink2Active spleef 1
title @a title {"text":"Border shrinking!","color":"dark_red","bold":true}
worldborder set 29 30
schedule function main:cleartitle 3s replace