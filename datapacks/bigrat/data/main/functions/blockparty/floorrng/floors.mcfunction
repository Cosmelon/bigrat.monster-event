# Description: actually placing the different floors
# Author: Cosmelon
# Type: tick
# @s = <executor> (can be omitted when not used)
# run from main:blockparty/bptick when ?floorSwitch blockParty == 1


# doing some RNG
scoreboard players add .changeFloor bp_floor 1
execute if score .changeFloor bp_floor matches 20.. run function main:blockparty/floorrng/range
execute if score .changeFloor bp_floor matches 20.. run scoreboard players set .changeFloor bp_floor 0


# placing the structure block
# in the future I want to integrate more patterns into blockparty, built some compatability anyway
execute if score .out bp_floor matches 1 run place template main:bp/pat1/p1l1 -2013 56 2988
execute if score .out bp_floor matches 2 run place template main:bp/pat1/p1l2 -2013 56 2988
execute if score .out bp_floor matches 3 run place template main:bp/pat1/p1l3 -2013 56 2988
execute if score .out bp_floor matches 4 run place template main:bp/pat1/p1l4 -2013 56 2988
execute if score .out bp_floor matches 5 run place template main:bp/pat1/p1l5 -2013 56 2988
execute if score .out bp_floor matches 6 run place template main:bp/pat1/p1l6 -2013 56 2988
execute if score .out bp_floor matches 7 run place template main:bp/pat1/p1l7 -2013 56 2988
execute if score .out bp_floor matches 8 run place template main:bp/pat1/p1l8 -2013 56 2988
execute if score .out bp_floor matches 9 run place template main:bp/pat1/p1l9 -2013 56 2988
execute if score .out bp_floor matches 10 run place template main:bp/pat1/p1l10 -2013 56 2988
execute if score .out bp_floor matches 11 run place template main:bp/pat1/p1l11 -2013 56 2988
execute if score .out bp_floor matches 12 run place template main:bp/pat1/p1l12 -2013 56 2988
execute if score .out bp_floor matches 13 run place template main:bp/pat1/p1l13 -2013 56 2988
execute if score .out bp_floor matches 14 run place template main:bp/pat1/p1l14 -2013 56 2988
execute if score .out bp_floor matches 15 run place template main:bp/pat1/p1l15 -2013 56 2988
execute if score .out bp_floor matches 16 run place template main:bp/pat1/p1l16 -2013 56 2988
execute if score .out bp_floor matches 17 run place template main:bp/pat1/p1l17 -2013 56 2988
execute if score .out bp_floor matches 18 run place template main:bp/pat1/p1l18 -2013 56 2988
execute if score .out bp_floor matches 19 run place template main:bp/pat1/p1l19 -2013 56 2988
execute if score .out bp_floor matches 20 run place template main:bp/pat1/p1l20 -2013 56 2988
execute if score .out bp_floor matches 21 run place template main:bp/pat1/p1l21 -2013 56 2988
execute if score .out bp_floor matches 22 run place template main:bp/pat1/p1l22 -2013 56 2988
execute if score .out bp_floor matches 23 run place template main:bp/pat1/p1l23 -2013 56 2988
execute if score .out bp_floor matches 24 run place template main:bp/pat1/p1l24 -2013 56 2988
execute if score .out bp_floor matches 25 run place template main:bp/pat1/p1l25 -2013 56 2988
execute if score .out bp_floor matches 26 run place template main:bp/pat1/p1l26 -2013 56 2988
execute if score .out bp_floor matches 27 run place template main:bp/pat1/p1l27 -2013 56 2988
execute if score .out bp_floor matches 28 run place template main:bp/pat1/p1l28 -2013 56 2988
execute if score .out bp_floor matches 29 run place template main:bp/pat1/p1l29 -2013 56 2988
execute if score .out bp_floor matches 30 run place template main:bp/pat1/p1l30 -2013 56 2988
# light blue was not included on floors 31-34, part of a building mistake, hacked this together to fix it
execute if score .out bp_floor matches 31 unless score .out bp_color matches 5 run place template main:bp/pat1/p1l31 -2013 56 2988
execute if score .out bp_floor matches 32 unless score .out bp_color matches 5 run place template main:bp/pat1/p1l32 -2013 56 2988
execute if score .out bp_floor matches 33 unless score .out bp_color matches 5 run place template main:bp/pat1/p1l33 -2013 56 2988
execute if score .out bp_floor matches 34 unless score .out bp_color matches 5 run place template main:bp/pat1/p1l34 -2013 56 2988
# end hack
execute if score .out bp_floor matches 35 run place template main:bp/pat1/p1l35 -2013 56 2988
execute if score .out bp_floor matches 36 run place template main:bp/pat1/p1l36 -2013 56 2988
execute if score .out bp_floor matches 37 run place template main:bp/pat1/p1l37 -2013 56 2988
execute if score .out bp_floor matches 38 run place template main:bp/pat1/p1l38 -2013 56 2988