# this is for the creeper power
execute positioned as @s run summon tnt ~ ~ ~ {Fuse:20}
execute positioned as @s run tellraw @a[distance=..10] {"text":"KABOOM!","color":"red"}
scoreboard players set @s sgCreeperTNT 1