# Description: room3 keydrop for green team
# Author: Cosmelon
# type: single
# run from main:tomb/round2/green/r3_t

schedule function main:tomb/round2/green/r3_finish 5s

scoreboard players set +wave tbR2_GreenR3 -1

gamemode spectator @a[team=Green]

#summon minecraft:item ~ ~ ~ {Item:{id:"nether_wart",Count:1,tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"green"}]'}}},CustomName:'[{"text":"green key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_GreenR3 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick