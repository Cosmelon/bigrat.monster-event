# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345
# piggybacking off sg

scoreboard players operation #lcg bp_timer *= #lcg bp_const
scoreboard players add #lcg bp_timer 12345
scoreboard players operation .out bp_timer = #lcg bp_timer