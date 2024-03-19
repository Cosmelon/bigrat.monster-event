# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345
# again piggybacked off sg

scoreboard players operation #lcg bp_floor *= #lcg bp_const
scoreboard players add #lcg bp_floor 12345
scoreboard players operation .out bp_floor = #lcg bp_floor