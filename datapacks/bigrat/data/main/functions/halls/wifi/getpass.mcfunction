# Description: get wifi password for password challenge
# Author: Cosmelon
# Type: single
# run from when player clicks the wifi password sign

tellraw @s {"text":"You got the wifi password! Log into the computer","color":"gold"}
schedule function main:halls/wifi/hint 10s
function main:sfx/infosound
tag @s add halls_wifiPass