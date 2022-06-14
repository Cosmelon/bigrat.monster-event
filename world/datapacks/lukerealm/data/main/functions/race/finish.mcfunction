# Description: ends race
# Author: Cosmelon
# Type: single
# run from main:race/racetick when @a[tag=player,scores={raceLap=4..}] == all players


#execute as @a run playsound minecraft:entity.splash_potion.break ambient @s ~ ~ ~ 100000 .5
execute as @a run playsound minecraft:custom.race/finish voice @s ~ ~100 ~ 10000 .85
title @a title {"text":"FINISHED!"}
schedule function main:lobby 5s replace