# Description: formula to determine top kills teams for round1
# Author: Cosmelon
# Type: math tick
# @s = @e[tag=tb_sKeeper]
# run from main:tomb/round1/main

# NOTICE: TEAM SCORES CAN ONLY BE ADDED TO, NOT TAKEN

# collect team score
scoreboard players operation @e[tag=tb_kKeeper,name="Red"] tbR1_tKillsM = +red tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Blue"] tbR1_tKillsM = +blue tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Green"] tbR1_tKillsM = +green tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Yellow"] tbR1_tKillsM = +yellow tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Red"] tbR1_tKills = +red tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Blue"] tbR1_tKills = +blue tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Green"] tbR1_tKills = +green tbR1_tKills
scoreboard players operation @e[tag=tb_kKeeper,name="Yellow"] tbR1_tKills = +yellow tbR1_tKills

# first place
execute if score @s tbR1_tKillsM > +p1 tbR1_tKillsM run scoreboard players operation +p1 tbR1_tKillsM > @s tbR1_tKillsM
execute if score @s tbR1_tKillsM = +p1 tbR1_tKillsM run tag @e remove tb_kp1
execute if score @s tbR1_tKillsM = +p1 tbR1_tKillsM run tag @s add tb_kp1
execute if score @s tbR1_tKillsM = +p1 tbR1_tKillsM run scoreboard players reset @s tbR1_tKillsM

# second place
execute if score @s tbR1_tKillsM > +p2 tbR1_tKillsM run scoreboard players operation +p2 tbR1_tKillsM > @s tbR1_tKillsM
execute if score @s tbR1_tKillsM = +p2 tbR1_tKillsM run tag @e remove tb_kp2
execute if score @s tbR1_tKillsM = +p2 tbR1_tKillsM run tag @s add tb_kp2
execute if score @s tbR1_tKillsM = +p2 tbR1_tKillsM run scoreboard players reset @s tbR1_tKillsM

# third place
execute if score @s tbR1_tKillsM > +p3 tbR1_tKillsM run scoreboard players operation +p3 tbR1_tKillsM > @s tbR1_tKillsM
execute if score @s tbR1_tKillsM = +p3 tbR1_tKillsM run tag @e remove tb_kp3
execute if score @s tbR1_tKillsM = +p3 tbR1_tKillsM run tag @s add tb_kp3
execute if score @s tbR1_tKillsM = +p3 tbR1_tKillsM run scoreboard players reset @s tbR1_tKillsM

# fourth place
execute if score @s tbR1_tKillsM > +p4 tbR1_tKillsM run scoreboard players operation +p4 tbR1_tKillsM > @s tbR1_tKillsM
execute if score @s tbR1_tKillsM = +p4 tbR1_tKillsM run tag @e remove tb_kp4
execute if score @s tbR1_tKillsM = +p4 tbR1_tKillsM run tag @s add tb_kp4
execute if score @s tbR1_tKillsM = +p4 tbR1_tKillsM run scoreboard players reset @s tbR1_tKillsM