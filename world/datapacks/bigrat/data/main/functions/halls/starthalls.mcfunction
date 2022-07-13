# Description: start backrooms game
# Author: Cosmelon
# Type: start
# run from <manual>

# gamerules
gamerule reducedDebugInfo true

# declare objectives
scoreboard objectives add hallCore dummy
scoreboard players set ~gameActive hallCore 1
scoreboard players set ~countDown hallCore 160

# teleport players
tp @a[team=Red] -976.001 22 1044.001

# setup box
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass

# basic tellraw for start
tellraw @a {"text":"\nBackrooms","bold":true}
tellraw @a {"text":"\nSo basically the objective of the game is to run around the maze and complete challenges."}
tellraw @a {"text":"\nPoints are awarded for finding then completing a challenge, then bringing the trophy back to the center."}
tellraw @a {"text":"\nBut be careful... something seems off about this place..."}