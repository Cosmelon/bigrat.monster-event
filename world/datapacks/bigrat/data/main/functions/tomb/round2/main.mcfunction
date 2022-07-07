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

# wave start
execute if score +countDown tbR2 matches 0 run function main:tomb/round2/red/room1_s

#execute positioned 5059.5 42 2.5 store result score +zombies tbR2_r1w1Red if entity @e[type=zombie,distance=..12]

#execute positioned 5059.5 42 2.5 run function main:tomb/round2/red/room1_t
#execute positioned 5059.5 42 2.5 store result score +zombies tbR2_r1w1Red if entity @e[type=zombie,distance=..12]

# manage OTHER tick files
execute if score +active tbR2_RedR1 matches 1 run function main:tomb/round2/red/room1_t