# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
scoreboard players set !gateOpen race 0
scoreboard players set !gateShut race 100
scoreboard players set !milli race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
effect clear @a
clear @a[team=!Admin]
title @a actionbar ""
title @a title ""
bossbar set minecraft:racetime visible false

# regenerate start
fill 285 77 47 291 76 37 air replace barrier
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# sound
playsound minecraft:block.beacon.deactivate master @a

tellraw @a[tag=admin] ""
tellraw @a[tag=admin] {"text":"Killed race! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a[tag=admin] ""