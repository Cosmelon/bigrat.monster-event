# DIGGY DIGGY HOLE
# so basically its a fossil digging type game where players are released into a prison mining pit and they have to find treasure
# in the pit and deposit it at the top and they would only have a certain amount of time before they got blindness because their
# flashlight ran out or something 
#  have a noteblock recreation of diggy diggy hole at the beginning

effect give @a saturation 10000 0 true

execute if score $gameActive spleef matches 0 run scoreboard players set $spleef currentGame 0
execute if score $gameActive spleef matches 1 run scoreboard players set $spleef currentGame 1

execute if score $gameActive spleef matches 0 run effect give @a weakness 10000 100 true

bossbar set minecraft:spleefroundcount players @a
bossbar set minecraft:shrink1timer players @a
bossbar set minecraft:shirnk2timer players @a
bossbar set minecraft:shrink3timer players @a