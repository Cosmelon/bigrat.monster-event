# Description: race tick
# Author: Cosmelon
# Type: main_tick
# run from main:tick when .gameActive rc_main == 1

scoreboard players remove .countDown rc_main 1
effect give @a[tag=player] water_breathing infinite 0 true
effect give @a[tag=player] speed infinite 0 true
effect give @a[tag=player] weakness infinite 0 true
effect give @a saturation infinite 100 true
effect give @a resistance infinite 100 true
effect give @a night_vision infinite 0 true
gamemode spectator @a[tag=!player,team=!Admin]

# stuff for the stopwatch
execute if score .countDown rc_main matches ..0 run scoreboard players add .milli rc_main 5
execute if score .countDown rc_main matches ..0 if score .milli rc_main matches 1.. run scoreboard players add @a[gamemode=adventure,scores={rc_lap=..3},tag=player] rc_ms 5
execute if score .countDown rc_main matches ..0 if score .milli rc_main matches 1.. run scoreboard players add .raceTime rc_ms 5
execute if score .milli rc_main matches 100.. run scoreboard players set .milli rc_main 0
execute if score .raceTime rc_ms matches 100 run scoreboard players add .raceTime rc_sec 1
execute if score .raceTime rc_ms matches 100 run scoreboard players set .raceTime rc_ms 0
execute if score .raceTime rc_sec matches 60 run scoreboard players add .raceTime rc_min 1
execute if score .raceTime rc_sec matches 60 run scoreboard players set .raceTime rc_sec 0
execute as @a[scores={rc_ms=100}] run scoreboard players add @s rc_sec 1
execute as @a[scores={rc_ms=100}] run scoreboard players set @s rc_ms 0
execute as @a[scores={rc_sec=60}] run scoreboard players add @s rc_min 1
execute as @a[scores={rc_sec=60}] run scoreboard players set @s rc_sec 0

# overall time bossbar
bossbar set main:rc_alltime players @a
execute if score .raceTime rc_sec matches 0..9 if score .raceTime rc_ms matches 0..9 run bossbar set main:rc_alltime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": ".raceTime","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":".raceTime","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":".raceTime","objective":"rc_ms"},"color":"green"}]
execute if score .raceTime rc_sec matches 10.. if score .raceTime rc_ms matches 0..9 run bossbar set main:rc_alltime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": ".raceTime","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":".raceTime","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":".raceTime","objective":"rc_ms"},"color":"green"}]
execute if score .raceTime rc_sec matches 0..9 if score .raceTime rc_ms matches 10.. run bossbar set main:rc_alltime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": ".raceTime","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":".raceTime","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":".raceTime","objective":"rc_ms"},"color":"green"}]
execute if score .raceTime rc_sec matches 10.. if score .raceTime rc_ms matches 10.. run bossbar set main:rc_alltime name [{"text":"Overall Time: ","color":"gold"},{"score":{"name": ".raceTime","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":".raceTime","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":".raceTime","objective":"rc_ms"},"color":"green"}]

#indiv overall stopwatch conditions
execute as @a[scores={rc_lap=..3}] run scoreboard players operation @s rc_allms = .raceTime rc_ms
execute as @a[scores={rc_lap=..3}] run scoreboard players operation @s rc_alls = .raceTime rc_sec
execute as @a[scores={rc_lap=..3}] run scoreboard players operation @s rc_allmin = .raceTime rc_min

# startinfo
execute if score .countDown rc_main matches 171.. run effect give @a invisibility infinite 0 true
execute if score .countDown rc_main matches 171.. positioned 227.5 82 2.5 run tp @a @e[name=".raceCine",limit=1,sort=nearest]
execute if score .countDown rc_main matches 1400 run function main:race/startinfo/begin
execute if score .countDown rc_main matches 1200 run function main:race/startinfo/pos1
execute if score .countDown rc_main matches 1000 run function main:race/startinfo/pos2
execute if score .countDown rc_main matches 800 run function main:race/startinfo/pos3
execute if score .countDown rc_main matches 600 run function main:race/startinfo/pos4
execute if score .countDown rc_main matches 400 run function main:race/startinfo/pos5
execute if score .countDown rc_main matches 170 positioned 284.50 75 42.50 run function main:race/spreadp
execute if score .countDown rc_main matches 160 run gamerule sendCommandFeedback true

