# Description: Checks for dead players, sets .notif<team>Dead == 1 when players on <team> == 0
# Author: Cosmelon
# Type: tick
# run from main:blockparty/bptick

execute if score .notifRedDead bp_main matches 0 if score .aliveRed bp_main matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score .notifRedDead bp_main matches 0 if score .aliveRed bp_main matches 0 run scoreboard players set .notifRedDead bp_main 1

execute if score .notifBlueDead bp_main matches 0 if score .aliveBlue bp_main matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score .notifBlueDead bp_main matches 0 if score .aliveBlue bp_main matches 0 run scoreboard players set .notifBlueDead bp_main 1

execute if score .notifGreenDead bp_main matches 0 if score .aliveGreen bp_main matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score .notifGreenDead bp_main matches 0 if score .aliveGreen bp_main matches 0 run scoreboard players set .notifGreenDead bp_main 1

execute if score .notifYellowDead bp_main matches 0 if score .aliveYellow bp_main matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score .notifYellowDead bp_main matches 0 if score .aliveYellow bp_main matches 0 run scoreboard players set .notifYellowDead bp_main 1