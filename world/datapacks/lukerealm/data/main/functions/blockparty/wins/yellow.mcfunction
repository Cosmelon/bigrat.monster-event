# wins for the yellow team

scoreboard players set ?gameActive blockParty 0
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# placeholder for the points given
title @a title {"text":"Yellow team wins!","color":"yellow"}
execute unless score ?round blockParty matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ?round blockParty matches 3 run schedule function main:blockparty/start 6s replace 
setblock -2017 26 2984 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l26",posX:4,posY:30,posZ:4} destroy
execute at @a as @a run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10


scoreboard players set ?gameActive blockParty 0
scoreboard players add ?round blockParty 1
scoreboard players reset * bpDead


# workaround for infinite game repeat
execute if score ?red blockParty matches 0 if score ?blue blockParty matches 0 if score ?green blockParty matches 1.. if score ?yellow blockParty matches 1.. run function main:blockparty/killbp