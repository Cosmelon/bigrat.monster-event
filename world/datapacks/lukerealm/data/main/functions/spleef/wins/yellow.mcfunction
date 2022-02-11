scoreboard players set $gameActive spleef 0
title @a times 0 50 0
clear @a
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add $yellow Score <amount to winning team>
title @a title {"text":"Yellow team wins!","color":"yellow"}
execute unless score $round spleef matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score $round spleef matches 3 run schedule function main:spleef/startspleef 6s
execute if score $round spleef matches 3 run schedule function main:spleef/wins/returnlobby 3s
execute if score $round spleef matches 3 run schedule function main:lobby 10s
# execute unless score $round spleef matches 3 run title @a title {"text":"Round Over!","bold":true,"color":"red"}
scoreboard players reset * spleefDeaths
playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add $round spleef 1
bossbar set minecraft:shrink1timer visible false
bossbar set minecraft:shrink2timer visible false
bossbar set minecraft:shrink3timer visible false
bossbar set minecraft:shrinkactual visible false
gamemode spectator @a

# reset all shrink
scoreboard players set $shrink1Active spleef 0