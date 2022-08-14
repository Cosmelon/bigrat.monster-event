# Description: game end for halls
# Author: Cosmelon
# Type: single
# run from main:halls/hallstick

scoreboard players set ~gameActive hallsCore 0
title @a times 0 60 20
title @a title {"text":"Finish!","color":"red","bold":true}
function main:sfx/gameend
schedule function main:returnlobby 3s replace