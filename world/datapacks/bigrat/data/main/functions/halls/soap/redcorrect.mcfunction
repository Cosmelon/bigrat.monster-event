# correct combination for red soap

scoreboard players set ~finishRed halls_soapStat 1
tellraw @a {"text":"Red team has found the soap!","color":"red"}

summon item -1001.5 23 986.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Soap Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute positioned -1001.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomName set value '[{"text":"Key","color":"red"}]'
execute positioned -1001.5 23 986.5 run data modify entity @e[type=item,sort=nearest,limit=1] CustomNameVisible set value true 