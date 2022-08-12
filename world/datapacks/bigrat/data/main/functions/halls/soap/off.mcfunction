# Description: turns on a showerhead
# Author: Cosmelon
# Type: single 
# @s = <executor> (can be omitted when not used)
# run from main:halls/soap/collide

scoreboard players set @e[type=pig,limit=1,sort=nearest] halls_soap 0
scoreboard players set .distance halls_soapDist 1000