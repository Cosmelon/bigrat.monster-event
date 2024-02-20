# https://tinyurl.com/2p9w2udn
# Description: trigged when vampire drops shears
# Author: Cosmelon
# Type: tick
# @s = @a[tag=sgVampire,predicate=!main:offhand_shears]
# run from main:sg/superpowers/main

title @s title {"text":"Dropped your umbrella!"}
title @s subtitle {"text":"Go find it!"}
effect give @s wither 2 0 true
effect give @s blindness 2 0 true