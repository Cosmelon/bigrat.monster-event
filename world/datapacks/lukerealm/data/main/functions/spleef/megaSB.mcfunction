# Description: selects candidate for the mega snowball
# Author: Cosmelon
# Type: single
# run from 

# technical end
tag @a[tag=player,gamemode=adventure,limit=1,sort=random] add hasMegaSB
give @a[tag=hasMegaSB] snowball

# visual end
title @a[tag=hasMegaSB] times 0 100 40
title @a[tag=hasMegaSB] title {"text":"Mega Snowball!","color":"aqua"}
title @a[tag=hasMegaSB] subtitle {"text":"Your next snowball has the potenital to cause chaos!","color":"gold"}
tellraw @a ""
tellraw @a [{"selector":"@a[tag=hasMegaSB]"},{"text":" was randomly chosen to recieve a mega snowball! Watch out!","color":"gold"}]
tellraw @a ""

playsound minecraft:entity.zombie.attack_iron_door master @a -497 69 -461