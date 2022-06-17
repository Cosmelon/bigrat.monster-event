# Description: Block party tick
# Author: Cosmelon
# Type: main_tick
# run from main:tick when ?gameActive blockParty == 1

# effects
effect give @a weakness 100000 0 true
effect give @a saturation 100000 0 true
execute if score ?countDown blockParty matches ..0 run effect give @a[tag=player,tag=bpAlive] invisibility 100000 0 true

# main countdown system
scoreboard players remove ?countDown blockParty 1
execute if score ?countDown blockParty matches 60 run title @a title {"text":"3","color":"red"}
execute if score ?countDown blockParty matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score ?countDown blockParty matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score ?countDown blockParty matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score ?countDown blockParty matches 20 run title @a title {"text":"1","color":"green"}
execute if score ?countDown blockParty matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score ?countDown blockParty matches 0 run title @a title {"text":"Start Schmoovin!","color":"red"}
execute if score ?countDown blockParty matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score ?countDown blockParty matches 0 run scoreboard players set ?floorSwitch blockParty 1
execute if score ?countDown blockParty matches 0 run scoreboard players set ?stop bpTimer 400
execute if score ?countDown blockParty matches -40 run title @a title ""
execute if score ?countDown blockParty matches -40 run title @a subtitle ""

# startinfo things
execute if score ?round blockParty matches 1 if score ?countDown blockParty matches 350 run function main:blockparty/startinfo/text1
execute if score ?round blockParty matches 1 if score ?countDown blockParty matches 250 run function main:blockparty/startinfo/text2
execute if score ?round blockParty matches 1 if score ?countDown blockParty matches 150 run function main:blockparty/startinfo/text3

# Floor randomizer function when floor switcher is active
execute if score ?floorSwitch blockParty matches 1 run function main:blockparty/floorrng/floors
# removes the blocks
#  ?removeFloor starts out at -60, but over time it gradually increases until its hard stop at -10
execute if score ?stop bpTimer = ?removeFloor bpFloor run function main:blockparty/floorrng/removefloor
execute if score ?stop bpTimer matches -99 run scoreboard players add ?removeStage bpFloor 1

#speed up moment
execute if score ?removeStage bpFloor matches 4 run tellraw @a [{"text":"[","color":"dark_gray"},{"text":"BlockParty","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"» ","color":"gray"},{"text":"Speed Up!","color":"light_green"}]
execute if score ?removeStage bpFloor matches 4 run playsound item.trident.return ambient @a -2000.5 130 3000.5 10000
execute if score ?removeStage bpFloor matches 4 unless score ?changeFloorMax bpFloor matches ..10 run scoreboard players remove ?changeFloorMax bpFloor 2

execute if score ?removeStage bpFloor matches 4 unless score ?removeFloor bpFloor matches -10.. run scoreboard players add ?removeFloor bpFloor 10
execute if score ?removeStage bpFloor matches 4 run scoreboard players set ?removeStage bpFloor 1
# get rid of blocks in player inventory when inactive color randomizer
execute if score ?stop bpTimer matches 25.. as @a[tag=bpAlive] run function main:blockparty/removeblockitems


# color picker
#  picks what color the players must stand on to avoid falling and dying 
#  ?colorTT bpTimer is the maximum time when the color is being decided
#  After each round, this number is steadilly decreased, but there is a hard stop at 4
execute if score ?stop bpTimer matches 0.. if score ?stop bpTimer <= ?colorTT bpTimer run function main:blockparty/colorrng/pickcolor
execute if score ?stop bpTimer matches -99 if score ?colorTT bpTimer matches 5.. run scoreboard players remove ?colorTT bpTimer 4

# music stuff
#6/16/22 -- moved to main:blockparty/bpmusic

# actionbar GUI
#floor counter
execute if score ?stop bpTimer matches -99 run scoreboard players add ?floorNum bpFloor 1
execute store result score ?aliveAll blockParty if entity @a[tag=bpAlive]
execute if score ?countDown blockParty matches ..0 run title @a actionbar [{"text":"Round: ","color":"gold"},{"score":{"name":"?floorNum","objective":"bpFloor"},"color":"aqua"},{"text":"     Players Alive: ","color":"gold"},{"score":{"name":"?aliveAll","objective":"blockParty"},"color":"aqua"},{"text":"/","color":"green"},{"score":{"name":".players","objective":"teamCheck"}}]

# timer picker
# the idea is that a random amount of time is picked after each elimination before it stops again
execute if score ?stop bpTimer matches -99 unless score ?in1 bpTimer matches ..65 run scoreboard players remove ?in1 bpTimer 5
execute if score ?countDown blockParty matches ..0 run scoreboard players remove ?stop bpTimer 1
execute if score ?stop bpTimer matches -100 run function main:blockparty/timerrng/range
execute if score ?stop bpTimer matches -100..0 run scoreboard players set ?floorSwitch blockParty 0
execute unless score ?stop bpTimer matches ..0 run scoreboard players set ?floorSwitch blockParty 1

# player counter
execute store result score ?aliveRed blockParty if entity @a[team=Red,tag=bpAlive]
execute store result score ?aliveBlue blockParty if entity @a[team=Blue,tag=bpAlive]
execute store result score ?aliveGreen blockParty if entity @a[team=Green,tag=bpAlive]
execute store result score ?aliveYellow blockParty if entity @a[team=Yellow,tag=bpAlive]

tag @a[tag=player,scores={bpDeaths=0}] add bpAlive
tag @a[tag=player,scores={bpDeaths=0}] remove bpDeaths
tag @a[tag=player,scores={bpDeaths=1..}] add bpDeaths
tag @a[tag=player,scores={bpDeaths=1..}] remove bpAlive


# player death method
kill @a[gamemode=adventure,tag=bpAlive,scores={yCos=40..46}]


# death messaage
function main:blockparty/checkdead
# red win
execute if score ?notifBlueDead blockParty matches 1 if score ?notifGreenDead blockParty matches 1 if score ?notifYellowDead blockParty matches 1 run function main:blockparty/wins/red
# blue win
execute if score ?notifRedDead blockParty matches 1 if score ?notifGreenDead blockParty matches 1 if score ?notifYellowDead blockParty matches 1 run function main:blockparty/wins/blue
# green win
execute if score ?notifRedDead blockParty matches 1 if score ?notifBlueDead blockParty matches 1 if score ?notifYellowDead blockParty matches 1 run function main:blockparty/wins/green
# yellow win
execute if score ?notifRedDead blockParty matches 1 if score ?notifBlueDead blockParty matches 1 if score ?notifGreenDead blockParty matches 1 run function main:blockparty/wins/yellow


# round count bossbar stuff
execute store result bossbar minecraft:bproundcount value run scoreboard players get ?round blockParty
bossbar set minecraft:bproundcount name [{"text":"Round: ","color":"white","bold":true},{"score":{"name":"?round","objective":"blockParty"},"bold":true},{"text":"/3","bold":true}]

# Dead count
tag @a[tag=player,scores={bpDeaths=1..}] add bpDeaths

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
execute as @a[scores={playersOnline=1..},team=!Admin] run gamemode spectator @s
execute as @a[scores={playersOnline=1..},tag=player] run scoreboard players set @s bpDeaths 1
execute as @a[scores={playersOnline=1..},tag=player] run tellraw @s {"text":"You were killed because of a disconnect!","color":"dark_gray"}