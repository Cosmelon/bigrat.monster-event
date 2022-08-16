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
#red
execute positioned 5059.5 42 2.5 store result score +redR1 tbR2_PC if entity @a[team=Red,distance=..13]
execute positioned 5095.5 41 2.5 store result score +redR2 tbR2_PC if entity @a[team=Red,distance=..20]
execute positioned 5144.5 37 2.5 store result score +redR3 tbR2_PC if entity @a[team=Red,distance=..21]
#blue
execute positioned 5059.5 42 55.5 store result score +blueR1 tbR2_PC if entity @a[team=Blue,distance=..13]
execute positioned 5095.5 41 55.5 store result score +blueR2 tbR2_PC if entity @a[team=Blue,distance=..20]
execute positioned 5144.5 37 55.5 store result score +blueR3 tbR2_PC if entity @a[team=Blue,distance=..21]
#green
execute positioned 5059.5 42 108.5 store result score +greenR1 tbR2_PC if entity @a[team=Green,distance=..13]
execute positioned 5095.5 41 108.5 store result score +greenR2 tbR2_PC if entity @a[team=Green,distance=..20]
execute positioned 5144.5 37 108.5 store result score +greenR3 tbR2_PC if entity @a[team=Green,distance=..21]
#yellow
execute positioned 5059.5 42 161.5 store result score +yellowR1 tbR2_PC if entity @a[team=Yellow,distance=..13]
execute positioned 5095.5 41 161.5 store result score +yellowR2 tbR2_PC if entity @a[team=Yellow,distance=..20]
execute positioned 5144.5 37 161.5 store result score +yellowR3 tbR2_PC if entity @a[team=Yellow,distance=..21]

# wave start
#red
execute unless score .red teamCheck matches 0 if score +countDown tbR2 matches 0 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1_s
execute unless score .red teamCheck matches 0 if score +redR2 tbR2_PC = .red teamCheck if score +wave tbR2_RedR2 matches 0 run function main:tomb/round2/red/r2_s
execute unless score .red teamCheck matches 0 if score +redR3 tbR2_PC = .red teamCheck if score +wave tbR2_RedR3 matches 0 run function main:tomb/round2/red/r3_s
#blue
execute unless score .blue teamCheck matches 0 if score +countDown tbR2 matches 0 positioned 5059.5 42 55.5 run function main:tomb/round2/blue/r1_s
execute unless score .blue teamCheck matches 0 if score +blueR2 tbR2_PC = .blue teamCheck if score +wave tbR2_BlueR2 matches 0 run function main:tomb/round2/blue/r2_s
execute unless score .blue teamCheck matches 0 if score +blueR3 tbR2_PC = .blue teamCheck if score +wave tbR2_BlueR3 matches 0 run function main:tomb/round2/blue/r3_s
#green
execute unless score .green teamCheck matches 0 if score +countDown tbR2 matches 0 positioned 5059.5 42 108.5 run function main:tomb/round2/green/r1_s
execute unless score .green teamCheck matches 0 if score +greenR2 tbR2_PC = .green teamCheck if score +wave tbR2_GreenR2 matches 0 run function main:tomb/round2/green/r2_s
execute unless score .green teamCheck matches 0 if score +greenR3 tbR2_PC = .green teamCheck if score +wave tbR2_GreenR3 matches 0 run function main:tomb/round2/green/r3_s
#yellow
execute unless score .yellow teamCheck matches 0 if score +countDown tbR2 matches 0 positioned 5059.5 42 161.5 run function main:tomb/round2/yellow/r1_s
execute unless score .yellow teamCheck matches 0 if score +yellowR2 tbR2_PC = .yellow teamCheck if score +wave tbR2_YellowR2 matches 0 run function main:tomb/round2/yellow/r2_s
execute unless score .yellow teamCheck matches 0 if score +yellowR3 tbR2_PC = .yellow teamCheck if score +wave tbR2_YellowR3 matches 0 run function main:tomb/round2/yellow/r3_s

