summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg bpTimer run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp bpTimer run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 bpTimer run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 bpTimer run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg bpTimer += #temp bpTimer
scoreboard players operation #lcg bpTimer += #temp1 bpTimer
scoreboard players operation #lcg bpTimer += #temp2 bpTimer
kill @e[tag=uuid]