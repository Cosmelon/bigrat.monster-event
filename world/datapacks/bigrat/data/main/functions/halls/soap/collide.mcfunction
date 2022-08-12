# Description: Raycast collision with object
# Author: Cosmelon
# run from main:halls/soap/raycast

# turning shower head on/off
#execute if score @s halls_soap matches 0 run function main:halls/soap/on
#execute if score @s halls_soap matches 1 run function main:halls/soap/off
scoreboard players set @s halls_soap 1

#### Max out range to end the raycast
scoreboard players set .distance halls_soapDist 1000