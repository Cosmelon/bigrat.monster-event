# Description: superpowers mode main tick file
# Author: Cosmelon
# Type: tick
# run from main:sg/sgtick when ~powersActive sg == 1 and ~countDown sg <= 0


# takes away powers on death
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgVampire
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgGoat
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgRedditor
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgCreeper
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgWitch
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgLeprechaun
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgMedic
execute as @a[scores={sgDeaths=1..}] run tag @s remove sgPyro

# tracks # of players with powers
execute store result score ~vampire sgPwrCount if entity @a[tag=sgVampire]
execute store result score ~goat sgPwrCount if entity @a[tag=sgGoat]
execute store result score ~redditor sgPwrCount if entity @a[tag=sgRedditor]
execute store result score ~creeper sgPwrCount if entity @a[tag=sgCreeper]
execute store result score ~witch sgPwrCount if entity @a[tag=sgWitch]
execute store result score ~leprechaun sgPwrCount if entity @a[tag=sgLeprechaun]
execute store result score ~medic sgPwrCount if entity @a[tag=sgMedic]
execute store result score ~pyro sgPwrCount if entity @a[tag=sgPyro]

# sgVampire
execute as @a[tag=sgVampire,scores={sgVampire=238}] run effect give @s blindness 2 0 true
execute as @a[tag=sgVampire,scores={sgVampire=238}] run title @s title "THE LIGHT BURNS!"
execute as @a[tag=sgVampire,scores={sgVampire=238}] run title @s subtitle "Go seek shelter!"
execute as @a[tag=sgVampire,scores={sgVampire=238}] run effect give @s wither 2 0 true
scoreboard players add ~tick sgVampire 1
execute if score ~tick sgVampire matches 30.. run scoreboard players set ~tick sgVampire 0
#   just going to live with the model jumping, at least for now
execute if score ~tick sgVampire matches 0 as @a[tag=sgVampire,predicate=main:ssky,predicate=!main:sneak_state,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] run item modify entity @s weapon.offhand main:umbrella_sub
execute if score ~tick sgVampire matches 0 as @a[tag=sgVampire,predicate=!main:ssky,predicate=!main:sneak_state,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] run item modify entity @s weapon.offhand main:umbrella_add
execute as @a[tag=sgVampire,nbt={Inventory:[{Slot:-106b},{id:"minecraft:shears"}]}] store result score @s sgVampire run data get entity @s Inventory[{Slot:-106b}].tag.Damage
#   main:offhand_shears detects if you have shears in your offhand
execute as @a[tag=sgVampire,predicate=!main:offhand_shears] run function main:sg/superpowers/novamp_shears
#   hood function
execute as @a[tag=sgVampire,predicate=main:sneak_state] run title @s title "Hood up!"
execute as @a[tag=sgVampire,predicate=main:sneak_state] run title @s subtitle "Umbrella recharging"
execute as @a[tag=sgVampire,predicate=main:sneak_state] run effect give @s blindness 2 0 true
execute as @a[tag=sgVampire,predicate=main:sneak_state] run effect give @s slowness 4 0 true
execute as @a[tag=sgVampire,predicate=main:sneak_state] if data entity @s Inventory[{Slot:-106b}] run item modify entity @s weapon.offhand main:hood_add


