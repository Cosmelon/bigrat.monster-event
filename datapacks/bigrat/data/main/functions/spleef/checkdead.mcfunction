# Description: checks dead players in spleef
# Author: Cosmelon
# Type: tick
# run from main:spleef/tick

execute if score .notifRed sp_main matches 0 run execute if score .aliveRed sp_main matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score .notifRed sp_main matches 0 run execute if score .aliveRed sp_main matches 0 run scoreboard players set .notifRed sp_main 1

execute if score .notifBlue sp_main matches 0 run execute if score .aliveBlue sp_main matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score .notifBlue sp_main matches 0 run execute if score .aliveBlue sp_main matches 0 run scoreboard players set .notifBlue sp_main 1

execute if score .notifGreen sp_main matches 0 run execute if score .aliveGreen sp_main matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score .notifGreen sp_main matches 0 run execute if score .aliveGreen sp_main matches 0 run scoreboard players set .notifGreen sp_main 1

execute if score .notifYellow sp_main matches 0 run execute if score .aliveYellow sp_main matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score .notifYellow sp_main matches 0 run execute if score .aliveYellow sp_main matches 0 run scoreboard players set .notifYellow sp_main 1