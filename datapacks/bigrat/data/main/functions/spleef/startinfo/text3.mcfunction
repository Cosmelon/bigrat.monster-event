# Description: startinfo text3 for spleef
# Author: Cosmelon
# Type: single
# run from main:spleef/sptick

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"get ogar'd","color":"gold","bold":true}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"+1 point","color":"green"},{"text":" for each player you outlive"}]
tellraw @a [{"translate":"space.5"},{"text":"+10 points","color":"green"},{"text":" to each member of the winning team."}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"The play area will shrink twice before the "},{"text":"deathmatch","color":"red"},{"text":".","color":"gray"}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
