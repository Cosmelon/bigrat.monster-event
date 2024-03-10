# Description: Block party tick
# Author: Cosmelon
# Type: main_tick
# run from main:tick when ?gameActive blockParty == 1

# effects
effect give @a weakness infinite 100 true
effect give @a saturation infinite 0 true
execute if score .countDown bp_main matches ..0 run effect give @a[tag=player,tag=bp_alive] invisibility infinite 0 true

# main countdown system
scoreboard players remove .countDown bp_main 1
execute if score .countDown bp_main matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score .countDown bp_main matches 60 run title @a subtitle  {"text":"3","color":"red"}
execute if score .countDown bp_main matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown bp_main matches 40 run title @a subtitle  {"text":"2","color":"yellow"}
execute if score .countDown bp_main matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown bp_main matches 20 run title @a subtitle  {"text":"1","color":"green"}
execute if score .countDown bp_main matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown bp_main matches 0 run title @a subtitle  {"text":"Start Schmoovin!","color":"red"}
execute if score .countDown bp_main matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score .countDown bp_main matches 0 run scoreboard players set .floorSwitch bp_main 1
execute if score .countDown bp_main matches 0 run scoreboard players set .stop bp_timer 400
execute if score .countDown bp_main matches 0 run function main:blockparty/bpmusic
execute if score .countDown bp_main matches 0 run fill -1988 61 2987 -2014 57 3013 air replace barrier
execute if score .countDown bp_main matches -40 run title @a title ""
execute if score .countDown bp_main matches -40 run title @a subtitle ""

# startinfo things
execute if score .round bp_main matches 1 if score .countDown bp_main matches 350 run function main:blockparty/startinfo/text1
execute if score .round bp_main matches 1 if score .countDown bp_main matches 250 run function main:blockparty/startinfo/text2
execute if score .round bp_main matches 1 if score .countDown bp_main matches 150 run function main:blockparty/startinfo/text3

# Floor randomizer function when floor switcher is active
execute if score .floorSwitch bp_main matches 1 run function main:blockparty/floorrng/floors
execute if score .floorNum bp_floor matches ..10 run scoreboard players set .in bp_floor 30
execute if score .floorNum bp_floor matches 11.. run scoreboard players set .in bp_floor 1
execute if score .floorNum bp_floor matches 16.. run scoreboard players set .in1 bp_floor 29
# removes the blocks
#  ?removeFloor starts out at -60, but over time it gradually increases until its hard stop
execute if score .stop bp_timer = .removeFloor bp_floor run function main:blockparty/floorrng/removefloor
execute if score .stop bp_timer matches -99 run scoreboard players add .removeStage bp_floor 1

#speed up moment
execute if score .removeStage bp_floor matches 4 run tellraw @a [{"text":"» ","color":"gray"},{"text":"Speed Up!","color":"white"}]
execute if score .removeStage bp_floor matches 4 run playsound item.trident.return ambient @a -2000.5 130 3000.5 10000
execute if score .removeStage bp_floor matches 4 unless score .changeFloorMax bp_floor matches ..10 run scoreboard players remove .changeFloorMax bp_floor 2

execute if score .removeStage bp_floor matches 4 unless score .removeFloor bp_floor matches -15.. if score .removeFloor bp_floor matches -20.. run scoreboard players add .removeFloor bp_floor 3 
execute if score .removeStage bp_floor matches 4 unless score .removeFloor bp_floor matches -15.. if score .removeFloor bp_floor matches -40..-21 run scoreboard players add .removeFloor bp_floor 5
execute if score .removeStage bp_floor matches 4 unless score .removeFloor bp_floor matches -15.. if score .removeFloor bp_floor matches ..-41 run scoreboard players add .removeFloor bp_floor 10
execute if score .floorNum bp_floor matches 1..3 run scoreboard players set .removeFloor bp_floor -60
execute if score .floorNum bp_floor matches 4..6 run scoreboard players set .removeFloor bp_floor -45
execute if score .floorNum bp_floor matches 7..9 run scoreboard players set .removeFloor bp_floor -30
execute if score .floorNum bp_floor matches 10..12 run scoreboard players set .removeFloor bp_floor -20
execute if score .floorNum bp_floor matches 13..15 run scoreboard players set .removeFloor bp_floor -10
execute if score .floorNum bp_floor matches 16..18 run scoreboard players set .removeFloor bp_floor -5
execute if score .floorNum bp_floor matches 19..21 run scoreboard players set .removeFloor bp_floor -3
execute if score .removeStage bp_floor matches 4 run scoreboard players set .removeStage bp_floor 1
# get rid of blocks in player inventory when inactive color randomizer
execute unless score .stop bp_timer <= .colorTT bpTimer as @a[tag=bp_alive] run function main:blockparty/colorrng/removeblockitems

# 1-3 -- 60t
# 4-6 -- 45t
# 7-9 -- 30t
# 10-12 -- 20t
# 13-15 -- 10t
# 16-18 -- 5t
# 19-21 -- 3t
# 22-24 -- 2t
# 25-27 -- 1t

