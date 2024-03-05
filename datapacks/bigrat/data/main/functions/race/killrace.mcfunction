# Description: shuts off race
# Author: Cosmelon
# Type: kill
# run from <manual>

# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 1410
scoreboard players set !gateOpen race 100
scoreboard players set !gateShut race 0
scoreboard players set !milli race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceOMilli 0
scoreboard players set @a raceOSec 0
scoreboard players set @a raceOMin 0
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
schedule clear main:returnlobby
schedule clear main:race/music
tag @a remove candidateAbstract
gamerule sendCommandFeedback true

# get rid of the cinematic armor stand
kill @e[type=armor_stand,name="!raceCine"]

# regenerate start
fill 285 77 47 291 76 37 air replace barrier
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# sound
playsound minecraft:block.beacon.deactivate master @a
stopsound @a voice minecraft:custom.race/music

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Race!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Race! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a ""