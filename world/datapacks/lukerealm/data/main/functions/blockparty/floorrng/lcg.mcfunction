# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345
# again piggybacked off sg

scoreboard players operation #lcg bpFloor *= #lcg bpConst
scoreboard players add #lcg bpFloor 12345
scoreboard players operation ?out bpFloor = #lcg bpFloor