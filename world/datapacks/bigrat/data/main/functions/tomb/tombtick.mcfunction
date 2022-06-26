# Description: main tick file for tomb
# Author: Cosmelon
# type: gameTick
# run from: main:tick

# countDown
scoreboard players remove +countDown tomb 1
execute if score +countDown tomb matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score +countDown tomb matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score +countDown tomb matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tomb matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score +countDown tomb matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tomb matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score +countDown tomb matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tomb matches 0 run title @a title ""
execute if score +countDown tomb matches 0 run title @a title {"text":"Start!","color":"dark_red"}
execute if score +countDown tomb matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1

