# Description: formula to determine top kills teams
# Author: Cosmelon
# Type: math tick
# @s = @e[tag=tb_sKeeper]
# run from main:tomb/round1/main

# NOTICE: TEAM SCORES CAN ONLY BE ADDED TO, NOT TAKEN

# collect red
execute if entity @s[team=Red] run scoreboard players operation @s tb_tiKillsM_Red = @s tb_tKills
# first place (red)
execute if score @s tb_tiKillsM_Red > +p1 tb_tiKillsM_Red run scoreboard players operation +p1 tb_tiKillsM_Red > @s tb_tiKillsM_Red
execute if score @s tb_tiKillsM_Red = +p1 tb_tiKillsM_Red run tag @a remove tb_kREDp1
execute if score @s tb_tiKillsM_Red = +p1 tb_tiKillsM_Red run tag @s add tb_kREDp1
execute if score @s tb_tiKillsM_Red = +p1 tb_tiKillsM_Red run scoreboard players reset @s tb_tiKillsM_Red
# second place (red)
execute if score @s tb_tiKillsM_Red > +p2 tb_tiKillsM_Red run scoreboard players operation +p2 tb_tiKillsM_Red > @s tb_tiKillsM_Red
execute if score @s tb_tiKillsM_Red = +p2 tb_tiKillsM_Red run tag @a remove tb_kREDp2
execute if score @s tb_tiKillsM_Red = +p2 tb_tiKillsM_Red run tag @s add tb_kREDp2
execute if score @s tb_tiKillsM_Red = +p2 tb_tiKillsM_Red run scoreboard players reset @s tb_tiKillsM_Red
# third place (red)
execute if score @s tb_tiKillsM_Red > +p3 tb_tiKillsM_Red run scoreboard players operation +p3 tb_tiKillsM_Red > @s tb_tiKillsM_Red
execute if score @s tb_tiKillsM_Red = +p3 tb_tiKillsM_Red run tag @a remove tb_kREDp3
execute if score @s tb_tiKillsM_Red = +p3 tb_tiKillsM_Red run tag @s add tb_kREDp3
execute if score @s tb_tiKillsM_Red = +p3 tb_tiKillsM_Red run scoreboard players reset @s tb_tiKillsM_Red
# fourth place (red)
execute if score @s tb_tiKillsM_Red > +p4 tb_tiKillsM_Red run scoreboard players operation +p4 tb_tiKillsM_Red > @s tb_tiKillsM_Red
execute if score @s tb_tiKillsM_Red = +p4 tb_tiKillsM_Red run tag @a remove tb_kREDp4
execute if score @s tb_tiKillsM_Red = +p4 tb_tiKillsM_Red run tag @s add tb_kREDp4
execute if score @s tb_tiKillsM_Red = +p4 tb_tiKillsM_Red run scoreboard players reset @s tb_tiKillsM_Red


# collect blue
execute if entity @s[team=Blue] run scoreboard players operation @s tb_tiKillsM_Blue = @s tb_tKills
# first place (blue)
execute if score @s tb_tiKillsM_Blue > +p1 tb_tiKillsM_Blue run scoreboard players operation +p1 tb_tiKillsM_Blue > @s tb_tiKillsM_Blue
execute if score @s tb_tiKillsM_Blue = +p1 tb_tiKillsM_Blue run tag @a remove tb_kBLUEp1
execute if score @s tb_tiKillsM_Blue = +p1 tb_tiKillsM_Blue run tag @s add tb_kBLUEp1
execute if score @s tb_tiKillsM_Blue = +p1 tb_tiKillsM_Blue run scoreboard players reset @s tb_tiKillsM_Blue
# second place (blue)
execute if score @s tb_tiKillsM_Blue > +p2 tb_tiKillsM_Blue run scoreboard players operation +p2 tb_tiKillsM_Blue > @s tb_tiKillsM_Blue
execute if score @s tb_tiKillsM_Blue = +p2 tb_tiKillsM_Blue run tag @a remove tb_kBLUEp2
execute if score @s tb_tiKillsM_Blue = +p2 tb_tiKillsM_Blue run tag @s add tb_kBLUEp2
execute if score @s tb_tiKillsM_Blue = +p2 tb_tiKillsM_Blue run scoreboard players reset @s tb_tiKillsM_Blue
# third place (blue)
execute if score @s tb_tiKillsM_Blue > +p3 tb_tiKillsM_Blue run scoreboard players operation +p3 tb_tiKillsM_Blue > @s tb_tiKillsM_Blue
execute if score @s tb_tiKillsM_Blue = +p3 tb_tiKillsM_Blue run tag @a remove tb_kBLUEp3
execute if score @s tb_tiKillsM_Blue = +p3 tb_tiKillsM_Blue run tag @s add tb_kBLUEp3
execute if score @s tb_tiKillsM_Blue = +p3 tb_tiKillsM_Blue run scoreboard players reset @s tb_tiKillsM_Blue
# fourth place (blue)
execute if score @s tb_tiKillsM_Blue > +p4 tb_tiKillsM_Blue run scoreboard players operation +p4 tb_tiKillsM_Blue > @s tb_tiKillsM_Blue
execute if score @s tb_tiKillsM_Blue = +p4 tb_tiKillsM_Blue run tag @a remove tb_kBLUEp4
execute if score @s tb_tiKillsM_Blue = +p4 tb_tiKillsM_Blue run tag @s add tb_kBLUEp4
execute if score @s tb_tiKillsM_Blue = +p4 tb_tiKillsM_Blue run scoreboard players reset @s tb_tiKillsM_Blue


