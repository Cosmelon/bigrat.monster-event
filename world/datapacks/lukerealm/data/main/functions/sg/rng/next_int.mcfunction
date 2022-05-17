# superpower pick math

function main:sg/rng/lcg

scoreboard players operation #temp sgMath = out sgMath
scoreboard players operation out sgMath %= #range sgMath
scoreboard players operation #temp sgMath -= out sgMath
scoreboard players operation #temp sgMath += #m1 sgMath
execute if score #temp sgMath matches ..-1 run function main:sg/rng/next_int