# Description: clear all the data for halls/backrooms
# Author: Cosmelon
# type: single, scheduled
# run from main:lobby, <manual>

execute as @e[tag=halls_spawnpoint] run data modify entity @s Invisible set value true
bossbar remove halls:wrelease
bossbar remove halls:redtimer
bossbar remove halls:bluetimer
bossbar remove halls:greentimer
bossbar remove halls:yellowtimer
scoreboard objectives remove halls_main
scoreboard objectives remove halls_death
scoreboard objectives remove halls_keys
scoreboard objectives remove halls_pk
scoreboard objectives remove halls_sneak
scoreboard objectives remove halls_remote
scoreboard objectives remove halls_click
scoreboard objectives remove halls_shitter
scoreboard objectives remove halls_shitterClock
scoreboard objectives remove halls_emerald
scoreboard objectives remove halls_soapStat
scoreboard objectives remove halls_emReset
scoreboard objectives remove halls_carKeys
scoreboard objectives remove halls_craftTalk
scoreboard objectives remove halls_craftIron
scoreboard objectives remove halls_craftGold
scoreboard objectives remove halls_craftRedstone
scoreboard objectives remove halls_craftCobble
scoreboard objectives remove halls_craftStone
scoreboard objectives remove halls_craftWood
scoreboard objectives remove halls_craftReset
schedule clear main:halls/music