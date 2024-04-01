# Description: backrooms main tick
# Author: Cosmelon
# Type: tick
# run from main:tick

# countDown
scoreboard players remove .countDown halls_main 1
execute if score .countDown halls_main matches 0..60 run title @a title {"text":"Starting in:","color":"gold"}
execute if score .countDown halls_main matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score .countDown halls_main matches 60 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score .countDown halls_main matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score .countDown halls_main matches 40 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score .countDown halls_main matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score .countDown halls_main matches 20 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score .countDown halls_main matches 0 run title @a title ""
execute if score .countDown halls_main matches 0 run title @a subtitle {"text":"Go!","color":"red"}
execute if score .countDown halls_main matches 0 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.414214
# warden bossbar
execute if score .countDown halls_main matches 0 run bossbar add halls:wrelease "time until monster release"
execute if score .countDown halls_main matches 0 run bossbar set halls:wrelease style notched_12
execute if score .countDown halls_main matches 0 run bossbar set halls:wrelease max 100
# warden release
bossbar set halls:wrelease players @a
execute store result bossbar halls:wrelease value run scoreboard players get .wRelease halls_main 
execute if score .countDown halls_main matches -10 run bossbar set halls:wrelease visible true
execute if score .countDown halls_main matches ..-10 run scoreboard players remove .wRelease halls_main 1
execute if score .wRelease halls_main matches 0 run function main:halls/wrelease
# respawn warden
execute positioned -976.001 22 1044.001 store result score .red_warden halls_main if entity @e[type=warden,distance=..100]
execute positioned -1206.001 22 1044.001 store result score .blue_warden halls_main if entity @e[type=warden,distance=..100]
execute positioned -1436.001 22 1044.001 store result score .green_warden halls_main if entity @e[type=warden,distance=..100]
execute positioned -1666.001 22 1044.001 store result score .yellow_warden halls_main if entity @e[type=warden,distance=..100]
execute if score .wRelease halls_main matches ..-10 if score .red_warden halls_main matches 0 at @e[tag=red_warden_pos] run summon warden ~ ~ ~ {Tags:["red_warden"]}
execute if score .wRelease halls_main matches ..-10 if score .blue_warden halls_main matches 0 at @e[tag=red_warden_pos] run summon warden ~ ~ ~ {Tags:["blue_warden"]}
execute if score .wRelease halls_main matches ..-10 if score .green_warden halls_main matches 0 at @e[tag=red_warden_pos] run summon warden ~ ~ ~ {Tags:["green_warden"]}
execute if score .wRelease halls_main matches ..-10 if score .yellow_warden halls_main matches 0 at @e[tag=red_warden_pos] run summon warden ~ ~ ~ {Tags:["yellow_warden"]}
execute at @e[tag=red_warden] run tp @e[tag=red_warden_pos] ~ ~ ~
execute at @e[tag=blue_warden] run tp @e[tag=blue_warden_pos] ~ ~ ~
execute at @e[tag=green_warden] run tp @e[tag=green_warden_pos] ~ ~ ~
execute at @e[tag=yellow_warden] run tp @e[tag=yellow_warden_pos] ~ ~ ~

# infotext
execute if score .countDown halls_main matches 1000 run function main:halls/startinfo/begin
execute if score .countDown halls_main matches 900 run function main:halls/startinfo/pos1
execute if score .countDown halls_main matches 800 run function main:halls/startinfo/pos2
execute if score .countDown halls_main matches 700 run function main:halls/startinfo/pos3
execute if score .countDown halls_main matches 600 run function main:halls/startinfo/pos4
execute if score .countDown halls_main matches 500 run function main:halls/startinfo/pos5
execute if score .countDown halls_main matches 0 run function main:halls/music
# remove box
#red
execute if score .countDown halls_main matches 1 run fill -979 27 1046 -974 21 1041 air replace barrier
execute if score .countDown halls_main matches -1 run fill -983 26 1037 -970 22 1050 air replace tinted_glass
#blue
execute if score .countDown halls_main matches 1 run fill -1213 26 1037 -1200 22 1050 air replace barrier
execute if score .countDown halls_main matches -1 run fill -1213 26 1037 -1200 22 1050 air replace tinted_glass
#green
execute if score .countDown halls_main matches 1 run fill -1443 26 1037 -1430 22 1050 air replace barrier
execute if score .countDown halls_main matches -1 run fill -1443 26 1037 -1430 22 1050 air replace tinted_glass
#yellow
execute if score .countDown halls_main matches 1 run fill -1673 26 1037 -1660 22 1050 air replace barrier
execute if score .countDown halls_main matches -1 run fill -1673 26 1037 -1660 22 1050 air replace tinted_glass

