execute if score $gameActive battleGame matches 1 run clear @a minecraft:glass_bottle

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}},gamemode=adventure] run effect give @s minecraft:weakness 1 255 true
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_shovel"}}] run effect clear @s minecraft:weakness