# kills sg
title @a title ""
title @a subtitle ""
scoreboard players set ~gameActive sg 0
scoreboard players set ~round sg 1
scoreboard players set ~countDown sg 300
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players reset * sgDeaths
worldborder set 6000000 1
worldborder center 0 0

clear @a[team=!Admin]
playsound minecraft:block.beacon.deactivate master @a