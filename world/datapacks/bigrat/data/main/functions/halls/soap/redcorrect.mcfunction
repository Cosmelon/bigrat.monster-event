# correct combination for red soap

execute if entity @s[team=Red] run scoreboard players set ~finishRed halls_soapStat 1
execute if entity @s[team=Red] run tellraw @a {"text":"Red team has found the soap!","color":"red"}
execute if entity @s[team=Red] run summon item -1001.5 23 986.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Red] positioned -1001.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomName set value '[{"text":"Key","color":"red"}]'
execute if entity @s[team=Red] positioned -1001.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomNameVisible set value true
execute if entity @s[team=Blue] run scoreboard players set ~finishBlue halls_soapStat 1
execute if entity @s[team=Blue] run tellraw @a {"text":"Blue team has found the soap!","color":"blue"}
execute if entity @s[team=Blue] run summon item -1231.5 23 986.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Blue] positioned -1231.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomName set value '[{"text":"Key","color":"red"}]'
execute if entity @s[team=Blue] positioned -1231.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomNameVisible set value true 
execute if entity @s[team=Green] run scoreboard players set ~finishGreen halls_soapStat 1
execute if entity @s[team=Green] run tellraw @a {"text":"Green team has found the soap!","color":"green"}
execute if entity @s[team=Green] run summon item -1461.5 23 986.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Green] positioned -1461.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomName set value '[{"text":"Key","color":"red"}]'
execute if entity @s[team=Green] positioned -1461.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomNameVisible set value true 
execute if entity @s[team=Yellow] run scoreboard players set ~finishYellow halls_soapStat 1
execute if entity @s[team=Yellow] run tellraw @a {"text":"Yellow team has found the soap!","color":"yellow"}
execute if entity @s[team=Yellow] run summon item -1691.5 23 986.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Yellow] positioned -1691.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomName set value '[{"text":"Key","color":"red"}]'
execute if entity @s[team=Yellow] positioned -1691.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomNameVisible set value true 