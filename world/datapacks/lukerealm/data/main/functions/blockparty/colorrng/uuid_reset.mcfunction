summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg bpColor run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp bpColor run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 bpColor run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 bpColor run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg bpColor += #temp bpColor
scoreboard players operation #lcg bpColor += #temp1 bpColor
scoreboard players operation #lcg bpColor += #temp2 bpColor
kill @e[tag=uuid]