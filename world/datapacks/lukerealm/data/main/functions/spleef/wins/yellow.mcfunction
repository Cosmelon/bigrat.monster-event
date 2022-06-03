scoreboard players set $gameActive spleef 0
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add $yellow Score <amount to winning team>
title @a title {"text":"Yellow team wins!","color":"yellow"}
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
bossbar set minecraft:spleefshrinkactual visible false
execute as @a run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10
gamemode spectator @a[team=!Admin]

schedule clear main:spleef/border/removetop



# solution to infinite game repeat problem
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 0 if score .green teamCheck matches 0 if score .yellow teamCheck matches 1.. run function main:spleef/killspleef