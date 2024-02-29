# Description: red team wins spleef
# Author: Cosmelon
# Type: win, single
# run from main:spleef/tick when all players on other teams besides red == 0

scoreboard players add @a[team=Red] indivScore 10
tellraw @a[team=Red] {"text":"+10 Individual Points (team win)","color":"green"}
title @a title {"text":"Red wins!","color":"red"}
function main:spleef/wins/end