# Description: Round1 tick file
# Author: Cosmelon
# Type: tick
# run from main:tomb/tbtick when +r1Active tbCore == 1

# countDown before starting
scoreboard players remove +countDown tbR1 1
execute if score +countDown tbR1 matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score +countDown tbR1 matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score +countDown tbR1 matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR1 matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score +countDown tbR1 matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR1 matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score +countDown tbR1 matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tbR1 matches 0 run title @a subtitle ""
execute if score +countDown tbR1 matches 0 run title @a title {"text":"Start!","color":"dark_red"}
execute if score +countDown tbR1 matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1
#setup spawners
execute if score +countDown tbR1 matches 0 run setblock 5016 34 2 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}}} replace
execute if score +countDown tbR1 matches 0 run setblock 5016 34 55 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}}} replace
execute if score +countDown tbR1 matches 0 run setblock 5016 34 109 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}}} replace
execute if score +countDown tbR1 matches 0 run setblock 5016 34 161 minecraft:spawner{SpawnCount:5,MinSpawnDelay:1,MaxSpawnDelay:0,SpawnData:{entity:{id:"zombie"}}} replace

# timeLeft
execute if score +countDown tbR1 matches ..0 run scoreboard players remove +timeLeft tbR1 1
execute store result bossbar tomb:r1timer value run scoreboard players get +timeLeft tbR1
execute if score +countDown tbR1 matches 0 run bossbar set tomb:r1timer visible true
bossbar set tomb:r1timer max 3000
bossbar set tomb:r1timer players @a
execute if score +Min tbR1_Timer matches 1.. if score +Sec tbR1_Timer matches 10.. run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Min","objective":"tbR1_Timer"}},{"text":":"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}}]
execute if score +Min tbR1_Timer matches 1.. if score +Sec tbR1_Timer matches ..9 run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Min","objective":"tbR1_Timer"}},{"text":":0"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}}]
execute if score +Min tbR1_Timer matches 0 if score +Sec tbR1_Timer matches 10.. if score +Milli tbR1_Timer matches 10.. run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}},{"text":"."},{"score":{"name":"+Milli","objective":"tbR1_Timer"}}]
execute if score +Min tbR1_Timer matches 0 if score +Sec tbR1_Timer matches 10.. if score +Milli tbR1_Timer matches ..9 run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}},{"text":".0"},{"score":{"name":"+Milli","objective":"tbR1_Timer"}}]
execute if score +Min tbR1_Timer matches 0 if score +Sec tbR1_Timer matches ..9 if score +Milli tbR1_Timer matches 10.. run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}},{"text":"."},{"score":{"name":"+Milli","objective":"tbR1_Timer"}}]
execute if score +Min tbR1_Timer matches 0 if score +Sec tbR1_Timer matches ..9 if score +Milli tbR1_Timer matches ..9 run bossbar set tomb:r1timer name [{"text":"Time Left: ","color":"dark_red"},{"score":{"name":"+Sec","objective":"tbR1_Timer"}},{"text":".0"},{"score":{"name":"+Milli","objective":"tbR1_Timer"}}]
execute if score +countDown tbR1 matches 0 run bossbar set tomb:r1timer visible true
#timer convert math
scoreboard players operation +tickInput tbR1_Timer = +timeLeft tbR1
#+tickInput --> #tickMin
scoreboard players operation #rem tbR1_Timer = +tickInput tbR1_Timer
scoreboard players operation #tickMin tbR1_Timer = #rem tbR1_Timer
scoreboard players operation #tickMin tbR1_Timer /= #minConst tbConst
scoreboard players operation #rem tbR1_Timer %= #minConst tbConst
## get sec
scoreboard players operation #tickSec tbR1_Timer = #rem tbR1_Timer
scoreboard players operation #tickSec tbR1_Timer /= #secConst tbConst
scoreboard players operation #rem tbR1_Timer %= #secConst tbConst
# get milli
scoreboard players operation #tickMilli tbR1_Timer = #rem tbR1_Timer
scoreboard players operation #tickMilli tbR1_Timer *= #milliConst tbConst
scoreboard players operation #rem tbR1_Timer %= #milliConst tbConst
# set math scores to named
scoreboard players operation +Min tbR1_Timer = #tickMin tbR1_Timer
scoreboard players operation +Sec tbR1_Timer = #tickSec tbR1_Timer
scoreboard players operation +Milli tbR1_Timer = #tickMilli tbR1_Timer
scoreboard players operation +remainder tbR1_Timer = #rem tbR1_Timer

# dead players
execute as @a[scores={tbR1_Deaths=1},tag=player] run gamemode spectator
execute as @a[scores={tbR1_Deaths=1},tag=player] run scoreboard players remove @s indivScore 3
execute as @a[scores={tbR1_Deaths=1},tag=player] run tellraw @s {"text":"» -3 pts (death)","color":"red"}
execute as @a[scores={tbR1_Deaths=1},tag=player] run scoreboard players set @s tbR1_Deaths 100
execute as @a[scores={tbR1_Deaths=2},tag=player] run function main:tomb/round1/respawn
execute as @a[scores={tbR1_Deaths=3..101},tag=player] run scoreboard players remove @s tbR1_Deaths 1

# spectator pen
# COSMELON - I HAVE NO IDEA WHAT IS FUCKING WITH THIS SHELVE IT FOR LATER
#execute positioned 5016.5 42 2.5 run tp @a[gamemode=spectator,team=!Admin,distance=18..20] 5016.5 36 2.5
#execute positioned 5016.5 42 55.5 run tp @a[gamemode=spectator,team=!Admin,distance=18..20] 5016.5 36 55.5
#execute positioned 5016.5 42 109.5 run tp @a[gamemode=spectator,team=!Admin,distance=18..20] 5016.5 36 109.5
#execute positioned 5016.5 42 161.5 run tp @a[gamemode=spectator,team=!Admin,distance=18..20] 5016.5 36 161.5
#execute as @a[gamemode=spectator,scores={yCos=..32},team=!Admin] at @s run tp @s ~ ~5 ~
#execute as @a[gamemode=spectator,scores={yCos=49..},team=!Admin] at @s run tp @s ~ ~-5 ~

# roundend
execute if score +timeLeft tbR1 matches 0 run function main:tomb/round1/finish