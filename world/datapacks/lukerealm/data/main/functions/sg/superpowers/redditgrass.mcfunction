# this spawns the zombies for the redditor
execute at @s run summon zombie ~2 ~ ~ {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~-2 ~ ~ {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~ ~ ~2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~ ~ ~-2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~2 ~ ~2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~-2 ~ ~-2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~2 ~ ~-2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute at @s run summon zombie ~-2 ~ ~2 {CustomName:'{"text":"Mob Mentality"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}

execute at @s run title @a[distance=..13] title {"text":"Braindead Circle!","color":"red","bold":true}

scoreboard players set @s sgRedditorGrass 1