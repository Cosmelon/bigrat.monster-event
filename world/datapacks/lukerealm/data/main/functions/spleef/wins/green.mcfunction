# Description: green team wins spleef
# Author: Cosmelon
# Type: win, single
# run from main:spleef/sptick when all players on other teams besides green == 0

scoreboard players set $gameActive spleef 0
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
scoreboard players add @a[team=Green] indivScore 10
tellraw @a[team=Green] {"text":"+10 indivual points (team win)","color":"green"}
title @a title {"text":"Green team wins!","color":"green"}
execute unless score $round spleef matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score $round spleef matches 3 run schedule function main:spleef/startspleef 6s replace
execute if score $round spleef matches 3 run schedule function main:returnlobby 3s replace
# execute unless score $round spleef matches 3 run title @a title {"text":"Round Over!","bold":true,"color":"red"}
scoreboard players reset * spleefDeaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add $round spleef 1
scoreboard players set $toolsGiven spleef 0
schedule clear main:spleef/border/s1warn
schedule clear main:spleef/border/s2warn
schedule clear main:spleef/border/s3warn
schedule clear main:spleef/border/removetop
bossbar set minecraft:spleefshirinkwarn visible false
bossbar set minecraft:spleefshrinkactual visible false
function main:sounds/gameend
gamemode spectator @a[team=!Admin]


# solution to infinite game repeat problem
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 0 if score .green teamCheck matches 1.. if score .yellow teamCheck matches 0 run function main:spleef/killspleef
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 0 if score .green teamCheck matches 0 if score .yellow teamCheck matches 0 run function main:spleef/killspleef