# Description: race infotext 4, position 3
# Author: Cosmelon
# Type: single
# run from main:race/racetick

# get out of spectate
#tp @e[name="!raceCine"] @e[name="!racePos3",limit=1]
tp @e[name="!raceCine"] 370.25 80.4 -18.5 90 8.4
execute as @a run spectate

# sound
schedule function main:sounds/infosound 5t

# infotext
tellraw @a [{"text":"\n\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Elytra liftoff!"}
tellraw @a {"text":"Make sure to activate the elytra!"}
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
