# Description: room2 keydrop for green team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/green/r2_t


scoreboard players set +wave tbR2_GreenR2 -1

summon minecraft:item ~ ~ ~ {Item:{id:"tripwire_hook",Count:1,tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"green"}]'}}},CustomName:'[{"text":"green key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_GreenR2 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick