# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation ?lcg bpColor *= ?lcg bpConstant
scoreboard players add ?lcg bpColor 12345
scoreboard players operation #out bpColor = ?lcg bpColor