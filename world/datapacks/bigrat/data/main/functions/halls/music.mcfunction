# "music" for halls
# Author: Cosmelon

execute as @a run playsound ambient.basalt_deltas.loop voice @s ~ ~1000 ~ 100000
execute as @a run playsound ambient.basalt_deltas.additions ambient @s ~ ~1000 ~ 100000
tellraw @a[tag=debugView] {"text":"[DEBUG] halls music loop start","color":"gray"}
schedule function main:halls/music 43s replace