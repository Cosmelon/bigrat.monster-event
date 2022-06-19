# Description: blue team wins
# Author: Cosmelon
# Type: win
# run from main:sg/tick

scoreboard players set ~gameActive sg 0
title @a times 0 50 10
clear @a[team=!Admin]
# this is where we figure out how many points to give the winning team for winning
#  scoreboard players add ~blue Score <amount to winning team>
title @a title {"text":"Blue team wins!","color":"blue"}
execute unless score ~round sg matches 2 run title @a subtitle {"text":"Loading...","color":"red"}
execute unless score ~round sg matches 2 run schedule function main:sg/startsg 6s replace
execute if score ~round sg matches 2 run schedule function main:returnlobby 3s replace
scoreboard players reset * sgDeaths
# playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 100000 1
scoreboard players add ~round sg 1
function main:sounds/gameend

# bossbar visibility
bossbar set minecraft:sgshrinkactual visible false

# worldborder kill
schedule clear main:sg/border/shrinkstart
schedule clear main:sg/border/shrink1
schedule clear main:sg/border/shrink2
schedule clear main:sg/border/shrink3
schedule clear main:sg/border/shrink4
schedule clear main:sg/border/shrink5
schedule clear main:sg/border/s1warn
schedule clear main:sg/border/s2warn
schedule clear main:sg/border/s3warn
schedule clear main:sg/border/s4warn
schedule clear main:sg/border/s5warn
# reset powers
tag @a[tag=player] add noPowers
# power remove
tag @a remove sgVampire
tag @a remove sgTrainer
tag @a remove sgRedditor
tag @a remove sgCreeper
tag @a remove sgWitch
tag @a remove sgLeprechaun
tag @a remove sgMedic
tag @a remove sgPyro
kill @e[type=zombie]
kill @e[type=item]
effect clear @a[team=!Admin]

# solution to infinite game repeat problem
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 1.. if score .green teamCheck matches 0 if score .yellow teamCheck matches 0 run function main:sg/killsg
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 0 if score .green teamCheck matches 0 if score .yellow teamCheck matches 0 run function main:sg/killsg