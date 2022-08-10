# Description: Loops the race music for the game
# Author: Cosmelon
# Type: loop
# run from main:race/music

playsound minecraft:custom.race/music voice Cosmelon 310 100 0 10000
schedule function main:race/music 374s replace

#debug
tellraw @a[tag=debugView] {"text":"[Debug] Race music loop start","color":"dark_gray"}