# main tick file, be careful!

execute if score $gameActive spleef matches 0 run scoreboard players set $spleef currentGame 0
execute if score $gameActive spleef matches 1 run scoreboard players set $spleef currentGame 1
execute if score !gameActive race matches 0 run scoreboard players set $race currentGame 0
execute if score !gameActive race matches 1 run scoreboard players set $race currentGame 1
execute if score ~gameActive sg matches 0 run scoreboard players set $sg currentGame 0
execute if score ~gameActive sg matches 1 run scoreboard players set $sg currentGame 1

bossbar set minecraft:spleefroundcount players @a
bossbar set minecraft:spleefshrink1timer players @a
bossbar set minecraft:spleefshirnk2timer players @a
bossbar set minecraft:spleefshrink3timer players @a
bossbar set minecraft:spleefshrinkactual players @a
bossbar set minecraft:racetimer players @a
bossbar set minecraft:buildmode players @a
bossbar set minecraft:sgshrinkactual players @a
bossbar set minecraft:sgshrink players @a

execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 run spawnpoint @a 1000 28 -6000
execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 run setworldspawn 1000 28 -6000
execute if score $gameActive spleef matches 0 if score !gameActive race matches 0 if score ~gameActive sg matches 0 run scoreboard players set $lobby currentGame 1
execute if score $buildMode currentGame matches 0 if score $lobby currentGame matches 1 run effect give @a[gamemode=adventure,team=!Admin] weakness 10000 200 true
execute if score $buildMode currentGame matches 1 run bossbar set minecraft:buildmode visible true
execute if score $buildMode currentGame matches 0 run bossbar set minecraft:buildmode visible false

# tagging player system
tag @a[team=Red] add player
tag @a[team=Blue] add player
tag @a[team=Green] add player
tag @a[team=Yellow] add player
tag @a[team=Admin] remove player
tag @a[team=Spectator] remove player
team join Spectator @a[team=]

# constant yCos (yPosition) tracker, can be used for multiple games
execute as @a store result score @s yCos run data get entity @s Pos[1]

# lobbytick
execute if score $lobby currentGame matches 1 if score !lobbyEff currentGame matches 1 run effect give @a weakness 10000 100 true
execute if score $lobby currentGame matches 1 if score !lobbyEff currentGame matches 1 run effect give @a saturation 10000 100 true

# spleeftick
execute if score $gameActive spleef matches 1 run function main:spleef/sptick
execute if score $gameActive spleef matches 0 run scoreboard players set $countDown spleef 160
execute if score $gameActive spleef matches 0 run scoreboard players set $tick spleefBorder 0
execute if score $gameActive spleef matches 0 run scoreboard players set $sec spleefBorder 30
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink1Timer spleefBorder 1900
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink2Timer spleefBorder 3400
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink3Timer spleefBorder 5000
execute if score $gameActive spleef matches 0 run scoreboard players set $shrinkActual spleefBorder 400
execute if score $gameActive spleef matches 0 run scoreboard players reset * spleefQuit
effect clear @a[tag=noNV] night_vision

# racetick
execute if score !gameActive race matches 1 run function main:race/racetick
execute if score !gameActive race matches 0 run scoreboard players set !countDown race 160
#  execute positioned 298 111 -22 run tp @a[tag=tester,distance=..100] -181.5 5 137.5
#  tag @a[tag=!admin] add tester

# sgtick
execute if score ~gameActive sg matches 1 run function main:sg/sgtick
execute if score ~gameActive sg matches 0 run scoreboard players set ~countDown sg 300
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
scoreboard players reset * sgPowerCheck