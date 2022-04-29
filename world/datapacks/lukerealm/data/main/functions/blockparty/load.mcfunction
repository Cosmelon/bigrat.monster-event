# Insert your loading commands here! (These commands run when you reload the datapack.) 
scoreboard players reset $tick blockParty
scoreboard players reset $sec blockParty

scoreboard objectives add blockMath dummy
scoreboard objectives add blockConstant dummy



scoreboard players set #2 blockConstant 2
scoreboard players set #1000 blockConstant 1000
scoreboard players set #10000 blockConstant 10000
scoreboard players set #lcg blockConstant 1103515245
function bp:colorrng/init
function bp:floorrng/init
function bp:timerrng/init