## manage OTHER tick files
#red
execute if score +active tbR2_RedR1 matches 1 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1_t
execute if score +active tbR2_RedR2 matches 1 positioned 5095.5 41 2.5 run function main:tomb/round2/red/r2_t
execute if score +active tbR2_RedR3 matches 1 positioned 5144.5 37 2.5 run function main:tomb/round2/red/r3_t
#blue
execute if score +active tbR2_BlueR1 matches 1 positioned 5059.5 42 55.5 run function main:tomb/round2/blue/r1_t
execute if score +active tbR2_BlueR2 matches 1 positioned 5095.5 42 55.5 run function main:tomb/round2/blue/r2_t
execute if score +active tbR2_BlueR3 matches 1 positioned 5144.5 42 55.5 run function main:tomb/round2/blue/r3_t
#green
execute if score +active tbR2_GreenR1 matches 1 positioned 5059.5 42 108.5 run function main:tomb/round2/green/r1_t
execute if score +active tbR2_GreenR2 matches 1 positioned 5095.5 42 108.5 run function main:tomb/round2/green/r2_t
execute if score +active tbR2_GreenR3 matches 1 positioned 5144.5 42 108.5 run function main:tomb/round2/green/r3_t
#yellow
execute if score +active tbR2_YellowR1 matches 1 positioned 5059.5 42 161.5 run function main:tomb/round2/yellow/r1_t
execute if score +active tbR2_YellowR2 matches 1 positioned 5095.5 42 161.5 run function main:tomb/round2/yellow/r2_t
execute if score +active tbR2_YellowR3 matches 1 positioned 5144.5 42 161.5 run function main:tomb/round2/yellow/r3_t

## deaths
gamemode spectator @a[scores={tbR2_Deaths=1}]
scoreboard players remove @a[scores={tbR2_Deaths=1}] indivScore 10
tellraw @a[scores={tbR2_Deaths=1}] "-10 pts (death)"
scoreboard players set @a[scores={tbR2_Deaths=1}] tbR2_Deaths 100
scoreboard players remove @a[scores={tbR2_Deaths=3..}] tbR2_Deaths 1
gamemode adventure @a[scores={tbR2_Deaths=2}]
#red
execute if score +active tbR2_RedR1 matches 1 as @a[team=Red,scores={tbR2_Deaths=2}] run tp @s 5059.5 40 2.5
execute if score +active tbR2_RedR2 matches 1 as @a[team=Red,scores={tbR2_Deaths=2}] run tp @s 5095.5 40 2.5
execute if score +active tbR2_RedR3 matches 1 as @a[team=Red,scores={tbR2_Deaths=2}] run tp @s 5144.5 37 2.5
#blue
execute if score +active tbR2_BlueR1 matches 1 as @a[team=Blue,scores={tbR2_Deaths=2}] run tp @s 5059.5 42 55.5
execute if score +active tbR2_BlueR2 matches 1 as @a[team=Blue,scores={tbR2_Deaths=2}] run tp @s 5095.5 42 55.5
execute if score +acitve tbR2_BlueR3 matches 1 as @a[team=Blue,scores={tbR2_Deaths=2}] run tp @s 5144.5 42 55.5
#green
execute if score +active tbR2_GreenR1 matches 1 as @a[team=Green,scores={tbR2_Deaths=2}] run tp @s 5059.5 42 108.5
execute if score +active tbR2_GreenR2 matches 1 as @a[team=Green,scores={tbR2_Deaths=2}] run tp @s 5095.5 42 108.5
execute if score +acitve tbR2_GreenR3 matches 1 as @a[team=Green,scores={tbR2_Deaths=2}] run tp @s 5144.5 42 108.5
#yellow
execute if score +active tbR2_YellowR1 matches 1 as @a[team=Yellow,scores={tbR2_Deaths=2}] run tp @s 5059.5 42 161.5
execute if score +active tbR2_YellowR2 matches 1 as @a[team=Yellow,scores={tbR2_Deaths=2}] run tp @s 5095.5 42 161.5
execute if score +acitve tbR2_YellowR3 matches 1 as @a[team=Yellow,scores={tbR2_Deaths=2}] run tp @s 5144.5 42 161.5

scoreboard players reset @a[scores={tbR2_Deaths=2}] tbR2_Deaths 


# tomb click
scoreboard players set @a[team=Yellow] tbR2_click 0
