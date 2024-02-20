# timer pick math

function main:blockparty/timerrng/lcg

scoreboard players operation #temp bpTimer = ?out bpTimer
scoreboard players operation ?out bpTimer %= #range bpTimer
scoreboard players operation #temp bpTimer -= ?out bpTimer
scoreboard players operation #temp bpTimer += #m1 bpTimer
execute if score ?temp bpTimer matches ..-1 run function main:blockparty/timerrng/next_int