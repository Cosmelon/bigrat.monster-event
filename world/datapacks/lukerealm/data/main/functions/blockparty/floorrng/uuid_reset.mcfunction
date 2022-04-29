summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg blockPartyFloor run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp blockPartyFloor run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 blockPartyFloor run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 blockPartyFloor run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg blockPartyFloor += #temp blockPartyFloor
scoreboard players operation #lcg blockPartyFloor += #temp1 blockPartyFloor
scoreboard players operation #lcg blockPartyFloor += #temp2 blockPartyFloor
kill @e[tag=uuid]