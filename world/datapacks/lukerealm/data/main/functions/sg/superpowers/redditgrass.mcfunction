# Description: summons the redditor zombies
# Author: Cosmelon
# Type: tick
# @s = @a[tag=sgRedditor,predicate=main:sneak_state,scores={sgRedditorGrass=0}]
# run from main:sg/superpowers/main 

# I compiled a list of irritating redditor shit and named the zombies to em
# the zombies spawn with leather hats but don't drop them on death
execute at @s run summon zombie ~2 ~ ~ {CustomName:'{"text":"Edit: thanks for the silver kind stranger!"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-2 ~ ~ {CustomName:'{"text":"Omega Chonk Doggo Goob Hooman Snek"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~ ~ ~2 {CustomName:'{"text":"Sorry english isnt my first language"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~ ~ ~-2 {CustomName:'{"text":"Nice."}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~2 ~ ~2 {CustomName:'{"text":"im probably gonna get downvoted for this but..."}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-2 ~ ~-2 {CustomName:'{"text":"EDIT: wow this blew up"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~2 ~ ~-2 {CustomName:'{"text":"World War II"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-2 ~ ~2 {CustomName:'{"text":"We did it Reddit"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~3 ~ ~ {CustomName:'{"text":"Broken arms"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-3 ~ ~ {CustomName:'{"text":"I logged in to upvote this"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~ ~ ~3 {CustomName:'{"text":"this"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~ ~ ~-3 {CustomName:'{"text":"right in the feels"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~3 ~ ~3 {CustomName:'{"text":"happy cake day"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~3 ~ ~-3 {CustomName:'{"text":"doesnt matter, had sex"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-3 ~ ~3 {CustomName:'{"text":"are you me?"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
execute at @s run summon zombie ~-3 ~ ~-3 {CustomName:'{"text":"risky click"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
tag @e[type=zombie] add sgZombie

execute at @s run title @a[distance=..13] title {"text":"Braindead Circle!","color":"red","bold":true}

# used power
scoreboard players set @s sgRedditorGrass 1