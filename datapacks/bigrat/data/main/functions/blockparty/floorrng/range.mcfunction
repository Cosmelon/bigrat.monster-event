# starts the math to pick a floor

# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add .in1 bp_floor 1
scoreboard players operation #range bp_floor = .in1 bp_floor
scoreboard players operation #range bp_floor -= .in bp_floor

scoreboard players operation #m1 bp_floor = #range bp_floor
scoreboard players remove #m1 bp_floor 1
function main:blockparty/floorrng/next_int
scoreboard players operation .out bp_floor += .in bp_floor

scoreboard players reset #m1 bp_floor
scoreboard players remove .in1 bp_floor 1
