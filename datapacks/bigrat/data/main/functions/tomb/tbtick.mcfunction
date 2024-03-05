# Description: main tick file for tomb
# Author: Cosmelon
# type: gameTick
# run from: main:tick

# countDown
scoreboard players remove +countDown tbCore 1
#execute if score +countDown tombCore matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
#execute if score +countDown tombCore matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
#execute if score +countDown tombCore matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
#execute if score +countDown tombCore matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
#execute if score +countDown tombCore matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
#execute if score +countDown tombCore matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
#execute if score +countDown tombCore matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
#execute if score +countDown tombCore matches 0 run title @a title ""
#execute if score +countDown tombCore matches 0 run title @a title {"text":"Start!","color":"dark_red"}
#execute if score +countDown tombCore matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1

# infotext (built in extra time for future infotext)
execute if score +countDown tombCore matches 1400 run function main:tomb/startinfo/text1
execute if score +countDown tombCore matches 1200 run function main:tomb/startinfo/text2
execute if score +countDown tombCore matches 1000 run function main:tomb/startinfo/text3
execute if score +countDown tombCore matches 800 run function main:tomb/startinfo/text4
execute if score +countDown tombCore matches 600 run function main:tomb/startinfo/text5


#make tick files active
#execute if score +r2Active tombCore matches 1 run 
execute if score +r1Active tbCore matches 1 run function main:tomb/round1/main
execute if score +r2Active tbCore matches 1 run function main:tomb/round2/main
execute if score +r3Active tbCore matches 1 run function main:tomb/round3/main
#debug stuff
execute if score +r1Active tbCore matches 0 run scoreboard players set +active tbR1 0
execute if score +r2Active tbCore matches 0 run scoreboard players set +active tbR2 0
execute if score +r3Active tbCore matches 0 run scoreboard players set +active tbR3 0

# kit detect & apply
execute if score +countDown tbCore matches 0 run function main:tomb/kits/kitselect
execute if score +rKActive tbCore matches 1 at @e[tag=tankNPC] as @a[distance=..1,tag=!tankKit] run function main:tomb/kits/tank
execute if score +rKActive tbCore matches 1 at @e[tag=medicNPC] as @a[distance=..1,tag=!medicKit] run function main:tomb/kits/medic
execute if score +rKActive tbCore matches 1 at @e[tag=hunterNPC] as @a[distance=..1,tag=!hunterKit] run function main:tomb/kits/hunter
execute if score +rKActive tbCore matches 1 at @e[tag=gladiatorNPC] as @a[distance=..1,tag=!gladiatorKit] run function main:tomb/kits/gladiator
#ඞඞඞඞඞ
#kitConfirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=-2.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=7.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=49.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=59.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=104.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=114.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=156.5,tag=hasKit] run function main:tomb/kits/confirm
execute if score +rKActive tbCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=166.5,tag=hasKit] run function main:tomb/kits/confirm

#execute at @e[limit=1,nbt={CustomNameVisible:1b},sort=nearest,type=minecraft:armor_stand] run data modify entity @e[nbt={CustomNameVisible:1b},limit=1,sort=nearest] CustomNameVisible set value 0b
execute store result score +kitConfirm tbCore if entity @a[tag=kitConfirm]
execute if score +rKActive tbCore matches 1 if score +kitConfirm tbCore = .players br_teamCheck run function main:tomb/round1/start

# spawnpoints
execute as @a[tag=player] at @s run spawnpoint @s ~ ~2 ~


# kill count
execute as @a if score @s tb_aKill matches 1.. run scoreboard players add @s tb_iKills 1
execute as @a if score @s tb_aKill matches 1.. run scoreboard players add @s indivScore 1
execute as @a[team=Red,scores={tb_aKill=1..}] run scoreboard players add +red tb_iKills 1
execute as @a[team=Red,scores={tb_aKill=1..}] run scoreboard players add @s tb_iKills 1
execute as @a[team=Blue,scores={tb_aKill=1..}] run scoreboard players add +blue tb_iKills 1
execute as @a[team=Blue,scores={tb_aKill=1..}] run scoreboard players add @s tb_iKills 1
execute as @a[team=Green,scores={tb_aKill=1..}] run scoreboard players add +green tb_iKills 1
execute as @a[team=Green,scores={tb_aKill=1..}] run scoreboard players add @s tb_iKills 1
execute as @a[team=Yellow,scores={tb_aKill=1..}] run scoreboard players add +yellow tb_iKills 1
execute as @a[team=Yellow,scores={tb_aKill=1..}] run scoreboard players add @s tb_iKills 1
execute as @a if score @s tb_aKill matches 1.. run scoreboard players reset @s tb_aKill

# determine kill placement
execute positioned 4983.5 4 -8 as @e[tag=tb_kKeeper] run function main:tomb/teamplace_k

# determine kill placement in team
execute as @a[tag=player] run function main:tomb/teamindiv_k