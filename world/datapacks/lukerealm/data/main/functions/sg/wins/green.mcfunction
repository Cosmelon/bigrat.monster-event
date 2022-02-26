# green wins sg
scoreboard players set ~gameActive sg 0
title @a times 0 50 0
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add ~green Score <amount to winning team>
title @a title {"text":"Green team wins!","color":"green"}
execute unless score ~round sg matches 2 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ~round sg matches 2 run schedule function main:sg/startsg 6s replace
execute if score ~round sg matches 2 run schedule function main:sg/wins/returnlobby 3s replace
execute if score ~round sg matches 2 run schedule function main:lobby 10s replace
scoreboard players reset * sgDeaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add ~round sg 1
playsound minecraft:entity.wither.death master @a