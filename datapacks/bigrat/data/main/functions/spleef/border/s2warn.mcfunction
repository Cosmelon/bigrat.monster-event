# Description: warn about shrink2
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/sptick when $countDown spleef matches 0

scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 20
scoreboard players set $shrinkTimer spleefBorder 400
scoreboard players add $shrinkNum spleefBorder 1
schedule function main:spleef/border/shrink2 20s replace