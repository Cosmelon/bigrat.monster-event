# Description: warn about shrink1
# Author: Cosmelon
# Type: single, scheduled
# run from 

bossbar set minecraft:spleefshrinkwarn visible true
bossbar set minecraft:spleefshrinkwarn max 400
scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 20
scoreboard players set $shrinkTimer spleefBorder 400
scoreboard players add $shrinkNum spleefBorder 1
schedule function main:spleef/border/shrink1 20s replace