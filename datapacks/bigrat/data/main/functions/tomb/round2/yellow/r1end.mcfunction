# Description: room1 keydrop for yellow team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/yellow/r1_t

tellraw @a ""
tellraw @a "good job!"
tellraw @a ""

scoreboard players set +wave tbR2_YellowR1 -1

summon minecraft:item ~ ~ ~ {Item:{id:"nether_wartCount:1,tag:{display:{Name:'[{"text":"Key 1","italic":false,"color":"yellow"}]'}}},CustomName:'[{"text":"yellow key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_YellowR1 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick