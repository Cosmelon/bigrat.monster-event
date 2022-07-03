# Description: Round1 tick file
# Author: Cosmelon
# Type: tick
# run from main:tomb/tbtick when +r1Active tombCore == 1

# countDown before starting
scoreboard players remove +countDown tombR1 1
execute if score +countDown tombR1 matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score +countDown tombR1 matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score +countDown tombR1 matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombR1 matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score +countDown tombR1 matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombR1 matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score +countDown tombR1 matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombR1 matches 0 run title @a title ""
execute if score +countDown tombR1 matches 0 run title @a title {"text":"Start!","color":"dark_red"}
execute if score +countDown tombR1 matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1
#setup spawners
execute if score +countDown tombR1 matches 0 run setblock 5016 34 2 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}},DeathLootTable:"main:entity_empty"} replace
execute if score +countDown tombR1 matches 0 run setblock 5016 34 45 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}},DeathLootTable:"main:entity_empty"} replace
execute if score +countDown tombR1 matches 0 run setblock 5016 34 89 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}},DeathLootTable:"main:entity_empty"} replace
execute if score +countDown tombR1 matches 0 run setblock 5016 34 131 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}},DeathLootTable:"main:entity_empty"} replace

# timeLeft
execute if score +countDown tombR1 matches ..0 run scoreboard players remove +timeLeft tombR1 1
execute store result bossbar tomb:r1timeleft value run scoreboard players get +timeLeft tombR1
execute if score +countDown tombR1 matches 0 run bossbar set tomb:r1timeleft visible true
bossbar set tomb:r1timeleft max 3000
bossbar set tomb:r1timeleft players @a
bossbar set tomb:r1timeleft name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+timeLeft","objective":"tombR1"}}]
#timer convert math
#+tickInput --> #tickMin
scoreboard players operation #rem tombR1Timer = +tickInput tombR1Timer
scoreboard players operation #tickMin tombR1Timer = #rem tombR1Timer
scoreboard players operation #tickMin tombR1Timer /= #minConst tombConst
scoreboard players operation #rem tombR1Timer %= #minConst tombConst
# get sec
scoreboard players operation #tickSec tombR1Timer = #rem convert
scoreboard players operation #tickSec tombR1Timer /= #secConst tombConst
scoreboard players operation #rem tombR1Timer %= #secConst tombConst
# get milli
scoreboard players operation #tickMilli tombR1Timer = #rem convert
scoreboard players operation #tickMilli tombR1Timer *= #milliConst tombConst
scoreboard players operation #rem tombR1Timer %= #milliConst tombConst
# set math scores to named
scoreboard players operation +Min tombR1Timer = #tickMin tombR1Timer
scoreboard players operation +Sec tombR1Timer = #tickSec tombR1Timer
scoreboard players operation +Milli tombR1Timer = #tickMilli tombR1Timer
scoreboard players operation +remainder tombR1Timer = #rem tombR1Timer

# roundend
execute if score +timeLeft tombR1 matches -1 run function main:tomb/round1/finish