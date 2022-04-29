# checks for dead players, runs every tick

execute if score #notifRedDead bpDead matches 0 run execute if score #aliveRed bpDead matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score #notifRedDead bpDead matches 0 run execute if score #aliveRed bpDead matches 0 run scoreboard players set #notifRedDead bpDead 1

execute if score #notifBlueDead bpDead matches 0 run execute if score $aliveBlue bpDead matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score #notifBlueDead bpDead matches 0 run execute if score $aliveBlue bpDead matches 0 run scoreboard players set $notifBlueDead bpDead 1

execute if score #notifGreenDead bpDead matches 0 run execute if score $aliveGreen bpDead matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score #notifGreenDead bpDead matches 0 run execute if score $aliveGreen bpDead matches 0 run scoreboard players set $notifGreenDead bpDead 1

execute if score #notifYellowDead bpDead matches 0 run execute if score $aliveYellow bpDead matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score #notifYellowDead bpDead matches 0 run execute if score $aliveYellow bpDead matches 0 run scoreboard players set $notifYellowDead bpDead 1