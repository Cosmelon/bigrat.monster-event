# Description: use a key at the main red circle
# Author: Cosmelon
# Type: single
# @s = @a standing on yellow terracotta with halls_key tag (attained by holding a key while halls is active)
# run from main:halls/tick 

# halls_subP#
#  tag that a player gets after submitting a key

# halls_subT#
#  tag that the player's whole team gets after one player submits a key

# wifikey
execute if entity @s[tag=halls_keyWifi,tag=!halls_subP1] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the wifi key!","color":"gray"}]
execute if entity @s[tag=halls_keyWifi,tag=!halls_subP1] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyWifi,tag=!halls_subP1] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyWifi,tag=halls_subP1] run tellraw @s [{"text":"» You already captured the wifi key!","color":"gray"}]
tag @s[tag=halls_keyWifi] add halls_subP1
execute if entity @s[team=Red,tag=halls_keyWifi] unless score .red_wifi halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyWifi] run scoreboard players set .red_wifi halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyWifi] unless score .blue_wifi halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyWifi] run scoreboard players set .blue_wifi halls_keys 1
execute if entity @s[team=Green,tag=halls_keyWifi] unless score .green_wifi halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyWifi] run scoreboard players set .green_wifi halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyWifi] unless score .yellow_wifi halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyWifi] run scoreboard players set .yellow_wifi halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# remotekey
execute if entity @s[tag=halls_keyRemote,tag=!halls_subP2] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the remote key!","color":"gray"}]
execute if entity @s[tag=halls_keyRemote,tag=!halls_subP2] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyRemote,tag=!halls_subP2] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyRemote,tag=halls_subP2] run tellraw @s [{"text":"» You already captured the remote key!","color":"gray"}]
tag @s[tag=halls_keyRemote] add halls_subP2
execute if entity @s[team=Red,tag=halls_keyRemote] unless score .red_remote halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyRemote] run scoreboard players set .red_remote halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyRemote] unless score .blue_remote halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyRemote] run scoreboard players set .blue_remote halls_keys 1
execute if entity @s[team=Green,tag=halls_keyRemote] unless score .green_remote halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyRemote] run scoreboard players set .green_remote halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyRemote] unless score .yellow_remote halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyRemote] run scoreboard players set .yellow_remote halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

#


# halls_shitterkey
execute if entity @s[tag=halls_keyShitter,tag=!halls_subP4] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the shitter key!","color":"gray"}]
execute if entity @s[tag=halls_keyShitter,tag=!halls_subP4] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyShitter,tag=!halls_subP4] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyShitter,tag=halls_subP4] run tellraw @s [{"text":"» You already captured the shitter key!","color":"gray"}]
tag @s[tag=halls_keyShitter] add halls_subP4
execute if entity @s[team=Red,tag=halls_keyShitter] unless score .red_shitter halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyShitter] run scoreboard players set .red_shitter halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyShitter] unless score .blue_shitter halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyShitter] run scoreboard players set .blue_shitter halls_keys 1
execute if entity @s[team=Green,tag=halls_keyShitter] unless score .green_shitter halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyShitter] run scoreboard players set .green_shitter halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyShitter] unless score .yellow_shitter halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyShitter] run scoreboard players set .yellow_shitter halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# emerald key
execute if entity @s[tag=halls_keyEmerald,tag=!halls_subP5] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the emerald mine key!","color":"gray"}]
execute if entity @s[tag=halls_keyEmerald,tag=!halls_subP5] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyEmerald,tag=!halls_subP5] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyEmerald,tag=halls_subP5] run tellraw @s [{"text":"» You already captured the emerald key!","color":"gray"}]
tag @s[tag=halls_keyEmerald] add halls_subP5
execute if entity @s[team=Red,tag=halls_keyEmerald] unless score .red_emerald halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyEmerald] run scoreboard players set .red_emerald halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyEmerald] unless score .blue_emerald halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyEmerald] run scoreboard players set .blue_emerald halls_keys 1
execute if entity @s[team=Green,tag=halls_keyEmerald] unless score .green_emerald halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyEmerald] run scoreboard players set .green_emerald halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyEmerald] unless score .yellow_emerald halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyEmerald] run scoreboard players set .yellow_emerald halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# car key
execute if entity @s[tag=halls_keyCar,tag=!halls_subP6] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the car key!","color":"gray"}]
execute if entity @s[tag=halls_keyCar,tag=!halls_subP6] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyCar,tag=!halls_subP6] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyCar,tag=halls_subP6] run tellraw @s [{"text":"» You already captured the car key!","color":"gray"}]
tag @s[tag=halls_keyCar] add halls_subP6
execute if entity @s[team=Red,tag=halls_keyCar] unless score .red_car halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyCar] run scoreboard players set .red_car halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyCar] unless score .blue_car halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyCar] run scoreboard players set .blue_car halls_keys 1
execute if entity @s[team=Green,tag=halls_keyCar] unless score .green_car halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyCar] run scoreboard players set .green_car halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyCar] unless score .yellow_car halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyCar] run scoreboard players set .yellow_car halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# craft key
execute if entity @s[tag=halls_keyCraft,tag=!halls_subP7] run tellraw @a[tag=player,distance=..100] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the craft key!","color":"gray"}]
execute if entity @s[tag=halls_keyCraft,tag=!halls_subP7] run tellraw @s [{"text":"+20 pts (capturing a key)","color":"green"}]
execute if entity @s[tag=halls_keyCraft,tag=!halls_subP7] run scoreboard players add @s indivScore 20
execute if entity @s[tag=halls_keyCraft,tag=halls_subP7] run tellraw @s [{"text":"» You already captured the craft key!","color":"gray"}]
tag @s[tag=halls_keyCraft] add halls_subP7
execute if entity @s[team=Red,tag=halls_keyCraft] unless score .red_craft halls_keys matches 1 run scoreboard players add .capt_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyCraft] run scoreboard players set .red_craft halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyCraft] unless score .blue_craft halls_keys matches 1 run scoreboard players add .capt_blue halls_keys 1
execute if entity @s[team=Blue,tag=halls_keyCraft] run scoreboard players set .blue_craft halls_keys 1
execute if entity @s[team=Green,tag=halls_keyCraft] unless score .green_craft halls_keys matches 1 run scoreboard players add .capt_green halls_keys 1
execute if entity @s[team=Green,tag=halls_keyCraft] run scoreboard players set .green_craft halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyCraft] unless score .yellow_craft halls_keys matches 1 run scoreboard players add .capt_yellow halls_keys 1
execute if entity @s[team=Yellow,tag=halls_keyCraft] run scoreboard players set .yellow_car halls_keys 1
clear @s nether_wart{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
