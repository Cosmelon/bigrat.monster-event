# Description: room2 keydrop for yellow team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/yellow/r2_t


scoreboard players set +wave tbR2_YellowR2 -1

summon minecraft:item ~ ~ ~ {Item:{id:"tripwire_hook",Count:1,tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"yellow"}]'}}},CustomName:'[{"text":"yellow key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_YellowR2 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick