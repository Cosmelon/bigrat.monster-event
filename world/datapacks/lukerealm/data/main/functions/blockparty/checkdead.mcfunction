# checks for dead players, runs every tick

execute if score $notifRedDead blockPartyDead matches 0 run execute if score $aliveRed blockPartyDead matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score $notifRedDead blockPartyDead matches 0 run execute if score $aliveRed blockPartyDead matches 0 run scoreboard players set $notifRedDead blockPartyDead 1

execute if score $notifBlueDead blockPartyDead matches 0 run execute if score $aliveBlue blockPartyDead matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score $notifBlueDead blockPartyDead matches 0 run execute if score $aliveBlue blockPartyDead matches 0 run scoreboard players set $notifBlueDead blockPartyDead 1

execute if score $notifGreenDead blockPartyDead matches 0 run execute if score $aliveGreen blockPartyDead matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score $notifGreenDead blockPartyDead matches 0 run execute if score $aliveGreen blockPartyDead matches 0 run scoreboard players set $notifGreenDead blockPartyDead 1

execute if score $notifYellowDead blockPartyDead matches 0 run execute if score $aliveYellow blockPartyDead matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score $notifYellowDead blockPartyDead matches 0 run execute if score $aliveYellow blockPartyDead matches 0 run scoreboard players set $notifYellowDead blockPartyDead 1