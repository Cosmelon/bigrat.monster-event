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
execute if score ~countDown hallsCore matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score ~countDown hallsCore matches 20 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.259921
execute if score ~countDown hallsCore matches 0 run title @a title ""
execute if score ~countDown hallsCore matches 0 run title @a subtitle {"text":"Go!","color":"red"}
execute if score ~countDown hallsCore matches 0 as @a run playsound minecraft:block.note_block.chime ambient @s ~ ~100 ~ 10000 1.414214

# remove box
#red
execute if score ~countDown hallsCore matches 1 run fill -979 27 1046 -974 21 1041 air replace barrier
execute if score ~countDown hallsCore matches -1 run fill -983 26 1037 -970 22 1050 air replace tinted_glass
#blue
execute if score ~countDown hallsCore matches 1 run fill -1213 26 1037 -1200 22 1050 air replace barrier
execute if score ~countDown hallsCore matches -1 run fill -1213 26 1037 -1200 22 1050 air replace tinted_glass
#green
execute if score ~countDown hallsCore matches 1 run fill -1443 26 1037 -1430 22 1050 air replace barrier
execute if score ~countDown hallsCore matches -1 run fill -1443 26 1037 -1430 22 1050 air replace tinted_glass
#yellow
execute if score ~countDown hallsCore matches 1 run fill -1673 26 1037 -1660 22 1050 air replace barrier
execute if score ~countDown hallsCore matches -1 run fill -1673 26 1037 -1660 22 1050 air replace tinted_glass

# warden release
bossbar set halls:wrelease players @a
execute store result bossbar halls:wrelease value run scoreboard players get ~wRelease hallsCore 
execute if score ~countDown hallsCore matches -10 run bossbar set halls:wrelease visible true
execute if score ~countDown hallsCore matches ..-10 run scoreboard players remove ~wRelease hallsCore 1
execute if score ~wRelease hallsCore matches 0 run function main:halls/wrelease

# sneak prevention
execute as @a[tag=player,tag=hallsAlive,predicate=main:sneak_state,tag=!hallsShitting] run scoreboard players add @s halls_sneak 1
tellraw @a[tag=player,scores={halls_sneak=100..}] {"text":"\n-5 points (sneaking like a lil bitch)\n","color":"dark_red"}
scoreboard players remove @a[tag=player,scores={halls_sneak=100..},tag=hallsShitting] indivScore 5
scoreboard players reset @a[tag=player,scores={halls_sneak=100..}] halls_sneak

# death tag management
tag @a[tag=player,scores={halls_death=0}] add hallsAlive
tag @a[tag=player,scores={halls_death=0}] remove hallsDead
tag @a[tag=player,scores={halls_death=1..}] add hallsDead
tag @a[tag=player,scores={halls_death=1..}] remove hallsAlive

#RESPAWN SYSTEM
# respawn
execute as @a[scores={halls_death=1}] run function main:halls/death
execute as @a[tag=hallsDead] at @s if block ~ ~2 ~ barrier run function main:halls/respawn
# determine pit to respawn in
execute as @a[team=Red] at @e[name="~redSpawn",limit=1,sort=nearest] run spawnpoint @s ~ ~ ~
execute as @a[team=Blue] at @e[name="~blueSpawn",limit=1,sort=nearest] run spawnpoint @s ~ ~ ~
execute as @a[team=Green] at @e[name="~greenSpawn",limit=1,sort=nearest] run spawnpoint @s ~ ~ ~
execute as @a[team=Yellow] at @e[name="~yellowSpawn",limit=1,sort=nearest] run spawnpoint @s ~ ~ ~
# rescue players
execute as @a[tag=hallsAlive] at @s if block ~ 1 ~ black_concrete if block ~ ~-1 ~ barrier positioned ~ ~-20 ~ run effect give @a[tag=hallsDead,distance=..17] levitation 1 2 true

