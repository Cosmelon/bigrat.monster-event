# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345
# couldn't get it to work with a specific bp constant, so I piggybacked off sg

scoreboard players operation #lcg bpColor *= #lcg sgConstant
scoreboard players add #lcg bpColor 12345
scoreboard players operation ?out bpColor = #lcg bpColor