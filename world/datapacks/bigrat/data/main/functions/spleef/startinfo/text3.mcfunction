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
tellraw @a [{"translate":"space.3"},{"text":"Outliving other players will earn you ___ points","color":"gray"}]
tellraw @a [{"translate":"space.5"},{"text":"Winning the round will get you ___ points"}]
tellraw @a [{"translate":"space.3"},{"text":"There will be two shinks before a ","color":"gray"},{"text":"deathmatch","color":"dark_red"}]
tellraw @a [{"translate":"space.5"},{"text":"Being alive at the end of a shink will earn you ___ points","color":"gray"}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
