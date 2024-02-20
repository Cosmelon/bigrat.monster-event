# color pick math

function main:blockparty/colorrng/lcg

scoreboard players operation #temp bpColor = ?out bpColor
scoreboard players operation ?out bpColor %= #range bpColor
scoreboard players operation #temp bpColor -= ?out bpColor
scoreboard players operation #temp bpColor += #m1 bpColor
execute if score #temp bpColor matches ..-1 run function main:blockparty/colorrng/next_int