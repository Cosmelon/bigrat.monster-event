# Description: race infotext 3, position 1
# Author: Cosmelon
# Type: single
# @s = @a
# run from main:race/racetick

# forcing splayers to spectate armor stand called !racePos3
kill @e[type=armor_stand,name="!racePos3"]
summon armor_stand 391.5 85 1.5 {Invisible:1b,NoGravity:1b,CustomName:'{"text":"!racePos3"}'}
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,limit=1,name="!racePos3"] @s

# sound
function main:infosound

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Elytra liftoff!"}
tellraw @a {"text":"Make sure to activate the elytra!"}
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
