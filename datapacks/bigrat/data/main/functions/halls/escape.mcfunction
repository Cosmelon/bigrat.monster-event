# Description: for when an individual finishes halls, this happens to them
# Author: Cosmelon
# Type: single
# @s = @a[tag=halls_exit]
# run from main:halls/tick

tp @s -1184.00 4.00 749.97
tellraw @s {"text":"» You made it out!","color":"green"}

scoreboard players set @s halls_death -1
tag @s add halls_escaped
tag @s remove halls_exit

playsound entity.player.levelup voice @s ~ ~100 ~ 1000