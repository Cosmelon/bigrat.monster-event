# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345
# piggybacking off sg

scoreboard players operation #lcg bpTimer *= #lcg sgConstant
scoreboard players add #lcg bpTimer 12345
scoreboard players operation ?out bpTimer = #lcg bpTimer