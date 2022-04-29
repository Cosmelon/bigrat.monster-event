### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 blockPartyColor 1
scoreboard players operation #range blockPartyColor = in1 blockPartyColor
scoreboard players operation #range blockPartyColor -= in blockPartyColor

scoreboard players operation #m1 blockPartyColor = #range blockPartyColor
scoreboard players remove #m1 blockPartyColor 1
function bp:colorrng/next_int
scoreboard players operation out blockPartyColor += in blockPartyColor

scoreboard players reset #m1 blockPartyColor
scoreboard players remove in1 blockPartyColor 1


# find a way to make sure that the floor doesn't change in between floor changes