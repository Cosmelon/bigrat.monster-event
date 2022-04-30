# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add ?in1 bpColor 1
scoreboard players operation #range bpColor = ?in1 bpColor
scoreboard players operation #range bpColor -= ?in bpColor

scoreboard players operation #m1 bpColor = #range bpColor
scoreboard players remove #m1 bpColor 1
function main:blockparty/colorrng/next_int
scoreboard players operation ?out bpColor += ?in bpColor

scoreboard players reset #m1 bpColor
scoreboard players remove ?in1 bpColor 1