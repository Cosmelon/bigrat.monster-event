# Description: shrinking the physical size of the snow as the border closes in (for shrink2)
# Author: Cosmelon
# Type: tick
# run from main:spleef/sptick

#controls the scoreboard running the below code
scoreboard players remove .shrink2Break sp_border 1

# end sound
execute if score .shrink2Break sp_border matches 1 run playsound minecraft:block.anvil.destroy master @a

#top layer
# directions go north, east, south, west
# one
execute if score .shrink2Break sp_border matches 343 run fill -516 44 -483 -478 44 -483 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -475 44 -480 -475 44 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -478 44 -439 -516 44 -439 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -519 44 -442 -519 44 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 337 run fill -516 44 -483 -478 44 -483 air
execute if score .shrink2Break sp_border matches 337 run fill -475 44 -480 -475 44 -442 air
execute if score .shrink2Break sp_border matches 337 run fill -478 44 -439 -516 44 -439 air
execute if score .shrink2Break sp_border matches 337 run fill -519 44 -442 -519 44 -480 air
execute if score .shrink2Break sp_border matches 337 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink2Break sp_border matches 285 run fill -517 44 -482 -477 44 -482 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -476 44 -481 -476 44 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -477 44 -440 -517 44 -440 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -518 44 -441 -518 44 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 280 run fill -517 44 -482 -477 44 -482 air
execute if score .shrink2Break sp_border matches 280 run fill -476 44 -481 -476 44 -441 air
execute if score .shrink2Break sp_border matches 280 run fill -477 44 -440 -517 44 -440 air
execute if score .shrink2Break sp_border matches 280 run fill -518 44 -441 -518 44 -481 air
execute if score .shrink2Break sp_border matches 280 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink2Break sp_border matches 228 run fill -517 44 -481 -477 44 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -477 44 -481 -477 44 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -477 44 -441 -517 44 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -517 44 -441 -517 44 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 223 run fill -517 44 -481 -477 44 -481 air
execute if score .shrink2Break sp_border matches 223 run fill -477 44 -481 -477 44 -441 air
execute if score .shrink2Break sp_border matches 223 run fill -477 44 -441 -517 44 -441 air
execute if score .shrink2Break sp_border matches 223 run fill -517 44 -441 -517 44 -481 air
execute if score .shrink2Break sp_border matches 223 run playsound minecraft:block.snow.break master @a
# four
execute if score .shrink2Break sp_border matches 170 run fill -516 44 -480 -478 44 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -478 44 -480 -478 44 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -478 44 -442 -516 44 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -516 44 -442 -516 44 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 165 run fill -516 44 -480 -478 44 -480 air
execute if score .shrink2Break sp_border matches 165 run fill -478 44 -480 -478 44 -442 air
execute if score .shrink2Break sp_border matches 165 run fill -478 44 -442 -516 44 -442 air
execute if score .shrink2Break sp_border matches 165 run fill -516 44 -442 -516 44 -480 air
execute if score .shrink2Break sp_border matches 165 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink2Break sp_border matches 115 run fill -515 44 -479 -479 44 -479 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -479 44 -479 -479 44 -443 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -479 44 -443 -515 44 -443 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -515 44 -443 -515 44 -479 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 110 run fill -515 44 -479 -479 44 -479 air
execute if score .shrink2Break sp_border matches 110 run fill -479 44 -479 -479 44 -443 air
execute if score .shrink2Break sp_border matches 110 run fill -479 44 -443 -515 44 -443 air
execute if score .shrink2Break sp_border matches 110 run fill -515 44 -443 -515 44 -479 air
execute if score .shrink2Break sp_border matches 110 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink2Break sp_border matches 67 run fill -514 44 -478 -480 44 -478 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -480 44 -478 -480 44 -444 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -480 44 -444 -514 44 -444 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -514 44 -444 -514 44 -478 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 62 run fill -514 44 -478 -480 44 -478 air
execute if score .shrink2Break sp_border matches 62 run fill -480 44 -478 -480 44 -444 air
execute if score .shrink2Break sp_border matches 62 run fill -480 44 -444 -514 44 -444 air
execute if score .shrink2Break sp_border matches 62 run fill -514 44 -444 -514 44 -478 air
execute if score .shrink2Break sp_border matches 62 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink2Break sp_border matches 11 run fill -513 44 -477 -481 44 -477 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -481 44 -477 -481 44 -445 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -481 44 -445 -513 44 -445 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -513 44 -445 -513 44 -477 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 6 run fill -513 44 -477 -481 44 -477 air
execute if score .shrink2Break sp_border matches 6 run fill -481 44 -477 -481 44 -445 air
execute if score .shrink2Break sp_border matches 6 run fill -481 44 -445 -513 44 -445 air
execute if score .shrink2Break sp_border matches 6 run fill -513 44 -445 -513 44 -477 air
execute if score .shrink2Break sp_border matches 6 run playsound minecraft:block.snow.break master @a


