# Description: Red room1
# Author:
# Type: <tick><win><math><kill><start><single>
# @s = <executor> (can be omitted when not used)
# run from 

execute if score +wave tbR2_RedR1 matches 1 store result score +r1w1Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w1Red]
execute if score +wave tbR2_RedR1 matches 2 store result score +r1w2Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w2Red]
execute if score +wave tbR2_RedR1 matches 3 store result score +r1w3Zcount tbR2_RedR1 if entity @e[tag=tbR2_r1w3Red]

execute if score +wave tbR2_RedR1 matches 1 if score +r1w1Zcount tbR2_RedR1 matches 0 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1w2
execute if score +wave tbR2_RedR1 matches 2 if score +r1w2Zcount tbR2_RedR1 matches 0 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1w3
execute if score +wave tbR2_RedR1 matches 3 if score +r1w3Zcount tbR2_RedR1 matches 0 positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1end