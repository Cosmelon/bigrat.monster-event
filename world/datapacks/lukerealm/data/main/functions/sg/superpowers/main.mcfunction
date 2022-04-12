# superpowers mode
#  This function is run eight times at the start of sg

# init
scoreboard players set ~countDown sg 600 
scoreboard players add ~powerRun sg 1

# giving superpowers
execute if score out sgMath matches 1 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgVampire
execute if score out sgMath matches 2 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgTrainer
execute if score out sgMath matches 3 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgRedditor
execute if score out sgMath matches 4 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgCreeper
execute if score out sgMath matches 5 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgWitch
execute if score out sgMath matches 6 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgLeprechaun
execute if score out sgMath matches 7 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgMedic
execute if score out sgMath matches 8 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgPyro
tag @a[tag=sgVampire] remove noPowers
tag @a[tag=sgTrainer] remove noPowers
tag @a[tag=sgRedditor] remove noPowers
tag @a[tag=sgCreeper] remove noPowers
tag @a[tag=sgWitch] remove noPowers
tag @a[tag=sgLeprechaun] remove noPowers
tag @a[tag=sgMedic] remove noPowers
tag @a[tag=sgPyro] remove noPowers

# explaining powers in chat
execute if score ~powerRun sg matches 9 run function main:sg/superpowers/infochat

# sgVampire


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
execute as @a[tag=sgCreeper,predicate=main:sneak_state,scores={sgCreeperTNT=0}] run function main:sg/superpowers/creeper

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
clear @a[tag=sgLeprechaun] golden_helmet
clear @a[tag=sgLeprechaun] golden_chestplate
clear @a[tag=sgLeprechaun] golden_leggings
clear @a[tag=sgLeprechaun] golden_boots
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
execute if score ~sec sgMedic matches 60.. run scoreboard players set ~sec sgMedic 0
execute if score ~sec sgMedic matches 60 run item replace entity @a weapon.offhand with splash_potion{Potion:"minecraft:healing"}
effect give @a[tag=sgMedic] weakness 100000 1 true
effect give @a[tag=sgMedic] resistance 100000 1 true

# sgPyro