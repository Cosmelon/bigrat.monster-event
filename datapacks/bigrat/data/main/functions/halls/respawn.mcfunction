# Description: respawns the player after they risen to the top
# Author: Cosmelon
# Type: single
# run from main:halls/tick

tp @s ~ ~4 ~
effect clear @s levitation
scoreboard players set @s halls_death 0
effect give @s slow_falling 1 4 true

tellraw @s "You respawned!"