# Clears all data and scoreboards for blockparty
# Author: Cosmelon
# Type: single
# run from: main:lobby, <manual>

bossbar remove main:bp_roundcount
scoreboard objectives remove bp_main
scoreboard objectives remove bp_timer
scoreboard objectives remove bp_math
scoreboard objectives remove bp_color
scoreboard objectives remove bp_floor
scoreboard objectives remove bp_deaths
scoreboard objectives remove bp_const
tag @a remove bp_alive
tag @a remove bp_dead