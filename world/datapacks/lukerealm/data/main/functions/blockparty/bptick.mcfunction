# Description: Block party tick
# Author: Cosmelon
# Type: main_tick
# run from main:tick when ?gameActive blockParty == 1

# effects
effect give @a weakness 100000 0 true
effect give @a saturation 100000 0 true
execute if score ?countDown blockParty matches ..0 run effect give @a[tag=player,tag=bpAlive] invisibility 100000 0 true

# Floor randomizer function when floor switcher is active
execute if score ?floorSwitch blockParty matches 1 run function main:blockparty/floorrng/floors
# removes the blocks
execute if score ?stopSec bpStop matches -3 run function main:blockparty/floorrng/removefloor
# get rid of blocks in player inventory when inactive randomizer
execute if score ?stopSec bpStop matches 1.. as @a[tag=bpAlive] run function main:blockparty/removeblockitems

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
execute if score ?countDown blockParty matches 0 run scoreboard players set ?stopSec bpStop 20
execute if score ?countDown blockParty matches -40 run title @a title ""
execute if score ?countDown blockParty matches -40 run title @a subtitle ""

# startinfo things
execute if score ?countDown blockParty matches 350 run function main:blockparty/startinfo/text1
execute if score ?countDown blockParty matches 250 run function main:blockparty/startinfo/text2
execute if score ?countDown blockParty matches 150 run function main:blockparty/startinfo/text3

# color picker
#execute if score $floorSwitch blockParty matches 1 run scoreboard players add $tick blockPartyStop 1
execute if score ?tick bpStop matches 20.. run scoreboard players remove ?stopSec bpStop 1
execute if score ?stopSec bpStop matches 0 run function main:blockparty/colorrng/pickcolor
execute if score ?tick bpStop matches 20.. run scoreboard players set ?tick bpStop 0

# music stuff
execute if score ?countDown blockParty matches 0 run playsound minecraft:music_disc.chirp voice @a -2000.5 130 3000.5 10000
execute if score ?stopSec bpStop matches -1 run stopsound @a
execute if score ?stopSec bpStop matches -10 run playsound minecraft:music_disc.chirp voice @a -2000.5 130 3000.5 10000

# actionbar GUI
#floor counter
execute if score ?stopSec bpStop matches -10 run scoreboard players add ?floorNum bpFloor 1
execute store result score ?aliveAll blockParty if entity @a[tag=bpAlive]
execute if score ?countDown blockParty matches ..0 run title @a actionbar [{"text":"Round: ","color":"green"},{"score":{"name":"?floorNum","objective":"bpFloor"}},{"text":"     Players Alive: ","color":"red"},{"score":{"name":"?aliveAll","objective":"blockParty"}}]

execute if score ?stopSec bpStop matches -10 if score ?in1 bpTimer matches 4.. run scoreboard players remove ?in1 bpTimer 1

# timer picker
# the idea is that a random amount of time is picked after each elimination before it stops again
execute if score ?countDown blockParty matches ..0 run scoreboard players add ?tick bpStop 1
execute if score ?stopSec bpStop matches -10 run function main:blockparty/timerrng/range
execute if score ?stopSec bpStop matches -10..0 run scoreboard players set ?floorSwitch blockParty 0
execute if score ?stopSec bpStop matches 1.. run scoreboard players set ?floorSwitch blockParty 1

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