# Description: race infotext 3, position 2
# Author: Cosmelon
# Type: single
# run from main:race/tick

# get out of spectate
#tp @e[name=".raceCine"] @e[name=".rc_pos2",limit=1]
tp @e[name=".raceCine"] 246.5 72.6 -43.5 -180 15.5
gamemode spectator @a

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"Jump Pads!","color":"green","bold":true}]
tellraw @a [{"translate":"space.5"},{"text":"Land on one of these and jump to fly through the sky!"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"WARNING: High ping players may have some difficulty with this!","color":"red"}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
