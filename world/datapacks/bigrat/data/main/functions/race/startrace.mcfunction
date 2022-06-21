# Description: starts race
# Author: Cosmelon
# Type: start

# lobby turn off 
scoreboard players set .lobby currentGame 0

# create scoreboards
scoreboard objectives add race dummy
scoreboard objectives add raceMilli dummy
scoreboard objectives add raceSec dummy
scoreboard objectives add raceMin dummy
scoreboard objectives add raceLap dummy
scoreboard objectives add racePos dummy
scoreboard objectives add raceCP dummy

# scoreboard objectives for indiv overall time
scoreboard objectives add raceOMilli dummy
scoreboard objectives add raceOSec dummy
scoreboard objectives add raceOMin dummy

# specific scores
tp @a 284.5 75 42.5 -90 5
scoreboard players set !gameActive race 1
scoreboard players set !countDown race 1410
scoreboard players set !gateOpen race 100
scoreboard players set !gateShut race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
scoreboard players reset * racePos
title @a times 0 25 5

# racePos count reset
scoreboard players set !posCounter1 racePos 0
scoreboard players set !posCounter2 racePos 0
scoreboard players set !posCounter3 racePos 0

# clear inventory pre-game
clear @a[team=!Admin]
effect clear @a
effect give @a saturation 10000 100 true

# gamemodes
gamemode spectator @a
scoreboard players set @a raceLap 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0

# teleporting
function main:race/spreadp

# summon armor stands
kill @e[type=armor_stand,name="!raceCine"]
summon armor_stand 284.5 75 42.5 {Invisible:1b,NoGravity:1b,Rotation:[270f],CustomName:'{"text":"!raceCine"}'}

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
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse"}]}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse"}]}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse"}]}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s},{id:"binding_curse"}]}