# countdown
execute if score .countDown rc_main matches 80 run fill 285 77 47 291 76 37 air replace barrier
execute if score .countDown rc_main matches 0..60 run title @a title {"text":"Starting in","color":"gold"}
execute if score .countDown rc_main matches 60 run fill 294 79 37 294 75 47 red_stained_glass replace light_gray_stained_glass
execute if score .countDown rc_main matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score .countDown rc_main matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score .countDown rc_main matches 40 run fill 294 79 37 294 75 47 yellow_stained_glass replace red_stained_glass
execute if score .countDown rc_main matches 40 run title @a subtitle {"text":">  2  <","color":"gold"}
execute if score .countDown rc_main matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score .countDown rc_main matches 20 run fill 294 79 37 294 75 47 lime_stained_glass replace yellow_stained_glass
execute if score .countDown rc_main matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score .countDown rc_main matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score .countDown rc_main matches 0 run fill 294 79 37 294 75 47 air replace lime_stained_glass
execute if score .countDown rc_main matches 0 run title @a subtitle {"text":"Go!","color":"green"}
execute if score .countDown rc_main matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 2
execute if score .countDown rc_main matches 0 run scoreboard players set @a[tag=player] rc_lap 1
execute if score .countDown rc_main matches 0 run bossbar set main:rc_alltime visible true
execute if score .countDown rc_main matches -20 run title @a title ""
execute if score .countDown rc_main matches -20 run title @a subtitle ""
execute if score .countDown rc_main matches 60 run function main:race/music

# checkpoints
execute as @a[gamemode=adventure,tag=player,x=310.5,dx=3,y=81,dy=3,z=57.5,dz=1] run scoreboard players set @s rc_checkpt 1
execute as @a[gamemode=adventure,tag=player,x=368,dx=4,y=81,dy=3,z=-18.5,dz=3] run scoreboard players set @s rc_checkpt 2
execute positioned 292.5 39 -49.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..5] rc_checkpt 3
execute positioned 253.5 40 -73.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..5] rc_checkpt 4
execute positioned 258.5 78 -32.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..3] rc_checkpt 5
execute positioned 247.5 87 10.5 run scoreboard players set @a[gamemode=adventure,tag=player,distance=..8] rc_checkpt 6
execute as @a[gamemode=adventure,tag=player,x=294,dx=1,y=75,dy=10,z=37,dz=10] run execute if score @s rc_checkpt matches 6 run function main:race/newlap
gamemode spectator @a[tag=player,scores={rc_lap=4..}]

