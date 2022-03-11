# DIGGY DIGGY HOLE
# so basically its a fossil digging type game where players are released into a prison mining pit and they have to find treasure
# in the pit and deposit it at the top and they would only have a certain amount of time before they got blindness because their
# flashlight ran out or something 
#  have a noteblock recreation of diggy diggy hole at the beginning

effect give @a saturation 100000 0 true

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

execute if score $gameActive spleef matches 0 run execute if score !gameActive race matches 0 run execute if score ~gameActive sg matches 0 run spawnpoint @a -181 5 137
execute if score $gameActive spleef matches 0 run execute if score !gameActive race matches 0 run execute if score ~gameActive sg matches 0 run setworldspawn -181 5 137

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

# racetick
execute if score !gameActive race matches 1 run function main:race/racetick
execute if score !gameActive race matches 0 run scoreboard players set !countDown race 160

# sgtick
execute if score ~gameActive sg matches 1 run function main:sg/sgtick
execute if score ~gameActive sg matches 0 run scoreboard players set ~countDown sg 300