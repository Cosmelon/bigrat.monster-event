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

trigger halls_emReset set 0
trigger halls_craftReset set 0