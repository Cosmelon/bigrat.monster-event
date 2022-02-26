scoreboard players set $gameActive spleef 0
title @a times 0 50 0
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add $green Score <amount to winning team>
title @a title {"text":"Green team wins!","color":"green"}
execute unless score $round spleef matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score $round spleef matches 3 run schedule function main:spleef/startspleef 6s replace
execute if score $round spleef matches 3 run schedule function main:spleef/wins/returnlobby 3s replace
execute if score $round spleef matches 3 run schedule function main:lobby 10s replace
# execute unless score $round spleef matches 3 run title @a title {"text":"Round Over!","bold":true,"color":"red"}
scoreboard players reset * spleefDeaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add $round spleef 1
scoreboard players set $toolsGiven spleef 0
bossbar set minecraft:spleefshrink1timer visible false
bossbar set minecraft:spleefshrink2timer visible false
bossbar set minecraft:spleefshrink3timer visible false
bossbar set minecraft:spleefshrinkactual visible false
playsound minecraft:entity.wither.death master @a
gamemode spectator @a