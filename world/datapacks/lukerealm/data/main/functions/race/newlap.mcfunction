# this file is executed as a player who finishes a lap
# I didn't add support for laps less than a minute, it's just not possible with the current course

# first iteration wasn't a bug, it acted like I thought it would
#  the problem with the first one wasn't that it was a bug. Rather it was that it would build off of each other as a singular player does more laps
execute if score @s raceLap matches 1 run scoreboard players add !posCounter1 racePos 1
execute if score @s raceLap matches 1 run scoreboard players operation @s racePos = !posCounter1 racePos

execute if score @s raceLap matches 2 run scoreboard players add !posCounter2 racePos 1
execute if score @s raceLap matches 2 run scoreboard players operation @s racePos = !posCounter2 racePos

execute if score @s raceLap matches 3 run scoreboard players add !posCounter3 racePos 1
execute if score @s raceLap matches 3 run scoreboard players operation @s racePos = !posCounter3 racePos


execute if score @s racePos matches 1 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in place: #","color":"gold"},{"score":{"name":"@s","objective":"racePos"},"color":"#e8ce5e"}]
execute if score @s racePos matches 2 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in place: #","color":"gold"},{"score":{"name":"@s","objective":"racePos"},"color":"#cccccc"}]
execute if score @s racePos matches 3 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in place: #","color":"gold"},{"score":{"name":"@s","objective":"racePos"},"color":"#a05d37"}]
execute if score @s racePos matches 4.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in place: #","color":"gold"},{"score":{"name":"@s","objective":"racePos"},"color":"#FFFFFF"}]


execute if score @s raceLap matches ..3 if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches ..3 if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches ..3 if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches ..3 if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]

execute if score @s raceLap matches 3 if score @s raceMilli matches ..9 if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished the course in: ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches 3 if score @s raceMilli matches 10.. if score @s raceSec matches ..9 run tellraw @a [{"selector":"@s"},{"text":" finished the course in: ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches 3 if score @s raceMilli matches ..9 if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished the course in: ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]
execute if score @s raceLap matches 3 if score @s raceMilli matches 10.. if score @s raceSec matches 10.. run tellraw @a [{"selector":"@s"},{"text":" finished the course in: ","color":"gold"},{"score":{"name":"!raceTime","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"!raceTime","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"!raceTime","objective":"raceMilli"},"color":"green"}]

scoreboard players set @s raceMilli 0
scoreboard players set @s raceSec 0
scoreboard players set @s raceMin 0
scoreboard players add @s raceLap 1
scoreboard players set @s raceCP 0
scoreboard players set @s racePos 0