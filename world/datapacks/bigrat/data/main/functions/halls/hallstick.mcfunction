# Description: backrooms main tick
# Author: Cosmelon
# Type: tick
# run from main:tick

# countDown
scoreboard players remove ~countDown hallCore 1
execute if score ~countDown hallCore matches 0..60 run title @a title {"text":"Starting in:","color":"gold"}
execute if score ~countDown hallCore matches 60 run title @a subtitle {"text":">  3  <","color":"red"}
execute if score ~countDown hallCore matches 60 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallCore matches 40 run title @a subtitle {"text":"> 2 <","color":"yellow"}
execute if score ~countDown hallCore matches 40 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallCore matches 20 run title @a subtitle {"text":">1<","color":"green"}
execute if score ~countDown hallCore matches 20 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallCore matches 0 run title @s subtitle {"text":"Go!","color":"red"}
execute if score ~countDown hallCore matches 0 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.414214

# remove box
execute if score ~countDown hallCore matches 1 run fill -979 27 1046 -974 21 1041 air replace barrier
execute if score ~countDown hallCore matches -1 run fill -983 26 1037 -970 22 1050 air replace tinted_glass