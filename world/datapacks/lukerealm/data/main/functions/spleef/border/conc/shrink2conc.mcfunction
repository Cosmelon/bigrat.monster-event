# this file is called from main:sptick
# this is still a tick file, be careful!
#   this file is also only called while a round is active

#controls the scoreboard running the below code
scoreboard players remove $shrink2Break spleefBorder 1

#top layer
# directions go north, east, south, west
# one
execute if score $shrink2Break spleefBorder matches 370 run fill -516 44 -483 -478 44 -483 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 370 run fill -475 44 -480 -475 44 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 370 run fill -478 44 -439 -516 44 -439 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 370 run fill -519 44 -442 -519 44 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 360 run fill -516 44 -483 -478 44 -483 air
execute if score $shrink2Break spleefBorder matches 360 run fill -475 44 -480 -475 44 -442 air
execute if score $shrink2Break spleefBorder matches 360 run fill -478 44 -439 -516 44 -439 air
execute if score $shrink2Break spleefBorder matches 360 run fill -519 44 -442 -519 44 -480 air
# two
execute if score $shrink2Break spleefBorder matches 306 run fill -517 44 -482 -477 44 -482 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 306 run fill -476 44 -481 -476 44 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 306 run fill -477 44 -440 -517 44 -440 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 306 run fill -518 44 -441 -518 44 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 296 run fill -517 44 -482 -477 44 -482 air
execute if score $shrink2Break spleefBorder matches 296 run fill -476 44 -481 -476 44 -441 air
execute if score $shrink2Break spleefBorder matches 296 run fill -477 44 -440 -517 44 -440 air
execute if score $shrink2Break spleefBorder matches 296 run fill -518 44 -441 -518 44 -481 air
# three
execute if score $shrink2Break spleefBorder matches 250 run fill -517 44 -481 -477 44 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -477 44 -481 -477 44 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -477 44 -441 -517 44 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -517 44 -441 -517 44 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 240 run fill -517 44 -481 -477 44 -481 air
execute if score $shrink2Break spleefBorder matches 240 run fill -477 44 -481 -477 44 -441 air
execute if score $shrink2Break spleefBorder matches 240 run fill -477 44 -441 -517 44 -441 air
execute if score $shrink2Break spleefBorder matches 240 run fill -517 44 -441 -517 44 -481 air
# four
execute if score $shrink2Break spleefBorder matches 190 run fill -516 44 -480 -478 44 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -478 44 -480 -478 44 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -478 44 -442 -516 44 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -516 44 -442 -516 44 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 180 run fill -516 44 -480 -478 44 -480 air
execute if score $shrink2Break spleefBorder matches 180 run fill -478 44 -480 -478 44 -442 air
execute if score $shrink2Break spleefBorder matches 180 run fill -478 44 -442 -516 44 -442 air
execute if score $shrink2Break spleefBorder matches 180 run fill -516 44 -442 -516 44 -480 air
# five
execute if score $shrink2Break spleefBorder matches 136 run fill -515 44 -479 -479 44 -479 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -479 44 -479 -479 44 -443 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -479 44 -443 -515 44 -443 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -515 44 -443 -515 44 -479 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 126 run fill -515 44 -479 -479 44 -479 air
execute if score $shrink2Break spleefBorder matches 126 run fill -479 44 -479 -479 44 -443 air
execute if score $shrink2Break spleefBorder matches 126 run fill -479 44 -443 -515 44 -443 air
execute if score $shrink2Break spleefBorder matches 126 run fill -515 44 -443 -515 44 -479 air
# six
execute if score $shrink2Break spleefBorder matches 80 run fill -514 44 -478 -480 44 -478 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 80 run fill -480 44 -478 -480 44 -444 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 80 run fill -480 44 -444 -514 44 -444 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 80 run fill -514 44 -444 -514 44 -478 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 68 run fill -514 44 -478 -480 44 -478 air
execute if score $shrink2Break spleefBorder matches 68 run fill -480 44 -478 -480 44 -444 air
execute if score $shrink2Break spleefBorder matches 68 run fill -480 44 -444 -514 44 -444 air
execute if score $shrink2Break spleefBorder matches 68 run fill -514 44 -444 -514 44 -478 air
# seven
execute if score $shrink2Break spleefBorder matches 18 run fill -513 44 -477 -481 44 -477 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -481 44 -477 -481 44 -445 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -481 44 -445 -513 44 -445 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -513 44 -445 -513 44 -477 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 8 run fill -513 44 -477 -481 44 -477 air
execute if score $shrink2Break spleefBorder matches 8 run fill -481 44 -477 -481 44 -445 air
execute if score $shrink2Break spleefBorder matches 8 run fill -481 44 -445 -513 44 -445 air
execute if score $shrink2Break spleefBorder matches 8 run fill -513 44 -445 -513 44 -477 air


