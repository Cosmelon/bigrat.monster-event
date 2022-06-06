# Description: calculates what snow block to destroy
# Author: Tommy333
# Type: tick
# @s = thrown snowball
# run from main:spleef/sptick

# snowball break sides
execute as @e[type=snowball] at @s if block ^0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^ #main:spleef/sb_break run setblock ^0.5 ^ ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run setblock ^-0.5 ^ ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^0.5 ^ #main:spleef/sb_break run setblock ^ ^0.5 ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run setblock ^ ^-0.5 ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^ ^0.5 #main:spleef/sb_break run setblock ^ ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run setblock ^ ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


# snowball break corners
execute as @e[type=snowball] at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s
