# kills race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
effect clear @a

# regenerate start
fill 285 16 47 291 15 37 air replace barrier
fill 294 18 37 294 14 47 light_gray_stained_glass
setblock 294 18 38 white_wool
setblock 294 18 39 black_wool
setblock 294 18 45 black_wool
setblock 294 18 46 white_wool