# spleef tick stuff, be careful!

# scoreboards associated with spleef:
#  spleef - main scoreboard for spleef
#  spleefDeaths - tracks spleef deaths; note - dont have a use for it yet
#  spleefSnowBall - tracks spleef giving snowball stuff
#  spleef_sb - tracks snowballs

# sets time of day
execute if score $gameActive spleef matches 1 run time set midnight

# spawnpoint during game
execute if score $gameActive spleef matches 1 run spawnpoint @a -496 66 -459

# syncs bossbars with scoreboard
execute store result bossbar minecraft:spleefroundcount value run scoreboard players get $round spleef
execute store result bossbar minecraft:shrink1timer value run scoreboard players get $shrink1Timer spleef

# updates round count bossbar name
# execute if score $round spleef matches 0 run bossbar set minecraft:spleefroundcount name {"text":"Round: 0/3","bold":true}
execute if score $round spleef matches 1 run bossbar set minecraft:spleefroundcount name {"text":"Round: 1/3","bold":true}
execute if score $round spleef matches 2 run bossbar set minecraft:spleefroundcount name {"text":"Round: 2/3","bold":true}
execute if score $round spleef matches 3 run bossbar set minecraft:spleefroundcount name {"text":"Round: 3/3","bold":true}

# does the countdown timer
execute if score $gameActive spleef matches 0 run scoreboard players set $countDown spleef 160
execute if score $gameActive spleef matches 1 run scoreboard players remove $countDown spleef 1
execute if score $gameActive spleef matches 1 run title @a times 0 25 5
execute if score $countDown spleef matches 60 run title @a title {"text":"3","color":"red"}
execute if score $countDown spleef matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score $countDown spleef matches 20 run title @a title {"text":"1","color":"green"}
execute if score $countDown spleef matches 0 run title @a title {"text":"Spread out!","color":"red"}
execute if score $countDown spleef matches 0 run fill -491 60 -467 -503 65 -455 minecraft:air
execute if score $countDown spleef matches -40 run title @a title ""

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
execute if score $gameActive spleef matches 0 run worldborder center 0 0
execute if score $gameActive spleef matches 0 run worldborder set 30000000 1
execute if score $gameActive spleef matches 1 run worldborder center -497 -461
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink1Timer spleef 2100
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink1Timer spleef 1


# Making players leave their teams when they leave the game
# execute as @a[scores={Quit=1..}] run team leave @s
# execute as @a[scores={Quit=1..}] run execute if score $game GameActive matches 1 run tp @s 1 22 17
# execute as @a[scores={Quit=1..}] run execute if score $game GameActive matches 0 run tp @s 0 100 0
# execute as @a[scores={Quit=1..}] run tellraw @s {"text":"You were kicked from your team because you left the game.","color":"dark_gray"}
# execute as @a[scores={Quit=1..}] run scoreboard players set @s Quit 0
# execute as @a[scores={Quit=1..}] run clear @s