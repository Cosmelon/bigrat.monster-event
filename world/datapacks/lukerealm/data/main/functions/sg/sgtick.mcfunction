# sg tick file
# everything in here is triggered if ~gameActive sg matches 1,
# so no need to worry about doing that all manually

# scoreboards associated with sg
#  sg - main sg scoreboard, main stuff here
#  sgDeaths - tracks dead players during sg
#  sgBorder - tracks numbers and vars for the sg border
#  sgConstant - Const value for randomizer
#  sgMath - base randomizer scoreboard
#  sgKills - tracks how many kills each player gets
#  sgCreeperTNT - crepper powers
#  sgWitch - witch powers

# countdown
scoreboard players remove ~countDown sg 1
execute if score ~countDown sg matches 200 run title @a title {"text":"10","color":"#40E0D0"}
execute if score ~countDown sg matches 180 run title @a title {"text":"9","color":"#40E0D0"}
execute if score ~countDown sg matches 160 run title @a title {"text":"8","color":"#40E0D0"}
execute if score ~countDown sg matches 140 run title @a title {"text":"7","color":"#40E0D0"}
execute if score ~countDown sg matches 120 run title @a title {"text":"6","color":"#40E0D0"}
execute if score ~countDown sg matches 100 run title @a title {"text":"5","color":"#40E0D0"}
execute if score ~countDown sg matches 80 run title @a title {"text":"4","color":"#40E0D0"}
execute if score ~countDown sg matches 60 run title @a title {"text":"3","color":"#6a0dad"}
execute if score ~countDown sg matches 40 run title @a title {"text":"2","color":"red"}
execute if score ~countDown sg matches 20 run title @a title {"text":"1","color":"gold"}
execute if score ~countDown sg matches 0 run title @a title {"text":"GO!","color":"green"}
execute if score ~countDown sg matches 0 run execute at @a[tag=player] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches -20 run function main:cleartitle

# tracks # of players on a team
execute store result score ~aliveRed sg if entity @a[team=Red,gamemode=!spectator]
execute store result score ~aliveBlue sg if entity @a[team=Blue,gamemode=!spectator]
execute store result score ~aliveGreen sg if entity @a[team=Green,gamemode=!spectator]
execute store result score ~aliveYellow sg if entity @a[team=Yellow,gamemode=!spectator]
execute store result score ~red sgPlayers if entity @a[team=Red]
execute store result score ~blue sgPlayers if entity @a[team=Blue]
execute store result score ~green sgPlayers if entity @a[team=Green]
execute store result score ~yellow sgPlayers if entity @a[team=Yellow]

# shrink bossbar
execute store result bossbar minecraft:sgshrink value run scoreboard players get ~shrinkSec sgBorder
execute store result bossbar minecraft:sgshrinkactual value run scoreboard players get ~shrinkActual sgBorder
scoreboard players remove ~shrinkActual sgBorder 1
execute if score ~shrinkActual sgBorder matches ..0 run bossbar set minecraft:sgshrinkactual visible false
scoreboard players add ~shrinkTick sgBorder 1
execute if score ~shrinkTick sgBorder matches 20.. run scoreboard players remove ~shrinkSec sgBorder 1
execute if score ~shrinkTick sgBorder matches 20.. run scoreboard players set ~shrinkTick sgBorder 0
execute if score ~shrinkSec sgBorder matches ..9 run bossbar set minecraft:sgshrink name [{"text":"Next Shrink Starts In: ","color":"dark_red","bold":true},{"text":"0:0","color":"white"},{"score":{"name":"~shrinkSec","objective":"sgBorder"},"color":"white"}]
execute if score ~shrinkSec sgBorder matches 10.. run bossbar set minecraft:sgshrink name [{"text":"Next Shrink Starts In: ","color":"dark_red","bold":true},{"text":"0:","color":"white"},{"score":{"name":"~shrinkSec","objective":"sgBorder"},"color":"white"}]

# puts dead into spectator
gamemode spectator @a[scores={sgDeaths=1..}]

# team death message
function main:sg/checkdead
# red win
execute if score ~notifBlueDead sg matches 1 run execute if score ~notifGreenDead sg matches 1 run execute if score ~notifYellowDead sg matches 1 run function main:sg/wins/red
# blue win
execute if score ~notifRedDead sg matches 1 run execute if score ~notifGreenDead sg matches 1 run execute if score ~notifYellowDead sg matches 1 run function main:sg/wins/blue
# green win
execute if score ~notifRedDead sg matches 1 run execute if score ~notifBlueDead sg matches 1 run execute if score ~notifYellowDead sg matches 1 run function main:sg/wins/green
# yellow win
execute if score ~notifRedDead sg matches 1 run execute if score ~notifBlueDead sg matches 1 run execute if score ~notifGreenDead sg matches 1 run function main:sg/wins/yellow

# superpowers
function main:sg/rng/range
execute if score ~powersActive sg matches 1 if score ~powerRun sg matches ..9 run function main:sg/superpowers/powerrun
execute if score ~powersActive sg matches 1 run function main:sg/superpowers/main


# effects
#levitation
#  - block: dried kelp, for 5 seconds, amp 5
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:dried_kelp_block run effect give @s minecraft:levitation 5 5 true