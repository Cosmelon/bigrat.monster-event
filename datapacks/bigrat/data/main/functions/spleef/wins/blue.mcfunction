# Description: blue team wins spleef
# Author: Cosmelon
# Type: win, single
# run from main:spleef/tick when all players on other teams besides blue == 0

scoreboard players add @a[team=Blue] indivScore 10
tellraw @a[team=Blue] {"text":"+10 Individual Points (team win)","color":"green"}
title @a title {"text":"Blue wins!","color":"blue"}
function main:spleef/wins/end