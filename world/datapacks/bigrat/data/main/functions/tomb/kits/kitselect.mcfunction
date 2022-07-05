# Description: starts the kit selection phase for tomb
# Author: Cosmelon
# Type: start, single
# @s = <executor> (can be omitted when not used)
# run from 

# set kitPhase to active
scoreboard players set +rKActive tbCore 1

# title
title @a title "kit selection"

# teleports
tp @a[team=Red] 5017 17 2.5 180 10
tp @a[team=Blue] 5017 17 44.5 180 10
tp @a[team=Green] 5017 17 89.5 180 10
tp @a[team=Yellow] 5017 17 131.5 180 10

# turn on armorstand names
execute as @e[tag=tombNPC] run data modify entity @s CustomNameVisible set value 1b