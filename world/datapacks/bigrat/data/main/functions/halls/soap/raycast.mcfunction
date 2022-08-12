# Description: raycast in transit
# Author: Cosmelon
# Type: single
# @s = raycast particle
# run from main:halls/soap/start_raycast

execute as @e[tag=!raycasting,type=!#main:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 if score @s halls_soap matches 0 run function main:halls/soap/on
execute as @e[tag=!raycasting,type=!#main:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 if score @s halls_soap matches 1 run function main:halls/soap/off

scoreboard players add .distance halls_soapDist 1

# Make raycast visible
particle minecraft:smoke ~ ~ ~ 0 0 0 0 0

# Repeat the raycast if certain conditions are met
execute if score .distance halls_soapDist matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #main:raycast_pass run function main:halls/soap/raycast
