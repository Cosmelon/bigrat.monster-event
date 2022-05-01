# wins for the green team

scoreboard players set ?gameActive blockParty 0
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# placeholder for the points given
title @a title {"text":"Green team wins!","color":"green"}
execute unless score ?round blockParty matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ?round blockParty matches 3 run schedule function main:blockparty/start 6s replace 
execute if score ?round blockParty matches 3 run schedule function main:blockparty/wins/returnlobby 3s replace

scoreboard players add ?round blockParty 1
scoreboard players reset * bpDeaths
execute at @a as @a run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10




# workaround for infinite game repeat
execute if score ?red blockParty matches 0 if score ?blue blockParty matches 0 if score ?green blockParty matches 1.. if score ?yellow blockParty matches 0 run function main:blockparty/killbp