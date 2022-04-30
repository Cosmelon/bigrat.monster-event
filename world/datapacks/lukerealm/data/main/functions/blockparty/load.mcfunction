# Insert your loading commands here! (These commands run when you reload the datapack.) 
scoreboard players reset ?tick blockParty
scoreboard players reset ?sec blockParty

scoreboard objectives add blockMath dummy
scoreboard objectives add bpConstant dummy

scoreboard objectives add bpColor dummy
scoreboard objectives add bpFloor dummy
scoreboard objectives add bpSound dummy
scoreboard objectives add bpStop dummy
scoreboard objectives add bpTimer dummy 
scoreboard objectives add bpDead deathCount


scoreboard players set #2 bpConstant 2
scoreboard players set #1000 bpConstant 1000
scoreboard players set #10000 bpConstant 10000
scoreboard players set #lcg bpConstant 1103515245
function main:blockparty/colorrng/init
function main:blockparty/floorrng/init
function main:blockparty/timerrng/init