# color picker
#  picks what color the players must stand on to avoid falling and dying 
#  ?colorTT bpTimer is the maximum time when the color is being decided
#  After each round, this number is steadilly decreased, but there is a hard stop at 4
execute if score .stop bp_timer matches 0.. if score .stop bp_timer <= .colorTT bp_timer run function main:blockparty/colorrng/pickcolor
execute if score .stop bp_timer matches -99 if score .colorTT bp_timer matches 5.. run scoreboard players remove .colorTT bp_timer 4

# music stuff
#6/16/22 -- moved to main:blockparty/bpmusic

# actionbar GUI
#floor counter
execute if score .stop bp_timer matches -99 run scoreboard players add .floorNum bp_floor 1
execute store result score .aliveAll bp_main if entity @a[tag=bp_alive]
execute if score .countDown bp_main matches ..0 run title @a actionbar [{"text":"Round: ","color":"gold"},{"score":{"name":".floorNum","objective":"bp_floor"},"color":"aqua"},{"translate":"space.5"},{"text":"Players Alive: ","color":"gold"},{"score":{"name":".aliveAll","objective":"bp_main"},"color":"aqua"},{"text":"/","color":"green"},{"score":{"name":".players","objective":"br_tcheck"}}]

# timer picker
# the idea is that a random amount of time is picked after each elimination before it stops again
execute if score .stop bp_timer matches -99 unless score .in1 bp_timer matches ..65 run scoreboard players remove .in1 bp_timer 5
execute if score .countDown bp_main matches ..0 run scoreboard players remove ?stop bp_timer 1
execute if score .stop bp_timer matches -100 run function main:blockparty/timerrng/range
execute if score .stop bp_timer matches -100..0 run scoreboard players set ?floorSwitch bp_main 0
execute unless score .stop bp_timer matches ..0 run scoreboard players set ?floorSwitch bp_main 1

# player counter
execute store result score ?aliveRed bp_main if entity @a[team=Red,tag=bp_alive]
execute store result score ?aliveBlue bp_main if entity @a[team=Blue,tag=bp_alive]
execute store result score ?aliveGreen bp_main if entity @a[team=Green,tag=bp_alive]
execute store result score ?aliveYellow bp_main if entity @a[team=Yellow,tag=bp_alive]

tag @a[tag=player,scores={bp_deaths=0}] add bp_alive
tag @a[tag=player,scores={bp_deaths=0}] remove bp_deaths
tag @a[tag=player,scores={bp_deaths=1..}] add bp_deaths
tag @a[tag=player,scores={bp_deaths=1..}] remove bp_alive


# player death method
kill @a[gamemode=adventure,tag=bp_alive,scores={br_yPos=40..46}]
gamemode spectator @a[scores={bp_deaths=1..}]
execute as @a if score @s bp_deaths matches 1 run scoreboard players add @a[gamemode=adventure,tag=player,tag=bpAlive] indivScore 1
execute as @a if score @s bp_deaths matches 1 run tellraw @a[gamemode=adventure,tag=player,tag=bp_alive] {"text":"+1 Invividual point (Survival)","color":"green"}
execute as @a if score @s bp_deaths matches 1 run scoreboard players add @s bp_deaths 1

# death messaage
function main:blockparty/checkdead
# red win
execute if score .notifBlueDead bp_main matches 1 if score .notifGreenDead bp_main matches 1 if score .notifYellowDead bp_main matches 1 run function main:blockparty/wins/red
# blue win
execute if score .notifRedDead bp_main matches 1 if score .notifGreenDead bp_main matches 1 if score .notifYellowDead bp_main matches 1 run function main:blockparty/wins/blue
# green win
execute if score .notifRedDead bp_main matches 1 if score .notifBlueDead bp_main matches 1 if score .notifYellowDead bp_main matches 1 run function main:blockparty/wins/green
# yellow win
execute if score .notifRedDead bp_main matches 1 if score .notifBlueDead bp_main matches 1 if score .notifGreenDead bp_main matches 1 run function main:blockparty/wins/yellow

# round count bossbar stuff
bossbar set main:bp_roundcount players @a
execute store result bossbar main:bp_roundcount value run scoreboard players get .round bp_main
bossbar set main:bp_roundcount name [{"text":"Round: ","color":"white","bold":true},{"score":{"name":".round","objective":"bp_main"},"bold":true},{"text":"/3","bold":true}]

# Dead count
tag @a[tag=player,scores={bp_deaths=1..}] add bp_deaths

# indiv player boots
item replace entity @a[team=Red,nbt=!{Inventory:[{id:"minecraft:leather_boots"}]}] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Blue,nbt=!{Inventory:[{id:"minecraft:leather_boots"}]}] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Green,nbt=!{Inventory:[{id:"minecraft:leather_boots"}]}] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}
item replace entity @a[team=Yellow,nbt=!{Inventory:[{id:"minecraft:leather_boots"}]}] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123}

# remove xp
xp set @a 0 levels
xp set @a 0 points
kill @e[type=item]
kill @e[type=experience_orb]

# killing players when they disconnect mid-game
execute as @a[scores={br_online=1..},team=!Admin] run gamemode spectator @s
execute as @a[scores={br_online=1..},tag=player] run scoreboard players set @s bp_deaths 1
execute as @a[scores={br_online=1..},tag=player] run tellraw @s {"text":"You were killed because of a disconnect!","color":"dark_gray"}