# collect green
execute if entity @s[team=Green] run scoreboard players operation @s tb_tiKillsM_Green = @s tb_tKills
# first place (green)
execute if score @s tb_tiKillsM_Green > +p1 tb_tiKillsM_Green run scoreboard players operation +p1 tb_tiKillsM_Green > @s tb_tiKillsM_Green
execute if score @s tb_tiKillsM_Green = +p1 tb_tiKillsM_Green run tag @a remove tb_kGREENp1
execute if score @s tb_tiKillsM_Green = +p1 tb_tiKillsM_Green run tag @s add tb_kGREENp1
execute if score @s tb_tiKillsM_Green = +p1 tb_tiKillsM_Green run scoreboard players reset @s tb_tiKillsM_Green
# second place (green)
execute if score @s tb_tiKillsM_Green > +p2 tb_tiKillsM_Green run scoreboard players operation +p2 tb_tiKillsM_Green > @s tb_tiKillsM_Green
execute if score @s tb_tiKillsM_Green = +p2 tb_tiKillsM_Green run tag @a remove tb_kGREENp2
execute if score @s tb_tiKillsM_Green = +p2 tb_tiKillsM_Green run tag @s add tb_kGREENp2
execute if score @s tb_tiKillsM_Green = +p2 tb_tiKillsM_Green run scoreboard players reset @s tb_tiKillsM_Green
# third place (green)
execute if score @s tb_tiKillsM_Green > +p3 tb_tiKillsM_Green run scoreboard players operation +p3 tb_tiKillsM_Green > @s tb_tiKillsM_Green
execute if score @s tb_tiKillsM_Green = +p3 tb_tiKillsM_Green run tag @a remove tb_kGREENp3
execute if score @s tb_tiKillsM_Green = +p3 tb_tiKillsM_Green run tag @s add tb_kGREENp3
execute if score @s tb_tiKillsM_Green = +p3 tb_tiKillsM_Green run scoreboard players reset @s tb_tiKillsM_Green
# fourth place (green)
execute if score @s tb_tiKillsM_Green > +p4 tb_tiKillsM_Green run scoreboard players operation +p4 tb_tiKillsM_Green > @s tb_tiKillsM_Green
execute if score @s tb_tiKillsM_Green = +p4 tb_tiKillsM_Green run tag @a remove tb_kGREENp4
execute if score @s tb_tiKillsM_Green = +p4 tb_tiKillsM_Green run tag @s add tb_kGREENp4
execute if score @s tb_tiKillsM_Green = +p4 tb_tiKillsM_Green run scoreboard players reset @s tb_tiKillsM_Green


# collect yellow
execute if entity @s[team=Yellow] run scoreboard players operation @s tb_tiKillsM_Yellow = @s tb_tKills
# first place (yellow)
execute if score @s tb_tiKillsM_Yellow > +p1 tb_tiKillsM_Yellow run scoreboard players operation +p1 tb_tiKillsM_Yellow > @s tb_tiKillsM_Yellow
execute if score @s tb_tiKillsM_Yellow = +p1 tb_tiKillsM_Yellow run tag @a remove tb_kYELLOWp1
execute if score @s tb_tiKillsM_Yellow = +p1 tb_tiKillsM_Yellow run tag @s add tb_kYELLOWp1
execute if score @s tb_tiKillsM_Yellow = +p1 tb_tiKillsM_Yellow run scoreboard players reset @s tb_tiKillsM_Yellow
# second place (yellow)
execute if score @s tb_tiKillsM_Yellow > +p2 tb_tiKillsM_Yellow run scoreboard players operation +p2 tb_tiKillsM_Yellow > @s tb_tiKillsM_Yellow
execute if score @s tb_tiKillsM_Yellow = +p2 tb_tiKillsM_Yellow run tag @a remove tb_kYELLOWp2
execute if score @s tb_tiKillsM_Yellow = +p2 tb_tiKillsM_Yellow run tag @s add tb_kYELLOWp2
execute if score @s tb_tiKillsM_Yellow = +p2 tb_tiKillsM_Yellow run scoreboard players reset @s tb_tiKillsM_Yellow
# third place (yellow)
execute if score @s tb_tiKillsM_Yellow > +p3 tb_tiKillsM_Yellow run scoreboard players operation +p3 tb_tiKillsM_Yellow > @s tb_tiKillsM_Yellow
execute if score @s tb_tiKillsM_Yellow = +p3 tb_tiKillsM_Yellow run tag @a remove tb_kYELLOWp3
execute if score @s tb_tiKillsM_Yellow = +p3 tb_tiKillsM_Yellow run tag @s add tb_kYELLOWp3
execute if score @s tb_tiKillsM_Yellow = +p3 tb_tiKillsM_Yellow run scoreboard players reset @s tb_tiKillsM_Yellow
# fourth place (yellow)
execute if score @s tb_tiKillsM_Yellow > +p4 tb_tiKillsM_Yellow run scoreboard players operation +p4 tb_tiKillsM_Yellow > @s tb_tiKillsM_Yellow
execute if score @s tb_tiKillsM_Yellow = +p4 tb_tiKillsM_Yellow run tag @a remove tb_kYELLOWp4
execute if score @s tb_tiKillsM_Yellow = +p4 tb_tiKillsM_Yellow run tag @s add tb_kYELLOWp4
execute if score @s tb_tiKillsM_Yellow = +p4 tb_tiKillsM_Yellow run scoreboard players reset @s tb_tiKillsM_Yellow