# Description: red room2 tick
# Author: Cosmelon
# Type: tick
# run from main:tomb/round2/main ; positioned @ 5095.5 41 2.5 ; when +active tbR2_RedR2 == 1

# count remaining zombies
execute if score +wave tbR2_RedR2 matches 1 store result score +r2w1Zcount tbR2_RedR2 if entity @e[tag=tbR2_r2w1Red]
execute if score +wave tbR2_RedR2 matches 2 store result score +r2w2Zcount tbR2_RedR2 if entity @e[tag=tbR2_r2w2Red]
execute if score +wave tbR2_RedR2 matches 3 store result score +r2w3Zcount tbR2_RedR2 if entity @e[tag=tbR2_r2w3Red]

# queue next wave when 0 zombies
execute if score +wave tbR2_RedR2 matches 1 if score +r2w1Zcount tbR2_RedR2 matches 0 run function main:tomb/round2/red/r2w2
execute if score +wave tbR2_RedR2 matches 2 if score +r2w2Zcount tbR2_RedR2 matches 0 run function main:tomb/round2/red/r2w3
execute if score +wave tbR2_RedR2 matches 3 if score +r2w3Zcount tbR2_RedR2 matches 0 run function main:tomb/round2/red/r2end

# key dropped on floor
execute if score +keyDropped tbR2_RedR2 matches 1 run tag @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}},distance=..12] add redKey2
execute as @e[tag=redKey2] run data modify entity @s CustomName set value '[{"text":"Key","color":"red"}]'
execute as @e[tag=redKey2] run data modify entity @s CustomNameVisible set value 1b

# holding key
execute as @a[nbt={Inventory:[{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}]}] run tag @s add keyHolder_redR2
execute as @a[tag=keyHolder_redR2,nbt={SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}}] run tag @s add holdingKey_redR2
execute as @a[tag=keyHolder_redR2,nbt={SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=keyHolder_redR2,nbt=!{SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=keyHolder_redR2,nbt=!{SelectedItem:{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingKey_redR2
execute as @a[nbt=!{Inventory:[{id:"minecraft:nether_wart",tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}}]}] run tag @s remove keyHolder_redR2
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# open the next room
execute as @a[tag=holdingKey_redR2,x=5110,dx=20,y=36,dy=6,z=-3,dz=13] run title @s actionbar {"text":"Right click to open the next room!","color":"gold"}
execute as @a[tag=holdingKey_redR2,scores={tbR2_click=1..},x=5110,dx=20,y=36,dy=6,z=-3,dz=13] run function main:tomb/round2/red/r3_open
scoreboard players reset @a tbR2_click