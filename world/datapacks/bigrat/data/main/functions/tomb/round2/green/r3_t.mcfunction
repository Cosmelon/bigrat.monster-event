# Description: green round 3 tick file
# Author: Cosmelon
# Type: tick
# run from main:tomb/round2/main

# count remaining zombies
execute if score +wave tbR2_GreenR3 matches 1 store result score +r3w1Zcount tbR2_GreenR3 if entity @e[tag=tbR2_r3w1Green]
execute if score +wave tbR2_GreenR3 matches 2 store result score +r3w2Zcount tbR2_GreenR3 if entity @e[tag=tbR2_r3w2Green]
execute if score +wave tbR2_GreenR3 matches 3 store result score +r3w3Zcount tbR2_GreenR3 if entity @e[tag=tbR2_r3w3Green]

# queue next wave when 0 zombies
execute if score +wave tbR2_GreenR3 matches 1 if score +r3w1Zcount tbR2_GreenR3 matches 0 run function main:tomb/round2/green/r3w2
execute if score +wave tbR2_GreenR3 matches 2 if score +r3w2Zcount tbR2_GreenR3 matches 0 run function main:tomb/round2/green/r3w3
execute if score +wave tbR2_GreenR3 matches 3 if score +r3w3Zcount tbR2_GreenR3 matches 0 run function main:tomb/round2/green/r3end

# key dropped on floor
execute if score +keyDropped tbR2_GreenR3 matches 1 run tag @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:1b}},distance=..12] add greenKey3
execute as @e[tag=greenKey3] run data modify entity @s CustomName set value '[{"text":"Key","color":"green"}]'
execute as @e[tag=greenKey3] run data modify entity @s CustomNameVisible set value 1b

# holding key
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}]}] run tag @s add keyHolder_greenR3
execute as @a[tag=keyHolder_greenR3,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}}] run tag @s add holdingKey_greenR3
execute as @a[tag=keyHolder_greenR3,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=keyHolder_greenR3,nbt=!{SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=keyHolder_greenR3,nbt=!{SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingKey_greenR3
execute as @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}}]}] run tag @s remove keyHolder_greenR3
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# jump pad
execute as @a[team=Green] at @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 6 true

# open the next room
#execute as @a[tag=holdingKey_greenR3,x=5110,dx=20,y=36,dy=6,z=50,dz=13] run title @s actionbar {"text":"Right click to open the next room!","color":"gold"}
#execute as @a[tag=holdingKey_greenR3,scores={tbR2_click=1..},x=5110,dx=20,y=36,dy=6,z=50,dz=13] run function main:tomb/round2/green/r3_open
#scoreboard players reset @a tbR2_click