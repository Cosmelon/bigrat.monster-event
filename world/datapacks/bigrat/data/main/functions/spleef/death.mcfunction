# Description: executed when a player dies
# Author: Cosmelon
# Type: single
# @s = @a[scores={spleefDeaths=1}]
# run from main:spleef/sptick

scoreboard players add @a[tag=player,scores={spleefDeaths=0}] indivScore 1
tellraw @a[tag=player,scores={spleefDeaths=0}] {"text":"+1 Invividual point (Survival)","color":"green"}


scoreboard players add @s spleefDeaths 1
title @s title {"text":"You Died!","color":"dark_red"}