# Description: kill the backrooms game halls
# Author: Cosmelon
# Type: kill
# run from <manual>

# manage variables
scoreboard players set ~gameActive hallsCore 0
scoreboard players set ~countDown hallsCore 160
scoreboard players set ~wRelease hallsCore 100
scoreboard players reset * halls_sneak
scoreboard objectives remove halls_death
scoreboard objectives add halls_death deathCount

# reset soap
scoreboard players reset * halls_soap
scoreboard players reset * halls_soapStat
scoreboard players set ~finishRed halls_soapStat 0
scoreboard players set ~finishBlue halls_soapStat 0
scoreboard players set ~finishGreen halls_soapStat 0
scoreboard players set ~finishYellow halls_soapStat 0

# remove stuff
bossbar remove halls:wrelease
kill @e[type=minecraft:warden]
tag @a remove hallsAlive
tag @a remove hallsDead
tag @a remove wifiPass
tag @a remove hallsShitting
tag @a remove shitRoom
#entertags
tag @a remove halls_enter1
tag @a remove halls_enter2
tag @a remove halls_enter3
tag @a remove halls_enter4
tag @a remove halls_enter5
tag @a remove halls_enter6
tag @a remove halls_enter7

# spawnpoint reset
spawnpoint @a[team=Red] -976 25 1044
spawnpoint @a[team=Blue] -1205 25 1044
spawnpoint @a[team=Green] -1436 25 1044
spawnpoint @a[team=Yellow] -1666 25 1044

# put the startbox back
#red
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass
#blue
place template main:halls/startbox -1208 22 1041
fill -1206 26 1037 -1203 22 1037 tinted_glass
fill -1200 26 1041 -1200 22 1043 tinted_glass
fill -1952 26 1050 -1207 22 1050 tinted_glass
fill -2196 26 1041 -1213 22 1038 tinted_glass
#green
place template main:halls/startbox -1438 22 1041
fill -1436 26 1037 -1433 22 1037 tinted_glass
fill -1430 26 1041 -1430 22 1043 tinted_glass
fill -2182 26 1050 -1437 22 1050 tinted_glass
fill -2196 26 1041 -1443 22 1038 tinted_glass
#yellow
place template main:halls/startbox -1668 22 1041
fill -1666 26 1037 -1663 22 1037 tinted_glass
fill -1660 26 1041 -1660 22 1043 tinted_glass
fill -2412 26 1050 -1667 22 1050 tinted_glass
fill -2426 26 1041 -1673 22 1038 tinted_glass

# clear schedules
schedule clear main:lobby
schedule clear main:returnlobby
execute as @e[tag=halls_spawnpoint] run data modify entity @s Invisible set value true

# clear trigger
execute as @a run trigger halls_emReset set 0

# text
tellraw @a[tag=!admin] {"text":"\nKilled Backrooms!\n","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"\nKilled SG! fix @ https://paypal.me/CosmelonSoftware\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
execute as @a run playsound minecraft:block.beacon.deactivate master @s ~ ~100 ~ 10000