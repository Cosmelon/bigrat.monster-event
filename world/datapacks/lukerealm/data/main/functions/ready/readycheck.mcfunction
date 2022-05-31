# Description: global check to make sure that all players are ready, similar to reafycheck
# Author: Cosmelon
# Type: single, manual
# run from <manual>

# remove ready tags
tag @a remove readyChecked

# add objective and enable it
scoreboard objectives add readyCheckYes trigger
scoreboard objectives add readyCheckNo trigger
scoreboard players enable @a[tag=player] readyCheckYes
scoreboard players enable @a[tag=player] readyCheckNo

# readycheck tellraw
tellraw @a[tag=player] [{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-2"},{"text":"\uE005"}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":"   Are you ready to begin?","color":"dark_green","bold":true}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":"   [YES]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger readyCheckYes"},"hoverEvent":{"action":"show_text","value":{"text":"I'm ready to play!","color":"#f2c579"}}},{"text":"     [NO]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger readyCheckNo"},"hoverEvent":{"action":"show_text","value":{"text":"I'm not ready to play","color":"#79f2b6"}}}]
tellraw @a[tag=player] ""
tellraw @a[tag=player] ""
tellraw @a[tag=player] [{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-1"},{"text":"\uE005"},{"translate":"space.-2"},{"text":"\uE005"}]
function main:infosound

# schedule conditions
schedule function main:ready/readyresult 10s replace