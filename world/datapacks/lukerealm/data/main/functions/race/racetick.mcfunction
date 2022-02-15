# tick files for race
execute if score !gameActive race matches 0 run scoreboard players set !countDown race 160
execute if score !gameActive race matches 1 run scoreboard players remove !countDown race 1
execute if score !gameActive race matches 1 run title @a times 0 25 0

# countdown
execute if score !countDown race matches 80 run fill 285 16 47 291 15 37 air replace barrier
execute if score !countDown race matches 60 run fill 294 18 37 294 14 47 red_stained_glass replace light_gray_stained_glass
execute if score !countDown race matches 60 run title @a title {"text":"3","color":"red"}
execute if score !countDown race matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 40 run fill 294 18 37 294 14 47 yellow_stained_glass replace red_stained_glass
execute if score !countDown race matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score !countDown race matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 20 run fill 294 18 37 294 14 47 lime_stained_glass replace yellow_stained_glass
execute if score !countDown race matches 20 run title @a title {"text":"1","color":"green"}
execute if score !countDown race matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 0 run fill 294 18 37 294 14 47 air replace lime_stained_glass
execute if score !countDown race matches 0 run title @a title {"text":"Go!","color":"green"}
execute if score !countDown race matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 2
execute if score !countDown race matches -20 run title @a title ""

# speedpads (magenta_glazed_terracotta)
execute if score !gameActive race matches 1 run execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run effect give @s speed 2 3 true
execute if score !gameActive race matches 1 run execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run effect give @a dolphins_grace 3 3 true
# give elytra (light_blue_glazed_terracotta)
execute if score !gameActive race matches 1 run execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ light_blue_glazed_terracotta run item replace entity @s armor.chest with elytra
# remove chest
execute if score !gameActive race matches 1 run execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ orange_glazed_terracotta run item replace entity @s armor.chest with air

# before elytra checkpoint, most likely temporary
execute if score !gameActive race matches 1 run execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ granite run spawnpoint @s ~ ~ ~ 
execute if score !gameActive race matches 1 run kill @a[gamemode=adventure,scores={yCos=6}]

# spawnpoints
execute if score !gameActive race matches 1 run setworldspawn 284 14 42