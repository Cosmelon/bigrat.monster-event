# Description: ends race
# Author: Cosmelon
# Type: single
# run from main:race/racetick when @a[tag=player,scores={raceLap=4..}] == all players


#execute as @a run playsound minecraft:entity.splash_potion.break ambient @s ~ ~ ~ 100000 .5
scoreboard players set @r raceLap 5
execute as @a run playsound minecraft:custom.race/finish voice @s ~ ~100 ~ 10000 .85
title @a title {"text":"FINISHED!"}
schedule function main:returnlobby 10s replace

tellraw @a {"text":"Top Five Players This Game:","bold":true,"color":"white"}
tellraw @a [{"text":"1st","color":"#e8ce5e"},{"text":" - ","color":"white"},{"selector":"@a[scores={racePos=1}]"}]
tellraw @a [{"text":"2nd","color":"#cccccc"},{"text":" - ","color":"white"},{"selector":"@a[scores={racePos=2}]"}]
tellraw @a [{"text":"3rd","color":"#a05d37"},{"text":" - ","color":"white"},{"selector":"@a[scores={racePos=3}]"}]
tellraw @a [{"text":"4th","color":"#FFFFFF"},{"text":" - ","color":"white"},{"selector":"@a[scores={racePos=4}]"}]
tellraw @a [{"text":"5th","color":"#FFFFFF"},{"text":" - ","color":"white"},{"selector":"@a[scores={racePos=5}]"}]
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
execute as @a[tag=player] run tellraw @s [{"text":"You placed "},{"score":{"name":"@s","objective":"racePos"},"color":"green"},{"text":"/","color":"gold"},{"score":{"name":".players","objective":"teamCheck"}}]