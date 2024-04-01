# Description: superpower pick math
# Author: Cosmelon
# Type: math
# run from main:sg/rng/next_int, main:sg/rng/range

function main:sg/rng/lcg

scoreboard players operation #temp sgMath = out sgMath
scoreboard players operation out sgMath %= #range sgMath
scoreboard players operation #temp sgMath -= out sgMath
scoreboard players operation #temp sgMath += #m1 sgMath
execute if score #temp sgMath matches ..-1 run function main:sg/rng/next_int