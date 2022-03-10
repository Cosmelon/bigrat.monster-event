# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
scoreboard players set !gate race 141
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
effect clear @a
clear @a[team=!Admin]
title @a actionbar ""

# regenerate start
fill 285 77 47 291 76 37 air replace barrier
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# sound
playsound minecraft:block.beacon.deactivate master @a