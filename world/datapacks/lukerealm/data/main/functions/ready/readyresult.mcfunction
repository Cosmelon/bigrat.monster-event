# Description: readycheck success
# Author: Cosmelon
# Type: single
# @s = <executor> (can be omitted when not used)
# run from 

# text space
scoreboard players reset #readyPlayers teamCheck
execute store result score #readyPlayers teamCheck if entity @a[tag=player,tag=readyChecked]

# opening space
tellraw @a ""

# text space
execute if score #readyPlayers teamCheck = .players teamCheck run tellraw @a {"text":"All players are ready to go!","color":"dark_green"}

execute if score #readyPlayers teamCheck < .players teamCheck run tellraw @a {"text":"Not all players are ready to go!","color":"dark_red"}
execute if score #readyPlayers teamCheck < .players teamCheck run tellraw @a {"selector":"@a[tag=player,tag=!readyChecked]"}

# closing space
tellraw @a ""


# clear the triggerboard
scoreboard objectives remove readyChecked
