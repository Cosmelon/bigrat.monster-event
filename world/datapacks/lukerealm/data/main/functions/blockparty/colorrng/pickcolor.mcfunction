# thjis is the main function that controls the color picking

# color rng
function main:blockparty/colorrng/range

title @a times 0 10000 10000

# GUI for alive players
execute if score out bpColor matches 1 run title @a[tag=bpAlive] actionbar {"text":"Get on red!","color":"red","bold":true}
execute if score out bpColor matches 2 run title @a[tag=bpAlive] actionbar {"text":"Get on orange!","color":"#FFA500","bold":true}
execute if score out bpColor matches 3 run title @a[tag=bpAlive] actionbar {"text":"Get on yellow!","color":"yellow","bold":true}
execute if score out bpColor matches 4 run title @a[tag=bpAlive] actionbar {"text":"Get on lime!","color":"#BFFF00","bold":true}
execute if score out bpColor matches 5 run title @a[tag=bpAlive] actionbar {"text":"Get on light blue!","color":"#ADD8E6","bold":true}
execute if score out bpColor matches 6 run title @a[tag=bpAlive] actionbar {"text":"Get on blue!","color":"blue","bold":true}
execute if score out bpColor matches 7 run title @a[tag=bpAlive] actionbar {"text":"Get on purple!","color":"#6A0DAD","bold":true}
execute if score out bpColor matches 8 run title @a[tag=bpAlive] actionbar {"text":"Get on pink!","color":"#FFC0CB","bold":true}
execute if score out bpColor matches 9 run title @a[tag=bpAlive] actionbar {"text":"Get on gray!","color":"#808080","bold":true}

execute if score out bpColor matches 1 run item replace entity @a[tag=bpAlive] hotbar.4 with red_concrete
execute if score out bpColor matches 2 run item replace entity @a[tag=bpAlive] hotbar.4 with orange_concrete
execute if score out bpColor matches 3 run item replace entity @a[tag=bpAlive] hotbar.4 with yellow_concrete
execute if score out bpColor matches 4 run item replace entity @a[tag=bpAlive] hotbar.4 with lime_concrete
execute if score out bpColor matches 5 run item replace entity @a[tag=bpAlive] hotbar.4 with light_blue_concrete
execute if score out bpColor matches 6 run item replace entity @a[tag=bpAlive] hotbar.4 with blue_concrete
execute if score out bpColor matches 7 run item replace entity @a[tag=bpAlive] hotbar.4 with purple_concrete
execute if score out bpColor matches 8 run item replace entity @a[tag=bpAlive] hotbar.4 with pink_concrete
execute if score out bpColor matches 9 run item replace entity @a[tag=bpAlive] hotbar.4 with light_gray_concrete


# GUI for Dead/Spec/Admin
# todo: make the json better it's 12:30am I'm so tired rn
execute if score out bpColor matches 1 run title @a[tag=!bpAlive] actionbar {"text":"The color is red!","color":"red","bold":true}
execute if score out bpColor matches 2 run title @a[tag=!bpAlive] actionbar {"text":"The color is orange!","color":"#FFA500","bold":true}
execute if score out bpColor matches 3 run title @a[tag=!bpAlive] actionbar {"text":"The color is yellow!","color":"yellow","bold":true}
execute if score out bpColor matches 4 run title @a[tag=!bpAlive] actionbar {"text":"The color is lime!","color":"#BFFF00","bold":true}
execute if score out bpColor matches 5 run title @a[tag=!bpAlive] actionbar {"text":"The color is light blue!","color":"#ADD8E6","bold":true}
execute if score out bpColor matches 6 run title @a[tag=!bpAlive] actionbar {"text":"The color is blue!","color":"blue","bold":true}
execute if score out bpColor matches 7 run title @a[tag=!bpAlive] actionbar {"text":"The color is purple!","color":"#6A0DAD","bold":true}
execute if score out bpColor matches 8 run title @a[tag=!bpAlive] actionbar {"text":"The color is pink!","color":"#FFC0CB","bold":true}
execute if score out bpColor matches 9 run title @a[tag=!bpAlive] actionbar {"text":"The color is gray!","color":"#808080","bold":true}