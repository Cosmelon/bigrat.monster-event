# Description: third text block for intro
# Author: Cosmelon
# Type: single, scheduled
# run from main:lobby/text2

tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"Minigame order will be randomized before each game."}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"cause voting is for LOSERS","color":"dark_gray"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
execute at @a run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 10000 0.70

schedule function main:lobby/text4 6s replace