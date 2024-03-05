# Description: main blockparty start file
# Author: Cosmelon
# Type: start
# run from main

# determine if it's safe to start the game
execute if score .validPlay br_tcheck matches 1 run function main:blockparty/setup
execute if score .validPlay br_tcheck matches 0 run tellraw @a[tag=debug] [{"text":"[WARN]: .br_tcheck fail. Aborting start.","color":"red"}]
execute if score .validPlay br_tcheck matches 0 run tellraw @a[team=Admin,tag=!debug] [{"text":"[WARN]: .br_tcheck fail. Aborting start.","color":"red"}]