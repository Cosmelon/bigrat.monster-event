scoreboard players set $gameActive spleef 0
title @a times 0 50 0
clear @a
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add $red Score <amount to winning team>
title @a title {"text":"Red team wins!","bold":true,"color":"red"}
execute unless score $round spleef matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score $round spleef matches 3 run schedule function main:spleef/startspleef 5s
execute if score $round spleef matches 3 run title @a title {"text":"Returning to lobby...","color":"orange","bold":true}
execute if score $round spleef matches 3 run schedule function main:lobby 2s
# execute unless score $round spleef matches 3 run title @a title {"text":"Round Over!","bold":true,"color":"red"}
scoreboard players reset * spleefDeaths
playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add $round spleef 1
bossbar set minecraft:shrink1timer visible false