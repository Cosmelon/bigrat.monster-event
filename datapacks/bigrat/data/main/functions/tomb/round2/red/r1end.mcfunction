# Description: room1 keydrop for red team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/red/r1_t

scoreboard players set +wave tbR2_RedR1 -1

summon minecraft:item ~ ~ ~ {Item:{id:"nether_wart",Count:1,tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"red"}]'}}},CustomName:'[{"text":"red key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_RedR1 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick