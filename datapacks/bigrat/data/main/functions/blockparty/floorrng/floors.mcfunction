# Description: actually placing the different floors
# Author: Cosmelon
# Type: tick
# @s = <executor> (can be omitted when not used)
# run from main:blockparty/bptick when .floorSwitch blockParty == 1


# doing some RNG

#old way of doing it, hard-coding in the range now
# scoreboard players add .changeFloor bp_floor 1
# execute if score .changeFloor bp_floor matches 20.. run function main:blockparty/floorrng/range
# execute if score .changeFloor bp_floor matches 20.. run scoreboard players set .changeFloor bp_floor 0
scoreboard players add .changeFloor bp_floor 1
execute if score .changeFloor bp_floor matches 20.. store result score .out bp_floor run random value 1..11
execute if score .changeFloor bp_floor matches 20.. run scoreboard players set .changeFloor bp_floor 0

# placing the structure
execute if score .out bp_floor matches 1 run place template main:bp/pat1/1 -2013 56 2988
execute if score .out bp_floor matches 2 run place template main:bp/pat1/2 -2013 56 2988
execute if score .out bp_floor matches 3 run place template main:bp/pat1/3 -2013 56 2988
execute if score .out bp_floor matches 4 run place template main:bp/pat1/4 -2013 56 2988
execute if score .out bp_floor matches 5 run place template main:bp/pat1/5 -2013 56 2988
execute if score .out bp_floor matches 6 run place template main:bp/pat1/6 -2013 56 2988
execute if score .out bp_floor matches 7 run place template main:bp/pat1/7 -2013 56 2988
execute if score .out bp_floor matches 8 run place template main:bp/pat1/8 -2013 56 2988
execute if score .out bp_floor matches 9 run place template main:bp/pat1/9 -2013 56 2988
execute if score .out bp_floor matches 10 run place template main:bp/pat1/10 -2013 56 2988
execute if score .out bp_floor matches 11 run place template main:bp/pat1/11 -2013 56 2988