# Description: does the first shrink
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/s1warn after 20s

title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 45 20
scoreboard players set .shrinkActual sp_border 400
scoreboard players set .shrink1Break sp_border 400
scoreboard players set .tick sp_border 0
scoreboard players set .sec sp_border 30
playsound minecraft:block.note_block.banjo master @a ^0 ^ ^ 1 2.000000 1
bossbar set main:sp_shrinkactual visible true
schedule function main:cleartitle 3s replace
schedule function main:spleef/border/turnoffactual 20s replace