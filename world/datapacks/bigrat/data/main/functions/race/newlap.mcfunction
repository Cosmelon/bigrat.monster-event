# Description: player finished a lap
# Author: Cosmelon
# Type: single, objective
# @s = player who just did a lap
# run from main:race/racetick
# known bugs:
    # the overall timer can bug out and show an extra or too few digits when a player finishes the course

# position counter
execute as @s[scores={raceLap=1}] run scoreboard players add !posCounter1 racePos 1
execute as @s[scores={raceLap=1}] run scoreboard players operation @s racePos = !posCounter1 racePos

execute as @s[scores={raceLap=2}] run scoreboard players add !posCounter2 racePos 1
execute as @s[scores={raceLap=2}] run scoreboard players operation @s racePos = !posCounter2 racePos

execute as @s[scores={raceLap=3}] run scoreboard players add !posCounter3 racePos 1
execute as @s[scores={raceLap=3}] run scoreboard players operation @s racePos = !posCounter3 racePos

# This looks fucking horrible but it works and I hate it
execute as @s[scores={racePos=1,raceMilli=..9,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=1,raceMilli=10..,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=1,raceMilli=..9,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=1,raceMilli=10..,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]

execute as @s[scores={racePos=2,raceMilli=..9,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=2,raceMilli=10..,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=2,raceMilli=..9,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=2,raceMilli=10..,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]

execute as @s[scores={racePos=3,raceMilli=..9,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=3,raceMilli=10..,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=3,raceMilli=..9,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=3,raceMilli=10..,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]

execute as @s[scores={racePos=4..,raceMilli=..9,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=4..,raceMilli=10..,raceSec=..9}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=4..,raceMilli=..9,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={racePos=4..,raceMilli=10..,raceSec=10..}] run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
# end horrific solution

# nope here it is again
# overall time tellraw
execute as @s[scores={raceLap=3,racePos=1}] if score !raceTime raceSec matches ..9 if score !raceTime raceMilli matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=1}] if score !raceTime raceSec matches ..9 if score !raceTime raceMilli matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=1}] if score !raceTime raceSec matches 10.. if score !raceTime raceMilli matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=1}] if score !raceTime raceSec matches 10.. if score !raceTime raceMilli matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]

execute as @s[scores={raceLap=3,racePos=2}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=2}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=2}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=2}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]

execute as @s[scores={raceLap=3,racePos=3}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=3}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=3}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=3}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]

execute as @s[scores={raceLap=3,racePos=4..}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=4..}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=4..}] if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute as @s[scores={raceLap=3,racePos=4..}] if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]

execute as @s[scores={raceLap=3}] run title @s title {"text":"Finished!","color":"gold"}

# fireworks
execute as @s[scores={racePos=1},team=Red] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16471124],FadeColors:[I;13071990]},{Colors:[I;15257182]}]}}}}
execute as @s[scores={racePos=1},team=Blue] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5526779],FadeColors:[I;8092615]},{Colors:[I;15257182]}]}}}}
execute as @s[scores={racePos=1},team=Green] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5569364],FadeColors:[I;7320687]},{Colors:[I;15257182]}]}}}}
execute as @s[scores={racePos=1},team=Yellow] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16513876],FadeColors:[I;13092723]},{Colors:[I;15257182]}]}}}}

execute as @s[scores={racePos=2},team=Red] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16471124],FadeColors:[I;13071990]},{Colors:[I;14336192]}]}}}}
execute as @s[scores={racePos=2},team=Blue] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5526779],FadeColors:[I;8092615]},{Colors:[I;14336192]}]}}}}
execute as @s[scores={racePos=2},team=Green] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5569364],FadeColors:[I;7320687]},{Colors:[I;14336192]}]}}}}
execute as @s[scores={racePos=2},team=Yellow] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16513876],FadeColors:[I;13092723]},{Colors:[I;14336192]}]}}}}

execute as @s[scores={racePos=3},team=Red] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16471124],FadeColors:[I;13071990]},{Colors:[I;10509623]}]}}}}
execute as @s[scores={racePos=3},team=Blue] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5526779],FadeColors:[I;8092615]},{Colors:[I;10509623]}]}}}}
execute as @s[scores={racePos=3},team=Green] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5569364],FadeColors:[I;7320687]},{Colors:[I;10509623]}]}}}}
execute as @s[scores={racePos=3},team=Yellow] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16513876],FadeColors:[I;13092723]},{Colors:[I;10509623]}]}}}}

execute as @s[scores={racePos=4..},team=Red] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16471124],FadeColors:[I;13071990]},{Colors:[I;16777215]}]}}}}
execute as @s[scores={racePos=4..},team=Blue] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5526779],FadeColors:[I;8092615]},{Colors:[I;16777215]}]}}}}
execute as @s[scores={racePos=4..},team=Green] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5569364],FadeColors:[I;7320687]},{Colors:[I;16777215]}]}}}}
execute as @s[scores={racePos=4..},team=Yellow] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16513876],FadeColors:[I;13092723]},{Colors:[I;16777215]}]}}}}

# scoring
execute as @s[scores={raceLap=3}] run tellraw @s [{"text":"+","color":"green"},{"score":{"name":"!indivFinish","objective":"raceScores"},"color":"green"},{"text":" points (Finishing)","color":"green"}]
execute as @s[scores={raceLap=3}] run scoreboard players operation !indivFinish race += @s indivScore
execute as @s[scores={raceLap=3}] run scoreboard players remove !indivFinish race 2

# custom sound
playsound minecraft:custom.race/lap voice @s ~ ~ ~ 100000 1.2

# save race lap times on each lap
execute as @s[scores={raceLap=1}] run scoreboard players operation @s raceMilli1 = @s raceMilli
execute as @s[scores={raceLap=1}] run scoreboard players operation @s raceSec1 = @s raceSec
execute as @s[scores={raceLap=1}] run scoreboard players operation @s raceMin1 = @s raceMin
execute as @s[scores={raceLap=2}] run scoreboard players operation @s raceMilli2 = @s raceMilli
execute as @s[scores={raceLap=2}] run scoreboard players operation @s raceSec2 = @s raceSec
execute as @s[scores={raceLap=2}] run scoreboard players operation @s raceMin2 = @s raceMin
execute as @s[scores={raceLap=3}] run scoreboard players operation @s raceMilli3 = @s raceMilli
execute as @s[scores={raceLap=3}] run scoreboard players operation @s raceSec3 = @s raceSec
execute as @s[scores={raceLap=3}] run scoreboard players operation @s raceMin3 = @s raceMin

# resetting timer scores
scoreboard players set @s raceMilli 0
scoreboard players set @s raceSec 0
scoreboard players set @s raceMin 0
scoreboard players set @s raceCP 0
scoreboard players add @s raceLap 1
execute unless score @s raceLap matches 3.. run scoreboard players set @s racePos 0