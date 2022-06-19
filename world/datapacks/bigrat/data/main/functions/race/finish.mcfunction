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

# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 1800
scoreboard players set !gateOpen race 100
scoreboard players set !gateShut race 0
scoreboard players set !milli race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
scoreboard players reset * racePos
effect clear @a
clear @a[team=!Admin]
title @a actionbar ""
title @a title ""
bossbar set minecraft:racetime visible false
schedule clear main:race/finish
schedule clear main:lobby
tag @a remove candidateAbstract

# get rid of the cinematic armor stand
kill @e[type=armor_stand,name="!raceCine"]