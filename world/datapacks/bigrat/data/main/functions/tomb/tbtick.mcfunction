# Description: main tick file for tomb
# Author: Cosmelon
# type: gameTick
# run from: main:tick

# countDown
scoreboard players remove +countDown tombCore 1
execute if score +countDown tombCore matches 1..60 run title @a title {"text":"Starting:","color":"gold"}
execute if score +countDown tombCore matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score +countDown tombCore matches 60 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombCore matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score +countDown tombCore matches 40 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombCore matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score +countDown tombCore matches 20 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.259921 1
execute if score +countDown tombCore matches 0 run title @a title ""
execute if score +countDown tombCore matches 0 run title @a title {"text":"Start!","color":"dark_red"}
execute if score +countDown tombCore matches 0 as @a run playsound minecraft:block.note_block.chime master @s ^0 ^ ^ 1 1.414214 1

# infotext (built in extra time for future infotext)
execute if score +countDown tombCore matches 1400 run function main:tomb/startinfo/text1
execute if score +countDown tombCore matches 1200 run function main:tomb/startinfo/text2
execute if score +countDown tombCore matches 1000 run function main:tomb/startinfo/text3


#make tick files active
#execute if score +r2Active tombCore matches 1 run 
execute if score +r1Active tombCore matches 1 run function main:tomb/round1/main
execute if score +r2Active tombCore matches 1 run function main:tomb/round2/main
execute if score +r3Active tombCore matches 1 run function main:tomb/round3/main
#debug stuff
execute if score +r1Active tombCore matches 0 run scoreboard players set +active tombR1 0
execute if score +r2Active tombCore matches 0 run scoreboard players set +active tombR2 0
execute if score +r3Active tombCore matches 0 run scoreboard players set +active tombR3 0

# kit detect & apply
execute if score +rKActive tombCore matches 1 at @e[tag=tankNPC] as @a[distance=..1,tag=!tankKit] run function main:tomb/kits/tank
execute if score +rKActive tombCore matches 1 at @e[tag=medicNPC] as @a[distance=..1,tag=!medicKit] run function main:tomb/kits/medic
execute if score +rKActive tombCore matches 1 at @e[tag=hunterNPC] as @a[distance=..1,tag=!hunterKit] run function main:tomb/kits/hunter
execute if score +rKActive tombCore matches 1 at @e[tag=gladiatorNPC] as @a[distance=..1,tag=!gladiatorKit] run function main:tomb/kits/gladiator
#ඞඞඞඞඞ
#kitConfirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=-3] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=-7] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=16] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=49] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=84] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=94] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=126] run function main:tomb/kits/confirm
execute if score +rKActive tombCore matches 1 as @a[x=5015,dx=4,y=16,dy=5,z=136] run function main:tomb/kits/confirm

#execute at @e[limit=1,nbt={CustomNameVisible:1b},sort=nearest,type=minecraft:armor_stand] run data modify entity @e[nbt={CustomNameVisible:1b},limit=1,sort=nearest] CustomNameVisible set value 0b