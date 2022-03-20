# returns players to lobby
time set 12750
scoreboard players set $spleef currentGame 0
scoreboard players set $race currentGame 0
scoreboard players set $sg currentGame 0
scoreboard players set $fossilDig currentGame 0
scoreboard players set $tntWar currentGame 0
tp @a -181.5 5 137.5 0 10
gamemode adventure @a
effect clear @a

bossbar set minecraft:spleefroundcount visible false

# reset stuff for spleef
title @a title ""
title @a subtitle ""
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0
scoreboard players set $shrink3Timer spleefBorder 5000
scoreboard players set $shrink2Timer spleefBorder 3400
scoreboard players set $shrink1Timer spleefBorder 2400
scoreboard players set $countDown spleef 160
scoreboard players set $round spleef 1
scoreboard players set $shrinkActual spleefBorder 400
worldborder set 6000000 1
worldborder center 0 0

# reset stuff for race
scoreboard players set !gameActive race 0
scoreboard players set !countDown race 160
scoreboard players set !gateOpen race 100
scoreboard players set !gateShut race 0
scoreboard players set !milli race 0
scoreboard players set !raceTime raceMilli 0
scoreboard players set !raceTime raceSec 0
scoreboard players set !raceTime raceMin 0
scoreboard players set @a raceMilli 0
scoreboard players set @a raceSec 0
scoreboard players set @a raceMin 0
scoreboard players set @a raceCP 0
scoreboard players set @a raceLap 0
effect clear @a
clear @a[team=!Admin]
title @a actionbar ""
title @a title ""
bossbar set minecraft:racetime visible false

# reset stuff for sg
title @a title ""
title @a subtitle ""
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players set ~countDown sg 300
scoreboard players set ~round sg 1
worldborder set 6000000 1
worldborder center 0 0

clear @a[team=!Admin]
effect give @a[team=!Admin] weakness 10000 255 true