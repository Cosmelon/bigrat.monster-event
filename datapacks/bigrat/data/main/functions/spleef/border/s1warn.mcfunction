# Description: warn about shrink1
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/sptick when $countDown spleef matches 0

scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 20
scoreboard players set $shrinkTimer spleefBorder 400
scoreboard players add $shrinkNum spleefBorder 1
schedule function main:spleef/border/shrink1 20s replace