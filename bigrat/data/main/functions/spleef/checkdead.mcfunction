# Description: checks dead players in spleef
# Author: Cosmelon
# Type: tick
# run from main:spleef/sptick

execute if score $notifRedDead spleef matches 0 run execute if score $aliveRed spleef matches 0 run tellraw @a {"text":"Red team has been eliminated!","color":"red","bold":true}
execute if score $notifRedDead spleef matches 0 run execute if score $aliveRed spleef matches 0 run scoreboard players set $notifRedDead spleef 1

execute if score $notifBlueDead spleef matches 0 run execute if score $aliveBlue spleef matches 0 run tellraw @a {"text":"Blue team has been eliminated!","color":"blue","bold":true}
execute if score $notifBlueDead spleef matches 0 run execute if score $aliveBlue spleef matches 0 run scoreboard players set $notifBlueDead spleef 1

execute if score $notifGreenDead spleef matches 0 run execute if score $aliveGreen spleef matches 0 run tellraw @a {"text":"Green team has been eliminated!","color":"green","bold":true}
execute if score $notifGreenDead spleef matches 0 run execute if score $aliveGreen spleef matches 0 run scoreboard players set $notifGreenDead spleef 1

execute if score $notifYellowDead spleef matches 0 run execute if score $aliveYellow spleef matches 0 run tellraw @a {"text":"Yellow team has been eliminated!","color":"yellow","bold":true}
execute if score $notifYellowDead spleef matches 0 run execute if score $aliveYellow spleef matches 0 run scoreboard players set $notifYellowDead spleef 1