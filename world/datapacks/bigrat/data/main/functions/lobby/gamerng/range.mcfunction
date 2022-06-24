# this starts the math to pick a color

# .in = lower range
# .in1 = upper range
# .out = returned output

scoreboard objectives add brGP dummy
scoreboard players set #const2 brGP 2
scoreboard players set #const1000 brGP 1000
scoreboard players set #const10000 brGP 10000
scoreboard players set #constLcg brGP 1103515245
function main:lobby/gamerng/init

scoreboard players add .in1 brGP 1
scoreboard players operation #range brGP = .in1 brGP
scoreboard players operation #range brGP -= .in brGP

scoreboard players operation #m1 brGP = #range brGP
scoreboard players remove #m1 brGP 1
function main:lobby/gamerng/next_int
scoreboard players operation .out brGP += .in brGP

scoreboard players reset #m1 brGP
scoreboard players remove .in1 brGP 1