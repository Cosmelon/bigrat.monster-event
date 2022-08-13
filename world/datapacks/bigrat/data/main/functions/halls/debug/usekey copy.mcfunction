# Description: use a key at the main red circle
# Author: Cosmelon
# Type: single
# @s = @a standing on yellow terracotta with halls_key tag (attained by holding a key while halls is active)
# run from main:halls/hallstick 

# remove keysLeft count
execute if entity @s[team=Red] run scoreboard players remove ~red_left halls_keys 1

# wifikey
execute if entity @s[tag=halls_keyWifi] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the wifi key!","color":"gray"}]

# remote key
execute if entity @s[tag=halls_keyRemote] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the remote key!","color":"gray"}]

# soap key
execute if entity @s[tag=halls_keySoap] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the soap key!","color":"gray"}]

# shitter key
execute if entity @s[tag=halls_keyShitter] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the shitter key!","color":"gray"}]

# emerald key
execute if entity @s[tag=halls_keyEmerald] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the emerald mine key!","color":"gray"}]

# car key
execute if entity @s[tag=halls_keyCar] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the car key!","color":"gray"}]

# craft key
execute if entity @s[tag=halls_keyCraft] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the craft key!","color":"gray"}]

clear @s tripwire_hook




# remote key
execute if entity @s[team=Red,tag=halls_keyRemote] run tellraw @a[team=Red] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the remote key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keyRemote] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keyRemote] unless score ~red_remote halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyRemote] run scoreboard players set ~red_remote halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# soap key
execute if entity @s[team=Red,tag=halls_keySoap] run tellraw @a[team=Red] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the soap key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keySoap] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keySoap] unless score ~red_soap halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keySoap] run scoreboard players set ~red_soap halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# shitter key
execute if entity @s[team=Red,tag=halls_keyShitter] run tellraw @a[team=Red] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the shitter key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keyShitter] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keyShitter] unless score ~red_shitter halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyShitter] run scoreboard players set ~red_shitter halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# emerald key
execute if entity @s[team=Red,tag=halls_keyEmerald] run tellraw @a[team=Red] [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the emerald mine key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keyEmerald] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keyEmerald] unless score ~red_emerald halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyEmerald] run scoreboard players set ~red_emerald halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"Emerald Mine Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# car key
execute if entity @s[team=Red,tag=halls_keyCar] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the car key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keyCar] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keyCar] unless score ~red_car halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyCar] run scoreboard players set ~red_car halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"Car Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}

# craft key
execute if entity @s[team=Red,tag=halls_keyCraft] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the craft key!","color":"gray"}]
#points spot placeholder -- execute if entity @s[tag=halls_keyCraft] run tellraw @s [{"text":"» +__ pts (capturing a key)","color":"gray"}]
execute if entity @s[team=Red,tag=halls_keyCraft] unless score ~red_craft halls_keys matches 1 run scoreboard players remove ~left_red halls_keys 1
execute if entity @s[team=Red,tag=halls_keyCraft] run scoreboard players set ~red_craft halls_keys 1
clear @s tripwire_hook{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
