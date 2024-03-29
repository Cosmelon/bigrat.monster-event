# Description: shrinking the physical size of the snow as the border closes in (for shrink1)
# Author: Cosmelon
# Type: tick
# run from main:spleef/sptick

#controls the scoreboard running the below code
scoreboard players remove .shrink1Break sp_border 1

# end sound
execute if score .shrink1Break sp_border matches 1 run playsound minecraft:block.anvil.destroy master @a

#top layer
# directions go north, east, south, west
# one
execute if score .shrink1Break sp_border matches 237 run fill -502 44 -491 -499 44 -491 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -495 44 -491 -492 44 -491 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -467 44 -466 -467 44 -463 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -467 44 -459 -467 44 -456 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -492 44 -431 -495 44 -431 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -499 44 -431 -502 44 -431 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -527 44 -456 -527 44 -459 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -527 44 -463 -527 44 -466 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 227 run fill -502 44 -491 -499 44 -491 air
execute if score .shrink1Break sp_border matches 227 run fill -495 44 -491 -492 44 -491 air
execute if score .shrink1Break sp_border matches 227 run fill -467 44 -466 -467 44 -463 air
execute if score .shrink1Break sp_border matches 227 run fill -467 44 -459 -467 44 -456 air
execute if score .shrink1Break sp_border matches 227 run fill -492 44 -431 -495 44 -431 air
execute if score .shrink1Break sp_border matches 227 run fill -499 44 -431 -502 44 -431 air
execute if score .shrink1Break sp_border matches 227 run fill -527 44 -456 -527 44 -459 air
execute if score .shrink1Break sp_border matches 227 run fill -527 44 -463 -527 44 -466 air
execute if score .shrink1Break sp_border matches 227 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink1Break sp_border matches 204 run fill -506 44 -490 -488 44 -490 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -468 44 -470 -468 44 -452 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -488 44 -432 -506 44 -432 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -526 44 -452 -526 44 -470 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 199 run fill -506 44 -490 -488 44 -490 air
execute if score .shrink1Break sp_border matches 199 run fill -468 44 -470 -468 44 -452 air
execute if score .shrink1Break sp_border matches 199 run fill -488 44 -432 -506 44 -432 air
execute if score .shrink1Break sp_border matches 199 run fill -526 44 -452 -526 44 -470 air
execute if score .shrink1Break sp_border matches 199 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink1Break sp_border matches 171 run fill -509 44 -489 -485 44 -489 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -469 44 -473 -469 44 -449 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -485 44 -433 -509 44 -433 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -525 44 -449 -525 44 -473 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 166 run fill -509 44 -489 -485 44 -489 air
execute if score .shrink1Break sp_border matches 166 run fill -469 44 -473 -469 44 -449 air
execute if score .shrink1Break sp_border matches 166 run fill -485 44 -433 -509 44 -433 air
execute if score .shrink1Break sp_border matches 166 run fill -525 44 -449 -525 44 -473 air
execute if score .shrink1Break sp_border matches 166 run playsound minecraft:block.snow.break master @a
# four
execute if score .shrink1Break sp_border matches 138 run fill -511 44 -488 -483 44 -488 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -470 44 -475 -470 44 -447 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -483 44 -434 -511 44 -434 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -524 44 -447 -524 44 -475 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 133 run fill -511 44 -488 -483 44 -488 air
execute if score .shrink1Break sp_border matches 133 run fill -470 44 -475 -470 44 -447 air
execute if score .shrink1Break sp_border matches 133 run fill -483 44 -434 -511 44 -434 air
execute if score .shrink1Break sp_border matches 133 run fill -524 44 -447 -524 44 -475 air
execute if score .shrink1Break sp_border matches 133 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink1Break sp_border matches 105 run fill -512 44 -487 -482 44 -487 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -471 44 -476 -471 44 -446 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -482 44 -435 -512 44 -435 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -523 44 -446 -523 44 -476 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 100 run fill -512 44 -487 -482 44 -487 air
execute if score .shrink1Break sp_border matches 100 run fill -471 44 -476 -471 44 -446 air
execute if score .shrink1Break sp_border matches 100 run fill -482 44 -435 -512 44 -435 air
execute if score .shrink1Break sp_border matches 100 run fill -523 44 -446 -523 44 -476 air
execute if score .shrink1Break sp_border matches 100 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink1Break sp_border matches 72 run fill -514 44 -486 -480 44 -486 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -472 44 -478 -472 44 -444 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -480 44 -436 -514 44 -436 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -522 44 -444 -522 44 -478 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 67 run fill -514 44 -486 -480 44 -486 air
execute if score .shrink1Break sp_border matches 67 run fill -472 44 -478 -472 44 -444 air
execute if score .shrink1Break sp_border matches 67 run fill -480 44 -436 -514 44 -436 air
execute if score .shrink1Break sp_border matches 67 run fill -522 44 -444 -522 44 -478 air
execute if score .shrink1Break sp_border matches 67 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink1Break sp_border matches 39 run fill -515 44 -485 -479 44 -485 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -473 44 -479 -473 44 -443 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -479 44 -437 -515 44 -437 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -521 44 -443 -521 44 -479 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 34 run fill -515 44 -485 -479 44 -485 air
execute if score .shrink1Break sp_border matches 34 run fill -473 44 -479 -473 44 -443 air
execute if score .shrink1Break sp_border matches 34 run fill -479 44 -437 -515 44 -437 air
execute if score .shrink1Break sp_border matches 34 run fill -521 44 -443 -521 44 -479 air
execute if score .shrink1Break sp_border matches 34 run playsound minecraft:block.snow.break master @a
# eight
execute if score .shrink1Break sp_border matches 6 run fill -516 44 -484 -478 44 -484 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -474 44 -480 -474 44 -442 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -478 44 -438 -516 44 -438 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -520 44 -442 -520 44 -480 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 1 run fill -516 44 -484 -478 44 -484 air
execute if score .shrink1Break sp_border matches 1 run fill -474 44 -480 -474 44 -442 air
execute if score .shrink1Break sp_border matches 1 run fill -478 44 -438 -516 44 -438 air
execute if score .shrink1Break sp_border matches 1 run fill -520 44 -442 -520 44 -480 air
execute if score .shrink1Break sp_border matches 1 run playsound minecraft:block.snow.break master @a

