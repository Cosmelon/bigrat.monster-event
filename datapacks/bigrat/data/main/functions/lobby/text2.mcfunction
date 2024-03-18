# Description: second text block for introduction
# Author: Cosmelon
# Type: single, scheduled
# run from main:lobby/startbr

tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"You'll be going against three other teams in six minigames.","color":"gold"}]
tellraw @a ""
tellraw @a [{"translate":"space.3"},{"text":"Team with most points at the end will take victory home!"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
execute as @a run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 10000 0.70

schedule function main:lobby/text3 6s replace

#tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
#tellraw @a [{"translate":"space.3"},{"text":"You'll be going against three other teams in six minigames:","color":"gold"}]
#tellraw @a ""
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kBlock_Party","color":"yellow"}]
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kPVE","color":"yellow"}]
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kSpleef","color":"yellow"}]
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kBrawl","color":"yellow"}]
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kSpeed Demons","color":"yellow"}]
#tellraw @a [{"translate":"space.5"},{"text":"- \u00A7kSurvival_Games","color":"yellow"}]
#tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
