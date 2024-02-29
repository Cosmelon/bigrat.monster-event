# Description: startinfo text4 for spleef
# Author: Cosmelon
# Type: single
# run from main:spleef/sptick

# sound
schedule function main:sfx/infosound 5t

# infotext
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"How do you rocket jump?","color":"gold","bold":true}]
tellraw @a [{"translate":"space.10"},{"text":" just kidding lmao","color":"dark_gray"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"TIP: ","color":"gray","bold":true},{"text":"Use '","color":"gray"},{"keybind":"key.pickItem","color":"gray"},{"text":"' to quickly move snowballs to your hotbar.","color":"gray"}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
bossbar set minecraft:sp_round visible true