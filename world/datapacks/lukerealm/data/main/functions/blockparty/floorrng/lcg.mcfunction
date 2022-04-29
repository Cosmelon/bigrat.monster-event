# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg blockPartyFloor *= #lcg blockConstant
scoreboard players add #lcg blockPartyFloor 12345
scoreboard players operation out blockPartyFloor = #lcg blockPartyFloor