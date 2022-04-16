# superpowers mode tick file
#  center of effects for the powers

# takes away powers on death
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgVampire
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgTrainer
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgRedditor
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgCreeper
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgWitch
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgLeprechaun
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgMedic
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgPyro

# sgVampire
execute as @a[tag=sgVampire,scores={sgVampire=238}] run effect give @s minecraft:blindness 2 0 true
execute as @a[tag=sgVampire,scores={sgVampire=238}] run title @s title "THE LIGHT BURNS!"
execute as @a[tag=sgVampire,scores={sgVampire=238}] run title @s subtitle "Go seek shelter!"
execute as @a[tag=sgVampire,scores={sgVampire=238}] run effect give @s wither 10000 0 true
execute as @a[tag=sgVampire,scores={sgVampire=..237}] run effect clear @s wither
scoreboard players add ~tick sgVampire 1
execute if score ~tick sgVampire matches 20.. run scoreboard players set ~tick sgVampire 0
#just going to live with the model jumping, at least for now
execute if score ~tick sgVampire matches 0 as @a[tag=sgVampire,predicate=main:thats_lit,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] run item modify entity @s weapon.offhand main:umbrella_sub
execute if score ~tick sgVampire matches 0 as @a[tag=sgVampire,predicate=main:thats_dark,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] run item modify entity @s weapon.offhand main:umbrella_add
execute as @a[tag=sgVampire,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] store result score @s sgVampire run data get entity @s Inventory[{Slot:-106b}].tag.Damage
#execute as @a[tag=sgVampire,nbt=!{Inventory:[{id:"minecraft:shears"}]}] run item replace entity @s weapon.offhand with shears
#execute as @a[tag=sgVampire] if predicate main:sneak_state run title @s title "Hood up!"
#execute as @a[tag=sgVampire] if predicate main:sneak_state run title @s actionbar "Umbrella recharging"
#execute as @a[tag=sgVampire] if predicate main:sneak_state run effect give @s blindness 2 0 true
#execute as @a[tag=sgVampire] if predicate main:sneak_state run effect give @s slowness 4 0 true
#execute as @a[tag=sgVampire] if predicate main:sneak_state if data entity @s Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand main:umbrella_add

# sgTrainer
effect give @a[tag=sgTrainer] resistance 10000 2 true
effect give @a[tag=sgTrainer] strength 10000 0 true
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_beef"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_mutton"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_rabbit"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_salmon"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_cod"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
clear @a[tag=sgTrainer] cooked_beef
clear @a[tag=sgTrainer] cooked_mutton
clear @a[tag=sgTrainer] cooked_porkchop
clear @a[tag=sgTrainer] cooked_rabbit
clear @a[tag=sgTrainer] cooked_salmon
clear @a[tag=sgTrainer] cooked_cod

# sgRedditor
execute as @a[tag=sgRedditor,predicate=main:sneak_state,scores={sgRedditorGrass=0}] run function main:sg/superpowers/redditgrass
effect give @a[tag=sgRedditor] slowness 10000 2 true
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:baked_potato"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:bread"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:carrot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:apple"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:melon"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:potato"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:golden_carrot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:cookie"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:beetroot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:beetroot_soup"}]}] run tellraw @s {"text":"Only meat allowed!"}
clear @a[tag=sgRedditor] baked_potato
clear @a[tag=sgRedditor] bread
clear @a[tag=sgRedditor] carrot
clear @a[tag=sgRedditor] melon
clear @a[tag=sgRedditor] potato
clear @a[tag=sgRedditor] sweet_berries
clear @a[tag=sgRedditor] golden_carrot
clear @a[tag=sgRedditor] golden_apple
clear @a[tag=sgRedditor] cookie
clear @a[tag=sgRedditor] beetroot
clear @a[tag=sgRedditor] beetroot_soup

# sgCreeper
scoreboard players add ~tick sgCreeperTNT 1
execute if score ~tick sgCreeperTNT matches 20.. run scoreboard players add @a[tag=sgCreeper,scores={sgCreeperTNT=1..}] sgCreeperTNT 1
execute if score ~tick sgCreeperTNT matches 20.. run scoreboard players set ~tick sgCreeperTNT 0
execute at @a[tag=sgCreeper] run playsound minecraft:entity.experience_orb.pickup master @a[tag=sgCreeper,scores={sgCreeperTNT=20..}] ~ ~ ~ 0.32 0.62
execute as @a[tag=sgCreeper,scores={sgCreeperTNT=20..}] run scoreboard players set @s sgCreeperTNT 0
execute as @a[tag=sgCreeper,scores={sgCreeperTNT=0}] run title @s actionbar {"text":"Press sneak to blow!","color":"dark_red","bold":true}
execute as @a[tag=sgCreeper,predicate=pred:sneak_state,scores={sgCreeperTNT=0}] run function main:sg/superpowers/creeper

