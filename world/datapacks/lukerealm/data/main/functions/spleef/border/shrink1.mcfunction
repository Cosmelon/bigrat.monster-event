# activates shrink1
scoreboard players set $shrink1Active spleef 1
title @a title {"text":"Border shrinking!","color":"dark_red","bold":true}
worldborder set 45 20
schedule function main:cleartitle 3s replace