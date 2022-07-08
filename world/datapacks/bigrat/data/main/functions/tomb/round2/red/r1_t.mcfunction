# Description: Red room1 tick
# Author: Cosmelon
# Type: finish
# run from 

# count remaining zombies
execute if score +wave tbR2_RedR1 matches 1 store result score +r1w1Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w1Red]
execute if score +wave tbR2_RedR1 matches 2 store result score +r1w2Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w2Red]
execute if score +wave tbR2_RedR1 matches 3 store result score +r1w3Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w3Red]

# queue next wave when 0 zombies
execute if score +wave tbR2_RedR1 matches 1 if score +r1w1Zcount tbR2_RedR1 matches 0 run function main:tomb/round2/red/r1w2
execute if score +wave tbR2_RedR1 matches 2 if score +r1w2Zcount tbR2_RedR1 matches 0 run function main:tomb/round2/red/r1w3
execute if score +wave tbR2_RedR1 matches 3 if score +r1w3Zcount tbR2_RedR1 matches 0 run function main:tomb/round2/red/r1end

# key dropped on floor
execute if score +keyDropped tbR2_RedR1 matches 1 run tag @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:1b}},distance=..12] add redKey1
execute as @e[tag=redKey1] run data modify entity @s CustomName set value '[{"text":"Key","color":"red"}]'
execute as @e[tag=redKey1] run data modify entity @s CustomNameVisible set value 1b

# holding key
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}}]}] run tag @s add keyHolder
execute as @a[tag=keyHolder,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=keyHolder,nbt=!{SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}}]}] run tag @s remove keyHolder
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# open the next room
execute as @a[tag=keyHolder,x=5067,dx=4,z=-3,dz=13,y=36,dy=6] run title @s actionbar {"text":"Right click to open the next room!","color":"gold"}
execute as @a[tag=keyHolder,scores={tbR2_click=1..},x=5067,dx=4,z=-3,dz=13,y=36,dy=6] run function main:tomb/round2/red/r2_open
scoreboard players reset @a tbR2_click