# Description: Creeper power
# Author: Cosmelon
# Type: tick
# @s = @a[tag=sgCreeper]
# run from main:sg/superpowers/main

execute positioned as @s run summon tnt ~ ~ ~ {Fuse:20}
execute positioned as @s run tellraw @a[distance=..10] {"text":"KABOOM!","color":"red"}
scoreboard players set @s sgCreeperTNT 1