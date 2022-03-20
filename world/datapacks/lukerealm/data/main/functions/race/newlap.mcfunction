# this file is executed as a player who finishes a lap
# I didn't add support for laps less than a minute, it's just not possible with the current course

tellraw @a [{"selector":"@s"},{"text":" finished lap ","color":"gold"},{"score":{"name":"@s","objective":"raceLap"},"color":"green"},{"text":"/3 in ","color":"gold"},{"score":{"name":"@s","objective":"raceMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"raceSec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"raceMilli"},"color":"green"}]
scoreboard players set @s raceMilli 0
scoreboard players set @s raceSec 0
scoreboard players set @s raceMin 0
scoreboard players add @s raceLap 1
scoreboard players set @s raceCP 0