#bottom layer
# directions go north, east, south, west
# one
execute if score $shrink2Break spleefBorder matches 366 run fill -516 38 -483 -478 38 -483 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 366 run fill -475 38 -480 -475 38 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 366 run fill -478 38 -439 -516 38 -439 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 366 run fill -519 38 -442 -519 38 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 361 run fill -516 38 -483 -478 38 -483 air
execute if score $shrink2Break spleefBorder matches 361 run fill -475 38 -480 -475 38 -442 air
execute if score $shrink2Break spleefBorder matches 361 run fill -478 38 -439 -516 38 -439 air
execute if score $shrink2Break spleefBorder matches 361 run fill -519 38 -442 -519 38 -480 air
# two
execute if score $shrink2Break spleefBorder matches 309 run fill -517 38 -482 -477 38 -482 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 309 run fill -476 38 -481 -476 38 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 309 run fill -477 38 -440 -517 38 -440 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 309 run fill -518 38 -441 -518 38 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 304 run fill -517 38 -482 -477 38 -482 air
execute if score $shrink2Break spleefBorder matches 304 run fill -476 38 -481 -476 38 -441 air
execute if score $shrink2Break spleefBorder matches 304 run fill -477 38 -440 -517 38 -440 air
execute if score $shrink2Break spleefBorder matches 304 run fill -518 38 -441 -518 38 -481 air
# three
execute if score $shrink2Break spleefBorder matches 250 run fill -517 38 -481 -477 38 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -477 38 -481 -477 38 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -477 38 -441 -517 38 -441 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 250 run fill -517 38 -441 -517 38 -481 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 245 run fill -517 38 -481 -477 38 -481 air
execute if score $shrink2Break spleefBorder matches 245 run fill -477 38 -481 -477 38 -441 air
execute if score $shrink2Break spleefBorder matches 245 run fill -477 38 -441 -517 38 -441 air
execute if score $shrink2Break spleefBorder matches 245 run fill -517 38 -441 -517 38 -481 air
# four
execute if score $shrink2Break spleefBorder matches 190 run fill -516 38 -480 -478 38 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -478 38 -480 -478 38 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -478 38 -442 -516 38 -442 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 190 run fill -516 38 -442 -516 38 -480 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 185 run fill -516 38 -480 -478 38 -480 air
execute if score $shrink2Break spleefBorder matches 185 run fill -478 38 -480 -478 38 -442 air
execute if score $shrink2Break spleefBorder matches 185 run fill -478 38 -442 -516 38 -442 air
execute if score $shrink2Break spleefBorder matches 185 run fill -516 38 -442 -516 38 -480 air
# five
execute if score $shrink2Break spleefBorder matches 136 run fill -515 38 -479 -479 38 -479 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -479 38 -479 -479 38 -443 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -479 38 -443 -515 38 -443 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 136 run fill -515 38 -443 -515 38 -479 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 131 run fill -515 38 -479 -479 38 -479 air
execute if score $shrink2Break spleefBorder matches 131 run fill -479 38 -479 -479 38 -443 air
execute if score $shrink2Break spleefBorder matches 131 run fill -479 38 -443 -515 38 -443 air
execute if score $shrink2Break spleefBorder matches 131 run fill -515 38 -443 -515 38 -479 air
# six
execute if score $shrink2Break spleefBorder matches 78 run fill -514 38 -478 -480 38 -478 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 78 run fill -480 38 -478 -480 38 -444 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 78 run fill -480 38 -444 -514 38 -444 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 78 run fill -514 38 -444 -514 38 -478 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 73 run fill -514 38 -478 -480 38 -478 air
execute if score $shrink2Break spleefBorder matches 73 run fill -480 38 -478 -480 38 -444 air
execute if score $shrink2Break spleefBorder matches 73 run fill -480 38 -444 -514 38 -444 air
execute if score $shrink2Break spleefBorder matches 73 run fill -514 38 -444 -514 38 -478 air
# seven
execute if score $shrink2Break spleefBorder matches 18 run fill -513 38 -477 -481 38 -477 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -481 38 -477 -481 38 -445 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -481 38 -445 -513 38 -445 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 18 run fill -513 38 -445 -513 38 -477 red_concrete replace snow_block
execute if score $shrink2Break spleefBorder matches 13 run fill -513 38 -477 -481 38 -477 air
execute if score $shrink2Break spleefBorder matches 13 run fill -481 38 -477 -481 38 -445 air
execute if score $shrink2Break spleefBorder matches 13 run fill -481 38 -445 -513 38 -445 air
execute if score $shrink2Break spleefBorder matches 13 run fill -513 38 -445 -513 38 -477 air