# Description: green team wins
# Author: Cosmelon
# Type: win
# run from main:blockparty/bptick when all players on other teams besides green == 0

scoreboard players set ?gameActive blockParty 0
scoreboard players reset * bpDeaths
tag @a remove bpAlive
tag @a remove bpDead
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# placeholder for the points given
scoreboard players add @a[team=Green] indivScore 10
tellraw @a[team=Green] {"text":"+10 indivual points (team win)","color":"green"}
title @a title {"text":"Green team wins!","color":"green"}
execute unless score ?round blockParty matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ?round blockParty matches 3 run schedule function main:blockparty/startbp 6s replace 
execute if score ?round blockParty matches 3 run schedule function main:returnlobby 3s replace
function main:blockparty/floorrng/floors
function main:sfx/gameend
bossbar set minecraft:bproundcount visible false
schedule clear main:blockparty/bpmusic
stopsound @a voice

# workaround for infinite game repeat
execute if score .red br_tcheck matches 0 if score .blue br_tcheck matches 0 if score .green br_tcheck matches 1.. if score .yellow br_tcheck matches 0 run function main:blockparty/killbp
execute if score .red br_tcheck matches 0 if score .blue br_tcheck matches 0 if score .green br_tcheck matches 0 if score .yellow br_tcheck matches 0 run function main:blockparty/killbp