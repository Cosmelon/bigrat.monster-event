# Description: actually placing the different floors
# Author: Cosmelon
# Type: tick
# @s = <executor> (can be omitted when not used)
# run from main:blockparty/bptick when ?floorSwitch blockParty == 1


# doing some RNG
scoreboard players add ?changeFloor bpFloor 1
execute if score ?changeFloor bpFloor matches 20.. run function main:blockparty/floorrng/range
execute if score ?changeFloor bpFloor matches 20.. run scoreboard players set ?changeFloor bpFloor 0


# placing the structure block
# in the future I want to integrate more patterns into blockparty, built some compatability anyway
execute if score ?out bpFloor matches 1 run place template main:bp/pat1/p1l1 -2013 56 2988
execute if score ?out bpFloor matches 2 run place template main:bp/pat1/p1l2 -2013 56 2988
execute if score ?out bpFloor matches 3 run place template main:bp/pat1/p1l3 -2013 56 2988
execute if score ?out bpFloor matches 4 run place template main:bp/pat1/p1l4 -2013 56 2988
execute if score ?out bpFloor matches 5 run place template main:bp/pat1/p1l5 -2013 56 2988
execute if score ?out bpFloor matches 6 run place template main:bp/pat1/p1l6 -2013 56 2988
execute if score ?out bpFloor matches 7 run place template main:bp/pat1/p1l7 -2013 56 2988
execute if score ?out bpFloor matches 8 run place template main:bp/pat1/p1l8 -2013 56 2988
execute if score ?out bpFloor matches 9 run place template main:bp/pat1/p1l9 -2013 56 2988
execute if score ?out bpFloor matches 10 run place template main:bp/pat1/p1l10 -2013 56 2988
execute if score ?out bpFloor matches 11 run place template main:bp/pat1/p1l11 -2013 56 2988
execute if score ?out bpFloor matches 12 run place template main:bp/pat1/p1l12 -2013 56 2988
execute if score ?out bpFloor matches 13 run place template main:bp/pat1/p1l13 -2013 56 2988
execute if score ?out bpFloor matches 14 run place template main:bp/pat1/p1l14 -2013 56 2988
execute if score ?out bpFloor matches 15 run place template main:bp/pat1/p1l15 -2013 56 2988
execute if score ?out bpFloor matches 16 run place template main:bp/pat1/p1l16 -2013 56 2988
execute if score ?out bpFloor matches 17 run place template main:bp/pat1/p1l17 -2013 56 2988
execute if score ?out bpFloor matches 18 run place template main:bp/pat1/p1l18 -2013 56 2988
execute if score ?out bpFloor matches 19 run place template main:bp/pat1/p1l19 -2013 56 2988
execute if score ?out bpFloor matches 20 run place template main:bp/pat1/p1l20 -2013 56 2988
execute if score ?out bpFloor matches 21 run place template main:bp/pat1/p1l21 -2013 56 2988
execute if score ?out bpFloor matches 22 run place template main:bp/pat1/p1l22 -2013 56 2988
execute if score ?out bpFloor matches 23 run place template main:bp/pat1/p1l23 -2013 56 2988
execute if score ?out bpFloor matches 24 run place template main:bp/pat1/p1l24 -2013 56 2988
execute if score ?out bpFloor matches 25 run place template main:bp/pat1/p1l25 -2013 56 2988
execute if score ?out bpFloor matches 26 run place template main:bp/pat1/p1l26 -2013 56 2988
execute if score ?out bpFloor matches 27 run place template main:bp/pat1/p1l27 -2013 56 2988
execute if score ?out bpFloor matches 28 run place template main:bp/pat1/p1l28 -2013 56 2988
execute if score ?out bpFloor matches 29 run place template main:bp/pat1/p1l29 -2013 56 2988
execute if score ?out bpFloor matches 30 run place template main:bp/pat1/p1l30 -2013 56 2988
execute if score ?out bpFloor matches 31 run place template main:bp/pat1/p1l31 -2013 56 2988
execute if score ?out bpFloor matches 32 run place template main:bp/pat1/p1l32 -2013 56 2988
execute if score ?out bpFloor matches 33 run place template main:bp/pat1/p1l33 -2013 56 2988
execute if score ?out bpFloor matches 34 run place template main:bp/pat1/p1l34 -2013 56 2988
execute if score ?out bpFloor matches 35 run place template main:bp/pat1/p1l35 -2013 56 2988
execute if score ?out bpFloor matches 36 run place template main:bp/pat1/p1l36 -2013 56 2988
execute if score ?out bpFloor matches 37 run place template main:bp/pat1/p1l37 -2013 56 2988
execute if score ?out bpFloor matches 38 run place template main:bp/pat1/p1l38 -2013 56 2988