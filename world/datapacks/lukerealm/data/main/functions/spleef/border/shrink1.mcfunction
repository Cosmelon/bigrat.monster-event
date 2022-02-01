# activates shrink1
scoreboard players set $shrink1Active spleef 1
title @a title {"text":"Border shrinking!","color":"dark_red","bold":true}
worldborder set 69 0
worldborder set 41 10
schedule function main:spleef/cleartitle 3s replace