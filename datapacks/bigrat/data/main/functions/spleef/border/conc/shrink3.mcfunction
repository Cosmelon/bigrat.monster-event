# Description: shrinking the physical size of the snow as the border closes in (for shrink3)
# Author: Cosmelon
# Type: tick
# run from main:spleef/sptick

#controls the scoreboard running the below code
scoreboard players remove .shrink3Break sp_border 1

# end sound
execute if score .shrink12reak sp_border matches 1 run playsound minecraft:block.anvil.destroy master @a

#top layer
# directions go north, east, south, west
# one
execute if score .shrink3Break sp_border matches 350 run fill -512 44 -476 -482 44 -476 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -482 44 -476 -482 44 -446 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -482 44 -446 -512 44 -446 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -512 44 -446 -512 44 -476 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 345 run fill -512 44 -476 -482 44 -476 air
execute if score .shrink3Break sp_border matches 345 run fill -482 44 -476 -482 44 -446 air
execute if score .shrink3Break sp_border matches 345 run fill -482 44 -446 -512 44 -446 air
execute if score .shrink3Break sp_border matches 345 run fill -512 44 -446 -512 44 -476 air
execute if score .shrink3Break sp_border matches 345 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink3Break sp_border matches 290 run fill -511 44 -475 -483 44 -475 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -483 44 -475 -483 44 -447 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -483 44 -447 -511 44 -447 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -511 44 -447 -511 44 -475 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 285 run fill -511 44 -475 -483 44 -475 air
execute if score .shrink3Break sp_border matches 285 run fill -483 44 -475 -483 44 -447 air
execute if score .shrink3Break sp_border matches 285 run fill -483 44 -447 -511 44 -447 air
execute if score .shrink3Break sp_border matches 285 run fill -511 44 -447 -511 44 -475 air
execute if score .shrink3Break sp_border matches 285 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink3Break sp_border matches 234 run fill -510 44 -474 -484 44 -474 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -484 44 -474 -484 44 -448 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -484 44 -448 -510 44 -448 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -510 44 -448 -510 44 -474 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 229 run fill -510 44 -474 -484 44 -474 air
execute if score .shrink3Break sp_border matches 229 run fill -484 44 -474 -484 44 -448 air
execute if score .shrink3Break sp_border matches 229 run fill -484 44 -448 -510 44 -448 air
execute if score .shrink3Break sp_border matches 229 run fill -510 44 -448 -510 44 -474 air
execute if score .shrink3Break sp_border matches 229 run playsound minecraft:block.snow.break master @a
# four 
execute if score .shrink3Break sp_border matches 176 run fill -509 44 -473 -485 44 -473 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -485 44 -473 -485 44 -449 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -485 44 -449 -509 44 -449 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -509 44 -449 -509 44 -473 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 171 run fill -509 44 -473 -485 44 -473 air
execute if score .shrink3Break sp_border matches 171 run fill -485 44 -473 -485 44 -449 air
execute if score .shrink3Break sp_border matches 171 run fill -485 44 -449 -509 44 -449 air
execute if score .shrink3Break sp_border matches 171 run fill -509 44 -449 -509 44 -473 air
execute if score .shrink3Break sp_border matches 171 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink3Break sp_border matches 118 run fill -508 44 -472 -486 44 -472 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -486 44 -472 -486 44 -450 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -486 44 -450 -508 44 -450 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -508 44 -450 -508 44 -472 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 113 run fill -508 44 -472 -486 44 -472 air
execute if score .shrink3Break sp_border matches 113 run fill -486 44 -472 -486 44 -450 air
execute if score .shrink3Break sp_border matches 113 run fill -486 44 -450 -508 44 -450 air
execute if score .shrink3Break sp_border matches 113 run fill -508 44 -450 -508 44 -472 air
execute if score .shrink3Break sp_border matches 113 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink3Break sp_border matches 62 run fill -507 44 -471 -487 44 -471 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -487 44 -471 -487 44 -451 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -487 44 -451 -507 44 -451 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -507 44 -451 -507 44 -471 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 57 run fill -507 44 -471 -487 44 -471 air
execute if score .shrink3Break sp_border matches 57 run fill -487 44 -471 -487 44 -451 air
execute if score .shrink3Break sp_border matches 57 run fill -487 44 -451 -507 44 -451 air
execute if score .shrink3Break sp_border matches 57 run fill -507 44 -451 -510 44 -471 air
execute if score .shrink3Break sp_border matches 57 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink3Break sp_border matches 6 run fill -506 44 -470 -488 44 -470 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -488 44 -470 -488 44 -452 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -488 44 -452 -506 44 -452 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -506 44 -452 -506 44 -470 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 1 run fill -506 44 -470 -488 44 -470 air
execute if score .shrink3Break sp_border matches 1 run fill -488 44 -470 -488 44 -452 air
execute if score .shrink3Break sp_border matches 1 run fill -484 44 -448 -506 44 -452 air
execute if score .shrink3Break sp_border matches 1 run fill -506 44 -448 -506 44 -470 air
execute if score .shrink3Break sp_border matches 1 run playsound minecraft:block.snow.break master @a