#bottom layer
# directions go north, east, south, west
# one
execute if score .shrink1Break sp_border matches 237 run fill -502 38 -491 -499 38 -491 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -495 38 -491 -492 38 -491 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -467 38 -466 -467 38 -463 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -467 38 -459 -467 38 -456 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -492 38 -431 -495 38 -431 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -499 38 -431 -502 38 -431 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -527 38 -456 -527 38 -459 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 237 run fill -527 38 -463 -527 38 -466 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 227 run fill -502 38 -491 -499 38 -491 air
execute if score .shrink1Break sp_border matches 227 run fill -495 38 -491 -492 38 -491 air
execute if score .shrink1Break sp_border matches 227 run fill -467 38 -466 -467 38 -463 air
execute if score .shrink1Break sp_border matches 227 run fill -467 38 -459 -467 38 -456 air
execute if score .shrink1Break sp_border matches 227 run fill -492 38 -431 -495 38 -431 air
execute if score .shrink1Break sp_border matches 227 run fill -499 38 -431 -502 38 -431 air
execute if score .shrink1Break sp_border matches 227 run fill -527 38 -456 -527 38 -459 air
execute if score .shrink1Break sp_border matches 227 run fill -527 38 -463 -527 38 -466 air
execute if score .shrink1Break sp_border matches 227 run playsound minecraft:block.snow.break master @a
# two
execute if score .shrink1Break sp_border matches 204 run fill -506 38 -490 -488 38 -490 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -468 38 -470 -468 38 -452 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -488 38 -432 -506 38 -432 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 204 run fill -526 38 -452 -526 38 -470 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 199 run fill -506 38 -490 -488 38 -490 air
execute if score .shrink1Break sp_border matches 199 run fill -468 38 -470 -468 38 -452 air
execute if score .shrink1Break sp_border matches 199 run fill -488 38 -432 -506 38 -432 air
execute if score .shrink1Break sp_border matches 199 run fill -526 38 -452 -526 38 -470 air
execute if score .shrink1Break sp_border matches 199 run playsound minecraft:block.snow.break master @a
# three
execute if score .shrink1Break sp_border matches 171 run fill -509 38 -489 -485 38 -489 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -469 38 -473 -469 38 -449 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -485 38 -433 -509 38 -433 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 171 run fill -525 38 -449 -525 38 -473 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 166 run fill -509 38 -489 -485 38 -489 air
execute if score .shrink1Break sp_border matches 166 run fill -469 38 -473 -469 38 -449 air
execute if score .shrink1Break sp_border matches 166 run fill -485 38 -433 -509 38 -433 air
execute if score .shrink1Break sp_border matches 166 run fill -525 38 -449 -525 38 -473 air
execute if score .shrink1Break sp_border matches 166 run playsound minecraft:block.snow.break master @a
# four
execute if score .shrink1Break sp_border matches 138 run fill -511 38 -488 -483 38 -488 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -470 38 -475 -470 38 -447 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -483 38 -434 -511 38 -434 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 138 run fill -524 38 -447 -524 38 -475 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 133 run fill -511 38 -488 -483 38 -488 air
execute if score .shrink1Break sp_border matches 133 run fill -470 38 -475 -470 38 -447 air
execute if score .shrink1Break sp_border matches 133 run fill -483 38 -434 -511 38 -434 air
execute if score .shrink1Break sp_border matches 133 run fill -524 38 -447 -524 38 -475 air
execute if score .shrink1Break sp_border matches 133 run playsound minecraft:block.snow.break master @a
# five
execute if score .shrink1Break sp_border matches 105 run fill -512 38 -487 -482 38 -487 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -471 38 -476 -471 38 -446 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -482 38 -435 -512 38 -435 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 105 run fill -523 38 -446 -523 38 -476 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 100 run fill -512 38 -487 -482 38 -487 air
execute if score .shrink1Break sp_border matches 100 run fill -471 38 -476 -471 38 -446 air
execute if score .shrink1Break sp_border matches 100 run fill -482 38 -435 -512 38 -435 air
execute if score .shrink1Break sp_border matches 100 run fill -523 38 -446 -523 38 -476 air
execute if score .shrink1Break sp_border matches 100 run playsound minecraft:block.snow.break master @a
# six
execute if score .shrink1Break sp_border matches 72 run fill -514 38 -486 -480 38 -486 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -472 38 -478 -472 38 -444 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -480 38 -436 -514 38 -436 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 72 run fill -522 38 -444 -522 38 -478 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 67 run fill -514 38 -486 -480 38 -486 air
execute if score .shrink1Break sp_border matches 67 run fill -472 38 -478 -472 38 -444 air
execute if score .shrink1Break sp_border matches 67 run fill -480 38 -436 -514 38 -436 air
execute if score .shrink1Break sp_border matches 67 run fill -522 38 -444 -522 38 -478 air
execute if score .shrink1Break sp_border matches 67 run playsound minecraft:block.snow.break master @a
# seven
execute if score .shrink1Break sp_border matches 39 run fill -515 38 -485 -479 38 -485 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -473 38 -479 -473 38 -443 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -479 38 -437 -515 38 -437 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 39 run fill -521 38 -443 -521 38 -479 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 34 run fill -515 38 -485 -479 38 -485 air
execute if score .shrink1Break sp_border matches 34 run fill -473 38 -479 -473 38 -443 air
execute if score .shrink1Break sp_border matches 34 run fill -479 38 -437 -515 38 -437 air
execute if score .shrink1Break sp_border matches 34 run fill -521 38 -443 -521 38 -479 air
execute if score .shrink1Break sp_border matches 34 run playsound minecraft:block.snow.break master @a
# eight
execute if score .shrink1Break sp_border matches 6 run fill -516 38 -484 -478 38 -484 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -474 38 -480 -474 38 -442 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -478 38 -438 -516 38 -438 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 6 run fill -520 38 -442 -520 38 -480 red_concrete replace snow_block
execute if score .shrink1Break sp_border matches 1 run fill -516 38 -484 -478 38 -484 air
execute if score .shrink1Break sp_border matches 1 run fill -474 38 -480 -474 38 -442 air
execute if score .shrink1Break sp_border matches 1 run fill -478 38 -438 -516 38 -438 air
execute if score .shrink1Break sp_border matches 1 run fill -520 38 -442 -520 38 -480 air
execute if score .shrink1Break sp_border matches 1 run playsound minecraft:block.snow.break master @a