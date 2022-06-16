# Description: main tick file
# Author: Cosmelon
# Type: tick
# run from source

# manage currentGame objective
execute if score $gameActive spleef matches 0 run scoreboard players set .spleef currentGame 0
execute if score $gameActive spleef matches 1 run scoreboard players set .spleef currentGame 1
execute if score !gameActive race matches 0 run scoreboard players set .race currentGame 0
execute if score !gameActive race matches 1 run scoreboard players set .race currentGame 1
execute if score ~gameActive sg matches 0 run scoreboard players set .sg currentGame 0
execute if score ~gameActive sg matches 1 run scoreboard players set .sg currentGame 1
execute if score ?gameActive blockParty matches 0 run scoreboard players set .blockParty currentGame 0
execute if score ?gameActive blockParty matches 1 run scoreboard players set .blockParty currentGame 1

# manage lobby when games are inactive
execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 if score ?gameActive blockParty matches 0 run spawnpoint @a[tag=!lobbyPVP] 1000 28 -6000
execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 if score ?gameActive blockParty matches 0 run setworldspawn 1000 28 -6000
execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 if score ?gameActive blockParty matches 0 run scoreboard players set .lobby currentGame 1

# permanant bossbar type beat
bossbar set minecraft:spleefroundcount players @a
bossbar set minecraft:spleefshrinkwarn players @a
bossbar set minecraft:spleefshrinkactual players @a
bossbar set minecraft:racetimer players @a
bossbar set minecraft:sgshrinkactual players @a
bossbar set minecraft:sgshrink players @a

# tagging player system
tag @a[team=Red] add player
tag @a[team=Blue] add player
tag @a[team=Green] add player
tag @a[team=Yellow] add player
tag @a[team=Admin] remove player
tag @a[team=Spectator] remove player
team join Spectator @a[team=]

# teamCheck
execute store result score .red teamCheck if entity @a[team=Red]
execute store result score .blue teamCheck if entity @a[team=Blue]
execute store result score .green teamCheck if entity @a[team=Green]
execute store result score .yellow teamCheck if entity @a[team=Yellow]
#all user track
execute store result score .users teamCheck if entity @a
#all player track
execute store result score .players teamCheck if entity @a[tag=player]
#ready player track
execute store result score .ready br_rcdata if entity @a[tag=br_rcyes]
execute store result score .nready br_rcdata if entity @a[tag=br_rcno]
execute store result score .NA br_rcdata if entity @a[tag=br_rcNA]

# readyCheck
#yes
execute as @a[tag=br_rcNA] if score @s br_rcyes matches 1 run tag @s add br_rcyes
execute as @a[tag=br_rcNA] if score @s br_rcyes matches 1 run trigger br_rcno add 0
execute as @a[tag=br_rcNA] if score @s br_rcyes matches 1 run tag @s remove br_rcNA
#no
execute as @a[tag=br_rcNA] if score @s br_rcno matches 1 run tag @s add br_rcno
execute as @a[tag=br_rcNA] if score @s br_rcno matches 1 run trigger br_rcyes add 0
execute as @a[tag=br_rcNA] if score @s br_rcno matches 1 run tag @s remove br_rcNA

# playersOnline (players will have a score of 1 when offline, 0 when online)
execute as @a[scores={playersOnline=1..},team=!Admin] run tp @s 1000.5 28 -6000.5 0 5
execute as @a[scores={playersOnline=1..},team=!Admin] run gamemode adventure @s
execute as @a[scores={playersOnline=1..},team=!Admin] run clear @s
execute as @a[scores={playersOnline=1..}] if score .spleef currentGame matches 1 run tp @s -496.5 66 -459.5 0 5
execute as @a[scores={playersOnline=1..}] if score .sg currentGame matches 1 run tp @s -1983.5 133 -1983.5 0 5
execute as @a[tag=!player,scores={playersOnline=1..}] if score .blockParty . matches 1 run tp @s -2000.5 61 3023.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute as @a[team=Red,scores={playersOnline=1..}] if score .blockParty currentGame matches 1 run tp @s -2018.5 62 3018.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute as @a[team=Blue,scores={playersOnline=1..}] if score .blockParty currentGame matches 1 run tp @s -1982.5 62 2982.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute as @a[team=Green,scores={playersOnline=1..}] if score .blockParty currentGame matches 1 run tp @s -2018.5 62 2982.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute as @a[team=Yellow,scores={playersOnline=1..}] if score .blockParty currentGame matches 1 run tp @s -1982.5 62 3018.5 facing entity @e[limit=1,sort=nearest,name="?midL"]
execute as @a[scores={playersOnline=1..}] run scoreboard players set @s playersOnline 0

# constant yCos (yPosition) tracker, can be used for multiple games
execute as @a store result score @s yCos run data get entity @s Pos[1]

# night vision clear
effect clear @a[tag=noNV] night_vision

