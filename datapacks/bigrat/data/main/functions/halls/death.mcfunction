# Description: you died!
# Author: Cosmelon
# Type: hopefully never haha (cause you know, it's death!)
# @s = <executor> (can be omitted when not used)
# run from function main:halls/hallstick

scoreboard players set @s halls_death 10
# playsound
playsound minecraft:custom.halls/death ambient @s ~ ~ ~ 10000
title @s times 30 60 30
title @s title {"text":"YOU DIED!","color":"red","bold":true}
execute if entity @s[team=Red] run tp @e[name="~redSpawn",limit=1,sort=nearest]
execute if entity @s[team=Blue] run tp @e[name="~blueSpawn",limit=1,sort=nearest]
execute if entity @s[team=Green] run tp @e[name="~greenSpawn",limit=1,sort=nearest]
execute if entity @s[team=Yellow] run tp @e[name="~yellowSpawn",limit=1,sort=nearest]
clear @s

trigger halls_emReset set 0
trigger halls_craftReset set 0