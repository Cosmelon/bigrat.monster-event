# Description: ends race
# Author: br_yCosmelon
# Type: single
# run from main:race/tick when @a[tag=player,scores={rc_lap=4..}] == all players


#execute as @a run playsound minecraft:entity.splash_potion.break ambient @s ~ ~ ~ 100000 .5
scoreboard players set .gameActive rc_main 0
gamerule sendCommandFeedback false
scoreboard players set @r rc_lap 5
stopsound @a voice minecraft:custom.race/music
schedule clear main:race/music
execute as @a run playsound minecraft:custom.race/finish voice @s ~ ~100 ~ 10000 .85

title @a title {"text":"FINISHED!"}
schedule function main:race/topfive 5s replace