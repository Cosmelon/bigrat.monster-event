# Description: room2 keydrop for blue team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/red/r2_t


scoreboard players set +wave tbR2_RedR2 -1

summon minecraft:item ~ ~ ~ {Item:{id:"nether_wart",Count:1,tag:{display:{Name:'[{"text":"Key 2","italic":false,"color":"red"}]'}}},CustomName:'[{"text":"red key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_RedR2 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick