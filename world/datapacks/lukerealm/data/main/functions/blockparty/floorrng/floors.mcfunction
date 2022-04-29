# this function places the different floors

# doing some RNG
scoreboard players add #changeFloor bpFloor 1
execute if score #changeFloor bpFloor matches 60.. run function main:blockparty/floorrng/range
execute if score #changeFloor bpFloor matches 60.. run scoreboard players set #changeFloor bpFloor 0


# placing the structure block
# in the future I want to integrate more patterns into blockparty, built some compatability anyway
execute if score #out bpFloor matches 1 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l1",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 2 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l2",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 3 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l3",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 4 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l4",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 5 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l5",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 6 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l6",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 7 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l7",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 8 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l8",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 9 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l9",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 10 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l10",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 11 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l11",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 12 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l12",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 13 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l13",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 14 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l14",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 15 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l15",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 16 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l16",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 17 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l17",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 18 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l18",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 19 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l19",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 20 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l20",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 21 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l21",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 22 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l22",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 23 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l23",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 24 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l24",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 25 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l25",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 26 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l26",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 27 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l27",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 28 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l28",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 29 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l29",posX:4,posY:30,posZ:4} destroy
execute if score #out bpFloor matches 30 run setblock -2017 26 2985 structure_block{mode:"LOAD",name:"main:bp/pat1/p1l30",posX:4,posY:30,posZ:4} destroy

# placing the redstone block
scoreboard players add #microTick bpFloor 1
execute if score #microTick bpFloor matches 0 run setblock -2018 26 2985 air destroy
execute if score #microTick bpFloor matches 1 run setblock -2018 26 2985 redstone_block destroy
execute if score #microTick bpFloor matches 1.. run scoreboard players set $microTick bpFloor 0