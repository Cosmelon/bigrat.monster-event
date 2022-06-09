# Description: lmao you fell!
# Author: Cosmelon
# Type: tick
# @s = @a[scores={fall=900..}]
# run from main:tick

# this is intended to be a joke where if someone falls about 10 blocks they fall apart like dry bones
title @s title {"text":"You fell!","color":"dark_red"}
effect give @s slowness 5 100 true
effect give @s blindness 5 100 true
playsound custom.bonesjoke voice @a[distance=..3] ~ ~ ~ 10000