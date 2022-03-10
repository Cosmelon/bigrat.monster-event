# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
scoreboard players set !gate race 141
scoreboard players reset * raceMilli
scoreboard players reset * raceSec
scoreboard players reset * raceMin
scoreboard players reset * raceCP
scoreboard players reset * raceLap
effect clear @a
clear @a[team=!Admin]

# regenerate start
fill 285 77 47 291 76 37 air replace barrier
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# sound
playsound minecraft:block.beacon.deactivate master @a