##### OLD RESPAWN SYSTEM #####
## respawn
#gamemode spectator @a[tag=player,tag=hallsDead]
#scoreboard players set @a[tag=player,scores={halls_death=1}] halls_death 200
#scoreboard players remove @a[tag=player,scores={halls_death=2..}] halls_death 1
#execute as @a[scores={halls_death=2}] run function main:halls/respawn
## until respawn
#execute as @a[scores={halls_death=60}] run title @s actionbar {"text":"Until respawn: 3","color":"gold"}
#execute as @a[scores={halls_death=40}] run title @s actionbar {"text":"Until respawn: 2","color":"gold"}
#execute as @a[scores={halls_death=20}] run title @s actionbar {"text":"Until respawn: 1","color":"gold"}
#execute as @a[scores={halls_death=2}] run title @s actionbar {"text":"Until respawn: 0","color":"gold"}
##### OLD RESPAWN SYSTEM #####

# enter info
#red
execute positioned -964.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -929.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
execute positioned -994.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1013.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1026.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -921.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1029.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#blue
execute positioned -1194.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1159.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
execute positioned -1224.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1243.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1256.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1151.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1259.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#green
execute positioned -1424.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1389.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
execute positioned -1454.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1473.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1486.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1381.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1489.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft
#yellow
execute positioned -1654.5 22 1090.5 as @a[tag=player,tag=!halls_enter1,distance=..2] run function main:halls/enters/wifi
execute positioned -1619.99 22 1030.03 as @a[tag=player,tag=!halls_enter2,distance=..3] run function main:halls/enters/remote
execute positioned -1684.5 22 984.5 as @a[tag=player,tag=!halls_enter3,distance=..2] run function main:halls/enters/soap
execute positioned -1703.5 22 1053.5 as @a[tag=player,tag=!halls_enter4,distance=..2] run function main:halls/enters/shit
execute positioned -1716.5 22 1031.5 as @a[tag=player,tag=!halls_enter5,distance=..2] run function main:halls/enters/emerald
execute positioned -1611.5 22 1080.5 as @a[tag=player,tag=!halls_enter6,distance=..2] run function main:halls/enters/car
execute positioned -1719.5 22 1008.5 as @a[tag=player,tag=!halls_enter7,distance=..2] run function main:halls/enters/craft

# gate
execute if score ~redCooldown halls_keys matches 1.. run scoreboard players remove ~redCooldown halls_keys 1
execute if score ~blueCooldown halls_keys matches 1.. run scoreboard players remove ~blueCooldown halls_keys 1
execute if score ~greenCooldown halls_keys matches 1.. run scoreboard players remove ~greenCooldown halls_keys 1
execute if score ~yellowCooldown halls_keys matches 1.. run scoreboard players remove ~yellowCooldown halls_keys 1

# Exit
execute at @e[tag=halls_exit,type=armor_stand] run tag @a[tag=player,tag=hallsAlive,distance=..2] add halls_exit
execute as @a[tag=halls_exit] run function main:halls/escape
execute store result score ~escaped hallsCore if entity @a[tag=halls_escaped]
execute if score ~escaped hallsCore = .players teamCheck run function main:halls/finish

# take key to center
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run tag @s add halls_key
execute as @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook"}]}] run tag @s remove halls_key
execute as @a[tag=halls_key] at @s if block ~ ~-1 ~ yellow_terracotta run function main:halls/usekey