# sgGoat
effect give @a[tag=sgGoat] hunger 10000 0 true
effect give @a[tag=sgGoat] resistance 10000 2 true
effect give @a[tag=sgGoat] strength 10000 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_beef"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_beef"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_mutton"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_mutton"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_rabbit"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_rabbit"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_salmon"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_salmon"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_cod"}]}] run effect give @s nausea 1 0 true
execute as @a[tag=sgGoat,nbt={Inventory:[{id:"minecraft:cooked_cod"}]}] run title @s title {"text":"Plants only!","color":"dark_red"}
#there is a possibility that the wallrunning won't work with multiple goats, need to check
tp @e[tag=wallrun] ~ -1000 ~
execute as @a[tag=sgGoat] at @s if block ~ ~ ~-0.8 #main:sg/goat_climb if block ~ ~-0.35 ~ air positioned ~ ~ ~-1 align z positioned ~ ~-1.1 ~0.8 run function main:sg/superpowers/goatatwall
execute as @a[tag=sgGoat] at @s if block ~ ~ ~0.8 #main:sg/goat_climb if block ~ ~-0.35 ~ air positioned ~ ~ ~1 align z positioned ~ ~-1.1 ~0.2 run function main:sg/superpowers/goatatwall
execute as @a[tag=sgGoat] at @s if block ~-0.8 ~ ~ #main:sg/goat_climb if block ~ ~-0.35 ~ air positioned ~-1 ~ ~ align x positioned ~0.8 ~-1.1 ~ run function main:sg/superpowers/goatatwall
execute as @a[tag=sgGoat] at @s if block ~0.8 ~ ~ #main:sg/goat_climb if block ~ ~-0.35 ~ air positioned ~1 ~ ~ align x positioned ~0.2 ~-1.1 ~ run function main:sg/superpowers/goatatwall

# sgRedditor
scoreboard players add ~tick sgRedditorGrass 1
execute if score ~tick sgRedditorGrass matches 20.. run scoreboard players add @a[tag=sgRedditor,scores={sgRedditorGrass=1..}] sgRedditorGrass 1
execute as @a[tag=sgRedditor,scores={sgRedditorGrass=45..}] run scoreboard players set @s sgRedditorGrass 0
execute as @a[tag=sgRedditor,scores={sgRedditorGrass=0}] run title @s actionbar {"text":"Press sneak to unleash the hoard! (45s cooldown)","color":"dark_red"}
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
execute if score ~tick sgRedditorGrass matches 20.. run scoreboard players set ~tick sgRedditorGrass 0


# sgCreeper
scoreboard players add ~tick sgCreeperTNT 1
execute if score ~tick sgCreeperTNT matches 20.. run scoreboard players add @a[tag=sgCreeper,scores={sgCreeperTNT=1..}] sgCreeperTNT 1
execute if score ~tick sgCreeperTNT matches 20.. run scoreboard players set ~tick sgCreeperTNT 0
attribute @a[tag=sgCreeper,limit=1,sort=random] generic.max_health get 10
execute at @a[tag=sgCreeper] run playsound minecraft:entity.experience_orb.pickup master @a[tag=sgCreeper,scores={sgCreeperTNT=20..}] ~ ~ ~ 0.32 0.62
execute as @a[tag=sgCreeper,scores={sgCreeperTNT=20..}] run scoreboard players set @s sgCreeperTNT 0
execute as @a[tag=sgCreeper,scores={sgCreeperTNT=0}] run title @s actionbar {"text":"Press sneak to blow!","color":"dark_red","bold":true}
execute as @a[tag=sgCreeper,predicate=main:sneak_state,scores={sgCreeperTNT=0}] run function main:sg/superpowers/creeper

# sgWitch
scoreboard players add ~tick sgWitch 1
execute if score ~tick sgWitch matches 20.. run scoreboard players add @a[tag=sgWitch] sgWitch 1
execute as @a[tag=sgWitch,scores={sgWitch=30..}] run function main:sg/superpowers/witchpot
effect give @a[tag=sgWitch] weakness 10000 1 true
execute if score ~tick sgWitch matches 20.. run scoreboard players set ~tick sgWitch 0

