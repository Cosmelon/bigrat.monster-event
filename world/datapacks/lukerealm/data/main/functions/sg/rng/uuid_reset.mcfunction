# Description: superpower
# Author: Cosmelon
# Type: math
# run from main:sg/rng/init

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg sgMath run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp sgMath run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 sgMath run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 sgMath run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg sgMath += #temp sgMath
scoreboard players operation #lcg sgMath += #temp1 sgMath
scoreboard players operation #lcg sgMath += #temp2 sgMath
kill @e[tag=uuid]