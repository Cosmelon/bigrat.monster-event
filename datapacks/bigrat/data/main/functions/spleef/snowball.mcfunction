# Description: calculates what snow block to destroy
# Author: Cosmelon, Tommy333
# Type: tick
# @s = thrown snowball
# run from main:spleef/tick

# snowball break sides
execute as @e[type=snowball] at @s if block ^0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^ ^ #main:spleef/sb_break run setblock ^0.5 ^ ^ air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^ ^ #main:spleef/sb_break run setblock ^-0.5 ^ ^ air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^0.5 ^ #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^ ^0.5 ^ #main:spleef/sb_break run setblock ^ ^0.5 ^ air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^ ^-0.5 ^ #main:spleef/sb_break run setblock ^ ^-0.5 ^ air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^ ^ ^0.5 #main:spleef/sb_break run setblock ^ ^ ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^ ^ ^-0.5 #main:spleef/sb_break run setblock ^ ^ ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s


# snowball break corners
execute as @e[type=snowball] at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^ ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^ ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^ ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^ ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^0.5 ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^0.5 ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^0.5 ^-0.5 ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^-0.5 ^0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run scoreboard players set @s sp_balldata 1
execute as @e[type=snowball] if score @s sp_balldata matches 1 at @s if block ^-0.5 ^-0.5 ^-0.5 #main:spleef/sb_break run setblock ^-0.5 ^-0.5 ^-0.5 air replace
execute as @e[type=snowball] if score @s sp_balldata matches 1 run kill @s