#bottom layer
# directions go north, east, south, west
# one
execute if score .shrink3Break sp_border matches 350 run fill -512 38 -476 -482 38 -476 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -482 38 -476 -482 38 -446 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -482 38 -446 -512 38 -446 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 350 run fill -512 38 -446 -512 38 -476 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 345 run fill -512 38 -476 -482 38 -476 air
execute if score .shrink3Break sp_border matches 345 run fill -482 38 -476 -482 38 -446 air
execute if score .shrink3Break sp_border matches 345 run fill -482 38 -446 -512 38 -446 air
execute if score .shrink3Break sp_border matches 345 run fill -512 38 -446 -512 38 -476 air
execute if score .shrink3Break sp_border matches 345 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink3Break sp_border matches 290 run fill -511 38 -475 -483 38 -475 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -483 38 -475 -483 38 -447 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -483 38 -447 -511 38 -447 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 290 run fill -511 38 -447 -511 38 -475 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 285 run fill -511 38 -475 -483 38 -475 air
execute if score .shrink3Break sp_border matches 285 run fill -483 38 -475 -483 38 -447 air
execute if score .shrink3Break sp_border matches 285 run fill -483 44 -447 -511 38 -447 air
execute if score .shrink3Break sp_border matches 285 run fill -511 38 -447 -511 38 -475 air
execute if score .shrink3Break sp_border matches 285 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink3Break sp_border matches 234 run fill -510 38 -474 -484 38 -474 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -484 38 -474 -484 38 -448 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -484 38 -448 -510 38 -448 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 234 run fill -510 38 -448 -510 38 -474 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 229 run fill -510 38 -474 -484 38 -474 air
execute if score .shrink3Break sp_border matches 229 run fill -484 38 -474 -484 38 -448 air
execute if score .shrink3Break sp_border matches 229 run fill -484 38 -448 -510 38 -448 air
execute if score .shrink3Break sp_border matches 229 run fill -510 38 -448 -510 38 -474 air
execute if score .shrink3Break sp_border matches 229 run playsound minecraft:block.snow.break master @a
# four 
execute if score .shrink3Break sp_border matches 176 run fill -509 38 -473 -485 38 -473 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -485 38 -473 -485 38 -449 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -485 38 -449 -509 38 -449 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 176 run fill -509 38 -449 -509 38 -473 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 171 run fill -509 38 -473 -485 38 -473 air
execute if score .shrink3Break sp_border matches 171 run fill -485 38 -473 -485 38 -449 air
execute if score .shrink3Break sp_border matches 171 run fill -485 38 -449 -509 38 -449 air
execute if score .shrink3Break sp_border matches 171 run fill -509 38 -449 -509 38 -473 air
execute if score .shrink3Break sp_border matches 171 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink3Break sp_border matches 118 run fill -508 38 -472 -486 38 -472 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -486 38 -472 -486 38 -450 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -486 38 -450 -508 38 -450 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 118 run fill -508 38 -450 -508 38 -472 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 113 run fill -508 38 -472 -486 38 -472 air
execute if score .shrink3Break sp_border matches 113 run fill -486 38 -472 -486 38 -450 air
execute if score .shrink3Break sp_border matches 113 run fill -486 38 -450 -508 38 -450 air
execute if score .shrink3Break sp_border matches 113 run fill -508 38 -450 -508 38 -472 air
execute if score .shrink3Break sp_border matches 113 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink3Break sp_border matches 62 run fill -507 38 -471 -487 38 -471 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -487 38 -471 -487 38 -451 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -487 38 -451 -507 38 -451 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 62 run fill -507 38 -451 -507 38 -471 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 57 run fill -507 38 -471 -487 38 -471 air
execute if score .shrink3Break sp_border matches 57 run fill -487 38 -471 -487 38 -451 air
execute if score .shrink3Break sp_border matches 57 run fill -487 38 -451 -507 38 -451 air
execute if score .shrink3Break sp_border matches 57 run fill -507 38 -451 -510 38 -471 air
execute if score .shrink3Break sp_border matches 57 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink3Break sp_border matches 6 run fill -506 38 -470 -488 38 -470 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -488 38 -470 -488 38 -452 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -488 38 -452 -506 38 -452 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 6 run fill -506 38 -452 -506 38 -470 red_concrete replace snow_block
execute if score .shrink3Break sp_border matches 1 run fill -506 38 -470 -488 38 -470 air
execute if score .shrink3Break sp_border matches 1 run fill -488 38 -470 -488 38 -452 air
execute if score .shrink3Break sp_border matches 1 run fill -484 38 -448 -506 38 -452 air
execute if score .shrink3Break sp_border matches 1 run fill -506 38 -448 -506 38 -470 air
execute if score .shrink3Break sp_border matches 1 run playsound minecraft:block.snow.break master @a