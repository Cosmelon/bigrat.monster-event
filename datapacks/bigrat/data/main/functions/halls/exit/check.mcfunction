# Description: checks a team if they can open the exit gate
# Author: Cosmelon
# Type: single
# run from <manual thru physical button and command block>

execute if entity @a[team=Red,tag=halls_alive,distance=..3,sort=nearest,limit=1] unless score .redCooldown halls_keys matches 1.. unless score .red_gate halls_keys matches 1 run tellraw @a[team=Red] {"text":"» Authenticating keys...","color":"gray"}
execute if entity @a[team=Red,tag=halls_alive,distance=..3,sort=nearest,limit=1] unless score .redCooldown halls_keys matches 1.. if score .capt_red halls_keys matches 7 run schedule function main:halls/exit/redsuccess 3s replace
execute if entity @a[team=Red,tag=halls_alive,distance=..3,sort=nearest,limit=1] unless score .redCooldown halls_keys matches 1.. unless score .capt_red halls_keys matches 7 run tellraw @a[team=Red] {"text":"» Failed: Not enough keys!","color":"red"}


execute if entity @a[team=Red,tag=halls_alive,distance=..3,sort=nearest,limit=1] if score .redCooldown halls_keys matches 1.. run tellraw @a[team=Red,distance=..3] {"text":"» Dude chill out I put a tiny cooldown on this just don't spam it ffs.","color":"gray"}
execute if entity @a[team=Red,tag=halls_alive,distance=..3,sort=nearest,limit=1] run scoreboard players set .redCooldown halls_keys 10