# Description: race infotext 5, position 4
# Author: Cosmelon
# Type: single
# run from main:race/tick

# get out of spectate
#tp @e[name=".raceCine"] @e[name=".rc_pos4",limit=1]
tp @e[name=".raceCine"] 348.5 81.00 43.5 -90 4
gamemode spectator @a

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"There are some special elements scattered around the map."}
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Be sure to look around. You never know what you may find!"}
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
