# timer pick math
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg bp_timer run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp bp_timer run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 bp_timer run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 bp_timer run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg bp_timer += #temp bp_timer
scoreboard players operation #lcg bp_timer += #temp1 bp_timer
scoreboard players operation #lcg bp_timer += #temp2 bp_timer
kill @e[tag=uuid]