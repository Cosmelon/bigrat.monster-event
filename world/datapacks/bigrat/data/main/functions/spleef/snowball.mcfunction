# Description: calculates what snow block to destroy
# Author: Cosmelon, Tommy333
# Type: tick
# @s = thrown snowball
# run from main:spleef/sptick

execute at @a[tag=hasMegaSB] run tag @e[type=minecraft:snowball,distance=..1.65] add megaSB
execute at @a[tag=hasMegaSB] if entity @e[type=snowball,tag=megaSB,distance=..1.7] run tag @a remove hasMegaSB

# snowball break sides
execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^ #main:spleef/sb_break run setblock ^0.5 ^ ^ air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run setblock ^-0.5 ^ ^ air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^ ^0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^0.5 ^ #main:spleef/sb_break run setblock ^ ^0.5 ^ air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run setblock ^ ^-0.5 ^ air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^ ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^ ^0.5 #main:spleef/sb_break run setblock ^ ^ ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run setblock ^ ^ ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s


# snowball break corners
execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=!megaSB] at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^-0.5 air replace
execute as @e[type=snowball,tag=!megaSB] if score @s spleef_sb matches 1 run kill @s







# megaball
execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^ #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^ ^0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^0.5 ^ #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^ ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^ ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

# megaball corner
execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball,tag=megaSB] at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace #main:spleef/sb_break
execute as @e[type=snowball,tag=megaSB] if score @s spleef_sb matches 1 run kill @s