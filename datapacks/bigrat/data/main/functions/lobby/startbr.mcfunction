# Description: This is it... This is the main button that starts it all...
# Author: Cosmelon
# Type: start
# run from main:lobby/rc/readyresult 

# put down some effect for transition
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"Welcome to bigrat.monster...","color":"gold","bold":true}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
execute at @a run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 10000 0.70

schedule function main:lobby/text2 6s replace

# turn the event on
scoreboard players set .eventActive currentGame 1