# Description: selects blockparty to be played
# Author: Cosmelon
# Type: single
# run from main:lobby/gs/start

# br_cgame
scoreboard players set .lobby br_cgame 0
scoreboard players set .blockparty br_cgame 1

# text
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"The Third Game is BlockParty!","color":"gold"}
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]

# titles
title @a title ""
title @a subtitle ""
title @a actionbar ""
schedule function main:fadeout 3s 
schedule function main:blockparty/startbp 6s