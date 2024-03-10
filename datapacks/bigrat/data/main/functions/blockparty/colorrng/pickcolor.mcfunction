# Description: pick random color
# Author: Cosmelon
# Type: tick
# run from main:blockparty/tick when .stop bp_timer == 0

# color rng
#?colorPC is short for .colorPickCycle
scoreboard players add .colorPC bp_color 1
execute if score .colorPC bp_color matches 3.. store result score .out bp_color run random value 1..9
execute if score .colorPC bp_color matches 3.. run scoreboard players set .colorPC bp_color 0

# if <selected color> == red
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.0 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.1 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.2 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.3 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.4 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.5 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.6 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.7 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score .out bp_color matches 1 run item replace entity @a[tag=bp_alive] hotbar.8 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}

# if <selected color> == orange
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.0 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.1 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.2 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.3 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.4 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.5 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.6 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.7 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score .out bp_color matches 2 run item replace entity @a[tag=bp_alive] hotbar.8 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}

# if <selected color> == yellow
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.0 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.1 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.2 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.3 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.4 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.5 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.6 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.7 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score .out bp_color matches 3 run item replace entity @a[tag=bp_alive] hotbar.8 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}

# if <selected color> == lime
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.0 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.1 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.2 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.3 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.4 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.5 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.6 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.7 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score .out bp_color matches 4 run item replace entity @a[tag=bp_alive] hotbar.8 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}

# if <selected color> == light_blue
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.0 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.1 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.2 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.3 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.4 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.5 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.6 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.7 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score .out bp_color matches 5 run item replace entity @a[tag=bp_alive] hotbar.8 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}

# if <selected color> == blue
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.0 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.1 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.2 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.3 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.4 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.5 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.6 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.7 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score .out bp_color matches 6 run item replace entity @a[tag=bp_alive] hotbar.8 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}

# if <selected color> == purple
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.0 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.1 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.2 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.3 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.4 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.5 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.6 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.7 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score .out bp_color matches 7 run item replace entity @a[tag=bp_alive] hotbar.8 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}

# if <selected color> == pink 
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.0 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.1 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.2 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.3 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.4 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.5 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.6 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.7 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score .out bp_color matches 8 run item replace entity @a[tag=bp_alive] hotbar.8 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}

# if <selected color> == light_gray
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.0 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.1 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.2 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.3 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.4 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.5 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.6 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.7 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}
execute if score .out bp_color matches 9 run item replace entity @a[tag=bp_alive] hotbar.8 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"#D3D3D3","italic":false}]'}}