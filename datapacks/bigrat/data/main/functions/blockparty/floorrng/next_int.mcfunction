# floor pick math


function main:blockparty/floorrng/lcg

scoreboard players operation #temp bpFloor = ?out bpFloor
scoreboard players operation ?out bpFloor %= #range bpFloor
scoreboard players operation #temp bpFloor -= ?out bpFloor
scoreboard players operation #temp bpFloor += #m1 bpFloor
execute if score #temp blockParty matches ..-1 run function main:blockparty/floorrng/next_int