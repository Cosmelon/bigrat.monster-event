# Description: does the third shrink
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/s3warn after 20s

title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 17 20
scoreboard players set .shrinkActual sp_border 400
scoreboard players set .shrink3Break sp_border 400
scoreboard players set .tick sp_border 0
scoreboard players set .sec sp_border 30
playsound minecraft:block.note_block.banjo master @a ^0 ^ ^ 1 2.000000 1
bossbar set main:sp_shrinkactual visible true
schedule function main:cleartitle 3s replace
schedule function main:spleef/border/removetop 30s replace
schedule function main:spleef/border/turnoffactual 20s replace

# floor removal
tellraw @a [{"text":"» ","color":"gray"},{"text":"Top floor disappearing in 30 seconds!","color":"red"}]