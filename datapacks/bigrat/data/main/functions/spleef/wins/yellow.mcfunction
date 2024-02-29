# Description: yellow team wins spleef
# Author: Cosmelon
# Type: win, single
# run from main:spleef/tick when all players on other teams besides yellow == 0

scoreboard players add @a[team=Yellow] indivScore 10
tellraw @a[team=Yellow] {"text":"+10 Individual Points (team win)","color":"green"}
title @a title {"text":"Yellow wins!","color":"yellow"}
function main:spleef/wins/end