# tick files for race
# everything in this file is preceeded by execute if score !gameActive race matches 1 run ...
# no need to type it in every single time

scoreboard players remove !countDown race 1
title @a times 0 25 0
effect give @a water_breathing 100000 0 true
effect give @a speed 10000 0 true

# countdown
execute if score !countDown race matches 80 run fill 285 77 47 291 76 37 air replace barrier
execute if score !countDown race matches 60 run fill 294 79 37 294 75 47 red_stained_glass replace light_gray_stained_glass
execute if score !countDown race matches 60 run title @a title {"text":"3","color":"red"}
execute if score !countDown race matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 40 run fill 294 79 37 294 75 47 yellow_stained_glass replace red_stained_glass
execute if score !countDown race matches 40 run title @a title {"text":"2","color":"gold"}
execute if score !countDown race matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 20 run fill 294 79 37 294 75 47 lime_stained_glass replace yellow_stained_glass
execute if score !countDown race matches 20 run title @a title {"text":"1","color":"green"}
execute if score !countDown race matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 0 run fill 294 79 37 294 75 47 air replace lime_stained_glass
execute if score !countDown race matches 0 run title @a title {"text":"Go!","color":"green"}
execute if score !countDown race matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 2
execute if score !countDown race matches -20 run title @a title ""

# gate
#  intended be open for five seconds, then closed for two
scoreboard players remove !gate race 1
execute if score !gate race matches 140 run fill 351 83 42 351 81 44 air destroy
execute if score !gate race matches 40 run fill 351 83 42 351 81 44 warped_fence
execute if score !gate race matches 0 run scoreboard players set !gate race 141

# speedpads (magenta_glazed_terracotta)
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run effect give @s speed 2 3 true
# jump boost (lime_glazed_terracotta)
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ lime_glazed_terracotta run effect give @s minecraft:jump_boost 1 7 true
# give elytra (light_blue_glazed_terracotta)
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ light_blue_glazed_terracotta run item replace entity @s armor.chest with elytra
execute as @a[gamemode=adventure] at @s unless block ~ ~-0.25 ~ air run item replace entity @s armor.chest with air

# before elytra checkpoint, most likely temporary
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ granite run spawnpoint @s ~ ~ ~ 
kill @a[gamemode=adventure,scores={yCos=6}]

# spawnpoints
setworldspawn 287 75 42
spawnpoint @a 287 75 42