# kills games when nobody is online
execute unless score .users teamCheck matches 1.. if score $gameActive spleef matches 1 run scoreboard objectives add killGames dummy
execute unless score .users teamCheck matches 1.. if score !gameActive race matches 1 run scoreboard objectives add killGames dummy
execute unless score .users teamCheck matches 1.. if score ~gameActive sg matches 1 run scoreboard objectives add killGames dummy
execute unless score .users teamCheck matches 1.. if score ?gameActive blockParty matches 1 run scoreboard objectives add killGames dummy
execute unless score .users teamCheck matches 1.. run scoreboard players set .main killGames 1
execute if score .main killGames matches 1.. run function main:spleef/killspleef
execute if score .main killGames matches 1.. run function main:race/killrace
execute if score .main killGames matches 1.. run function main:sg/killsg
execute if score .main killGames matches 1.. run function main:blockparty/killbp
execute if score .main killGames matches 1.. run scoreboard objectives remove killGames

# teamScore (this looks like crap lmao -Cos)
#  This is on hold for right now, this shit is breaking my mind
function main:scores/teamscore

# statue score npc display
function main:scores/teamnpcs

# funny fall thing
execute if score !bones currentGame matches 1 as @a if score @s fall matches 900.. run function main:fallen
scoreboard players reset * fall

# lobbytick
execute if score .lobby currentGame matches 1 if score !lobbyEff currentGame matches 1 run effect give @a[tag=!lobbyPVP] weakness 10000 100 true
execute if score .lobby currentGame matches 1 if score !lobbyEff currentGame matches 1 run effect give @a[tag=!lobbyPVP] saturation 10000 100 true


# lobby slap box
tag @a[x=993.5,dx=13,y=30,dy=4,z=-5969.5,dz=13] add lobbyPVP
spawnpoint @a[tag=lobbyPVP] 1000 28 -5973 0
title @a[tag=lobbyPVP] times 0 100 2
title @a[tag=lobbyPVP] actionbar {"text":"You in the slap box, slap box","color":"gold"}
effect clear @a[tag=lobbyPVP] saturation
effect clear @a[tag=lobbyPVP] weakness
item replace entity @a[tag=lobbyPVP,nbt=!{Inventory:[{id:"minecraft:stick"}]}] hotbar.0 with stick{display:{Name:'[{"text":"Kinda sticky...","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:2}],HideFlags:27}
kill @e[x=993.5,dx=13,y=30,dy=4,z=-5969.5,dz=13,type=item,nbt={Item:{id:"minecraft:stick"}}]

#   remove tag from users outside the slap box
execute positioned 1000.5 31 -5962.5 run tag @a[distance=8..,tag=lobbyPVP] remove lobbyPVP
tag @a[x=993.5,dx=-100000] remove lobbyPVP
tag @a[x=1007.5,dx=100000] remove lobbyPVP
tag @a[z=-5955.5,dz=100000] remove lobbyPVP
tag @a[z=-5969.5,dz=-100000] remove lobbyPVP
execute as @a[tag=!lobbyPVP] run clear @s stick{display:{Name:'[{"text":"Kinda sticky...","italic":false}]'}}


# spleeftick
execute if score $gameActive spleef matches 1 run function main:spleef/sptick

# racetick
execute if score !gameActive race matches 1 run function main:race/racetick

# sgtick
execute if score ~gameActive sg matches 1 run function main:sg/sgtick
scoreboard players enable @a[tag=admin] sgPowerCheck
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Vampire Users: ","color":"green"},{"selector":"@a[tag=sgVampire]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Trainer Users: ","color":"green"},{"selector":"@a[tag=sgMedic]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Redditor Users: ","color":"green"},{"selector":"@a[tag=sgRedditor]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Creeper Users: ","color":"green"},{"selector":"@a[tag=sgCreeper]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Witch Users: ","color":"green"},{"selector":"@a[tag=sgWitch]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Leprechaun Users: ","color":"green"},{"selector":"@a[tag=sgLeprechaun]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Medic Users: ","color":"green"},{"selector":"@a[tag=sgMedic]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 1 if score @s sgPowerCheck matches 1.. run tellraw @s [{"text":"Pyro Users: ","color":"green"},{"selector":"@a[tag=sgPyro]","color":"white"}]
execute as @a[tag=admin] if score ~gameActive sg matches 0 if score @s sgPowerCheck matches 1.. run tellraw @s {"text":"Survival Games is currently inactive!","color":"red"}
scoreboard players reset @a[scores={sgPowerCheck=1..}] sgPowerCheck

# blockparty tick
execute if score ?gameActive blockParty matches 1 run function main:blockparty/bptick
bossbar set minecraft:bproundcount players @a
tag @a[tag=bpDead] remove bpAlive
tag @a[tag=bpAlive] remove bpDead

# brawl tick
execute if score ?gameActive brawl matches 1 run function main:brawl/main