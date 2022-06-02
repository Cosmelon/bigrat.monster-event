# Description: global check to make sure that all players are ready, similar to reafycheck
# Author: Cosmelon
# Type: single, manual
# run from <manual>

# remove tags
tag @a remove br_ready
tag @a remove br_nready
tag @a remove br_rcNA

# add objective and enable it
scoreboard objectives add br_rcdata dummy
scoreboard objectives add br_rcyes trigger
scoreboard objectives add br_rcno trigger

# no answer
tag @a[tag=player] add br_rcNA
scoreboard players enable @a[tag=player] br_rcyes
scoreboard players enable @a[tag=player] br_rcno

# readycheck tellraw
tellraw @a[tag=player] [{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-2"},{"text":"\uE005"}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":" Are you ready to begin?","color":"dark_green","bold":true}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":"   [YES]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger br_rcyes"},"hoverEvent":{"action":"show_text","value":{"text":"I'm ready to play!","color":"#f2c579"}}},{"text":"     [NO]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger br_rcno"},"hoverEvent":{"action":"show_text","value":{"text":"I'm not ready to play","color":"#79f2b6"}}}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-2"},{"text":"\uE005"}]
tellraw @a[tag=!player] ""
tellraw @a[tag=!player] {"text":"Doing a ready check...","color":"dark_green"}
tellraw @a[tag=!player] ""
function main:infosound

# schedule conditions
execute unless score .NA br_rcdata matches 0 run schedule function main:ready/readyresult 10s replace
execute if score .NA br_rcdata matches 0 run tellraw @a[tag=admin] [{"text":"[Info]","color":"aqua"},{"text":" Teams have not been set. Aborting ready check!","color":"gold"}]