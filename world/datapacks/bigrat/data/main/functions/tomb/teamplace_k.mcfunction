# Description: formula to determine top kills teams
# Author: Cosmelon
# Type: math tick
# @s = @e[tag=tb_sKeeper]
# run from main:tomb/round1/main

# NOTICE: TEAM SCORES CAN ONLY BE ADDED TO, NOT TAKEN

# collect team score
scoreboard players operation @e[tag=tb_kKeeper,name="Red"] tb_tKillsM = +red tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Blue"] tb_tKillsM = +blue tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Green"] tb_tKillsM = +green tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Yellow"] tb_tKillsM = +yellow tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Red"] tb_tKills = +red tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Blue"] tb_tKills = +blue tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Green"] tb_tKills = +green tb_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Yellow"] tb_tKills = +yellow tb_tKills

# first place
execute if score @s tb_tKillsM > +p1 tb_tKillsM run scoreboard players operation +p1 tb_tKillsM > @s tb_tKillsM
execute if score @s tb_tKillsM = +p1 tb_tKillsM run tag @e remove tb_kp1
execute if score @s tb_tKillsM = +p1 tb_tKillsM run tag @s add tb_kp1
execute if score @s tb_tKillsM = +p1 tb_tKillsM run scoreboard players reset @s tb_tKillsM

# second place
execute if score @s tb_tKillsM > +p2 tb_tKillsM run scoreboard players operation +p2 tb_tKillsM > @s tb_tKillsM
execute if score @s tb_tKillsM = +p2 tb_tKillsM run tag @e remove tb_kp2
execute if score @s tb_tKillsM = +p2 tb_tKillsM run tag @s add tb_kp2
execute if score @s tb_tKillsM = +p2 tb_tKillsM run scoreboard players reset @s tb_tKillsM

# third place
execute if score @s tb_tKillsM > +p3 tb_tKillsM run scoreboard players operation +p3 tb_tKillsM > @s tb_tKillsM
execute if score @s tb_tKillsM = +p3 tb_tKillsM run tag @e remove tb_kp3
execute if score @s tb_tKillsM = +p3 tb_tKillsM run tag @s add tb_kp3
execute if score @s tb_tKillsM = +p3 tb_tKillsM run scoreboard players reset @s tb_tKillsM

# fourth place
execute if score @s tb_tKillsM > +p4 tb_tKillsM run scoreboard players operation +p4 tb_tKillsM > @s tb_tKillsM
execute if score @s tb_tKillsM = +p4 tb_tKillsM run tag @e remove tb_kp4
execute if score @s tb_tKillsM = +p4 tb_tKillsM run tag @s add tb_kp4
execute if score @s tb_tKillsM = +p4 tb_tKillsM run scoreboard players reset @s tb_tKillsM