# timer
#timeLeft
execute if score .countDown halls_main matches ..0 run scoreboard players remove .time_left halls_main 1
execute store result bossbar halls:redtimer value run scoreboard players get .time_left halls_main
bossbar set halls:redtimer max 6000
bossbar set halls:redtimer players @a
execute if score .Min halls_main matches 1.. if score .Sec halls_main matches 10.. run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Min","objective":"halls_main"}},{"text":":"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name":".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .Min halls_main matches 1.. if score .Sec halls_main matches ..9 run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Min","objective":"halls_main"}},{"text":":0"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name":".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .Min halls_main matches 0 if score .Sec halls_main matches 10.. if score .Milli halls_main matches 10.. run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":"."},{"score":{"name":".Milli","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name": ".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .Min halls_main matches 0 if score .Sec halls_main matches 10.. if score .Milli halls_main matches ..9 run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":".0"},{"score":{"name":".Milli","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name": ".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .Min halls_main matches 0 if score .Sec halls_main matches ..9 if score .Milli halls_main matches 10.. run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":"."},{"score":{"name":".Milli","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name": ".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .Min halls_main matches 0 if score .Sec halls_main matches ..9 if score .Milli halls_main matches ..9 run bossbar set halls:redtimer name [{"text":"Time Left: ","color":"gold"},{"score":{"name":".Sec","objective":"halls_main"}},{"text":".0"},{"score":{"name":".Milli","objective":"halls_main"}},{"text":" || ","color":"white"},{"score":{"name": ".capt_red","objective":"halls_keys"},"color":"red"},{"text":"/7 ","color":"red"},{"score":{"name": ".capt_blue","objective":"halls_keys"},"color":"blue"},{"text":"/7 ","color":"blue"},{"score":{"name": ".capt_green","objective":"halls_keys"},"color":"green"},{"text":"/7 ","color":"green"},{"score":{"name": ".capt_yellow","objective":"halls_keys"},"color":"yellow"},{"text":"/7","color":"yellow"}]
execute if score .countDown halls_main matches 0 run bossbar set halls:redtimer visible true
#+tickInput --> #tickMin
scoreboard players operation #rem halls_main = .time_left halls_main
scoreboard players operation #tickMin halls_main = #rem halls_main
scoreboard players operation #tickMin halls_main /= #min hallsConst
scoreboard players operation #rem halls_main %= #min hallsConst
# get sec
scoreboard players operation #tickSec halls_main = #rem halls_main
scoreboard players operation #tickSec halls_main /= #sec hallsConst
scoreboard players operation #rem halls_main %= #sec hallsConst
# get milli
scoreboard players operation #tickMilli halls_main = #rem halls_main
scoreboard players operation #tickMilli halls_main *= #milli hallsConst
scoreboard players operation #rem halls_main %= #milli hallsConst
# set math scores to named
scoreboard players operation .Min halls_main = #tickMin halls_main
scoreboard players operation .Sec halls_main = #tickSec halls_main
scoreboard players operation .Milli halls_main = #tickMilli halls_main
scoreboard players operation .remainder halls_main = #rem halls_main

# sneak prevention
execute as @a[tag=player,tag=halls_alive,predicate=main:sneak_state,tag=!halls_shitting] run scoreboard players add @s halls_sneak 1
tellraw @a[tag=player,scores={halls_sneak=100..}] {"text":"  -5 points (sneaking like a lil bitch)","color":"dark_red"}
scoreboard players remove @a[tag=player,scores={halls_sneak=100..},tag=halls_shitting] indivScore 5
scoreboard players reset @a[tag=player,scores={halls_sneak=100..}] halls_sneak
# this is a sample text

# centerpoint compass
scoreboard objectives add halls_compass_count dummy
execute as @a[tag=player] store result score @s halls_compass_count run clear @s compass 0
execute as @a[tag=player,scores={halls_compass_count=2..}] run clear @s compass
kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]
scoreboard objectives remove halls_compass_count
item replace entity @a[tag=halls_alive,team=Red] hotbar.8 with compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-977,Y:29,Z:1043}}
item replace entity @a[tag=halls_alive,team=Blue] hotbar.8 with compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-1207,Y:29,Z:1043}}
item replace entity @a[tag=halls_alive,team=Green] hotbar.8 with compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-1437,Y:29,Z:1043}}
item replace entity @a[tag=halls_alive,team=Yellow] hotbar.8 with compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-1667,Y:29,Z:1043}}


