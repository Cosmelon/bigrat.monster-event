# Description: shuts off race
# Author: Cosmelon
# Type: kill
# run from <manual>

scoreboard players set .gameActive rc_main 0
scoreboard players set .countDown rc_main 1410
scoreboard players set .gateOpen rc_main 100
scoreboard players set .gateShut rc_main 0
scoreboard players set .milli rc_main 0
scoreboard players set .raceTime rc_milli 0
scoreboard players set .raceTime rc_sec 0
scoreboard players set .raceTime rc_min 0
scoreboard players set @a rc_milli 0
scoreboard players set @a rc_sec 0
scoreboard players set @a rc_min 0
scoreboard players set @a rc_allms 0
scoreboard players set @a rc_alls 0
scoreboard players set @a rc_allmin 0
scoreboard players set @a rc_checkpt 0
scoreboard players set @a rc_lap 0
scoreboard players reset * rc_pos
effect clear @a
clear @a[team=!Admin]
title @a actionbar ""
title @a title ""
bossbar set minecraft:rc_alltime visible false
schedule clear main:race/finish
schedule clear main:race/topfive
schedule clear main:race/laptimes
schedule clear main:race/music
schedule clear main:lobby
schedule clear main:returnlobby
gamerule sendCommandFeedback true

# get rid of the cinematic armor stand
kill @e[type=armor_stand,name=".raceCine"]

# regenerate start
fill 285 77 47 291 76 37 air replace barrier
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# sound
playsound minecraft:block.beacon.deactivate master @a
stopsound @a voice minecraft:custom.race/music

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed race!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed race! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a ""