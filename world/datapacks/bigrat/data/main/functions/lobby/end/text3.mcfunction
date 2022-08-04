# Description: third text block for intro
# Author: Cosmelon
# Type: single, scheduled
# run from main:lobby/text2

tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"<slide3>","color":"gold","bold":true}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"Individual points are kept ","color":"white","bold":false},{"text":"secret","bold":true},{"text":" until the end of the event!","bold":false}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
execute at @a run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 10000 0.70

#schedule function main:lobby/text2 6s replace