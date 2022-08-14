# Description: red team has captured all the keys and the gate will open
# Author: Cosmelon
# Type: single
# run from main:halls/exit/check

tellraw @a[team=Red] {"text":"» Success! Opening Exit...","color":"green"}
tellraw @a[team=Red] {"text":"» Go find it!","color":"green"}
fill -1000 26 1064 -1000 22 1061 air destroy

scoreboard players set ~redGate halls_keys 1