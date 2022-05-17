# Description: race infotext 1, position 0
# Author: Cosmelon
# Type: single
# run from main:race/racetick

tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Welcome to <race game name>!","bold":true}
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"Map: Spillway Plunge","color":"yellow"}
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-6"},{"text":"\uE004"}]
execute at @a as @a run playsound minecraft:block.stone_button.click_on neutral @s