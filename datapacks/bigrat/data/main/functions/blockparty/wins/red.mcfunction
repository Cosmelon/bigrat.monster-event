# Description: red team wins
# Author: Cosmelon
# Type: win
# run from main:blockparty/bptick when all players on other teams besides blue == 0

scoreboard players set .gameActive bp_main 0
scoreboard players reset * bp_deaths
tag @a remove bp_alive
tag @a remove bp_dead
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# placeholder for the points given
scoreboard players add @a[team=Red] indivScore 10
tellraw @a[team=Red] {"text":"+10 indivual points (team win)","color":"green"}
title @a title {"text":"Red team wins!","color":"red"}
execute unless score .round bp_main matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score .round bp_main matches 3 run schedule function main:blockparty/start 6s replace 
execute if score .round bp_main matches 3 run schedule function main:returnlobby 3s replace
function main:blockparty/floorrng/floors
function main:sfx/gameend
bossbar set main:bp_roundcount visible false
schedule clear main:blockparty/music
stopsound @a voice