# sgLeprechaun
#execute as @a[tag=sgLeprechaun] if data entity @s Inventory[{Slot:100b,id:"minecraft:iron_boots"}] run item replace entity @s armor.feet with iron_boots
# IMRPOVE THIS FOR FUCKS SAKE
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run give @s golden_sword
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run give @s golden_axe
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_helmet"}]}] run give @s golden_helmet
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}] run give @s golden_chestplate
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_leggings"}]}] run give @s golden_leggings
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:iron_boots"}]}] run give @s golden_boots
execute as @a[tag=sgLeprechaun,nbt={Inventory:[{id:"minecraft:apple"}]}] run give @s golden_apple
clear @a[tag=sgLeprechaun] iron_sword
clear @a[tag=sgLeprechaun] iron_axe
clear @a[tag=sgLeprechaun] iron_helmet
clear @a[tag=sgLeprechaun] iron_chestplate
clear @a[tag=sgLeprechaun] iron_leggings
clear @a[tag=sgLeprechaun] iron_boots
clear @a[tag=sgLeprechaun] apple
execute as @a[tag=sgLeprechaun,scores={sgKills=0}] run effect give @s speed 100000 0 true
execute as @a[tag=sgLeprechaun,scores={sgKills=1}] run effect give @s speed 100000 1 true
execute as @a[tag=sgLeprechaun,scores={sgKills=2}] run effect give @s speed 100000 2 true
execute as @a[tag=sgLeprechaun,scores={sgKills=3}] run effect give @s speed 100000 3 true
execute as @a[tag=sgLeprechaun,scores={sgKills=4}] run effect give @s speed 100000 4 true
execute as @a[tag=sgLeprechaun,scores={sgKills=5}] run effect give @s speed 100000 5 true
execute as @a[tag=sgLeprechaun,scores={sgKills=6}] run effect give @s speed 100000 6 true
execute as @a[tag=sgLeprechaun,scores={sgKills=7}] run effect give @s speed 100000 7 true
execute as @a[tag=sgLeprechaun,scores={sgKills=8}] run effect give @s speed 100000 8 true
execute as @a[tag=sgLeprechaun,scores={sgKills=9}] run effect give @s speed 100000 9 true
execute as @a[tag=sgLeprechaun,scores={sgKills=10}] run effect give @s speed 100000 10 true
execute as @a[tag=sgLeprechaun,scores={sgKills=11}] run effect give @s speed 100000 11 true
execute as @a[tag=sgLeprechaun,scores={sgKills=12}] run effect give @s speed 100000 12 true
execute as @a[tag=sgLeprechaun,scores={sgKills=13}] run effect give @s speed 100000 13 true
execute as @a[tag=sgLeprechaun,scores={sgKills=14}] run effect give @s speed 100000 14 true
execute as @a[tag=sgLeprechaun,scores={sgKills=15}] run effect give @s speed 100000 15 true

# sgMedic
scoreboard players add ~tick sgMedic 1
execute if score ~tick sgMedic matches 20.. run scoreboard players add @a[tag=sgMedic,scores={sgMedic=1..}] sgMedic 1
execute as @a[tag=sgMedic,scores={sgMedic=30..}] run scoreboard players set @s sgMedic 0
#  piggybacking off the already existing randomizer for what potion to give
execute as @a[tag=sgMedic,scores={sgMedic=0}] if score out sgMath matches ..4 run item replace entity @s weapon.offhand with potion{Potion:"minecraft:healing"}
execute as @a[tag=sgMedic,scores={sgMedic=0}] if score out sgMath matches 5.. run item replace entity @s weapon.offhand with potion{Potion:"minecraft:regeneration"}
execute as @a[tag=sgMedic,scores={sgMedic=0}] run scoreboard players add @s sgMedic 1
execute if score ~tick sgMedic matches 20.. run scoreboard players set ~tick sgMedic 0
effect give @a[tag=sgMedic] weakness 100000 0 true
effect give @a[tag=sgMedic] resistance 100000 0 true

# sgPyro
#look into making new loot tables for superpowers mode that buffs fire aspect enchantments
execute as @a[tag=sgPyro,nbt={Inventory:[{id:"minecraft:fire_charge"},{Slot:8b}]}] run item replace entity @s hotbar.8 with fire_charge
kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
# find a way to allow admins to have fireballs
execute as @a[tag=!sgPyro] run clear @s fire_charge
effect give @a[tag=sgPyro] fire_resistance 100000 0 true
effect give @a[tag=sgPyro] strength 100000 1 true 