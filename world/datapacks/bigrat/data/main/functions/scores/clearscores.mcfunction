# Description: permanantly removes all team scores
# Author: Cosmelon
# Type: single, manual
# run from <manual>

# setting everythin in the teamScores scoreboard to 0
scoreboard players set .red teamScores 0
scoreboard players set .blue teamScores 0
scoreboard players set .green teamScores 0
scoreboard players set .yellow teamScores 0
scoreboard players set .redPos teamScores 0
scoreboard players set .bluePos teamScores 0
scoreboard players set .greenPos teamScores 0
scoreboard players set .yellowPos teamScores 0

# clear signs
data modify block 1003 26 -6041 Text1 set value '[{"text":"Red: ","color":"red"},{"score":{"name":".red","objective":"teamScores"},"color":"gold"}]'
data modify block 1002 26 -6041 Text1 set value '[{"text":"Blue: ","color":"blue"},{"score":{"name":".blue","objective":"teamScores"},"color":"gold"}]'
data modify block 1001 26 -6041 Text1 set value '[{"text":"Green: ","color":"green"},{"score":{"name":".green","objective":"teamScores"},"color":"gold"}]'
data modify block 1000 26 -6041 Text1 set value '[{"text":"Yellow: ","color":"yellow"},{"score":{"name":".yellow","objective":"teamScores"},"color":"gold"}]'

# clear team score npc nametags
data modify entity @e[type=villager,limit=1,tag=teamP1] CustomName set value ''
data modify entity @e[type=villager,limit=1,tag=teamP2] CustomName set value ''
data modify entity @e[type=villager,limit=1,tag=teamP3] CustomName set value ''
data modify entity @e[type=villager,limit=1,tag=teamP4] CustomName set value ''

# reset all individual stuff
scoreboard players reset * indivScore
tag @a remove br_indiv1
tag @a remove br_indiv2
tag @a remove br_indiv3
tag @a remove br_indiv4
tag @a remove br_indiv5
tag @a remove br_indiv6
tag @a remove br_indiv7
tag @a remove br_indiv8
tag @a remove br_indiv9
tag @a remove br_indiv10
tag @a remove br_indiv11
tag @a remove br_indiv12
tag @a remove br_indiv13
tag @a remove br_indiv14
tag @a remove br_indiv15
tag @a remove br_indiv16
scoreboard players set .p1 indivMath -2147483648
scoreboard players set .p2 indivMath -2147483648
scoreboard players set .p3 indivMath -2147483648
scoreboard players set .p4 indivMath -2147483648
scoreboard players set .p5 indivMath -2147483648
scoreboard players set .p6 indivMath -2147483648
scoreboard players set .p7 indivMath -2147483648
scoreboard players set .p8 indivMath -2147483648
scoreboard players set .p9 indivMath -2147483648
scoreboard players set .p10 indivMath -2147483648
scoreboard players set .p11 indivMath -2147483648
scoreboard players set .p12 indivMath -2147483648
scoreboard players set .p13 indivMath -2147483648
scoreboard players set .p14 indivMath -2147483648
scoreboard players set .p15 indivMath -2147483648
scoreboard players set .p16 indivMath -2147483648