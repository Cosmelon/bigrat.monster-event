# color pick math

function main:lobby/gamerng/lcg

scoreboard players operation #temp brGP = .out brGP
scoreboard players operation .out brGP %= #range brGP
scoreboard players operation #temp brGP -= .out brGP
scoreboard players operation #temp brGP += #m1 brGP
execute if score #temp brGP matches ..-1 run function main:lobby/gamerng/next_int