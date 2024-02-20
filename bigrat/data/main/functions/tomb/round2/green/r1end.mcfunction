# Description: room1 keydrop for green team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/green/r1_t

scoreboard players set +wave tbR2_GreenR1 -1

summon minecraft:item ~ ~ ~ {Item:{id:"tripwire_hook",Count:1,tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"green"}]'}}},CustomName:'[{"text":"green key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_GreenR1 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick