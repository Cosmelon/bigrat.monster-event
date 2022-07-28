# Description: use a key at the main red circle
# Author: Cosmelon
# Type: single
# @s = @a standing on yellow terracotta with halls_key tag (attained by holding a key while halls is active)
# run from main:halls/hallstick 

execute if entity @s[tag=halls_keySoap] run tellraw @a [{"selector":"@s"},{"text":" captured the soap key!","color":"gray"}]
execute if entity @s[tag=halls_keyShitter] run tellraw @a [{"selector":"@s"},{"text":" captured the shitter key!","color":"gray"}]
execute if entity @s[tag=halls_keyRemote] run tellraw @a [{"selector":"@s"},{"text":" captured the remote key!","color":"gray"}]
execute if entity @s[tag=halls_keyWifi] run tellraw @s [{"selector":"@s"},{"text":" captured the wifi key!","color":"gray"}]

clear @s tripwire_hook