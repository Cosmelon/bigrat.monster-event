# tick files for race
# everything in this file is preceeded by execute if score !gameActive race matches 1 run ...
# no need to type it in every single time

scoreboard players remove !countDown race 1
title @a times 0 25 0
effect give @a water_breathing 100000 0 true
effect give @a speed 10000 0 true
gamemode spectator @a[tag=!player,team=!DeBug]

# stuff for the stopwatch
execute if score !countDown race matches ..0 run bossbar set minecraft:racetime visible true
execute if score !countDown race matches ..0 run scoreboard players add !milli race 5
execute if score !countDown race matches ..0 run execute if score !milli race matches 1.. run scoreboard players add @a[gamemode=adventure,tag=player] raceMilli 5
execute if score !countDown race matches ..0 run execute if score !milli race matches 1.. run scoreboard players add !raceTime raceMilli 5
execute if score !milli race matches 100.. run scoreboard players set !milli race 0
execute if score !raceTime raceMilli matches 100 run scoreboard players add !raceTime raceSec 1
execute if score !raceTime raceMilli matches 100 run scoreboard players set !raceTime raceMilli 0
execute if score !raceTime raceSec matches 60 run scoreboard players add !raceTime raceMin 1
execute if score !raceTime raceSec matches 60 run scoreboard players set !raceTime raceSec 0
execute as @a[scores={raceMilli=100}] run scoreboard players add @s raceSec 1
execute as @a[scores={raceMilli=100}] run scoreboard players set @s raceMilli 0
execute as @a[scores={raceSec=60}] run scoreboard players add @s raceMin 1
execute as @a[scores={raceSec=60}] run scoreboard players set @s raceSec 0
execute if score !raceTime raceSec matches 0..9 run execute if score !raceTime raceMilli matches 0..9 run bossbar set minecraft:racetime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": "!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score !raceTime raceSec matches 10.. run execute if score !raceTime raceMilli matches 0..9 run bossbar set minecraft:racetime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": "!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score !raceTime raceSec matches 0..9 run execute if score !raceTime raceMilli matches 10.. run bossbar set minecraft:racetime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": "!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score !raceTime raceSec matches 10.. run execute if score !raceTime raceMilli matches 10.. run bossbar set minecraft:racetime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": "!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]


# countdown
execute if score !countDown race matches 80 run fill 285 77 47 291 76 37 air replace barrier
execute if score !countDown race matches 60 run fill 294 79 37 294 75 47 red_stained_glass replace light_gray_stained_glass
execute if score !countDown race matches 60 run title @a title {"text":"3","color":"red"}
execute if score !countDown race matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 40 run fill 294 79 37 294 75 47 yellow_stained_glass replace red_stained_glass
execute if score !countDown race matches 40 run title @a title {"text":"2","color":"gold"}
execute if score !countDown race matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 20 run fill 294 79 37 294 75 47 lime_stained_glass replace yellow_stained_glass
execute if score !countDown race matches 20 run title @a title {"text":"1","color":"green"}
execute if score !countDown race matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score !countDown race matches 0 run fill 294 79 37 294 75 47 air replace lime_stained_glass
execute if score !countDown race matches 0 run title @a title {"text":"Go!","color":"green"}
execute if score !countDown race matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 2
execute if score !countDown race matches 0 run scoreboard players set @a[tag=player] raceLap 1
execute if score !countDown race matches -20 run title @a title ""

# checkpoints
execute as @a[gamemode=adventure,tag=player,x=310.5,dx=3,y=81,dy=3,z=57.5,dz=1] run scoreboard players set @s raceCP 1
execute as @a[gamemode=adventure,tag=player,x=368,dx=1,y=81,dy=2,z=-18.5,dz=3] run scoreboard players set @s raceCP 2
execute positioned 292.5 39 -49.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..5] raceCP 3
execute positioned 253.5 40 -73.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..5] raceCP 4
execute positioned 258.5 78 -32.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..3] raceCP 5
execute as @a[gamemode=adventure,tag=player,x=247.5,dx=5,y=88,dy=8,z=8.5,dz=1] run scoreboard players set @s raceCP 6
execute as @a[gamemode=adventure,tag=player,x=294,dx=1,y=75,dy=10,z=37,dz=10] run execute if score @s raceCP matches 6 run function main:race/newlap
gamemode spectator @a[tag=player,scores={raceLap=4..}]

