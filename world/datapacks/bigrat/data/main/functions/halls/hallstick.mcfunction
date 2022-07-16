# Description: backrooms main tick
# Author: Cosmelon
# Type: tick
# run from main:tick

# countDown
scoreboard players remove ~countDown hallsCore 1
execute if score ~countDown hallsCore matches 0..60 run title @a title {"text":"Starting in:","color":"gold"}
execute if score ~countDown hallsCore matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score ~countDown hallsCore matches 60 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallsCore matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score ~countDown hallsCore matches 40 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallsCore matches 20 run title @a subtitle {"text":"> 1  <","color":"green"}
execute if score ~countDown hallsCore matches 20 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallsCore matches 0 run title @a title ""
execute if score ~countDown hallsCore matches 0 run title @a subtitle {"text":"Go!","color":"red"}
execute if score ~countDown hallsCore matches 0 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.414214

# remove box
execute if score ~countDown hallsCore matches 1 run fill -979 27 1046 -974 21 1041 air replace barrier
execute if score ~countDown hallsCore matches -1 run fill -983 26 1037 -970 22 1050 air replace tinted_glass

# warden release
bossbar set halls:wrelease players @a
execute store result bossbar halls:wrelease value run scoreboard players get ~wRelease hallsCore 
execute if score ~countDown hallsCore matches -10 run bossbar set halls:wrelease visible true
execute if score ~countDown hallsCore matches ..-10 run scoreboard players remove ~wRelease hallsCore 1
execute if score ~wRelease hallsCore matches 0 run function main:halls/wrelease

# sneak prevention
scoreboard players add @a[tag=player,tag=hallsAlive,predicate=main:sneak_state] halls_sneak 1
tellraw @a[tag=player,scores={halls_sneak=100..}] {"text":"\n-5 points (sneaking like a lil bitch)\n","color":"dark_red"}
scoreboard players remove @a[tag=player,scores={halls_sneak=100..}] indivScore 5
scoreboard players reset @a[tag=player,scores={halls_sneak=100..}] halls_sneak

# spawnpoint
execute as @a at @s run spawnpoint @s ~ ~2 ~

# death tag management
tag @a[tag=player,scores={halls_death=0}] add hallsAlive
tag @a[tag=player,scores={halls_death=0}] remove hallsDead
tag @a[tag=player,scores={halls_death=1..}] add hallsDead
tag @a[tag=player,scores={halls_death=1..}] remove hallsAlive
# respawn
gamemode spectator @a[tag=player,tag=hallsDead]
scoreboard players set @a[tag=player,scores={halls_death=1}] halls_death 200
scoreboard players remove @a[tag=player,scores={halls_death=2..}] halls_death 1
execute as @a[scores={halls_death=2}] run function main:halls/respawn
# until respawn
execute as @a[scores={halls_death=60}] run title @s actionbar {"text":"Until respawn: 3","color":"gold"}
execute as @a[scores={halls_death=40}] run title @s actionbar {"text":"Until respawn: 2","color":"gold"}
execute as @a[scores={halls_death=20}] run title @s actionbar {"text":"Until respawn: 1","color":"gold"}
execute as @a[scores={halls_death=2}] run title @s actionbar {"text":"Until respawn: 0","color":"gold"}

# shower room
#execute positioned -1000 22 993 run particle minecraft:falling_water ~ ~2.35 ~0.08

# find the remote
execute as @a[x=-933,y=21,z=1028,dx=6,dy=6,dz=6] run scoreboard players reset @s halls_remote
item replace entity @a[scores={halls_remote=6}] inventory.13 with lever{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}
item replace entity @a[scores={halls_remote=1..5}] inventory.13 with air
scoreboard players set @a[scores={halls_remote=6}] halls_remote 0
execute as @a[nbt={Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s add remoteHolder
execute as @a[tag=remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run tag @s add holdingRemote
execute as @a[tag=remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingRemote
execute as @a[nbt=!{Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s remove remoteHolder
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]




# halls_remote
scoreboard players reset @a halls_remote