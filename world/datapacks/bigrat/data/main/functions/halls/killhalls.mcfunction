# Description: kill the backrooms game halls
# Author: Cosmelon
# Type: kill
# run from <manual>

# manage variables
scoreboard players set ~gameActive hallCore 0

#
# put the startbox back
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass

# undo gamerules
gamerule reducedDebugInfo false

# text
tellraw @a[tag=!admin] {"text":"\nKilled Backrooms!\n","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"\nKilled Backrooms! Return to lobby?\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
execute as @a run playsound minecraft:block.beacon.deactivate master @s ~ ~100 ~ 10000