# death tag management
tag @a[tag=player,scores={halls_death=0}] add halls_alive
tag @a[tag=player,scores={halls_death=0}] remove halls_dead
tag @a[tag=player,scores={halls_death=1..}] add halls_dead
tag @a[tag=player,scores={halls_death=1..}] remove halls_alive

#RESPAWN SYSTEM
# respawn
execute as @a[scores={halls_death=1}] run function main:halls/death
execute as @a[tag=halls_dead] at @s if block ~ ~2 ~ barrier run function main:halls/respawn
# determine pit to respawn in
execute at @e[type=armor_stand,name=".red_spawn"] run spawnpoint @a[team=Red] ~ ~ ~
execute as @a[team=Blue] at @e[name=".blue_spawn"] run spawnpoint @s ~ ~ ~
execute as @a[team=Green] at @e[name=".green_spawn"] run spawnpoint @s ~ ~ ~
execute as @a[team=Yellow] at @e[name=".yellow_spawn"] run spawnpoint @s ~ ~ ~
# rescue players
execute as @a[tag=halls_alive] at @s if block ~ ~-1 ~ barrier positioned ~ ~-20 ~ run effect give @a[tag=halls_dead,distance=..17] levitation 1 2 true

# enter info
#red
execute positioned -964.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -929.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
execute positioned -959.5 24 980.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/pk
execute positioned -1013.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1026.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -921.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1029.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#blue
execute positioned -1194.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1159.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
# execute positioned -1224.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1243.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1256.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1151.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1259.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#green
execute positioned -1424.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1389.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
# execute positioned -1454.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1473.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1486.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1381.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1489.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#yellow
execute positioned -1654.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1619.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
# execute positioned -1684.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1703.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1716.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1611.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1719.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft

# gate
execute if score .redCooldown halls_keys matches 1.. run scoreboard players remove .redCooldown halls_keys 1
execute if score .blueCooldown halls_keys matches 1.. run scoreboard players remove .blueCooldown halls_keys 1
execute if score .greenCooldown halls_keys matches 1.. run scoreboard players remove .greenCooldown halls_keys 1
execute if score .yellowCooldown halls_keys matches 1.. run scoreboard players remove .yellowCooldown halls_keys 1

# Exit
execute at @e[tag=halls_exit,type=armor_stand] run tag @a[tag=player,tag=halls_alive,distance=..2] add halls_exit
execute as @a[tag=halls_exit] run function main:halls/escape
execute store result score .escaped halls_main if entity @a[tag=halls_escaped]
execute if score .escaped halls_main = .players br_tcheck run function main:halls/finish
execute if score .time_left halls_main matches 0 run function main:halls/finish