#bottom layer
# directions go north, east, south, west
# one
execute if score .shrink2Break sp_border matches 343 run fill -516 38 -483 -478 38 -483 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -475 38 -480 -475 38 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -478 38 -439 -516 38 -439 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 343 run fill -519 38 -442 -519 38 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 337 run fill -516 38 -483 -478 38 -483 air
execute if score .shrink2Break sp_border matches 337 run fill -475 38 -480 -475 38 -442 air
execute if score .shrink2Break sp_border matches 337 run fill -478 38 -439 -516 38 -439 air
execute if score .shrink2Break sp_border matches 337 run fill -519 38 -442 -519 38 -480 air
execute if score .shrink2Break sp_border matches 337 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink2Break sp_border matches 285 run fill -517 38 -482 -477 38 -482 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -476 38 -481 -476 38 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -477 38 -440 -517 38 -440 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 285 run fill -518 38 -441 -518 38 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 280 run fill -517 38 -482 -477 38 -482 air
execute if score .shrink2Break sp_border matches 280 run fill -476 38 -481 -476 38 -441 air
execute if score .shrink2Break sp_border matches 280 run fill -477 38 -440 -517 38 -440 air
execute if score .shrink2Break sp_border matches 280 run fill -518 38 -441 -518 38 -481 air
execute if score .shrink2Break sp_border matches 280 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink2Break sp_border matches 228 run fill -517 38 -481 -477 38 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -477 38 -481 -477 38 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -477 38 -441 -517 38 -441 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 228 run fill -517 38 -441 -517 38 -481 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 223 run fill -517 38 -481 -477 38 -481 air
execute if score .shrink2Break sp_border matches 223 run fill -477 38 -481 -477 38 -441 air
execute if score .shrink2Break sp_border matches 223 run fill -477 38 -441 -517 38 -441 air
execute if score .shrink2Break sp_border matches 223 run fill -517 38 -441 -517 38 -481 air
execute if score .shrink2Break sp_border matches 223 run playsound minecraft:block.snow.break master @a
# four
execute if score .shrink2Break sp_border matches 170 run fill -516 38 -480 -478 38 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -478 38 -480 -478 38 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -478 38 -442 -516 38 -442 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 170 run fill -516 38 -442 -516 38 -480 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 165 run fill -516 38 -480 -478 38 -480 air
execute if score .shrink2Break sp_border matches 165 run fill -478 38 -480 -478 38 -442 air
execute if score .shrink2Break sp_border matches 165 run fill -478 38 -442 -516 38 -442 air
execute if score .shrink2Break sp_border matches 165 run fill -516 38 -442 -516 38 -480 air
execute if score .shrink2Break sp_border matches 165 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink2Break sp_border matches 115 run fill -515 38 -479 -479 38 -479 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -479 38 -479 -479 38 -443 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -479 38 -443 -515 38 -443 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 115 run fill -515 38 -443 -515 38 -479 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 110 run fill -515 38 -479 -479 38 -479 air
execute if score .shrink2Break sp_border matches 110 run fill -479 38 -479 -479 38 -443 air
execute if score .shrink2Break sp_border matches 110 run fill -479 38 -443 -515 38 -443 air
execute if score .shrink2Break sp_border matches 110 run fill -515 38 -443 -515 38 -479 air
execute if score .shrink2Break sp_border matches 110 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink2Break sp_border matches 67 run fill -514 38 -478 -480 38 -478 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -480 38 -478 -480 38 -444 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -480 38 -444 -514 38 -444 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 67 run fill -514 38 -444 -514 38 -478 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 62 run fill -514 38 -478 -480 38 -478 air
execute if score .shrink2Break sp_border matches 62 run fill -480 38 -478 -480 38 -444 air
execute if score .shrink2Break sp_border matches 62 run fill -480 38 -444 -514 38 -444 air
execute if score .shrink2Break sp_border matches 62 run fill -514 38 -444 -514 38 -478 air
execute if score .shrink2Break sp_border matches 62 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink2Break sp_border matches 11 run fill -513 38 -477 -481 38 -477 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -481 38 -477 -481 38 -445 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -481 38 -445 -513 38 -445 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 11 run fill -513 38 -445 -513 38 -477 red_concrete replace snow_block
execute if score .shrink2Break sp_border matches 6 run fill -513 38 -477 -481 38 -477 air
execute if score .shrink2Break sp_border matches 6 run fill -481 38 -477 -481 38 -445 air
execute if score .shrink2Break sp_border matches 6 run fill -481 38 -445 -513 38 -445 air
execute if score .shrink2Break sp_border matches 6 run fill -513 38 -445 -513 38 -477 air
execute if score .shrink2Break sp_border matches 6 run playsound minecraft:block.snow.break master @a