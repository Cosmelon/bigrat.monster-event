# this function places the different floors

# doing some RNG
scoreboard players add $changeFloor blockPartyFloor 1
execute if score $changeFloor blockPartyFloor matches 60.. run function bp:floorrng/range
execute if score $changeFloor blockPartyFloor matches 60.. run scoreboard players set $changeFloor blockPartyFloor 0


# placing the structure block
execute if score out blockPartyFloor matches 1 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l1",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 2 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l2",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 3 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l3",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 4 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l4",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 5 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l5",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 6 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l6",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 7 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l7",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 8 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l8",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 9 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l9",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 10 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l10",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 11 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l11",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 12 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l12",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 13 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l13",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 14 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l14",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 15 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l15",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 16 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l16",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 17 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l17",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 18 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l18",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 19 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l19",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 20 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l20",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 21 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l21",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 22 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l22",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 23 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l23",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 24 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l24",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 25 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l25",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 26 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l26",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 27 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l27",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 28 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l28",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 29 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l29",posX:4,posY:30,posZ:4} destroy
execute if score out blockPartyFloor matches 30 run setblock 916 -44 847 structure_block{mode:"LOAD",name:"bp:pat1/p1l30",posX:4,posY:30,posZ:4} destroy

# placing the redstone block
scoreboard players add $microTick blockPartyFloor 1
execute if score $microTick blockPartyFloor matches 0 run setblock 915 -44 847 air destroy
execute if score $microTick blockPartyFloor matches 1 run setblock 915 -44 847 redstone_block destroy
execute if score $microTick blockPartyFloor matches 1.. run scoreboard players set $microTick blockPartyFloor 0