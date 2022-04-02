### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 sgMath 1
scoreboard players operation #range sgMath = in1 sgMath
scoreboard players operation #range sgMath -= in sgMath

scoreboard players operation #m1 sgMath = #range sgMath
scoreboard players remove #m1 sgMath 1
function main:sg/rng/zprivate/next_int
scoreboard players operation out sgMath += in sgMath

scoreboard players reset #m1 sgMath
scoreboard players remove in1 sgMath 1