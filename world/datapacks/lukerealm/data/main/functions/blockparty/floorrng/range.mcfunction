### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 blockPartyFloor 1
scoreboard players operation #range blockPartyFloor = in1 blockPartyFloor
scoreboard players operation #range blockPartyFloor -= in blockPartyFloor

scoreboard players operation #m1 blockPartyFloor = #range blockPartyFloor
scoreboard players remove #m1 blockPartyFloor 1
function bp:floorrng/next_int
scoreboard players operation out blockPartyFloor += in blockPartyFloor

scoreboard players reset #m1 blockPartyFloor
scoreboard players remove in1 blockPartyFloor 1
