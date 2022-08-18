# Description: infotext3 for tomb
# Author: Cosmelon
# Type: infotext
# run from: main:tomb/tombtick

# sound
schedule function main:sfx/infosound 3t

# infotext
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"Second Round","color":"gold","bold":true}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"Your team must travel and complete three more rooms of zombies before the other team can.","color":"gray"}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"Once the third team finishes, the last team will be taken out!","color":"gray","underlined": true}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]