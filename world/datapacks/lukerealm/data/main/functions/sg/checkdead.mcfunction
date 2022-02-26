# continually runs and checks if players are dead

execute if score ~notifRedDead sg matches 0 run execute if score ~aliveRed sg matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score ~notifRedDead sg matches 0 run execute if score ~aliveRed sg matches 0 run scoreboard players set ~notifRedDead sg 1

execute if score ~notifBlueDead sg matches 0 run execute if score ~aliveBlue sg matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score ~notifBlueDead sg matches 0 run execute if score ~aliveBlue sg matches 0 run scoreboard players set ~notifBlueDead sg 1

execute if score ~notifGreenDead sg matches 0 run execute if score ~aliveGreen sg matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score ~notifGreenDead sg matches 0 run execute if score ~aliveGreen sg matches 0 run scoreboard players set ~notifGreenDead sg 1

execute if score ~notifYellowDead sg matches 0 run execute if score ~aliveYellow sg matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score ~notifYellowDead sg matches 0 run execute if score ~aliveYellow sg matches 0 run scoreboard players set ~notifYellowDead sg 1