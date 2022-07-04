# Description: readycheck result
# Author: Cosmelon
# Type: single
# run from main:lobby/ready/readycheck

# opening space
tellraw @a ""

# text space
#[{"text":"[","color":"dark_gray"},{"text":"bigrat","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"» ","color":"gray"}]
execute if score .ready br_rcdata = .players teamCheck run tellraw @a [{"text":"» ","color":"gray"},{"text":"All online players are ready!","color":"green"}]
execute if score .ready br_rcdata < .players teamCheck run tellraw @a [{"text":"» ","color":"gray"},{"text":"Not all online players are ready! Aborting start.","color":"dark_red"}]
execute if score .ready br_rcdata < .players teamCheck if score .NA br_rcdata matches 0 run tellraw @a [{"selector":"@a[tag=br_rcno]"},{"text":" isn't ready.","color":"gold"}]
execute if score .ready br_rcdata < .players teamCheck if score .NA br_rcdata matches 1.. if score .nready br_rcdata matches 1.. run tellraw @a [{"selector":"@a[tag=br_rcno]"},{"text":" isn't ready, but","color":"gold"}]
execute if score .ready br_rcdata < .players teamCheck if score .NA br_rcdata matches 1.. run tellraw @a [{"selector":"@a[tag=br_rcNA]"},{"text":" didn't even answer!","color":"gold"}]

# accounting for edge case
#  the possibility that this could happen is basically zero, but I did it anyway
execute if score .ready br_rcdata > .players teamCheck run tellraw @a [{"text":"[Info] ","color":"aqua"},{"text":"Error. Re-running.","color":"white"}]
execute if score .ready br_rcdata > .players teamCheck run schedule function main:lobby/ready/readycheck 5s replace
execute if score .ready br_rcdata > .players teamCheck run tellraw @a[tag=admin] {"text":"[stop this]","color":"gold","clickEvent":{"action":"run_command","value":"/schedule clear main:ready/readycheck"}}

# closing space
tellraw @a ""

# clear the triggers
scoreboard objectives remove br_rcdata
scoreboard objectives remove br_rcyes
scoreboard objectives remove br_rcno

# get rid of tags
tag @a remove br_rcyes
tag @a remove br_rcno
tag @a remove br_rcNA

# sound
execute if score .ready br_rcdata = .players teamCheck as @a run playsound entity.player.levelup ambient @s ~ ~100 ~ 10000
execute if score .ready br_rcdata < .players teamCheck as @a run playsound entity.experience_orb.pickup ambient @s ~ ~100 ~ 10000 .5

# start event
execute if score .ready br_rcdata = .players teamCheck run schedule function main:lobby/startbr 3s