# yellow wins sg
scoreboard players set ~gameActive sg 0
title @a times 0 50 10
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add ~yellow Score <amount to winning team>
title @a title {"text":"Yellow team wins!","color":"yellow"}
execute unless score ~round sg matches 2 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ~round sg matches 2 run schedule function main:sg/startsg 6s replace
execute if score ~round sg matches 2 run schedule function main:sg/wins/returnlobby 3s replace
execute if score ~round sg matches 2 run schedule function main:lobby 10s replace
scoreboard players reset * sgDeaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add ~round sg 1
execute as @a run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10


# solution to infinite game repeat problem
execute if score ~aliveRed sg matches 0 if score !aliveBlue sg matches 1.. if score ~aliveGreen sg matches 0 if score ~aliveYellow sg matches 1.. run function main:sg/killsg