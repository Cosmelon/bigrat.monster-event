# Description: equations to determine individual placement and assign tags
# Author: Cosmelon
# Type: math, tick
# @s = @a[tag=player]
# run from 

# import scores from indivScore
scoreboard players operation @s indivMath = @s indivScore

# 1st place
execute if score @s indivMath > .p1 indivMath run scoreboard players operation .p1 indivMath > @s indivMath
execute if score @s indivMath = .p1 indivMath run tag @a remove br_indiv1
execute if score @s indivMath = .p1 indivMath run tag @s add br_indiv1
execute if score @s indivMath = .p1 indivMath run scoreboard players reset @s indivMath

# 2nd place
execute if score @s indivMath > .p2 indivMath run scoreboard players operation .p2 indivMath > @s indivMath
execute if score @s indivMath = .p2 indivMath run tag @a remove br_indiv2
execute if score @s indivMath = .p2 indivMath run tag @s add br_indiv2
execute if score @s indivMath = .p2 indivMath run scoreboard players reset @s indivMath

# 3rd place
execute if score @s indivMath > .p3 indivMath run scoreboard players operation .p3 indivMath > @s indivMath
execute if score @s indivMath = .p3 indivMath run tag @a remove br_indiv3
execute if score @s indivMath = .p3 indivMath run tag @s add br_indiv3
execute if score @s indivMath = .p3 indivMath run scoreboard players reset @s indivMath

# 4th place
execute if score @s indivMath > .p4 indivMath run scoreboard players operation .p4 indivMath > @s indivMath
execute if score @s indivMath = .p4 indivMath run tag @a remove br_indiv4
execute if score @s indivMath = .p4 indivMath run tag @s add br_indiv4
execute if score @s indivMath = .p4 indivMath run scoreboard players reset @s indivMath

# 5th place
execute if score @s indivMath > .p5 indivMath run scoreboard players operation .p5 indivMath > @s indivMath
execute if score @s indivMath = .p5 indivMath run tag @a remove br_indiv5
execute if score @s indivMath = .p5 indivMath run tag @s add br_indiv5
execute if score @s indivMath = .p5 indivMath run scoreboard players reset @s indivMath

# 6th place
execute if score @s indivMath > .p6 indivMath run scoreboard players operation .p6 indivMath > @s indivMath
execute if score @s indivMath = .p6 indivMath run tag @a remove br_indiv6
execute if score @s indivMath = .p6 indivMath run tag @s add br_indiv6
execute if score @s indivMath = .p6 indivMath run scoreboard players reset @s indivMath

# 7th place
execute if score @s indivMath > .p7 indivMath run scoreboard players operation .p7 indivMath > @s indivMath
execute if score @s indivMath = .p7 indivMath run tag @a remove br_indiv7
execute if score @s indivMath = .p7 indivMath run tag @s add br_indiv7
execute if score @s indivMath = .p7 indivMath run scoreboard players reset @s indivMath

# 8th place
execute if score @s indivMath > .p8 indivMath run scoreboard players operation .p8 indivMath > @s indivMath
execute if score @s indivMath = .p8 indivMath run tag @a remove br_indiv8
execute if score @s indivMath = .p8 indivMath run tag @s add br_indiv8
execute if score @s indivMath = .p8 indivMath run scoreboard players reset @s indivMath

# 9th place
execute if score @s indivMath > .p9 indivMath run scoreboard players operation .p9 indivMath > @s indivMath
execute if score @s indivMath = .p9 indivMath run tag @a remove br_indiv9
execute if score @s indivMath = .p9 indivMath run tag @s add br_indiv9
execute if score @s indivMath = .p9 indivMath run scoreboard players reset @s indivMath

# 10th place
execute if score @s indivMath > .p10 indivMath run scoreboard players operation .p10 indivMath > @s indivMath
execute if score @s indivMath = .p10 indivMath run tag @a remove br_indiv10
execute if score @s indivMath = .p10 indivMath run tag @s add br_indiv10
execute if score @s indivMath = .p10 indivMath run scoreboard players reset @s indivMath

# 11th place
execute if score @s indivMath > .p11 indivMath run scoreboard players operation .p11 indivMath > @s indivMath
execute if score @s indivMath = .p11 indivMath run tag @a remove br_indiv11
execute if score @s indivMath = .p11 indivMath run tag @s add br_indiv11
execute if score @s indivMath = .p11 indivMath run scoreboard players reset @s indivMath

# 12th place
execute if score @s indivMath > .p12 indivMath run scoreboard players operation .p12 indivMath > @s indivMath
execute if score @s indivMath = .p12 indivMath run tag @a remove br_indiv12
execute if score @s indivMath = .p12 indivMath run tag @s add br_indiv12
execute if score @s indivMath = .p12 indivMath run scoreboard players reset @s indivMath

# 13th place
execute if score @s indivMath > .p13 indivMath run scoreboard players operation .p13 indivMath > @s indivMath
execute if score @s indivMath = .p13 indivMath run tag @a remove br_indiv13
execute if score @s indivMath = .p13 indivMath run tag @s add br_indiv13
execute if score @s indivMath = .p13 indivMath run scoreboard players reset @s indivMath

# 14th place
execute if score @s indivMath > .p14 indivMath run scoreboard players operation .p14 indivMath > @s indivMath
execute if score @s indivMath = .p14 indivMath run tag @a remove br_indiv14
execute if score @s indivMath = .p14 indivMath run tag @s add br_indiv14
execute if score @s indivMath = .p14 indivMath run scoreboard players reset @s indivMath

# 15th place
execute if score @s indivMath > .p15 indivMath run scoreboard players operation .p15 indivMath > @s indivMath
execute if score @s indivMath = .p15 indivMath run tag @a remove br_indiv15
execute if score @s indivMath = .p15 indivMath run tag @s add br_indiv15
execute if score @s indivMath = .p15 indivMath run scoreboard players reset @s indivMath

# 16th place
execute if score @s indivMath > .p16 indivMath run scoreboard players operation .p16 indivMath > @s indivMath
execute if score @s indivMath = .p16 indivMath run tag @a remove br_indiv16
execute if score @s indivMath = .p16 indivMath run tag @s add br_indiv16
execute if score @s indivMath = .p16 indivMath run scoreboard players reset @s indivMath