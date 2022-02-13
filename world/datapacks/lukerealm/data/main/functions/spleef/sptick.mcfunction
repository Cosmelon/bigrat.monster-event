# spleef tick stuff, be careful!

# scoreboards associated with spleef:
#  spleef - main scoreboard for spleef
#  spleefDeaths - tracks spleef deaths; note - dont have a use for it yet
#  spleefSnowBall - tracks spleef giving snowball stuff
#  spleef_sb - tracks snowballs
#  spleefBorder - worldborder stuff
#  spleefQuit - tracks logouts during spleef

# prevents players from going out of the arena
execute if score $gameActive spleef matches 1 run execute positioned -496 45 -461 run tp @a[gamemode=spectator,team=!Admin,distance=40..70] -497 69 -461

# sets time of day
execute if score $gameActive spleef matches 1 run time set midnight

# spawnpoint during game
execute if score $gameActive spleef matches 1 run spawnpoint @a -496 66 -459

# syncs bossbars with scoreboard
execute store result bossbar minecraft:spleefroundcount value run scoreboard players get $round spleef
execute store result bossbar minecraft:shrink1timer value run scoreboard players get $shrink1Timer spleefBorder
execute store result bossbar minecraft:shrink2timer value run scoreboard players get $shrink2Timer spleefBorder
execute store result bossbar minecraft:shrink3timer value run scoreboard players get $shrink3Timer spleefBorder
execute store result bossbar minecraft:shrinkactual value run scoreboard players get $shrinkActual spleefBorder

# updates round count bossbar name
execute if score $round spleef matches 1 run bossbar set minecraft:spleefroundcount name {"text":"Round: 1/3","bold":true}
execute if score $round spleef matches 2 run bossbar set minecraft:spleefroundcount name {"text":"Round: 2/3","bold":true}
execute if score $round spleef matches 3 run bossbar set minecraft:spleefroundcount name {"text":"Round: 3/3","bold":true}

# does the countdown timer
execute if score $gameActive spleef matches 0 run scoreboard players set $countDown spleef 160
execute if score $gameActive spleef matches 1 run scoreboard players remove $countDown spleef 1
execute if score $gameActive spleef matches 1 run title @a times 0 25 5
execute if score $countDown spleef matches 60 run title @a title {"text":"3","color":"red"}
execute if score $countDown spleef matches 60 run playsound minecraft:block.note_block.guitar master @a ^0 ^ ^ 1 0.749154 1
execute if score $countDown spleef matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score $countDown spleef matches 40 run playsound minecraft:block.note_block.guitar master @a ^0 ^ ^ 1 0.749154 1
execute if score $countDown spleef matches 20 run title @a title {"text":"1","color":"green"}
execute if score $countDown spleef matches 20 run playsound minecraft:block.note_block.guitar master @a ^0 ^ ^ 1 0.749154 1
execute if score $countDown spleef matches 0 run title @a title {"text":"Spread out!","color":"red"}
execute if score $countDown spleef matches 0 run playsound minecraft:block.note_block.guitar master @a ^0 ^ ^ 1 1.122462 1
execute if score $countDown spleef matches 0 run fill -491 60 -467 -503 65 -455 minecraft:air
execute if score $countDown spleef matches -40 run function main:cleartitle

# kills people who fell off L
execute if score $gameActive spleef matches 1 run execute positioned -497 0 -461 run kill @a[distance=..32]

# tracks # of players on a team
# alive:
execute store result score $aliveRed spleef if entity @a[team=Red,gamemode=!spectator]
execute store result score $aliveBlue spleef if entity @a[team=Blue,gamemode=!spectator]
execute store result score $aliveGreen spleef if entity @a[team=Green,gamemode=!spectator]
execute store result score $aliveYellow spleef if entity @a[team=Yellow,gamemode=!spectator]

# transfers dead players to spectator
execute if score $gameActive spleef matches 1 run gamemode spectator @a[scores={spleefDeaths=1}]

# kills ground snowballs
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]

# snowball get on block break
execute as @a[scores={spleefSnowBall=1..}] run give @s snowball 1
scoreboard players reset * spleefSnowBall

# snowball break blocks
execute if score $gameActive spleef matches 1 run function main:spleef/snowball

# yeets snow blocks made by players
execute if score $gameActive spleef matches 1 run clear @a minecraft:snow_block

# weakness when holding shovel
execute if score $gameActive spleef matches 1 run effect give @a weakness 1 255 true
execute if score $gameActive spleef matches 1 run execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect clear @s minecraft:weakness

# does team death messaage
execute if score $gameActive spleef matches 1 run function main:spleef/checkdead
# red win
execute if score $gameActive spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/red
# blue win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/blue
# green win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/green
# yellow win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run function main:spleef/wins/yellow

# border
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink1Timer spleefBorder 1900
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink2Timer spleefBorder 3400
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink3Timer spleefBorder 5000
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink1Timer spleefBorder 1
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink2Timer spleefBorder 1
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink3Timer spleefBorder 1

# shrink timer bossbars
execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 600 run bossbar set minecraft:shrink1timer visible true
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 600 run bossbar set minecraft:shrink2timer visible true
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 600 run bossbar set minecraft:shrink3timer visible true
execute if score $gameActive spleef matches 1 run function main:spleef/border/shrinkcountdown

execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 0 run bossbar set minecraft:shrink1timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 0 run bossbar set minecraft:shrink2timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 0 run bossbar set minecraft:shrink3timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 0 run function main:spleef/border/shrink1
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 0 run function main:spleef/border/shrink2
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 0 run function main:spleef/border/shrink3
# trigger shrinkActual
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrinkActual spleefBorder 1
execute if score $gameActive spleef matches 0 run scoreboard players set $shrinkActual spleefBorder 400
execute if score $gameActive spleef matches 1 run execute if score $shrinkActual spleefBorder matches 0 run bossbar set minecraft:shrinkactual visible false
#remove blocks
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink1conc
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink2conc
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink3conc

# Making players leave their teams when they leave the game
execute if score $gameActive spleef matches 1 run execute as @a[scores={Quit=1..},team=!Admin] run gamemode spectator @s
execute if score $gameActive spleef matches 1 run execute as @a[scores={Quit=1..}] run tellraw @s {"text":"You were killed because of a disconnect","color":"dark_gray"}
execute if score $gameActive spleef matches 1 run execute as @a[scores={Quit=1..}] run scoreboard players set @s spleefQuit 0
execute if score $gameActive spleef matches 1 run execute as @a[scores={Quit=1..}] run clear @a
execute if score $gameActive spleef matches 0 run scoreboard players reset @a spleefQuit