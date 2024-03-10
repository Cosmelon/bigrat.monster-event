# timer pick math

function main:blockparty/timerrng/lcg

scoreboard players operation #temp bp_timer = .out bp_timer
scoreboard players operation .out bp_timer %= #range bp_timer
scoreboard players operation #temp bp_timer -= .out bp_timer
scoreboard players operation #temp bp_timer += #m1 bp_timer
execute if score .temp bp_timer matches ..-1 run function main:blockparty/timerrng/next_int