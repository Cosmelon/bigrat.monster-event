# Description: yellow room1 tick
# Author: Cosmelon
# Type: tick
# run from main:tomb/round2/main ; positioned @ 5059.5 42 161.5 ; when +active tbR2_YellowR1 == 1

# count remaining zombies
execute if score +wave tbR2_YellowR1 matches 1 store result score +r1w1Zcount tbR2_YellowR1 if entity @e[tag=tbR2_r1w1Yellow]
execute if score +wave tbR2_YellowR1 matches 2 store result score +r1w2Zcount tbR2_YellowR1 if entity @e[tag=tbR2_r1w2Yellow]
execute if score +wave tbR2_YellowR1 matches 3 store result score +r1w3Zcount tbR2_YellowR1 if entity @e[tag=tbR2_r1w3Yellow]

# queue next wave when 0 zombies
execute if score +wave tbR2_YellowR1 matches 1 if score +r1w1Zcount tbR2_YellowR1 matches 0 run function main:tomb/round2/yellow/r1w2
execute if score +wave tbR2_YellowR1 matches 2 if score +r1w2Zcount tbR2_YellowR1 matches 0 run function main:tomb/round2/yellow/r1w3
execute if score +wave tbR2_YellowR1 matches 3 if score +r1w3Zcount tbR2_YellowR1 matches 0 run function main:tomb/round2/yellow/r1end

# key dropped on floor
execute if score +keyDropped tbR2_YellowR1 matches 1 run tag @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:1b}},distance=..12] add yellowKey1
execute as @e[tag=yellowKey1] run data modify entity @s CustomName set value '[{"text":"Key","color":"yellow"}]'
execute as @e[tag=yellowKey1] run data modify entity @s CustomNameVisible set value 1b

# holding key
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}]}] run tag @s add keyHolder_yellowR1
execute as @a[tag=keyHolder_yellowR1,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}}] run tag @s add holdingKey_yellowR1
execute as @a[tag=keyHolder_yellowR1,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=keyHolder_yellowR1,nbt=!{SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=keyHolder_yellowR1,nbt=!{SelectedItem:{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingKey_yellowR1
execute as @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}}]}] run tag @s remove keyHolder_yellowR1
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# open the next room
execute as @a[tag=keyHolder_yellowR1,x=5067,dx=4,z=156,dz=13,y=36,dy=6] run title @s actionbar {"text":"Right click to open the next room!","color":"gold"}
execute as @a[tag=keyHolder_yellowR1,scores={tbR2_click=1..},x=5067,dx=4,z=156,dz=13,y=36,dy=6] run function main:tomb/round2/yellow/r2_open
scoreboard players set @a[team=Yellow] tbR2_click 0

# spectator
execute positioned 5059.5 42 161.5 run tp @a[gamemode=spectator,team=!Admin,distance=12..15] 5059.5 42 161.5
execute as @a[gamemode=spectator,scores={yCos=..32},team=!Admin] at @s run tp @s ~ ~5 ~
execute as @a[gamemode=spectator,scores={yCos=49..},team=!Admin] at @s run tp @s ~ ~-5 ~