# Description: executed when a goat is at an applicable wall
# Author: Cosmelon
# Type: single
# @s = @a[tag=sgGoat] when close to minecraft:tags/blocks/goatclimb
# run from main:sg/superpowers/main

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["wallrun"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:["wallrun"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
effect give @s jump_boost 2 0 true
effect give @s speed 1 2 true