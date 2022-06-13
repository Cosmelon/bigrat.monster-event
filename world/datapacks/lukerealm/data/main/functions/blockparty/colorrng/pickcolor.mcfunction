# Description: pick random color
# Author: Cosmelon
# Type: tick
# run from main:blockparty/bptick when ?stop bpTimer == 0

# color rng
function main:blockparty/colorrng/range

title @a times 0 10000 10000

# GUI for alive players
#execute if score ?out bpColor matches 1 run title @a[tag=bpAlive] actionbar {"text":"Get on red!","color":"red","bold":true}
#execute if score ?out bpColor matches 2 run title @a[tag=bpAlive] actionbar {"text":"Get on orange!","color":"#FFA500","bold":true}
#execute if score ?out bpColor matches 3 run title @a[tag=bpAlive] actionbar {"text":"Get on yellow!","color":"yellow","bold":true}
#execute if score ?out bpColor matches 4 run title @a[tag=bpAlive] actionbar {"text":"Get on lime!","color":"#BFFF00","bold":true}
#execute if score ?out bpColor matches 5 run title @a[tag=bpAlive] actionbar {"text":"Get on light blue!","color":"#ADD8E6","bold":true}
#execute if score ?out bpColor matches 6 run title @a[tag=bpAlive] actionbar {"text":"Get on blue!","color":"blue","bold":true}
#execute if score ?out bpColor matches 7 run title @a[tag=bpAlive] actionbar {"text":"Get on purple!","color":"#6A0DAD","bold":true}
#execute if score ?out bpColor matches 8 run title @a[tag=bpAlive] actionbar {"text":"Get on pink!","color":"#FFC0CB","bold":true}
#execute if score ?out bpColor matches 9 run title @a[tag=bpAlive] actionbar {"text":"Get on gray!","color":"#808080","bold":true}

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.0 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.0 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.0 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.0 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.0 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.0 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.0 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.0 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.0 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.1 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.1 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.1 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.1 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.1 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.1 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.1 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.1 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.1 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.2 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.2 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.2 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.2 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.2 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.2 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.2 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.2 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.2 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.3 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.3 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.3 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.3 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.3 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.3 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.3 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.3 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.3 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.4 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.4 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.4 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.4 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.4 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.4 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.4 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.4 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.4 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.5 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.5 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.5 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.5 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.5 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.5 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.5 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.5 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.5 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.6 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.6 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.6 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.6 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.6 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.6 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.6 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.6 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.6 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.7 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.7 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.7 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.7 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.7 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.7 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.7 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.7 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.7 with light_gray_concrete

execute if score ?out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.8 with red_concrete
execute if score ?out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.8 with orange_concrete
execute if score ?out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.8 with yellow_concrete
execute if score ?out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.8 with lime_concrete
execute if score ?out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.8 with light_blue_concrete
execute if score ?out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.8 with blue_concrete
execute if score ?out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.8 with purple_concrete
execute if score ?out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.8 with pink_concrete
execute if score ?out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.8 with light_gray_concrete


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