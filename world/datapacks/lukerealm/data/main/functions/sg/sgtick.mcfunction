# sg tick file
# everything in here is triggered if ~gameActive sg matches 1,
# so no need to worry about doing that all manually

# scoreboards associated with sg
#  sg - main sg scoreboard, main stuff here
#  sgDeaths - tracks dead players during sg

title @a times 0 25 10

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
execute if score ~countDown sg matches 0 run execute at @a[team=Red] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches 0 run execute at @a[team=Blue] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches 0 run execute at @a[team=Green] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches 0 run execute at @a[team=Yellow] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
execute if score ~countDown sg matches -20 run function main:cleartitle

# tracks # of players on a team
execute store result score ~aliveRed sg if entity @a[team=Red,gamemode=!spectator]
execute store result score ~aliveBlue sg if entity @a[team=Blue,gamemode=!spectator]
execute store result score ~aliveGreen sg if entity @a[team=Green,gamemode=!spectator]
execute store result score ~aliveYellow sg if entity @a[team=Yellow,gamemode=!spectator]

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

# effects
#levitation
#  - block: dried kelp, for 5 seconds, amp 5
execute as @a run execute positioned as @s if block ~ ~-1 ~ minecraft:dried_kelp_block run effect give @s minecraft:levitation 5 5 true