# sgWitch
scoreboard players add ~tick sgWitch 1
execute if score ~tick sgWitch matches 20.. run scoreboard players add ~sec sgWitch 1
execute if score ~tick sgWitch matches 20.. run scoreboard players set ~tick sgWitch 0
execute if score ~sec sgWitch matches 20.. run execute as @a[tag=sgWitch] run function main:sg/superpowers/witchpot

# sgLeprechaun
#execute as @a[tag=sgLeprechaun] if data entity @s Inventory[{Slot:100b,id:"minecraft:iron_boots"}] run item replace entity @s armor.feet with iron_boots
# IMRPOVE THIS FOR FUCKS SAKE
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_helmet"}]}] run give @s golden_helmet
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}] run give @s golden_chestplate
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_leggings"}]}] run give @s golden_leggings
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_boots"}]}] run give @s golden_boots
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:apple"}]}] run give @s golden_apple
clear @a[tag=sgLeprechaun] iron_helmet
clear @a[tag=sgLeprechaun] iron_chestplate
clear @a[tag=sgLeprechaun] iron_leggings
clear @a[tag=sgLeprechaun] iron_boots
clear @a[tag=sgLeprechaun] apple
execute as @a[tag=sgLeprechaun,scores={sgKills=0}] run effect give @s speed 100000 1 true
execute as @a[tag=sgLeprechaun,scores={sgKills=1}] run effect give @s speed 100000 2 true
execute as @a[tag=sgLeprechaun,scores={sgKills=2}] run effect give @s speed 100000 3 true
execute as @a[tag=sgLeprechaun,scores={sgKills=3}] run effect give @s speed 100000 4 true
execute as @a[tag=sgLeprechaun,scores={sgKills=4}] run effect give @s speed 100000 5 true
execute as @a[tag=sgLeprechaun,scores={sgKills=5}] run effect give @s speed 100000 6 true
execute as @a[tag=sgLeprechaun,scores={sgKills=6}] run effect give @s speed 100000 7 true
execute as @a[tag=sgLeprechaun,scores={sgKills=7}] run effect give @s speed 100000 8 true
execute as @a[tag=sgLeprechaun,scores={sgKills=8}] run effect give @s speed 100000 9 true
execute as @a[tag=sgLeprechaun,scores={sgKills=9}] run effect give @s speed 100000 10 true
execute as @a[tag=sgLeprechaun,scores={sgKills=10}] run effect give @s speed 100000 11 true
execute as @a[tag=sgLeprechaun,scores={sgKills=11}] run effect give @s speed 100000 12 true
execute as @a[tag=sgLeprechaun,scores={sgKills=12}] run effect give @s speed 100000 13 true
execute as @a[tag=sgLeprechaun,scores={sgKills=13}] run effect give @s speed 100000 14 true
execute as @a[tag=sgLeprechaun,scores={sgKills=14}] run effect give @s speed 100000 15 true
execute as @a[tag=sgLeprechaun,scores={sgKills=15}] run effect give @s speed 100000 16 true

# sgMedic
#look into adding randomizer for potions
scoreboard players add ~tick sgMedic 1
execute if score ~tick sgMedic matches 20.. run scoreboard players set ~tick sgMedic 0
execute if score ~tick sgMedic matches 20.. run scoreboard players add ~sec sgMedic 1
execute if score ~sec sgMedic matches 20.. run scoreboard players set ~sec sgMedic 0
execute if score ~sec sgMedic matches 20 run item replace entity @a[tag=sgMedic] weapon.offhand with potion{Potion:"minecraft:healing"}
effect give @a[tag=sgMedic] weakness 100000 0 true
effect give @a[tag=sgMedic] speed 100000 0 true

# sgPyro
#look into making new loot tables for superpowers mode that buffs fire aspect enchantments
scoreboard players add ~tick sgPyro 1
execute if score ~tick sgPyro matches 20.. run scoreboard players set ~tick sgPyro 0
execute if score ~tick sgPyro matches 20.. run scoreboard players add ~sec sgPyro 1
execute if score ~sec sgPyro matches 30.. run scoreboard players set ~sec sgPyro 0
execute if score ~sec sgPyro matches 30.. run item replace entity @a[tag=sgPyro] weapon.offhand with fire_charge{display:{Name:'[{"text":"Fire Ball!","italic":false}]',Lore:['[{"text":"Right click to throw!","italic":true}]']}}
effect give @a[tag=sgPyro] fire_resistance 100000 0 true
effect give @a[tag=sgPyro] strength 100000 1 true 