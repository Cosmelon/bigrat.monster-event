# Description: Round2 tick file
# Author: Cosmelon
# Type: tick
# run from main:tomb/tbtick when +r2Active tbCore == 1

# countDown
scoreboard players remove +countDown tbR2 1
execute if score +countDown tbR2 matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score +countDown tbR2 matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score +countDown tbR2 matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR2 matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score +countDown tbR2 matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR2 matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score +countDown tbR2 matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR2 matches 0 run title @a title ""
execute if score +countDown tbR2 matches 0 run title @a title {"text":"Start!","color":"dark_red"}
execute if score +countDown tbR2 matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1

# tbR2_PC (playerCount)
#  using this to determine player positions and start rounds automatically
##  will need to tune these distances later  ##
execute positioned 5059.5 42 2.5 store result score +redR1 tbR2_PC if entity @a[team=Red,distance=..13]
execute positioned 5095.5 41 2.5 store result score +redR2 tbR2_PC if entity @a[team=Red,distance=..20]

# wave start
execute if score +countDown tbR2 matches 0 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1_s
execute if score +redR2 tbR2_PC = .red teamCheck if score +wave tbR2_RedR2 matches 0 run function main:tomb/red/r2_s

#execute positioned 5059.5 42 2.5 store result score +zombies tbR2_r1w1Red if entity @e[type=zombie,distance=..12]

#execute positioned 5059.5 42 2.5 run function main:tomb/round2/red/room1_t
#execute positioned 5059.5 42 2.5 store result score +zombies tbR2_r1w1Red if entity @e[type=zombie,distance=..12]

# manage OTHER tick files
execute if score +active tbR2_RedR1 matches 1 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1_t
execute if score +active tbR2_RedR2 matches 1 positioned 5095.5 41 2.5 run function main:tomb/round2/red/r2_t

# deaths
gamemode spectator @a[scores={tbR2_Deaths=1}]
scoreboard players remove @a[scores={tbR2_Deaths=1}] indivScore 10
tellraw @a[scores={tbR2_Deaths=1}] "-10 pts (death)"
scoreboard players set @a[scores={tbR2_Deaths=1}] tbR2_Deaths 100
scoreboard players remove @a[scores={tbR2_Deaths=3..}] tbR2_Deaths 1
gamemode adventure @a[scores={tbR2_Deaths=2}]
execute if score +active tbR2_RedR1 matches 1 as @a[scores={tbR2_Deaths=2}] run tp @s 5059.5 40 2.5
execute if score +active tbR2_RedR2 matches 1 as @a[scores={tbR2_Deaths=2}] run tp @s 5095.5 40 2.5

scoreboard players reset @a[scores={tbR2_Deaths=2}] tbR2_Deaths 