summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score ?lcg bpFloor run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score ?temp bpFloor run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score ?temp1 bpFloor run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score ?temp2 bpFloor run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation ?lcg bpFloor += ?temp bpFloor
scoreboard players operation ?lcg bpFloor += ?temp1 bpFloor
scoreboard players operation ?lcg bpFloor += ?temp2 bpFloor
kill @e[tag=uuid]