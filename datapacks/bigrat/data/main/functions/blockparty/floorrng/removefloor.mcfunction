# Description: removes the floor colors dependent on what color it is
# Author: Cosmelon
# Type: objective
# run from main:blockparty/tick when .stop bp_timer == -60

# MOJANG WHY DO I HAVE TO DO IT LIKE THIS INSTEAD OF JUST DOING <location> keep <block>
# THIS IS SO FUCKING STUPID

# if selected == red
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 1 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == orange
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 2 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == yellow
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 3 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == lime
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 4 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == light_blue
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 5 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == blue
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 6 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == purple
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete
execute if score .out bp_color matches 7 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == pink
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 8 run fill -2013 56 3012 -1989 56 2988 air replace light_gray_concrete

# if selected == light_gray
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace red_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace orange_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace yellow_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace lime_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace light_blue_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace blue_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace purple_concrete
execute if score .out bp_color matches 9 run fill -2013 56 3012 -1989 56 2988 air replace pink_concrete