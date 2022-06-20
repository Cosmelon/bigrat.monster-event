# Description: race infotext 5, position 4
# Author: Cosmelon
# Type: single
# run from main:race/racetick

# get out of spectate
#tp @e[name="!raceCine"] @e[name="!racePos4",limit=1]
tp @e[name="!raceCine"] 348.5 81.00 43.5 -90 4
execute as @a run spectate

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a [{"text":"\n\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"There are some special elements scattered throughout the map."}
tellraw @a {"text":"Make sure to check around. You never know what you may find!"}
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
