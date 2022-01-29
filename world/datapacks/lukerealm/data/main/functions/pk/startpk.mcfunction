# start parkour
scoreboard players set $countDown parkour 160
scoreboard players set $gameActive parkour 1

# clearing players inventory pre-game
clear @a[team=Red]
clear @a[team=Blue]
clear @a[team=Green]
clear @a[team=Yellow]

# gamemode set
gamemode adventure @a[team=Red]
gamemode adventure @a[team=Blue]
gamemode adventure @a[team=Green]
gamemode adventure @a[team=Yellow]
gamemode spectator @a[team=Admin]
gamemode spectator @a[team=Spectator]

# tping players to start room
tp @a[team=Red] 13 4 98 134 10
tp @a[team=Blue] 13.5 4 96.5 104 10
tp @a[team=Green] 13 4 94.5 60 10
tp @a[team=Yellow] 13 4 92 40 10
tp @a[team=Admin] 15 4 95 90 10
tp @a[team=Spectator] 15 4 95 90 10

# depth strider boots
item replace entity @a[team=Red] armor.feet with leather_boots{display:{color:16066343},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Blue] armor.feet with leather_boots{display:{color:2635263},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Green] armor.feet with leather_boots{display:{color:1208897},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}
item replace entity @a[team=Yellow] armor.feet with leather_boots{display:{color:16777000},Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3s}]}

# replacing the cage wall
fill 10 6 92 10 4 98 light_gray_stained_glass