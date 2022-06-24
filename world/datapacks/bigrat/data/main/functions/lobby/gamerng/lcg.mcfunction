# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg brGP *= #constLcg brGP
scoreboard players add #lcg brGP 12345
scoreboard players operation .out brGP = #lcg brGP