#overall bossbar
# 0 min
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=0,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=0,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=1..9,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=1..9,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=10..,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=10..,rc_min=0}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
# 1-9 min
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=0,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=0,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=1..9,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=1..9,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=10..,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=10..,rc_min=1..9}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
# 10+ min
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=0,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=0,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=1..9,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=1..9,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=..9,rc_sec=10..,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]
execute as @a[gamemode=adventure,scores={rc_ms=10..99,rc_sec=10..,rc_min=10..}] run title @s actionbar [{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"},{"text":"Time: ","color":"gold"},{"score":{"name": "@s","objective":"rc_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_ms"},"color":"green"}]

# scoring
execute unless score .red br_tcheck matches 0 store result score .doneRed rc_scores if entity @a[team=Red,scores={rc_lap=4..}]
execute unless score .blue br_tcheck matches 0 store result score .doneBlue rc_scores if entity @a[team=Blue,scores={rc_lap=4..}]
execute unless score .green br_tcheck matches 0 store result score .doneGreen rc_scores if entity @a[team=Green,scores={rc_lap=4..}]
execute unless score .yellow br_tcheck matches 0 store result score .doneYellow rc_scores if entity @a[team=Yellow,scores={rc_lap=4..}]
# team finish bonus
#maybe add a point bonus in the future for specifically teams who don't come last?
execute unless score .red br_tcheck matches 0 if score .doneRed rc_scores = .red br_tcheck if score .redFinish rc_scores matches 0 run scoreboard players add @a[team=Red] indivScore 10
execute unless score .red br_tcheck matches 0 if score .doneRed rc_scores = .red br_tcheck if score .redFinish rc_scores matches 0 run tellraw @a[team=Red] {"text":"+10 points (team finish)","color":"green"}
execute unless score .red br_tcheck matches 0 if score .doneRed rc_scores = .red br_tcheck if score .redFinish rc_scores matches 0 run scoreboard players set .redFinish rc_scores 1
execute unless score .blue br_tcheck matches 0 if score .doneBlue rc_scores = .blue br_tcheck if score .blueFinish rc_scores matches 0 run scoreboard players add @a[team=Blue] indivScore 10
execute unless score .blue br_tcheck matches 0 if score .doneBlue rc_scores = .blue br_tcheck if score .blueFinish rc_scores matches 0 run tellraw @a[team=Blue] {"text":"+10 points (team finish)","color":"green"}
execute unless score .blue br_tcheck matches 0 if score .doneBlue rc_scores = .blue br_tcheck if score .blueFinish rc_scores matches 0 run scoreboard players set .blueFinish rc_scores 1
execute unless score .green br_tcheck matches 0 if score .doneGreen rc_scores = .green br_tcheck if score .greenFinish rc_scores matches 0 run scoreboard players add @a[team=Green] indivScore 10
execute unless score .green br_tcheck matches 0 if score .doneGreen rc_scores = .green br_tcheck if score .greenFinish rc_scores matches 0 run tellraw @a[team=Green] {"text":"+10 points (team finish)","color":"green"}
execute unless score .green br_tcheck matches 0 if score .doneGreen rc_scores = .green br_tcheck if score .greenFinish rc_scores matches 0 run scoreboard players set .greenFinish rc_scores 1
execute unless score .yellow br_tcheck matches 0 if score .doneYellow rc_scores = .yellow br_tcheck if score .yellowFinish rc_scores matches 0 run scoreboard players add @a[team=Yellow] indivScore 10
execute unless score .yellow br_tcheck matches 0 if score .doneYellow rc_scores = .yellow br_tcheck if score .yellowFinish rc_scores matches 0 run tellraw @a[team=Yellow] {"text":"+10 points (team finish)","color":"green"}
execute unless score .yellow br_tcheck matches 0 if score .doneYellow rc_scores = .yellow br_tcheck if score .yellowFinish rc_scores matches 0 run scoreboard players set .yellowFinish rc_scores 1
execute if score @a[limit=1] rc_lap matches 4.. run gamerule sendCommandFeedback false

#finish
# added ending to the numbers
execute as @a[tag=player,scores={rc_pos=1,rc_lap=4..}] run title @s actionbar [{"text":"You finished in ","color":"gold"},{"score":{"name":"@s","objective":"rc_pos"}},{"text":"st place!"}]
execute as @a[tag=player,scores={rc_pos=2,rc_lap=4..}] run title @s actionbar [{"text":"You finished in ","color":"gold"},{"score":{"name":"@s","objective":"rc_pos"}},{"text":"nd place!"}]
execute as @a[tag=player,scores={rc_pos=3,rc_lap=4..}] run title @s actionbar [{"text":"You finished in ","color":"gold"},{"score":{"name":"@s","objective":"rc_pos"}},{"text":"rd place!"}]
execute as @a[tag=player,scores={rc_pos=4..,rc_lap=4..}] run title @s actionbar [{"text":"You finished in ","color":"gold"},{"score":{"name":"@s","objective":"rc_pos"}},{"text":"th place!"}]

# gate
#  intended be open for five seconds, then closed for two
scoreboard players remove .gateOpen rc_main 1
scoreboard players remove .gateShut rc_main 1
execute if score .gateOpen rc_main matches -40 run scoreboard players set .gateOpen rc_main 100
execute if score .gateShut rc_main matches -100 run scoreboard players set .gateShut rc_main 40
execute store result bossbar main:rc_gateopen value run scoreboard players get .gateOpen rc_main
execute store result bossbar main:rc_gateshut value run scoreboard players get .gateShut rc_main
execute if score .gateOpen rc_main matches 100 run fill 351 83 42 351 81 44 air destroy
execute if score .gateShut rc_main matches 40 run fill 351 83 42 351 81 44 crimson_fence
execute positioned 351.5 81 43.5 run tag @a[distance=..4] add gate
execute positioned 351.5 81 43.5 run tag @a[distance=4.1..] remove gate
execute if score .gateOpen rc_main matches 0 run bossbar set main:rc_gateopen visible false
execute if score .gateOpen rc_main matches 100 run bossbar set main:rc_gateopen visible true
execute if score .gateShut rc_main matches 40 run bossbar set main:rc_gateshut visible true
execute if score .gateShut rc_main matches 0 run bossbar set main:rc_gateshut visible false
bossbar set main:rc_gateopen players @a[tag=gate]
bossbar set main:rc_gateshut players @a[tag=gate]

# game end condition when all players have finished
execute store result score .finished rc_pos if entity @a[scores={rc_lap=4..}]
execute if score .finished rc_pos = .players br_tcheck run function main:race/finish

# spectator anti-spoil
execute positioned 310 100 0 run tp @a[team=!Admin,gamemode=spectator,distance=175..] 310 100 0
execute if score .countDown rc_main matches ..110 run tellraw @a[team=!Admin,gamemode=spectator,distance=175..] {"text":"No peeking!","color":"dark_gray"}

# speedpads (magenta_glazed_terracotta)
execute as @a[tag=player,gamemode=adventure] positioned as @s if block ~ ~-1 ~ magenta_glazed_terracotta run effect give @s speed 2 3 true
# jump boost (lime_glazed_terracotta)
execute as @a[tag=player,gamemode=adventure] positioned as @s if block ~ ~-1 ~ lime_glazed_terracotta run effect give @s minecraft:jump_boost 1 7 true
execute as @a[tag=player,gamemode=adventure] positioned as @s if block ~ ~-0.25 ~ air run effect clear @s minecraft:jump_boost
# give elytra (light_blue_glazed_terracotta)
execute as @a[tag=player,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra"}]}] at @s unless block ~ ~-0.25 ~ air run title @s title ""
execute as @a[tag=player,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra"}]}] at @s unless block ~ ~-0.25 ~ air run title @s subtitle [{"text":"-","color":"red"},{"translate":"space.1"},{"text":"\uE101","color":"white"}]
execute as @a[tag=player,gamemode=adventure] at @s unless block ~ ~-0.25 ~ air run item replace entity @s armor.chest with air
execute as @a[tag=player,gamemode=adventure] at @s if block ~ ~-0.25 ~ light_blue_glazed_terracotta run item replace entity @s armor.chest with elytra{Enchantments:[{id:"binding_curse",lvl:1},{id:"unbreaking",lvl:255}],HideFlags:1}
execute as @a[tag=player,gamemode=adventure] at @s if block ~ ~-0.25 ~ light_blue_glazed_terracotta run title @s title ""
execute as @a[tag=player,gamemode=adventure] at @s if block ~ ~-0.25 ~ light_blue_glazed_terracotta run title @s subtitle [{"text":"+","color":"green"},{"translate":"space.1"},{"text":"\uE101","color":"white"}]
execute as @a[tag=player,gamemode=adventure] at @s unless block ~-0.4 ~-0.25 ~ air run item replace entity @s armor.chest with air
execute as @a[tag=player,gamemode=adventure] at @s if block ~-0.4 ~-0.25 ~ light_blue_glazed_terracotta run item replace entity @s armor.chest with elytra{Enchantments:[{id:"binding_curse",lvl:1},{id:"unbreaking",lvl:255}],HideFlags:1}
execute as @a[tag=player,gamemode=adventure] at @s if block ~-0.4 ~-0.25 ~ light_blue_glazed_terracotta run title @s title ""
execute as @a[tag=player,gamemode=adventure] at @s if block ~-0.4 ~-0.25 ~ light_blue_glazed_terracotta run title @s subtitle [{"text":"+","color":"green"},{"translate":"space.1"},{"text":"\uE101","color":"white"}]
stopsound @a * item.armor.equip_elytra

kill @a[tag=player,gamemode=adventure,scores={br_yCos=..6}]

# spawnpoints
setworldspawn 287 75 42
spawnpoint @a 287 75 42


# old player GUI
#this code is been commented out, it will be used at a later date so spectators can identify what area they're in. Will still need to modify it for that.
#execute as @a[gamemode=adventure,scores={rc_checkpt=0}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Start   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=1}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"River   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=2}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Elytra   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3"   ,"color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=3}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Sewer   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=4}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Block City   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=5}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Block City 2   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]
#execute as @a[gamemode=adventure,scores={rc_checkpt=6}] run title @s actionbar [{"text":"In: ","color":"gold"},{"text":"Finish!   ","color":"green"},{"text":"Lap: ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"rc_lap"}},{"text":"/3   ","color":"green"}]