# starts the math to pick a new time after floor clear

# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add .in1 bp_timer 1
scoreboard players operation #range bp_timer = .in1 bp_timer
scoreboard players operation #range bp_timer -= .in bp_timer

scoreboard players operation #m1 bpTimer = #range bpTimer
scoreboard players remove #m1 bpTimer 1
function main:blockparty/timerrng/next_int
scoreboard players operation .out bpTimer += .in bpTimer

scoreboard players reset #m1 bpTimer
scoreboard players remove .in1 bpTimer 1

scoreboard players operation .stop bpTimer = .out bpTimer