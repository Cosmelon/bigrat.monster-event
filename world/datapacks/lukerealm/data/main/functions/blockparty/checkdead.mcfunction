# checks for dead players, runs every tick

execute if score ?notifRedDead blockParty matches 0 run execute if score ?aliveRed blockParty matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score ?notifRedDead blockParty matches 0 run execute if score ?aliveRed blockParty matches 0 run scoreboard players set ?notifRedDead blockParty 1

execute if score ?notifBlueDead blockParty matches 0 run execute if score ?aliveBlue blockParty matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score ?notifBlueDead blockParty matches 0 run execute if score ?aliveBlue blockParty matches 0 run scoreboard players set ?notifBlueDead blockParty 1

execute if score ?notifGreenDead blockParty matches 0 run execute if score ?aliveGreen blockParty matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score ?notifGreenDead blockParty matches 0 run execute if score ?aliveGreen blockParty matches 0 run scoreboard players set ?notifGreenDead blockParty 1

execute if score ?notifYellowDead blockParty matches 0 run execute if score ?aliveYellow blockParty matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score ?notifYellowDead blockParty matches 0 run execute if score ?aliveYellow blockParty matches 0 run scoreboard players set ?notifYellowDead blockParty 1