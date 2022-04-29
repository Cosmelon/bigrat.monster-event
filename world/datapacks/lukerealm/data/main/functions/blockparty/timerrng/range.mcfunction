### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 blockPartyTimer 1
scoreboard players operation #range blockPartyTimer = in1 blockPartyTimer
scoreboard players operation #range blockPartyTimer -= in blockPartyTimer

scoreboard players operation #m1 blockPartyTimer = #range blockPartyTimer
scoreboard players remove #m1 blockPartyTimer 1
function bp:timerrng/next_int
scoreboard players operation out blockPartyTimer += in blockPartyTimer

scoreboard players reset #m1 blockPartyTimer
scoreboard players remove in1 blockPartyTimer 1

scoreboard players operation $stopSec blockPartyStop = out blockPartyTimer