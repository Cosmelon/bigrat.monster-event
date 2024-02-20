# Description: starts the raycast
# Author: Cosmelon
# Type: single
# @s = entities that launch the raycast
# run from 

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function main:halls/soap/raycast

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance halls_soapDist
