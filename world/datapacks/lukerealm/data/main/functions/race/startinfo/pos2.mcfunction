# Description: race infotext 3, position 2
# Author: Cosmelon
# Type: single
# run from main:race/racetick

# forcing splayers to spectate armor stand called !racePos2
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,limit=1,name="!racePos2"] @s

# sound
function main:infosound

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Jump Pads!"}
tellraw @a {"text":"Land on one of these and jump to fly through the sky!"}
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"WARNING: Players with high ping may have some difficulty with this!","color":"red"}
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
