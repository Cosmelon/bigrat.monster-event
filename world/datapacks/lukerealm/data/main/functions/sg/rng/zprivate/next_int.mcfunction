function main:sg/rng/lcg

scoreboard players operation #temp sgMath = out sgMath
scoreboard players operation out sgMath %= #range sgMath
scoreboard players operation #temp sgMath -= out sgMath
scoreboard players operation #temp sgMath += #m1 sgMath
execute if score #temp sgMath matches ..-1 run function math:rng/zprivate/next_int