# finish game
execute if score .capt_red halls_keys matches 7 as @a[team=Red, tag=!halls_escaped] run function main:halls/escape
execute if score .capt_blue halls_keys matches 7 as @a[team=Blue, tag=!halls_escaped] run function main:halls/escape
execute if score .capt_green halls_keys matches 7 as @a[team=Green, tag=!halls_escaped] run function main:halls/escape
execute if score .capt_yellow halls_keys matches 7 as @a[team=Yellow, tag=!halls_escaped] run function main:halls/escape

# take key to center
execute as @a[nbt={Inventory:[{id:"minecraft:nether_wart"}]}] run tag @s add halls_key
execute as @a[nbt=!{Inventory:[{id:"minecraft:nether_wart"}]}] run tag @s remove halls_key
execute as @a[tag=halls_key] at @s if block ~ ~-1 ~ yellow_terracotta run function main:halls/usekey

# wifi password
effect give @e[tag=hallsMouse] invisibility 10 0 true
tag @a[nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyWifi
tag @a[nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyWifi

# find the remote
#acquiring the remote
execute as @a[x=-933,y=21,z=1028,dx=6,dy=6,dz=6] run scoreboard players reset @s halls_remote
execute as @a[x=-1163,y=21,z=1028,dx=6,dy=6,dz=6] run scoreboard players reset @s halls_remote
execute as @a[x=-1393,y=21,z=1028,dx=6,dy=6,dz=6] run scoreboard players reset @s halls_remote
execute as @a[x=-1623,y=21,z=1028,dx=6,dy=6,dz=6] run scoreboard players reset @s halls_remote
execute positioned -928.5 23 1019.5 run scoreboard players reset @a[distance=10..100] halls_remote
execute positioned -1158.5 23 1019.5 run scoreboard players reset @a[distance=10..100] halls_remote
execute positioned -1388.5 23 1019.5 run scoreboard players reset @a[distance=10..100] halls_remote
execute positioned -1618.5 23 1019.5 run scoreboard players reset @a[distance=10..100] halls_remote
item replace entity @a[scores={halls_remote=6}] inventory.13 with lever{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}
item replace entity @a[scores={halls_remote=1..5}] inventory.13 with air
scoreboard players set @a[scores={halls_remote=6}] halls_remote 0
#remote function
execute as @a[nbt={Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s add halls_remoteHolder
execute as @a[tag=halls_remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run tag @s add holdingRemote
execute as @a[tag=halls_remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=halls_remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=halls_remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingRemote
execute as @a[nbt=!{Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s remove halls_remoteHolder
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
#remote effect
execute as @a[scores={halls_click=1..},nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run function main:halls/tvon
# remote key
tag @a[tag=halls_alive,nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyRemote
tag @a[tag=halls_alive,nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyRemote


# parkour challenge
#blocks being placed is done via physical command blocks, it's much easier
execute at @e[type=armor_stand,limit=1,sort=random,tag=halls_pknpc] as @a[tag=halls_alive,tag=!halls_pkfinish,distance=..1] run function main:halls/pkfinish
tag @a[nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Parkour Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyPk
tag @a[nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Parkour Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyPk


# take the shit
#tag players in the place
execute as @a[tag=halls_alive,x=-1015,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add halls_shitting
execute as @a[tag=halls_alive,x=-1245,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add halls_shitting
execute as @a[tag=halls_alive,x=-1475,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add halls_shitting
execute as @a[tag=halls_alive,x=-1705,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add halls_shitting
execute as @a[tag=halls_shitting] at @s if block ~ ~-1 ~ hay_block run tag @s remove halls_shitting
tag @a[tag=halls_dead] remove halls_shitting
execute as @a[tag=halls_shitting,predicate=main:sneak_state,scores={halls_shitterClock=..99}] run scoreboard players add @s halls_shitterClock 1
execute as @a[tag=halls_shitting] run title @s actionbar [{"text":"Shitted: ","color":"gold"},{"score":{"name":"@s","objective":"halls_shitterClock"}},{"text":"%"}]
execute as @a[scores={halls_shitterClock=100}] unless score @s halls_shitter matches 1.. run function main:halls/halls_shitterkey
#keytag
tag @a[nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyShitter
tag @a[nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyShitter

# emerald challenge
#get rid of tool
execute positioned -1026.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1256.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1486.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1716.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
kill @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
#give tool
give @a[tag=halls_alive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=halls_alive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=halls_alive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=halls_alive,x=-1715,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
execute as @a[tag=halls_alive,scores={halls_emerald=1..}] run give @s nether_wart{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
execute as @a[tag=halls_alive,scores={halls_emerald=1..}] run tellraw @s {"text":"» You got the Emerald Mine Key!","color":"gray"}
scoreboard players set @a halls_emerald 0
# reset pit
execute positioned -1030 24 1036 run scoreboard players enable @a[distance=..7] halls_emReset
execute positioned -1260 24 1036 run scoreboard players enable @a[distance=..7] halls_emReset
execute positioned -1490 24 1036 run scoreboard players enable @a[distance=..7] halls_emReset
execute positioned -1720 24 1036 run scoreboard players enable @a[distance=..7] halls_emReset
execute positioned -1030 24 1036 as @a[team=Red,distance=7.1..] run trigger halls_emReset set 0
execute positioned -1260 24 1036 as @a[team=Blue,distance=7.1..] run trigger halls_emReset set 0
execute positioned -1490 24 1036 as @a[team=Green,distance=7.1..] run trigger halls_emReset set 0
execute positioned -1720 24 1036 as @a[team=Yellow,distance=7.1..] run trigger halls_emReset set 0
execute as @a[team=Red,tag=halls_alive,scores={halls_emReset=1..}] run place template main:halls/emerald -1033 16 1031
execute as @a[team=Red,tag=halls_alive,scores={halls_emReset=1..}] run tp @a[tag=halls_alive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Red,tag=halls_alive,scores={halls_emReset=1..}] run tellraw @a[tag=halls_alive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Blue,tag=halls_alive,scores={halls_emReset=1..}] run place template main:halls/emerald -1263 16 1031
execute as @a[team=Blue,tag=halls_alive,scores={halls_emReset=1..}] run tp @a[tag=halls_alive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Blue,tag=halls_alive,scores={halls_emReset=1..}] run tellraw @a[tag=halls_alive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Green,tag=halls_alive,scores={halls_emReset=1..}] run place template main:halls/emerald -1493 16 1031
execute as @a[team=Green,tag=halls_alive,scores={halls_emReset=1..}] run tp @a[tag=halls_alive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Green,tag=halls_alive,scores={halls_emReset=1..}] run tellraw @a[tag=halls_alive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Yellow,tag=halls_alive,scores={halls_emReset=1..}] run place template main:halls/emerald -1723 16 1031
execute as @a[team=Yellow,tag=halls_alive,scores={halls_emReset=1..}] run tp @a[tag=halls_alive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Yellow,tag=halls_alive,scores={halls_emReset=1..}] run tellraw @a[tag=halls_alive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
scoreboard players set @a halls_emReset 0
#keytag
tag @a[tag=halls_alive,nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyEmerald
tag @a[tag=halls_alive,nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyEmerald


# find the key
item replace entity @a[scores={halls_carKeys=16}] inventory.13 with nether_wart{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
item replace entity @a[scores={halls_carKeys=1..15}] inventory.13 with air
scoreboard players set @a[scores={halls_carKeys=16}] halls_carKeys 0
#keytag
tag @a[tag=halls_alive,nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyCar
tag @a[tag=halls_alive,nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyCar


# craft activator rail
#clear conditions out of room
clear @a[tag=!halls_craft] #main:halls/craft_mats
clear @a[tag=!halls_craft] #main:halls/craft_tools
execute as @a[tag=halls_craft] run trigger halls_craftReset set 0
#perpetual conditions while in room
give @a[tag=halls_craft,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{CanDestroy:[iron_ore,cobblestone,redstone_ore,gold_ore,stone,diamond_ore],Unbreakable:1b,HideFlags:127}
give @a[tag=halls_craft,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{CanDestroy:[oak_log],Unbreakable:1b,HideFlags:127}
effect give @a[tag=halls_craft] haste 9 4 true
#     WARNING: This disables the iron picaxe / axe item being dropped EVERYWHERE while the game is running
kill @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
#give blocks to player
give @a[scores={halls_craftIron=1..}] iron_ingot
give @a[scores={halls_craftGold=1..}] gold_ingot
give @a[scores={halls_craftRedstone=1..}] redstone
give @a[scores={halls_craftCobble=1..}] cobblestone
give @a[scores={halls_craftStone=1..},tag=halls_craft] stone
give @a[scores={halls_craftWood=1..}] oak_log
scoreboard players reset @a[scores={halls_craftIron=1..}] halls_craftIron
scoreboard players reset @a[scores={halls_craftGold=1..}] halls_craftGold
scoreboard players reset @a[scores={halls_craftRedstone=1..}] halls_craftRedstone
scoreboard players reset @a[scores={halls_craftCobble=1..}] halls_craftCobble
scoreboard players reset @a[scores={halls_craftStone=1..}] halls_craftStone
scoreboard players reset @a[scores={halls_craftWood=1..}] halls_craftWood
#talking to villager
# old red villager code
#execute as @a[scores={halls_craftTalk=1..},x=-1020,dx=-932,y=21,dy=8,z=996,dz=10.5,nbt=!{SelectedItem:{id:"minecraft:activator_rail"}}] at @s run data modify entity @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest] CustomName set value '[{"text":"\\uE006 Incorrect! \\uE006","color":"red"}]'
#execute as @a[scores={halls_craftTalk=1..},x=-1020,dx=-932,y=21,dy=8,z=996,dz=10.5,nbt=!{SelectedItem:{id:"minecraft:activator_rail"}}] run schedule function main:halls/craftnamefix 4s replace
#execute as @a[scores={halls_craftTalk=1..},x=-1020,dx=-932,y=21,dy=8,z=996,dz=10.5,nbt={SelectedItem:{id:"minecraft:activator_rail"}}] at @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest] run function main:halls/craftkey
#execute as @a[scores={halls_craftTalk=1..},x=-1020,dx=-932,y=21,dy=8,z=996,dz=10.5,nbt={SelectedItem:{id:"minecraft:activator_rail"}}] run clear @s activator_rail
execute at @e[tag=halls_craftVillager] run tag @a[tag=halls_alive,distance=..10] add halls_craft
execute at @e[tag=halls_craftVillager] run tag @a[tag=halls_alive,distance=10.1..50] remove halls_craft
#red villager
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt=!{SelectedItem:{id:"minecraft:activator_rail"}}] run tellraw @s {"text":"» Incorrect Item!","color":"red"}
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt={SelectedItem:{id:"minecraft:activator_rail"}}] run give @s nether_wart{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt={SelectedItem:{id:"minecraft:activator_rail"}}] run clear @s activator_rail

scoreboard players set @a[scores={halls_craftTalk=1..}] halls_craftTalk 0
#reset room
scoreboard players enable @a[tag=halls_craft] halls_craftReset
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Red] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Blue] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Green] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Yellow] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
# execute as @a[tag=halls_craft,scores={halls_craftReset=1..},x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
# execute as @a[tag=halls_craft,scores={halls_craftReset=1..},x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
# execute as @a[tag=halls_craft,scores={halls_craftReset=1..},x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
# execute as @a[tag=halls_craft,scores={halls_craftReset=1..},x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Red] run place template main:halls/craftroom -1032 20 995
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Blue] run place template main:halls/craftroom -1262 20 995
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Green] run place template main:halls/craftroom -1492 20 995
execute as @a[tag=halls_craft,scores={halls_craftReset=1..},team=Yellow] run place template main:halls/craftroom -1722 20 995
scoreboard players set @a[scores={halls_craftReset=1..}] halls_craftReset 0
#keytag
tag @a[tag=halls_alive,nbt={Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyCraft
tag @a[tag=halls_alive,nbt=!{Inventory:[{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyCraft

# halls_remote
scoreboard players set @a[scores={halls_click=1..}] halls_click 0
