# Description: use a key at the main red circle
# Author: Cosmelon
# Type: single
# @s = @a standing on yellow terracotta with halls_key tag (attained by holding a key while halls is active)
# run from main:halls/hallstick 

execute if entity @s[tag=halls_keyWifi] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the wifi key!","color":"gray"}]
execute if entity @s[tag=halls_keyRemote] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the remote key!","color":"gray"}]
execute if entity @s[tag=halls_keySoap] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the soap key!","color":"gray"}]
execute if entity @s[tag=halls_keyShitter] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the shitter key!","color":"gray"}]
execute if entity @s[tag=halls_keyEmerald] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the emerald mine key!","color":"gray"}]
execute if entity @s[tag=halls_keyCar] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the car key!","color":"gray"}]
execute if entity @s[tag=halls_keyCraft] run tellraw @a [{"text":"» ","color":"gray"},{"selector":"@s"},{"text":" captured the craft key!","color":"gray"}]

clear @s tripwire_hook