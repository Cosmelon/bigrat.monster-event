# this file is called from main:sptick
# this is still a tick file, be careful!
#   this file is also only called while a round is active

#controls the scoreboard running the below code
scoreboard players remove $shrink3Break spleefBorder 1

#top layer
# directions go north, east, south, west
# one
execute if score $shrink3Break spleefBorder matches 400 run fill -512 44 -476 -482 44 -476 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -482 44 -476 -482 44 -446 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -482 44 -446 -512 44 -446 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -512 44 -446 -512 44 -476 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 349 run fill -512 44 -476 -482 44 -476 air
execute if score $shrink3Break spleefBorder matches 349 run fill -482 44 -476 -482 44 -446 air
execute if score $shrink3Break spleefBorder matches 349 run fill -482 44 -446 -512 44 -446 air
execute if score $shrink3Break spleefBorder matches 349 run fill -512 44 -446 -512 44 -476 air
# two
execute if score $shrink3Break spleefBorder matches 348 run fill -511 44 -475 -483 44 -475 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -483 44 -475 -483 44 -447 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -483 44 -447 -511 44 -447 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -511 44 -447 -511 44 -475 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 290 run fill -512 44 -476 -482 44 -476 air
execute if score $shrink3Break spleefBorder matches 290 run fill -482 44 -476 -482 44 -446 air
execute if score $shrink3Break spleefBorder matches 290 run fill -482 44 -446 -512 44 -446 air
execute if score $shrink3Break spleefBorder matches 290 run fill -512 44 -446 -512 44 -476 air
# three
execute if score $shrink3Break spleefBorder matches 289 run fill -510 44 -474 -484 44 -474 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -484 44 -474 -484 44 -448 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -484 44 -448 -510 44 -448 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -510 44 -448 -510 44 -474 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 234 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 234 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 234 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 234 run fill -510 44 -448 -510 44 -474 air
# four 
execute if score $shrink3Break spleefBorder matches 233 run fill -509 44 -473 -485 44 -473 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -485 44 -473 -485 44 -449 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -485 44 -449 -509 44 -449 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -509 44 -449 -509 44 -473 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 176 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 176 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 176 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 176 run fill -510 44 -448 -510 44 -474 air
# five
execute if score $shrink3Break spleefBorder matches 175 run fill -508 44 -472 -486 44 -472 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -486 44 -472 -486 44 -450 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -486 44 -450 -508 44 -450 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -508 44 -450 -508 44 -472 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 118 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 118 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 118 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 118 run fill -510 44 -448 -510 44 -474 air
# six
execute if score $shrink3Break spleefBorder matches 117 run fill -507 44 -471 -487 44 -471 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -487 44 -471 -487 44 -451 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -487 44 -451 -507 44 -451 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -507 44 -451 -507 44 -471 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 62 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 62 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 62 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 62 run fill -510 44 -448 -510 44 -474 air
# seven
execute if score $shrink3Break spleefBorder matches 61 run fill -506 44 -470 -488 44 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -488 44 -470 -488 44 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -488 44 -452 -506 44 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -506 44 -452 -506 44 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 1 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 1 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 1 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 1 run fill -510 44 -448 -510 44 -474 air

#bottom layer
# directions go north, east, south, west

# one
execute if score $shrink3Break spleefBorder matches 400 run fill -511 38 -475 -483 38 -475 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -483 38 -475 -483 38 -447 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -483 38 -447 -511 38 -447 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 400 run fill -511 38 -447 -511 38 -475 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 349 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 349 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 349 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 349 run fill -510 44 -448 -510 44 -474 air
# two
execute if score $shrink3Break spleefBorder matches 348 run fill -510 38 -474 -484 38 -474 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -484 38 -474 -484 38 -448 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -484 38 -448 -510 38 -448 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 348 run fill -510 38 -448 -510 38 -474 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 290 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 290 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 290 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 290 run fill -510 44 -448 -510 44 -474 air
# three
execute if score $shrink3Break spleefBorder matches 289 run fill -509 38 -473 -485 38 -473 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -485 38 -473 -485 38 -449 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -485 38 -449 -509 38 -449 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 289 run fill -509 38 -449 -509 38 -473 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 234 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 234 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 234 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 234 run fill -510 44 -448 -510 44 -474 air
# four
execute if score $shrink3Break spleefBorder matches 233 run fill -508 38 -472 -486 38 -472 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -486 38 -472 -486 38 -450 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -486 38 -450 -508 38 -450 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 233 run fill -508 38 -450 -508 38 -472 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 176 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 176 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 176 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 176 run fill -510 44 -448 -510 44 -474 air
# five
execute if score $shrink3Break spleefBorder matches 175 run fill -507 38 -471 -487 38 -471 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -487 38 -471 -487 38 -451 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -487 38 -451 -507 38 -451 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 175 run fill -507 38 -451 -507 38 -471 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 118 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 118 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 118 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 118 run fill -510 44 -448 -510 44 -474 air
# six
execute if score $shrink3Break spleefBorder matches 117 run fill -506 38 -470 -488 38 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -488 38 -470 -488 38 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -488 38 -452 -506 38 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 117 run fill -506 38 -452 -506 38 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 62 run fill -510 44 -474 -484 44 -474 air
execute if score $shrink3Break spleefBorder matches 62 run fill -484 44 -474 -484 44 -448 air
execute if score $shrink3Break spleefBorder matches 62 run fill -484 44 -448 -510 44 -448 air
execute if score $shrink3Break spleefBorder matches 62 run fill -510 44 -448 -510 44 -474 air
# seven
execute if score $shrink3Break spleefBorder matches 61 run fill -506 38 -470 -488 38 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -488 38 -470 -488 38 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -488 38 -452 -506 38 -452 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 61 run fill -506 38 -452 -506 38 -470 red_concrete replace snow_block
execute if score $shrink3Break spleefBorder matches 1 run fill -506 38 -470 -488 38 -470 air
execute if score $shrink3Break spleefBorder matches 1 run fill -488 38 -470 -488 38 -452 air
execute if score $shrink3Break spleefBorder matches 1 run fill -488 38 -452 -506 38 -452 air
execute if score $shrink3Break spleefBorder matches 1 run fill -506 38 -452 -506 38 -470 air