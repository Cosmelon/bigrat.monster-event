# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add #in1 bpTimer 1
scoreboard players operation ?range bpTimer = #in1 bpTimer
scoreboard players operation ?range bpTimer -= #in bpTimer

scoreboard players operation ?m1 bpTimer = ?range bpTimer
scoreboard players remove ?m1 bpTimer 1
function main:blockparty/timerrng/next_int
scoreboard players operation #out bpTimer += #in bpTimer

scoreboard players reset ?m1 bpTimer
scoreboard players remove #in1 bpTimer 1

scoreboard players operation #stopSec bpStop = #out bpTimer