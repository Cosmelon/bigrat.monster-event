execute unless score $game GameActive matches 1 run tellraw @s {"text":"No game active","bold":false,"color":"red"}
execute unless score $game GameActive matches 1 run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1000 0.1

execute if score $gameActive parkour matches 1 run scoreboard players set $countDown parkour 160
execute if score $gameActive parkour matches 1 run scoreboard players set $gameActive parkour 0

# replace cage wall
fill 10 6 92 10 4 98 light_gray_stained_glass

# clear inventories
clear @a