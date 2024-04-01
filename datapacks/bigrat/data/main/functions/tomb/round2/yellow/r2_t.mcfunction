# Description: yellow room2 tick
# Author: Cosmelon
# Type: tick
# run from main:tomb/round2/main ; positioned @ 5095.5 41 161.5 ; when +active tbR2_YellowR2 == 1

# count remaining zombies
execute if score +wave tbR2_YellowR2 matches 1 store result score +r2w1Zcount tbR2_YellowR2 if entity @e[tag=tbR2_r2w1Yellow]
execute if score +wave tbR2_YellowR2 matches 2 store result score +r2w2Zcount tbR2_YellowR2 if entity @e[tag=tbR2_r2w2Yellow]
execute if score +wave tbR2_YellowR2 matches 3 store result score +r2w3Zcount tbR2_YellowR2 if entity @e[tag=tbR2_r2w3Yellow]

# queue next wave when 0 zombies
execute if score +wave tbR2_YellowR2 matches 1 if score +r2w1Zcount tbR2_YellowR2 matches 0 run function main:tomb/round2/yellow/r2w2
execute if score +wave tbR2_YellowR2 matches 2 if score +r2w2Zcount tbR2_YellowR2 matches 0 run function main:tomb/round2/yellow/r2w3
execute if score +wave tbR2_YellowR2 matches 3 if score +r2w3Zcount tbR2_YellowR2 matches 0 run function main:tomb/round2/yellow/r2end

# key dropped on floor
execute if score +keyDropped tbR2_RedR2 matches 1 run tag @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}},distance=..12] add yellowKey2
execute as @e[tag=yellowKey2] run data modify entity @s CustomName set value '[{"text":"Key","color":"yellow"}]'
execute as @e[tag=yellowKey2] run data modify entity @s CustomNameVisible set value 1b

# holding key
execute as @a[nbt={Inventory:[{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}]}] run tag @s add keyHolder_yellowR2
execute as @a[tag=keyHolder_yellowR2,nbt={SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}}] run tag @s add holdingKey_yellowR2
execute as @a[tag=keyHolder_yellowR2,nbt={SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=keyHolder_yellowR2,nbt=!{SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=keyHolder_yellowR2,nbt=!{SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingKey_yellowR2
execute as @a[nbt=!{Inventory:[{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}}]}] run tag @s remove keyHolder_yellowR2
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# open the next room
execute as @a[tag=holdingKey_yellowR2,x=5110,dx=20,y=36,dy=6,z=155,dz=13] run title @s actionbar {"text":"Right click to open the next room!","color":"gold"}
execute as @a[tag=holdingKey_yellowR2,scores={tbR2_click=1..},x=5110,dx=20,y=36,dy=6,z=155,dz=13] run function main:tomb/round2/yellow/r3_open
scoreboard players reset @a tbR2_click