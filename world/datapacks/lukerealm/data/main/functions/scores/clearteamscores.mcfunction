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