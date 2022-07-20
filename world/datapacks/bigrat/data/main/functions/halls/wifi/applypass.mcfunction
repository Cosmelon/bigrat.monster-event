# Description: put the password onto the computer
# Author: Cosmelon
# Type: single
# run from when player get advancement main:applywifi

advancement revoke @s only main:halls/applywifi
tag @s remove wifiPass

# todo: make this like an early 2000s computer boot animation
tellraw @s {"text":"Logging in..."}
tellraw @s {"text":"Success!"}

# sound
# todo: add dial up handshake