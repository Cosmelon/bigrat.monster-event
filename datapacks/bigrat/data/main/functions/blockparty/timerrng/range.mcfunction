# starts the math to pick a new time after floor clear

# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add .in1 bp_timer 1
scoreboard players operation #range bp_timer = .in1 bp_timer
scoreboard players operation #range bp_timer -= .in bp_timer

scoreboard players operation #m1 bp_timer = #range bp_timer
scoreboard players remove #m1 bp_timer 1
function main:blockparty/timerrng/next_int
scoreboard players operation .out bp_timer += .in bp_timer

scoreboard players reset #m1 bp_timer
scoreboard players remove .in1 bp_timer 1

scoreboard players operation .stop bp_timer = .out bp_timer