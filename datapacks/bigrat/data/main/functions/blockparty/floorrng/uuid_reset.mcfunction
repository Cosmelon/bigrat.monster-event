# floor pick math

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg bp_floor run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp bp_floor run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 bp_floor run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 bp_floor run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg bp_floor += #temp bp_floor
scoreboard players operation #lcg bp_floor += #temp1 bp_floor
scoreboard players operation #lcg bp_floor += #temp2 bp_floor
kill @e[tag=uuid]