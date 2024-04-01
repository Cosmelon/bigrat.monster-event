# Description: Turns the tv on
# Author: Cosmelon
# Type: single
# run from main:halls/tick

#yeah this is basically a stupid little joke where I turn the tv on in the "find the remote room"
# and it basically just plays a stupid gif or something I think it would be a funny idea


# placeholder key item for now
clear @s lever{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}
execute if entity @s[team=Red] run summon item -928.5 24.00 1019.5 {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Red] positioned -928.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomName set value '[{"text":"TV Key","color":"red"}]'
execute if entity @s[team=Red] positioned -928.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomNameVisible set value true
execute if entity @s[team=Blue] run summon item -1158.5 24.00 1019.5 {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Blue] positioned -1158.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomName set value '[{"text":"TV Key","color":"red"}]'
execute if entity @s[team=Blue] positioned -1158.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomNameVisible set value true
execute if entity @s[team=Green] run summon item -1388.5 24.00 1019.5 {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Green] positioned -1388.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomName set value '[{"text":"TV Key","color":"red"}]'
execute if entity @s[team=Green] positioned -1388.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomNameVisible set value true
execute if entity @s[team=Yellow] run summon item -1618.5 24.00 1019.5 {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Yellow] positioned -1618.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomName set value '[{"text":"TV Key","color":"red"}]'
execute if entity @s[team=Yellow] positioned -1618.5 24.00 1019.5 run data modify entity @e[type=item,limit=1,sort=nearest] CustomNameVisible set value true
