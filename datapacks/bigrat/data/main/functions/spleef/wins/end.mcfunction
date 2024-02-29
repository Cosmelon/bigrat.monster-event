# Description: Ends a round of spleef
# Author: Cosmelon
# type: auto
# run from main:spleef/wins/red,blue,green,yellow

scoreboard players set .gameActive sp_main 0
title @a times 0 50 20
clear @a
execute unless score .round sp_main matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score .round sp_main matches 3 run schedule function main:spleef/start 6s replace
execute if score .round sp_main matches 3 run schedule function main:returnlobby 3s replace
scoreboard players reset * sp_deaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add .round sp_main 1
schedule clear main:spleef/border/s1warn
schedule clear main:spleef/border/s2warn
schedule clear main:spleef/border/s3warn
schedule clear main:spleef/border/shrink1
schedule clear main:spleef/border/shrink2
schedule clear main:spleef/border/shrink3
schedule clear main:spleef/border/removetop
bossbar set main:sp_shrinkwarn visible false
bossbar set main:sp_shrinkactual visible false
function main:sfx/gameend
gamemode spectator @a