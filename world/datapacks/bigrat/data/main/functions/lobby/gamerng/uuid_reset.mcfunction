# color pick math

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg brGP run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp brGP run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 brGP run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 brGP run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg brGP += #temp brGP
scoreboard players operation #lcg brGP += #temp1 brGP
scoreboard players operation #lcg brGP += #temp2 brGP
kill @e[tag=uuid]