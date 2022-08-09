# Description: kill the backrooms game halls
# Author: Cosmelon
# Type: kill
# run from <manual>

# manage variables
scoreboard players set ~gameActive hallsCore 0
scoreboard players set ~countDown hallsCore 160
scoreboard players set ~wRelease hallsCore 100
scoreboard players reset * halls_sneak
scoreboard players reset * halls_death

# reset soap
scoreboard players set ~red1 halls_soapStat 0
scoreboard players set ~red2 halls_soapStat 0
scoreboard players set ~red3 halls_soapStat 0
scoreboard players set ~red4 halls_soapStat 0
scoreboard players set ~red5 halls_soapStat 0
scoreboard players set ~red6 halls_soapStat 0
scoreboard players set ~red7 halls_soapStat 0
scoreboard players set ~red8 halls_soapStat 0
scoreboard players set ~red9 halls_soapStat 0
scoreboard players set ~finishRed halls_soapStat 0
function main:halls/soap/reset

# remove stuff
bossbar set halls:wrelease visible false
kill @e[type=warden]
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
spawnpoint @a[team=Red] -976 22 1044

# put the startbox back
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass

# clear schedules
schedule clear main:lobby
schedule clear main:returnlobby

# text
tellraw @a[tag=!admin] {"text":"\nKilled Backrooms!\n","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"\nKilled SG! fix @ https://paypal.me/CosmelonSoftware\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
execute as @a run playsound minecraft:block.beacon.deactivate master @s ~ ~100 ~ 10000