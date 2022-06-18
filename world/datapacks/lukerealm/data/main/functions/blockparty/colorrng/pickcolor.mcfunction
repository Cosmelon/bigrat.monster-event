# Description: pick random color
# Author: Cosmelon
# Type: tick
# run from main:blockparty/bptick when ?stop bpTimer == 0

# color rng
#?colorPC is short for ?colorPickCycle
scoreboard players add ?colorPC bpColor 1
execute if score ?colorPC bpColor matches 3.. run function main:blockparty/colorrng/range
execute if score ?colorPC bpColor matches 3.. run scoreboard players set ?colorPC bpColor 0

# if <selected color> == red
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.0 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.1 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.2 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.3 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.4 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.5 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.6 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.7 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}
execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.8 with red_concrete{display:{Name:'[{"text":"Get on Red!","color":"red","italic":false}]'}}

# if <selected color> == orange
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.0 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.1 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.2 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.3 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.4 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.5 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.6 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.7 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.8 with orange_concrete{display:{Name:'[{"text":"Get on Orange!","color":"gold","italic":false}]'}}

# if <selected color> == yellow
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.0 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.1 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.2 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.3 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.4 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.5 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.6 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.7 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.8 with yellow_concrete{display:{Name:'[{"text":"Get on Yellow!","color":"yellow","italic":false}]'}}

# if <selected color> == lime
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.0 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.1 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.2 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.3 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.4 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.5 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.6 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.7 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.8 with lime_concrete{display:{Name:'[{"text":"Get on Green!","color":"green","italic":false}]'}}

# if <selected color> == light_blue
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.0 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.1 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.2 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.3 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.4 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.5 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.6 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.7 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.8 with light_blue_concrete{display:{Name:'[{"text":"Get on Light Blue!","color":"aqua","italic":false}]'}}

# if <selected color> == blue
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.0 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.1 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.2 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.3 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.4 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.5 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.6 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.7 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.8 with blue_concrete{display:{Name:'[{"text":"Get on Blue!","color":"blue","italic":false}]'}}

# if <selected color> == purple
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.0 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.1 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.2 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.3 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.4 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.5 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.6 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.7 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.8 with purple_concrete{display:{Name:'[{"text":"Get on Purple!","color":"#A865C9","italic":false}]'}}

# if <selected color> == pink 
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.0 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.1 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.2 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.3 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.4 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.5 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.6 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.7 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.8 with pink_concrete{display:{Name:'[{"text":"Get on Pink!","color":"#FFC0CB","italic":false}]'}}

# if <selected color> == light_gray
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.0 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.1 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.2 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.3 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.4 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.5 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.6 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.7 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.8 with light_gray_concrete{display:{Name:'[{"text":"Get on Gray!","color":"light_gray","italic":false}]'}}


# GUI for Dead/Spec/Admin
# todo: make the json better it's 12:30am I'm so tired rn
#execute if score ?out bpColor matches 1 run title @a[tag=!bpAlive] actionbar {"text":"The color is red!","color":"red","bold":true}
#execute if score ?out bpColor matches 2 run title @a[tag=!bpAlive] actionbar {"text":"The color is orange!","color":"#FFA500","bold":true}
#execute if score ?out bpColor matches 3 run title @a[tag=!bpAlive] actionbar {"text":"The color is yellow!","color":"yellow","bold":true}
#execute if score ?out bpColor matches 4 run title @a[tag=!bpAlive] actionbar {"text":"The color is lime!","color":"#BFFF00","bold":true}
#execute if score ?out bpColor matches 5 run title @a[tag=!bpAlive] actionbar {"text":"The color is light blue!","color":"#ADD8E6","bold":true}
#execute if score ?out bpColor matches 6 run title @a[tag=!bpAlive] actionbar {"text":"The color is blue!","color":"blue","bold":true}
#execute if score ?out bpColor matches 7 run title @a[tag=!bpAlive] actionbar {"text":"The color is purple!","color":"#6A0DAD","bold":true}
#execute if score ?out bpColor matches 8 run title @a[tag=!bpAlive] actionbar {"text":"The color is pink!","color":"#FFC0CB","bold":true}
#execute if score ?out bpColor matches 9 run title @a[tag=!bpAlive] actionbar {"text":"The color is gray!","color":"#808080","bold":true}