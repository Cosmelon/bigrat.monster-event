# Description: starts race
# Author: Cosmelon
# Type: start

# lobby turn off 
scoreboard players set .race br_cgame 1
scoreboard players set .lobby br_cgame 0

scoreboard objectives add rc_main dummy
scoreboard objectives add rc_lap dummy
scoreboard objectives add rc_pos dummy
scoreboard objectives add rc_checkpt dummy
scoreboard objectives add rc_tridentcount dummy

# main stopwatch scoreboards
scoreboard objectives add rc_ms dummy
scoreboard objectives add rc_milli dummy
scoreboard objectives add rc_sec dummy
scoreboard objectives add rc_min dummy
bossbar add main:rc_alltime ""
bossbar set main:rc_alltime color white
bossbar set main:rc_alltime visible false

# gate bossbar
bossbar add main:rc_gateopen "Gate Open"
bossbar set main:rc_gateopen max 100
bossbar add main:rc_gateshut "Gate Closed"
bossbar set main:rc_gateshut max 40

# perLap stopwatch
scoreboard objectives add rc_ms1 dummy
scoreboard objectives add rc_ms2 dummy
scoreboard objectives add rc_ms3 dummy
scoreboard objectives add rc_s1 dummy
scoreboard objectives add rc_s2 dummy
scoreboard objectives add rc_s3 dummy
scoreboard objectives add rc_min1 dummy
scoreboard objectives add rc_min2 dummy
scoreboard objectives add rc_min3 dummy
scoreboard players set @a[tag=player] rc_ms1 0
scoreboard players set @a[tag=player] rc_ms2 0
scoreboard players set @a[tag=player] rc_ms3 0
scoreboard players set @a[tag=player] rc_s1 0
scoreboard players set @a[tag=player] rc_s2 0
scoreboard players set @a[tag=player] rc_s3 0
scoreboard players set @a[tag=player] rc_min1 0
scoreboard players set @a[tag=player] rc_min2 0
scoreboard players set @a[tag=player] rc_min3 0

# scoreboard objectives for indiv overall time
scoreboard objectives add rc_allms dummy
scoreboard objectives add rc_alls dummy
scoreboard objectives add rc_allmin dummy

# specific scores
tp @a 284.5 75 42.5 -90 5
scoreboard players set .gameActive rc_main 1
scoreboard players set .countDown rc_main 1410
scoreboard players set .gateOpen rc_main 100
scoreboard players set .gateShut rc_main 0
scoreboard players set .raceTime rc_milli 0
scoreboard players set .raceTime rc_sec 0
scoreboard players set .raceTime rc_min 0
scoreboard players set @a rc_milli 0
scoreboard players set @a rc_sec 0
scoreboard players set @a rc_min 0
scoreboard players set @a rc_checkpt 0
scoreboard players set @a rc_lap 0
scoreboard players reset * rc_pos
title @a times 0 25 5

# rc_pos count reset
scoreboard players set .posCounter1 rc_pos 0
scoreboard players set .posCounter2 rc_pos 0
scoreboard players set .posCounter3 rc_pos 0

# score setup
scoreboard objectives add rc_scores dummy
scoreboard players set #2 rc_scores 2
scoreboard players operation .indivFinish rc_scores = .players br_tcheck
scoreboard players operation .indivFinish rc_scores *= #2 rc_scores
scoreboard players set .teamScores rc_scores 30
scoreboard players set .redFinish rc_scores 0
scoreboard players set .blueFinish rc_scores 0
scoreboard players set .greenFinish rc_scores 0
scoreboard players set .yellowFinish rc_scores 0

# clear inventory pre-game
clear @a[team=!Admin]
effect clear @a

# gamemodes
gamemode spectator @a
scoreboard players set @a[tag=player] rc_lap 0
scoreboard players set @a[tag=player] rc_checkpt 0
scoreboard players set @a[tag=player] rc_milli 0
scoreboard players set @a[tag=player] rc_sec 0
scoreboard players set @a[tag=player] rc_min 0
scoreboard players set @a[tag=player] rc_allms 0
scoreboard players set @a[tag=player] rc_alls 0
scoreboard players set @a[tag=player] rc_allmin 0

# teleporting
function main:race/spreadp

# summon armor stands
kill @e[type=armor_stand,name=".raceCine"]
summon armor_stand 284.5 75 42.5 {Invisible:1b,NoGravity:1b,Rotation:[270f],CustomName:'{"text":".raceCine"}'}

#barriers (face-top-back-left-right)
# red
fill 291 76 38 291 76 41 barrier
fill 290 77 38 290 77 41 barrier
fill 289 76 38 289 76 41 barrier
setblock 290 76 37 barrier
setblock 290 76 42 barrier
# blue
fill 291 76 43 291 76 46 barrier
fill 290 77 43 290 77 46 barrier
fill 289 76 43 289 76 46 barrier
setblock 290 76 42 barrier
setblock 290 76 47 barrier
# green
fill 287 76 38 287 76 41 barrier
fill 286 77 38 286 77 41 barrier
fill 285 76 38 285 76 41 barrier
setblock 286 76 37 barrier
setblock 286 76 42 barrier
# yellow
fill 287 76 43 287 76 46 barrier
fill 286 77 43 286 77 46 barrier
fill 285 76 43 285 76 46 barrier
setblock 286 76 42 barrier
setblock 286 76 47 barrier
#startline
fill 294 79 37 294 75 47 light_gray_stained_glass replace air

# depth strider boots
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse",lvl:1s}]}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse",lvl:1s}]}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse",lvl:1s}]}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse",lvl:1s}]}