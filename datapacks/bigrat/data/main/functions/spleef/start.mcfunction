# Description: main spleef start file
# Author: Cosmelon
# Type: start
# run from main

# determine if it's safe to start the game
execute if score .validPlay teamCheck matches 1 run function main:spleef/setup
execute if score .validPlay teamCheck matches 0 run tellraw @a[tag=debug] [{"text":"[WARN]: .teamCheck fail. Aborting start.","color":"red"}]
execute if score .validPlay teamCheck matches 0 run tellraw @a[team=Admin,tag=!debug] [{"text":"[WARN]: .teamCheck fail. Aborting start.","color":"red"}]