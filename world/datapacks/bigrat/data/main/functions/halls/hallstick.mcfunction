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
execute as @a[tag=player,tag=hallsAlive,predicate=main:sneak_state,tag=!hallsShitting] run scoreboard players add @s halls_sneak 1
tellraw @a[tag=player,scores={halls_sneak=100..}] {"text":"\n-5 points (sneaking like a lil bitch)\n","color":"dark_red"}
scoreboard players remove @a[tag=player,scores={halls_sneak=100..},tag=hallsShitting] indivScore 5
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
execute if score ~red1 halls_soapStat matches 1 at @e[tag=halls_redSoap1] run particle falling_water ~-.1 ~0.63 ~
execute if score ~red2 halls_soapStat matches 1 at @e[tag=halls_redSoap2] run particle falling_water ~ ~0.63 ~-.1
execute if score ~red3 halls_soapStat matches 1 at @e[tag=halls_redSoap3] run particle falling_water ~ ~0.63 ~-.1
execute if score ~red4 halls_soapStat matches 1 at @e[tag=halls_redSoap4] run particle falling_water ~.1 ~0.63 ~
execute if score ~red5 halls_soapStat matches 1 at @e[tag=halls_redSoap5] run particle falling_water ~.1 ~0.63 ~
execute if score ~red6 halls_soapStat matches 1 at @e[tag=halls_redSoap6] run particle falling_water ~.1 ~0.63 ~
execute if score ~red7 halls_soapStat matches 1 at @e[tag=halls_redSoap7] run particle falling_water ~ ~0.63 ~.1
execute if score ~red8 halls_soapStat matches 1 at @e[tag=halls_redSoap8] run particle falling_water ~ ~0.63 ~.1
execute if score ~red9 halls_soapStat matches 1 at @e[tag=halls_redSoap9] run particle falling_water ~-.1 ~0.63 ~
#7835 solution
execute if score ~red7 halls_soapStat matches 1 if score ~red8 halls_soapStat matches 1 if score ~red3 halls_soapStat matches 1 if score ~red5 halls_soapStat matches 1 if score ~finishRed halls_soapStat matches 0 run function main:halls/soap/redcorrect
#keytag
tag @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keySoap
tag @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keySoap

# take the shit
#tag players in the place
#execute positioned -1023.5 22.00 1053.5 run tag @a[distance=..3] add shitRoom
#execute positioned -1023.5 22.00 1053.5 run tag @a[distance=3.1..] remove shitRoom
#execute positioned -1023.5 22.00 1053.5 run scoreboard players set @a[tag=player,distance=..1] halls_shitter 1
#execute positioned -1023.5 22.00 1053.5 run scoreboard players set @a[tag=player,distance=1.1..] halls_shitter 0
execute as @a[tag=hallsAlive] at @s if block ~ ~-1 ~ smooth_quartz_stairs run tag @s add hallsShitting
execute as @a[tag=hallsShitting] at @s if block ~ ~-1 ~ hay_block run tag @s remove hallsShitting
tag @a[tag=hallsDead] remove hallsShitting
execute as @a[tag=hallsShitting,predicate=main:sneak_state,scores={halls_shitterClock=..99}] run scoreboard players add @s halls_shitterClock 1
execute as @a[tag=hallsShitting] run title @s actionbar [{"text":"Shitted: ","color":"gold"},{"score":{"name":"@s","objective":"halls_shitterClock"}},{"text":"%"}]
execute as @a[scores={halls_shitterClock=100}] unless score @s halls_shitter matches 1.. run function main:halls/shitterkey
#keytag
tag @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] add halls_keyShitter
tag @a[nbt=!{Inventory:[{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}]}] remove halls_keyShitter

# halls_remote
scoreboard players reset * halls_click