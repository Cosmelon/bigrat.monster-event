# Description: updates the team npcs with team scores
# Author: Cosmelon
# Type: tick
# run from main:tick

# set the text to the signs
#  The signs should be located in a forceloaded chunk so they should always update automatically
execute if score .redPos teamScores matches 1 run data modify block 1003 26 -6041 Text1 set value '[{"text":"Red: ","color":"red"},{"score":{"name":".red","objective":"teamScores"},"color":"gold"}]'
execute if score .redPos teamScores matches 2 run data modify block 1002 26 -6041 Text1 set value '[{"text":"Red: ","color":"red"},{"score":{"name":".red","objective":"teamScores"},"color":"gold"}]'
execute if score .redPos teamScores matches 3 run data modify block 1001 26 -6041 Text1 set value '[{"text":"Red: ","color":"red"},{"score":{"name":".red","objective":"teamScores"},"color":"gold"}]'
execute if score .redPos teamScores matches 4 run data modify block 1000 26 -6041 Text1 set value '[{"text":"Red: ","color":"red"},{"score":{"name":".red","objective":"teamScores"},"color":"gold"}]'

execute if score .bluePos teamScores matches 1 run data modify block 1003 26 -6041 Text1 set value '[{"text":"Blue: ","color":"blue"},{"score":{"name":".blue","objective":"teamScores"},"color":"gold"}]'
execute if score .bluePos teamScores matches 2 run data modify block 1002 26 -6041 Text1 set value '[{"text":"Blue: ","color":"blue"},{"score":{"name":".blue","objective":"teamScores"},"color":"gold"}]'
execute if score .bluePos teamScores matches 3 run data modify block 1001 26 -6041 Text1 set value '[{"text":"Blue: ","color":"blue"},{"score":{"name":".blue","objective":"teamScores"},"color":"gold"}]'
execute if score .bluePos teamScores matches 4 run data modify block 1000 26 -6041 Text1 set value '[{"text":"Blue: ","color":"blue"},{"score":{"name":".blue","objective":"teamScores"},"color":"gold"}]'

execute if score .greenPos teamScores matches 1 run data modify block 1003 26 -6041 Text1 set value '[{"text":"Green: ","color":"green"},{"score":{"name":".green","objective":"teamScores"},"color":"gold"}]'
execute if score .greenPos teamScores matches 2 run data modify block 1002 26 -6041 Text1 set value '[{"text":"Green: ","color":"green"},{"score":{"name":".green","objective":"teamScores"},"color":"gold"}]'
execute if score .greenPos teamScores matches 3 run data modify block 1001 26 -6041 Text1 set value '[{"text":"Green: ","color":"green"},{"score":{"name":".green","objective":"teamScores"},"color":"gold"}]'
execute if score .greenPos teamScores matches 4 run data modify block 1000 26 -6041 Text1 set value '[{"text":"Green: ","color":"green"},{"score":{"name":".green","objective":"teamScores"},"color":"gold"}]'

execute if score .yellowPos teamScores matches 1 run data modify block 1003 26 -6041 Text1 set value '[{"text":"Yellow: ","color":"yellow"},{"score":{"name":".yellow","objective":"teamScores"},"color":"gold"}]'
execute if score .yellowPos teamScores matches 2 run data modify block 1002 26 -6041 Text1 set value '[{"text":"Yellow: ","color":"yellow"},{"score":{"name":".yellow","objective":"teamScores"},"color":"gold"}]'
execute if score .yellowPos teamScores matches 3 run data modify block 1001 26 -6041 Text1 set value '[{"text":"Yellow: ","color":"yellow"},{"score":{"name":".yellow","objective":"teamScores"},"color":"gold"}]'
execute if score .yellowPos teamScores matches 4 run data modify block 1000 26 -6041 Text1 set value '[{"text":"Yellow: ","color":"yellow"},{"score":{"name":".yellow","objective":"teamScores"},"color":"gold"}]'


# set the sign text to the npcs
execute if score .redPos teamScores matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP1] CustomName set from block 1003 26 -6041 Text1
execute if score .redPos teamScores matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP2] CustomName set from block 1002 26 -6041 Text1
execute if score .redPos teamScores matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP3] CustomName set from block 1001 26 -6041 Text1
execute if score .redPos teamScores matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP4] CustomName set from block 1000 26 -6041 Text1

execute if score .bluePos teamScores matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP1] CustomName set from block 1003 26 -6041 Text1
execute if score .bluePos teamScores matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP2] CustomName set from block 1002 26 -6041 Text1
execute if score .bluePos teamScores matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP3] CustomName set from block 1001 26 -6041 Text1
execute if score .bluePos teamScores matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP4] CustomName set from block 1000 26 -6041 Text1

execute if score .greenPos teamScores matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP1] CustomName set from block 1003 26 -6041 Text1
execute if score .greenPos teamScores matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP2] CustomName set from block 1002 26 -6041 Text1
execute if score .greenPos teamScores matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP3] CustomName set from block 1001 26 -6041 Text1
execute if score .greenPos teamScores matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP4] CustomName set from block 1000 26 -6041 Text1

execute if score .yellowPos teamScores matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP1] CustomName set from block 1003 26 -6041 Text1
execute if score .yellowPos teamScores matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP2] CustomName set from block 1002 26 -6041 Text1
execute if score .yellowPos teamScores matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP3] CustomName set from block 1001 26 -6041 Text1
execute if score .yellowPos teamScores matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest,tag=teamP4] CustomName set from block 1000 26 -6041 Text1
