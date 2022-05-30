# Description: readycheck success
# Author: Cosmelon
# Type: single
# run from main:ready/readycheck

# opening space
tellraw @a ""

# text space
execute if score .ready teamCheck = .players teamCheck run tellraw @a {"text":"All players are ready to go!","color":"dark_green"}
execute if score .ready teamCheck > .players teamCheck run tellraw @a[team=Admin] [{"text":"[Admin Info] ","color":"dark_red"},{"text":"Ok, something just went horribly wrong, contact Cosmelon.","color":"white"}]
execute if score .ready teamCheck < .players teamCheck run tellraw @a {"text":"Not all players are ready to go!","color":"dark_red"}
execute if score .ready teamCheck < .players teamCheck run tellraw @a [{"selector":"@a[tag=player,tag=!readyCheck]"},{"text":" isn't ready! Make fun of them!"}]

# closing space
tellraw @a ""


# clear the triggerboard
scoreboard objectives remove readyChecked
