summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg blockPartyColor run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp blockPartyColor run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 blockPartyColor run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 blockPartyColor run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg blockPartyColor += #temp blockPartyColor
scoreboard players operation #lcg blockPartyColor += #temp1 blockPartyColor
scoreboard players operation #lcg blockPartyColor += #temp2 blockPartyColor
kill @e[tag=uuid]