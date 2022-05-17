# Description: player finished a lap
# Author: Cosmelon
# Type: single, objective
# @s = player who just did a lap
# run from main:race/racetick
# known bugs:
    # the overall timer can bug out and show an extra or too few digits when a player finishes the course

# position counter
execute if score @s raceLap matches 1 run scoreboard players add !posCounter1 racePos 1
execute if score @s raceLap matches 1 run scoreboard players operation @s racePos = !posCounter1 racePos

execute if score @s raceLap matches 2 run scoreboard players add !posCounter2 racePos 1
execute if score @s raceLap matches 2 run scoreboard players operation @s racePos = !posCounter2 racePos

execute if score @s raceLap matches 3 run scoreboard players add !posCounter3 racePos 1
execute if score @s raceLap matches 3 run scoreboard players operation @s racePos = !posCounter3 racePos

# This looks fucking horrible but it works and I hate it
execute if score @s racePos matches 1 if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s racePos matches 1 if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s racePos matches 1 if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s racePos matches 1 if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]

execute if score @s racePos matches 2 if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s racePos matches 2 if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s racePos matches 2 if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s racePos matches 2 if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]

execute if score @s racePos matches 3 if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s racePos matches 3 if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s racePos matches 3 if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s racePos matches 3 if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]

execute if score @s racePos matches 4.. if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s racePos matches 4.. if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s racePos matches 4.. if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s racePos matches 4.. if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
# end horrific solution issue

# nope here it is again
# overall time tellraw
execute if score @s raceLap matches 3 if score @s racePos matches 1 if score !raceTime raceSec matches ..9 if score !raceTime raceMilli matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 1 if score !raceTime raceSec matches ..9 if score !raceTime raceMilli matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 1 if score !raceTime raceSec matches 10.. if score !raceTime raceMilli matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 1 if score !raceTime raceSec matches 10.. if score !raceTime raceMilli matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#e8ce5e"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"},{"text":")","color":"gold"}]

execute if score @s raceLap matches 3 if score @s racePos matches 2 if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 2 if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 2 if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 2 if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#cccccc"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"},{"text":")","color":"gold"}]

execute if score @s raceLap matches 3 if score @s racePos matches 3 if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 3 if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 3 if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 3 if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#a05d37"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"},{"text":")","color":"gold"}]

execute if score @s raceLap matches 3 if score @s racePos matches 4.. if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 4.. if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 4.. if score !raceTime raceMilli matches ..9 if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]
execute if score @s raceLap matches 3 if score @s racePos matches 4.. if score !raceTime raceMilli matches 10.. if score !raceTime raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" completed the course in ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"},{"text":" (","color":"gold"},{"text":"#","color":"#FFFFFF"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"},{"text":")","color":"gold"}]

execute if score @s raceLap matches 3 run title @s title {"text":"Finished!","color":"gold"}

scoreboard players set @s raceMilli 0
scoreboard players set @s raceSec 0
scoreboard players set @s raceMin 0
scoreboard players add @s raceLap 1
scoreboard players set @s raceCP 0
execute unless score @s raceLap matches 3.. run scoreboard players set @s racePos 0