# snowball break sides
execute as @e[type=snowball] at @s if block ^0.5 ^ ^ snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^ snow_block run setblock ^0.5 ^ ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^ snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^ snow_block run setblock ^-0.5 ^ ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^0.5 ^ snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^0.5 ^ snow run setblock ^ ^0.5 ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^-0.5 ^ snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^-0.5 ^ snow_block run setblock ^ ^-0.5 ^ air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^ ^0.5 snow_block run setblock ^ ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^ ^ ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^ ^ ^-0.5 snow_block run setblock ^ ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


# snowball break corners
execute as @e[type=snowball] at @s if block ^0.5 ^ ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^0.5 snow_block run setblock ^0.5 ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^ ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^ ^-0.5 snow_block run setblock ^0.5 ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^0.5 snow_block run setblock ^-0.5 ^ ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^ ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^ ^-0.5 snow_block run setblock ^-0.5 ^ ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^0.5 snow_block run setblock ^0.5 ^0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^0.5 ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^0.5 ^-0.5 snow_block run setblock ^0.5 ^0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^0.5 snow_block run setblock ^-0.5 ^0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^0.5 ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^0.5 ^-0.5 snow_block run setblock ^-0.5 ^0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s


execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^0.5 snow_block run setblock ^0.5 ^-0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^0.5 ^-0.5 ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^0.5 ^-0.5 ^-0.5 snow_block run setblock ^0.5 ^-0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^0.5 snow_block run setblock ^-0.5 ^-0.5 ^0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

execute as @e[type=snowball] at @s if block ^-0.5 ^-0.5 ^-0.5 snow_block run scoreboard players set @s spleef_sb 1
execute as @e[type=snowball] if score @s spleef_sb matches 1 at @s if block ^-0.5 ^-0.5 ^-0.5 snow_block run setblock ^-0.5 ^-0.5 ^-0.5 air destroy
execute as @e[type=snowball] if score @s spleef_sb matches 1 run kill @s

