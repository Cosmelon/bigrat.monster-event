# Description: warn about shrink1
# Author: Cosmelon
# Type: single, scheduled
# run from main:spleef/tick when .countDown sp_main matches 0

scoreboard players set .tick sp_border 0
scoreboard players set .sec sp_border 20
scoreboard players set .shrinkTimer sp_border 400
scoreboard players add .shrinkNum sp_border 1
schedule function main:spleef/border/shrink1 20s replace