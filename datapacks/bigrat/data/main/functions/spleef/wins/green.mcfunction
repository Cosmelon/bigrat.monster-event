# Description: green team wins spleef
# Author: Cosmelon
# Type: win, single
# run from main:spleef/tick when all players on other teams besides green == 0

scoreboard players add @a[team=Green] indivScore 10
tellraw @a[team=Green] {"text":"+10 Individual Points (team win)","color":"green"}
title @a title {"text":"Green wins!","color":"green"}
function main:spleef/wins/end