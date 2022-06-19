# Description: does the second shrink
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/s2warn after 20s

title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 31 20
scoreboard players set $shrinkActual spleefBorder 400
scoreboard players set $shrink2Break spleefBorder 400
scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 30
playsound minecraft:block.note_block.banjo master @a ^0 ^ ^ 1 2.000000 1
bossbar set minecraft:spleefshrinkactual visible true
schedule function main:cleartitle 3s replace
schedule function main:spleef/border/turnoffactual 20s replace