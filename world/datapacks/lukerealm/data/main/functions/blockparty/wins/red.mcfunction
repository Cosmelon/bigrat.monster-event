# wins for the red team


scoreboard players set ?gameActive blockParty 0
scoreboard players reset * bpDead
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
tag @a remove bpAlive
tag @a remove bpDead
title @a times 0 50 0
title @a clear
clear @a[team=!Admin]
# placeholder for the points given
title @a title {"text":"Red team wins!","color":"red"}
execute unless score ?round blockParty matches 3 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ?round blockParty matches 3 run schedule function main:blockparty/start 6s replace 
execute if score ?round blockParty matches 3 run schedule function main:blockparty/wins/returnlobby 3s replace
function main:blockparty/floorrng/floors
execute at @a as @a run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10