# wifi password
effect give @e[tag=hallsMouse] invisibility 10 0 true
tag @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyWifi
tag @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyWifi

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
execute as @a[nbt={Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s add remoteHolder
execute as @a[tag=remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run tag @s add holdingRemote
execute as @a[tag=remoteHolder,nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run item replace entity @s weapon.offhand with carrot_on_a_stick{Unbreakable:1b}
execute as @a[tag=remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @a[tag=remoteHolder,nbt=!{SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run tag @s remove holdingRemote
execute as @a[nbt=!{Inventory:[{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}]}] run tag @s remove remoteHolder
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
#remote effect
execute as @a[scores={halls_click=1..},nbt={SelectedItem:{id:"minecraft:lever",tag:{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}}}] run function main:halls/tvon
# remote key
tag @a[tag=hallsAlive,nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyRemote
tag @a[tag=hallsAlive,nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyRemote

# dropped the soap
execute as @e[scores={halls_soap=2..}] run scoreboard players set @s halls_soap 0
execute as @e[type=pig,tag=halls_soapEast,scores={halls_soap=1}] at @s run particle falling_water ~-.1 ~0.63 ~
execute as @e[type=pig,tag=halls_soapSouth,scores={halls_soap=1}] at @s run particle falling_water ~ ~0.63 ~-.1
execute as @e[type=pig,tag=halls_soapWest,scores={halls_soap=1}] at @s run particle falling_water ~.1 ~0.63 ~
execute as @e[type=pig,tag=halls_soapNorth,scores={halls_soap=1}] at @s run particle falling_water ~ ~0.63 ~.1
#clear conditions out of room
item replace entity @a[tag=hallsAlive,x=-997,dx=4,y=21,dy=8,z=978,dz=6] weapon.offhand with air
item replace entity @a[tag=hallsAlive,x=-1227,dx=4,y=21,dy=8,z=978,dz=6] weapon.offhand with air
item replace entity @a[tag=hallsAlive,x=-1457,dx=4,y=21,dy=8,z=978,dz=6] weapon.offhand with air
item replace entity @a[tag=hallsAlive,x=-1687,dx=4,y=21,dy=8,z=978,dz=6] weapon.offhand with air
tag @a[tag=hallsAlive,x=-997,dx=4,y=21,dy=8,z=978,dz=6] remove hallsSoap
tag @a[tag=hallsAlive,x=-1227,dx=4,y=21,dy=8,z=978,dz=6] remove hallsSoap
tag @a[tag=hallsAlive,x=-1457,dx=4,y=21,dy=8,z=978,dz=6] remove hallsSoap
tag @a[tag=hallsAlive,x=-1687,dx=4,y=21,dy=8,z=978,dz=6] remove hallsSoap
#perpetual conditions in room
item replace entity @a[tag=hallsAlive,x=-1007,dx=10,y=19,dy=8,z=978,dz=16] weapon.offhand with carrot_on_a_stick{Unbreakable:true}
item replace entity @a[tag=hallsAlive,x=-1237,dx=10,y=19,dy=8,z=978,dz=16] weapon.offhand with carrot_on_a_stick{Unbreakable:true}
item replace entity @a[tag=hallsAlive,x=-1467,dx=10,y=19,dy=8,z=978,dz=16] weapon.offhand with carrot_on_a_stick{Unbreakable:true}
item replace entity @a[tag=hallsAlive,x=-1697,dx=10,y=19,dy=8,z=978,dz=16] weapon.offhand with carrot_on_a_stick{Unbreakable:true}
tag @a[tag=hallsAlive,x=-1007,dx=10,y=19,dy=8,z=978,dz=16] add hallsSoap
tag @a[tag=hallsAlive,x=-1237,dx=10,y=19,dy=8,z=978,dz=16] add hallsSoap
tag @a[tag=hallsAlive,x=-1467,dx=10,y=19,dy=8,z=978,dz=16] add hallsSoap
tag @a[tag=hallsAlive,x=-1697,dx=10,y=19,dy=8,z=978,dz=16] add hallsSoap
execute as @a[tag=hallsSoap,scores={halls_click=1..}] at @s run function main:halls/soap/start_raycast
#get status of indiv mobs
function main:halls/soap/mobstatus
#7835 solution
execute if score ~red7 halls_soapStat matches 1 if score ~red8 halls_soapStat matches 1 if score ~red3 halls_soapStat matches 1 if score ~red5 halls_soapStat matches 1 if score ~finishRed halls_soapStat matches 0 as @a[tag=hallsAlive,x=-1007,dx=10,y=19,dy=8,z=978,dz=16,limit=1,sort=arbitrary] run function main:halls/soap/redcorrect
execute if score ~blue7 halls_soapStat matches 1 if score ~blue8 halls_soapStat matches 1 if score ~blue3 halls_soapStat matches 1 if score ~blue5 halls_soapStat matches 1 if score ~finishBlue halls_soapStat matches 0 as @a[tag=hallsAlive,x=-1237,dx=10,y=19,dy=8,z=978,dz=16,limit=1,sort=arbitrary] run function main:halls/soap/redcorrect
execute if score ~green7 halls_soapStat matches 1 if score ~green8 halls_soapStat matches 1 if score ~green3 halls_soapStat matches 1 if score ~green5 halls_soapStat matches 1 if score ~finishGreen halls_soapStat matches 0 as @a[tag=hallsAlive,x=-1467,dx=10,y=19,dy=8,z=978,dz=16,limit=1,sort=arbitrary] run function main:halls/soap/redcorrect
execute if score ~yellow7 halls_soapStat matches 1 if score ~yellow8 halls_soapStat matches 1 if score ~yellow3 halls_soapStat matches 1 if score ~yellow5 halls_soapStat matches 1 if score ~finishYellow halls_soapStat matches 0 as @a[tag=hallsAlive,x=-1697,dx=10,y=19,dy=8,z=978,dz=16,limit=1,sort=arbitrary] run function main:halls/soap/redcorrect
#keytag
tag @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keySoap
tag @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keySoap

# take the shit
#tag players in the place
execute as @a[tag=hallsAlive,x=-1015,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add hallsShitting
execute as @a[tag=hallsAlive,x=-1245,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add hallsShitting
execute as @a[tag=hallsAlive,x=-1475,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add hallsShitting
execute as @a[tag=hallsAlive,x=-1705,dx=-12,y=21,dy=6,z=1046,dz=15] at @s if block ~ ~-1 ~ smooth_quartz_stairs if block ~ ~4 ~ minecraft:redstone_lamp run tag @s add hallsShitting
execute as @a[tag=hallsShitting] at @s if block ~ ~-1 ~ hay_block run tag @s remove hallsShitting
tag @a[tag=hallsDead] remove hallsShitting
execute as @a[tag=hallsShitting,predicate=main:sneak_state,scores={halls_shitterClock=..99}] run scoreboard players add @s halls_shitterClock 1
execute as @a[tag=hallsShitting] run title @s actionbar [{"text":"Shitted: ","color":"gold"},{"score":{"name":"@s","objective":"halls_shitterClock"}},{"text":"%"}]
execute as @a[scores={halls_shitterClock=100}] unless score @s halls_shitter matches 1.. run function main:halls/shitterkey
#keytag
tag @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyShitter
tag @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyShitter

# emerald challenge
#get rid of tool
execute positioned -1026.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1256.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1486.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
execute positioned -1716.5 22 1026.5 run clear @a[tag=player,distance=..2] iron_pickaxe
kill @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
#give tool
give @a[tag=hallsAlive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=hallsAlive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=hallsAlive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
give @a[tag=hallsAlive,x=-1715,dx=-10,y=18,dy=10,z=1031,dz=10,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']}}}]}] iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Emerald Finder","italic":false,"color":"green"}]',Lore:['[{"text":"Use this to dig up the emerald!"}]']},Enchantments:[{id:"efficiency",lvl:1}],HideFlags:127,CanDestroy:[stone,andesite,emerald_ore]} 1
execute as @a[tag=hallsAlive,scores={halls_emerald=1..}] run give @s tripwire_hook{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
execute as @a[tag=hallsAlive,scores={halls_emerald=1..}] run tellraw @s {"text":"» You got the Emerald Mine Key!","color":"gray"}
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
execute as @a[team=Red,tag=hallsAlive,scores={halls_emReset=1..}] run place template main:halls/emerald -1033 16 1031
execute as @a[team=Red,tag=hallsAlive,scores={halls_emReset=1..}] run tp @a[tag=hallsAlive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Red,tag=hallsAlive,scores={halls_emReset=1..}] run tellraw @a[tag=hallsAlive,x=-1025,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Blue,tag=hallsAlive,scores={halls_emReset=1..}] run place template main:halls/emerald -1263 16 1031
execute as @a[team=Blue,tag=hallsAlive,scores={halls_emReset=1..}] run tp @a[tag=hallsAlive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Blue,tag=hallsAlive,scores={halls_emReset=1..}] run tellraw @a[tag=hallsAlive,x=-1255,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Green,tag=hallsAlive,scores={halls_emReset=1..}] run place template main:halls/emerald -1493 16 1031
execute as @a[team=Green,tag=hallsAlive,scores={halls_emReset=1..}] run tp @a[tag=hallsAlive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Green,tag=hallsAlive,scores={halls_emReset=1..}] run tellraw @a[tag=hallsAlive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
execute as @a[team=Yellow,tag=hallsAlive,scores={halls_emReset=1..}] run place template main:halls/emerald -1723 16 1031
execute as @a[team=Yellow,tag=hallsAlive,scores={halls_emReset=1..}] run tp @a[tag=hallsAlive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] -1030 24 1036
execute as @a[team=Yellow,tag=hallsAlive,scores={halls_emReset=1..}] run tellraw @a[tag=hallsAlive,x=-1485,dx=-10,y=18,dy=10,z=1031,dz=10] [{"text":"» ","color":"dark_red"},{"text":"Emerald Mine was reset by: ","color":"gold"},{"selector":"@s"}]
scoreboard players set @a halls_emReset 0
#keytag
tag @a[tag=hallsAlive,nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyEmerald
tag @a[tag=hallsAlive,nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyEmerald


# find the key
item replace entity @a[scores={halls_carKeys=16}] inventory.13 with tripwire_hook{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
item replace entity @a[scores={halls_carKeys=1..15}] inventory.13 with air
scoreboard players set @a[scores={halls_carKeys=16}] halls_carKeys 0
#keytag
tag @a[tag=hallsAlive,nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyCar
tag @a[tag=hallsAlive,nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyCar


# craft activator rail
#clear conditions out of room
clear @a[tag=hallsAlive,x=-1027,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_mats
clear @a[tag=hallsAlive,x=-1257,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_mats
clear @a[tag=hallsAlive,x=-1487,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_mats
clear @a[tag=hallsAlive,x=-1717,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_mats
clear @a[tag=hallsAlive,x=-1027,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_tools
clear @a[tag=hallsAlive,x=-1257,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_tools
clear @a[tag=hallsAlive,x=-1487,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_tools
clear @a[tag=hallsAlive,x=-1717,dx=-5,y=21,dy=8,z=1008.5,dz=3] #main:halls/craft_tools
execute as @a[x=-1027,dx=-5,y=21,dy=8,z=1008.5,dz=3] run trigger halls_craftReset set 0
execute as @a[x=-1257,dx=-5,y=21,dy=8,z=1008.5,dz=3] run trigger halls_craftReset set 0
execute as @a[x=-1487,dx=-5,y=21,dy=8,z=1008.5,dz=3] run trigger halls_craftReset set 0
execute as @a[x=-1717,dx=-5,y=21,dy=8,z=1008.5,dz=3] run trigger halls_craftReset set 0
#perpetual conditions while in room
give @a[tag=hallsAlive,x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{HideFlags:127,CanDestroy:[iron_ore,cobblestone,redstone_ore,gold_ore,stone,diamond_ore]}
give @a[tag=hallsAlive,x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{HideFlags:127,CanDestroy:[iron_ore,cobblestone,redstone_ore,gold_ore,stone,diamond_ore]}
give @a[tag=hallsAlive,x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{HideFlags:127,CanDestroy:[iron_ore,cobblestone,redstone_ore,gold_ore,stone,diamond_ore]}
give @a[tag=hallsAlive,x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{HideFlags:127,CanDestroy:[iron_ore,cobblestone,redstone_ore,gold_ore,stone,diamond_ore]}
give @a[tag=hallsAlive,x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{HideFlags:127,CanDestroy:[oak_log]}
give @a[tag=hallsAlive,x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{HideFlags:127,CanDestroy:[oak_log]}
give @a[tag=hallsAlive,x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{HideFlags:127,CanDestroy:[oak_log]}
give @a[tag=hallsAlive,x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{HideFlags:127,CanDestroy:[oak_log]}
effect give @a[tag=hallsAlive,x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] haste 9 4 true
effect give @a[tag=hallsAlive,x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] haste 9 4 true
effect give @a[tag=hallsAlive,x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] haste 9 4 true
effect give @a[tag=hallsAlive,x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] haste 9 4 true
kill @e[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
kill @e[x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
kill @e[x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
kill @e[x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]
kill @e[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
kill @e[x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
kill @e[x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
kill @e[x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5,type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
#give blocks to player
give @a[scores={halls_craftIron=1..}] iron_ingot
give @a[scores={halls_craftGold=1..}] gold_ingot
give @a[scores={halls_craftRedstone=1..}] redstone
give @a[scores={halls_craftCobble=1..}] cobblestone
give @a[scores={halls_craftStone=1..},x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] stone
give @a[scores={halls_craftStone=1..},x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] stone
give @a[scores={halls_craftStone=1..},x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] stone
give @a[scores={halls_craftStone=1..},x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] stone
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
execute at @e[tag=halls_craftVillager] run tag @a[tag=hallsAlive,distance=..10] add halls_craft
execute at @e[tag=halls_craftVillager] run tag @a[tag=hallsAlive,distance=10.1..50] remove halls_craft
#red villager
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt=!{SelectedItem:{id:"minecraft:activator_rail"}}] run tellraw @s {"text":"» Incorrect Item!","color":"red"}
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt={SelectedItem:{id:"minecraft:activator_rail"}}] run give @s tripwire_hook{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
execute as @a[tag=halls_craft,scores={halls_craftTalk=1..},nbt={SelectedItem:{id:"minecraft:activator_rail"}}] run clear @s activator_rail

scoreboard players set @a[scores={halls_craftTalk=1..}] halls_craftTalk 0
#reset room
scoreboard players enable @a[tag=hallsAlive,x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] halls_craftReset
scoreboard players enable @a[tag=hallsAlive,x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] halls_craftReset
scoreboard players enable @a[tag=hallsAlive,x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] halls_craftReset
scoreboard players enable @a[tag=hallsAlive,x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] halls_craftReset
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] run tp @a[x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] -1029.5 22 1009.5 180 10
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] run kill @e[tag=halls_craftVillager,type=villager,limit=1,sort=nearest]
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1020,dx=-12,y=21,dy=8,z=996,dz=10.5] run place template main:halls/craftroom -1032 20 995
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1250,dx=-12,y=21,dy=8,z=996,dz=10.5] run place template main:halls/craftroom -1032 20 995
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1480,dx=-12,y=21,dy=8,z=996,dz=10.5] run place template main:halls/craftroom -1032 20 995
execute as @a[tag=hallsAlive,scores={halls_craftReset=1..},x=-1710,dx=-12,y=21,dy=8,z=996,dz=10.5] run place template main:halls/craftroom -1032 20 995
scoreboard players set @a[scores={halls_craftReset=1..}] halls_craftReset 0
#keytag
tag @a[tag=hallsAlive,nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyCraft
tag @a[tag=hallsAlive,nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyCraft

# halls_remote
scoreboard players set @a[scores={halls_click=1..}] halls_click 0

