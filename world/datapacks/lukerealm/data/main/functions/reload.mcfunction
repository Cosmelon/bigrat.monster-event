# making sure the parkour scoreboard is added
scoreboard objectives add parkour dummy
scoreboard players set $gameActive parkour 0
scoreboard players set $countDown parkour 0

scoreboard objectives add pkstart trigger
scoreboard objectives add pkend trigger