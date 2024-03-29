# Description: SG tick stuff
# Author: Cosmelon
# Type: main_tick
# run from main:tick when ~gameActive sg == 1

# scoreboards associated with sg
#  sg - main sg scoreboard, main stuff here
#  sgDeaths - tracks dead players during sg
#  sgBorder - tracks numbers and vars for the sg border
#  sgConstant - Const value for randomizer
#  sgMath - base randomizer scoreboard
#  sgKills - tracks how many kills each player gets
#  sgCreeperTNT - crepper powers
#  sgWitch - witch powers
#  sgLeprechaun - leprechaun powers
#  sgMedic - medic thing
#  sgPyro - pyro powers

# countdown
scoreboard players remove ~countDown sg 1
execute if score ~countDown sg matches 1..200 run title @a title {"text":"Starting in:","color":"gold"}
execute if score ~countDown sg matches 200 run title @a subtitle {"text":"10","color":"#40E0D0"}
execute if score ~countDown sg matches 180 run title @a subtitle {"text":"9","color":"#40E0D0"}
execute if score ~countDown sg matches 160 run title @a subtitle {"text":"8","color":"#40E0D0"}
execute if score ~countDown sg matches 140 run title @a subtitle {"text":"7","color":"#40E0D0"}
execute if score ~countDown sg matches 120 run title @a subtitle {"text":"6","color":"#40E0D0"}
execute if score ~countDown sg matches 100 run title @a subtitle {"text":"5","color":"#40E0D0"}
execute if score ~countDown sg matches 80 run title @a subtitle {"text":"4","color":"#40E0D0"}
execute if score ~countDown sg matches 60 run title @a subtitle {"text":"3","color":"#6a0dad"}
execute if score ~countDown sg matches 60 run playsound minecraft:block.note_block.chime master @a ^ ^ ^ 
execute if score ~countDown sg matches 40 run title @a subtitle {"text":"2","color":"red"}
execute if score ~countDown sg matches 40 run playsound minecraft:block.note_block.chime master @a ^ ^ ^ 
execute if score ~countDown sg matches 20 run title @a subtitle {"text":"1","color":"gold"}
execute if score ~countDown sg matches 20 run playsound minecraft:block.note_block.chime master @a ^ ^ ^ 
execute if score ~countDown sg matches 0 run title @a title {"text":"GO!","color":"green"}
execute if score ~countDown sg matches 0 run playsound minecraft:block.note_block.chime master @a ^ ^ ^ 
execute if score ~countDown sg matches 0 run execute at @a[tag=player] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches -10 run function main:cleartitle
execute if score ~countDown sg matches -10 run function main:sg/superpowers/powersetup

# tracks # of players on a team
execute store result score ~aliveRed sg if entity @a[team=Red,gamemode=!spectator]
execute store result score ~aliveBlue sg if entity @a[team=Blue,gamemode=!spectator]
execute store result score ~aliveGreen sg if entity @a[team=Green,gamemode=!spectator]
execute store result score ~aliveYellow sg if entity @a[team=Yellow,gamemode=!spectator]

# shrink bossbar
execute store result bossbar minecraft:sgshrink value run scoreboard players get ~shrinkWarn sgBorder
execute store result bossbar minecraft:sgshrinkactual value run scoreboard players get ~shrinkActual sgBorder
scoreboard players remove ~shrinkWarn sgBorder 1
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
execute if score ~powersActive sg matches 1 if score ~countDown sg matches ..0 run function main:sg/superpowers/main

# spectator border
execute positioned -1983.5 133 -1983.5 run tellraw @a[distance=150..,team=!Admin,gamemode=spectator] {"text":"No peeking!","color":"gray"}
execute positioned -1983.5 133 -1983.5 run tp @a[distance=150..,team=!Admin,gamemode=spectator] -1983.5 133 -1983.5

# effects
#levitation
#  - block: dried kelp, for 5 seconds, amp 5
execute as @a[gamemode=adventure] run execute positioned as @s if block ~ ~-1 ~ minecraft:dried_kelp_block run effect give @s minecraft:levitation 5 5 true

# killing players when they disconnect mid-game
execute as @a[scores={br_online=1..},team=!Admin] run gamemode spectator @s
execute as @a[scores={br_online=1..},tag=player] run scoreboard players set @s sgDeaths 1
execute as @a[scores={br_online=1..},tag=player] run tellraw @s {"text":"You were killed because of a disconnect!","color":"dark_gray"}