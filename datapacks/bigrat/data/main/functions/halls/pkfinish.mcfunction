# Description: when the player finishes the parkour challenge
# Author: Cosmelon
# type: single
# run from: main:halls/tick

tellraw @a "you got the pk key"
give @s nether_wart{display:{Name:'[{"text":"Parkour Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}
tag @s add halls_pkfinish