# 0 min
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=0,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=0,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=1..9,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=1..9,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=10..,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=10..,raceMin=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
# 1-9 min
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=0,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=0,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=1..9,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=1..9,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=10..,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=10..,raceMin=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
# 10+ min
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=0,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=0,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=1..9,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=1..9,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=..9,raceSec=10..,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute as @a[gamemode=adventure,scores={raceMilli=10..99,raceSec=10..,raceMin=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]


#finish
title @a[tag=player,gamemode=spectator] actionbar {"text":"Finished!","color":"gold"}

#  intended be open for five seconds, then closed for two
scoreboard players remove !gateOpen race 1
scoreboard players remove !gateShut race 1
execute if score !gateOpen race matches -40 run scoreboard players set !gateOpen race 100
execute if score !gateShut race matches -100 run scoreboard players set !gateShut race 40
execute store result bossbar minecraft:racegateopen value run scoreboard players get !gateOpen race
execute store result bossbar minecraft:racegateshut value run scoreboard players get !gateShut race
execute if score !gateOpen race matches 100 run fill 351 83 42 351 81 44 air destroy
execute if score !gateShut race matches 40 run fill 351 83 42 351 81 44 warped_fence
execute positioned 351.5 81 43.5 run tag @a[distance=..3] add gate
execute positioned 351.5 81 43.5 run tag @a[distance=2.6..] remove gate
bossbar set minecraft:racegateopen players @a[tag=gate]
bossbar set minecraft:racegateshut players @a[tag=gate]
execute if score !gateOpen race matches ..0 run bossbar set minecraft:racegateopen visible false
execute if score !gateOpen race matches 41.. run bossbar set minecraft:racegateopen visible true
execute if score !gateShut race matches 1.. run bossbar set minecraft:racegateshut visible true
execute if score !gateShut race matches ..0 run bossbar set minecraft:racegateshut visible false



# speedpads (magenta_glazed_terracotta)
execute as @a[tag=player,gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run effect give @s speed 2 3 true
# jump boost (lime_glazed_terracotta)
execute as @a[tag=player,gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ lime_glazed_terracotta run effect give @s minecraft:jump_boost 1 7 true
# give elytra (light_blue_glazed_terracotta)
# again credit to /u/PunchTunnel! They're carrying this ong
execute as @a[tag=player,gamemode=adventure] at @s unless block ~ ~-0.25 ~ air run item replace entity @s armor.chest with air
execute as @a[tag=player,gamemode=adventure] at @s if block ~ ~-0.25 ~ light_blue_glazed_terracotta run item replace entity @s armor.chest with elytra{Enchantments:[{id:"binding_curse",lvl:1},{id:"unbreaking",lvl:255}],HideFlags:1}
execute as @a[tag=player,gamemode=adventure] at @s if block ~ ~-0.25 ~ light_blue_glazed_terracotta run title @s title {"text":"Elytra Given!","color":"gold"}

kill @a[tag=player,gamemode=adventure,scores={yCos=..6}]

# spawnpoints
setworldspawn 287 75 42
spawnpoint @a 287 75 42



# old player GUI
#this code is been commented out, it will be used at a later date so spectators can identify what area they're in. Will still need to modify it for that.
#execute as @a[gamemode=adventure,scores={raceCP=0}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Start   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=1}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"River   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=2}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Elytra   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3"   ,"color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=3}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Sewer   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=4}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Block City   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=5}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Block City 2   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={raceCP=6}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Finish!   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"raceLap"}},{"text":"/3   ","color":"green"}]