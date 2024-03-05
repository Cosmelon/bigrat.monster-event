# Description: race infotext 5, position 5
# Author: Cosmelon
# Type: single
# run from main:race/racetick

# get out of spectate
#tp @e[name="!raceCine"] @e[name="!racePos4",limit=1]
tp @e[name="!raceCine"] 234.50 78 -27.5 -403.16 6.42
execute as @a run spectate

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Uh... I think that might be it... not much else to say..."}
tellraw @a {"text":"It's kind of a race game... first to the end wins?"}
tellraw @a ""
tellraw @a ""
execute if score !doDoor race matches 1 run tellraw @a {"text":"DO NOT GO IN THE COPPER JUNGLE DOOR","color":"dark_gray"}
execute unless score !doDoor race matches 1 run tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]