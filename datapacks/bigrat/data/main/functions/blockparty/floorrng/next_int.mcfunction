# floor pick math


function main:blockparty/floorrng/lcg

scoreboard players operation #temp bp_floor = .out bp_floor
scoreboard players operation .out bp_floor %= #range bp_floor
scoreboard players operation #temp bp_floor -= .out bp_floor
scoreboard players operation #temp bp_floor += #m1 bp_floor
execute if score #temp bp_main matches ..-1 run function main:blockparty/floorrng/next_int