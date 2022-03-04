# spleef tick stuff, be careful!

# scoreboards associated with spleef:
#  spleef - main scoreboard for spleef
#  spleefDeaths - tracks spleef deaths; note - dont have a use for it yet
#  spleefSnowBall - tracks spleef giving snowball stuff
#  spleef_sb - tracks snowballs
#  spleefBorder - worldborder stuff
#  spleefQuit - tracks logouts during spleef

# prevents players from going out of the arena
execute if score $gameActive spleef matches 1 run execute positioned -496 45 -461 run tp @a[gamemode=spectator,team=!Admin,distance=40..70] -497 69 -461
execute if score $gameActive spleef matches 1 run effect give @a[gamemode=spectator] night_vision 10000 1 true

# sets time of day
execute if score $gameActive spleef matches 1 run time set midnight

# spawnpoint during game
execute if score $gameActive spleef matches 1 run spawnpoint @a -496 66 -459

# syncs bossbars with scoreboard
execute store result bossbar minecraft:spleefroundcount value run scoreboard players get $round spleef
execute store result bossbar minecraft:spleefshrink1timer value run scoreboard players get $shrink1Timer spleefBorder
execute store result bossbar minecraft:spleefshrink2timer value run scoreboard players get $shrink2Timer spleefBorder
execute store result bossbar minecraft:spleefshrink3timer value run scoreboard players get $shrink3Timer spleefBorder
execute store result bossbar minecraft:spleefshrinkactual value run scoreboard players get $shrinkActual spleefBorder

# updates round count bossbar name
execute if score $round spleef matches 1 run bossbar set minecraft:spleefroundcount name {"text":"Round: 1/3","bold":true}
execute if score $round spleef matches 2 run bossbar set minecraft:spleefroundcount name {"text":"Round: 2/3","bold":true}
execute if score $round spleef matches 3 run bossbar set minecraft:spleefroundcount name {"text":"Round: 3/3","bold":true}

# does the countdown timer
execute if score $gameActive spleef matches 0 run scoreboard players set $countDown spleef 160
execute if score $gameActive spleef matches 1 run scoreboard players remove $countDown spleef 1
execute if score $countDown spleef matches 60 run title @a times 0 25 10
execute if score $countDown spleef matches 60 run title @a title {"text":"3","color":"red"}
execute if score $countDown spleef matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score $countDown spleef matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 20 run title @a title {"text":"1","color":"green"}
execute if score $countDown spleef matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 0 run title @a title {"text":"Spread out!","color":"red"}
execute if score $countDown spleef matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score $countDown spleef matches 0 run fill -491 60 -467 -503 65 -455 minecraft:air
execute if score $countDown spleef matches -40 run function main:cleartitle

# kills people who fell off L
execute if score $gameActive spleef matches 1 run kill @a[gamemode=adventure,scores={yCos=30}]
execute if score $gameActive spleef matches 1 run kill @a[gamemode=adventure,scores={yCos=29}]
execute if score $gameActive spleef matches 1 run kill @a[gamemode=adventure,scores={yCos=28}]
execute if score $gameActive spleef matches 1 run kill @a[gamemode=adventure,scores={yCos=27}]
execute if score $gameActive spleef matches 1 run tp @a[team=Spectator,scores={yCos=20}] -496 66 -459 -180 5

# tracks # of players on a team
# alive:
execute store result score $aliveRed spleef if entity @a[team=Red,gamemode=!spectator]
execute store result score $aliveBlue spleef if entity @a[team=Blue,gamemode=!spectator]
execute store result score $aliveGreen spleef if entity @a[team=Green,gamemode=!spectator]
execute store result score $aliveYellow spleef if entity @a[team=Yellow,gamemode=!spectator]

# transfers dead players to spectator
execute if score $gameActive spleef matches 1 run gamemode spectator @a[scores={spleefDeaths=1}]

# ensures all players on a team have glowing
execute if score $gameActive spleef matches 1 run effect give @a[team=Red] glowing 100000 0 true
execute if score $gameActive spleef matches 1 run effect give @a[team=Blue] glowing 100000 0 true
execute if score $gameActive spleef matches 1 run effect give @a[team=Green] glowing 100000 0 true
execute if score $gameActive spleef matches 1 run effect give @a[team=Yellow] glowing 100000 0 true
execute if score $gameActive spleef matches 1 run effect clear @a[team=Admin] glowing
execute if score $gameActive spleef matches 1 run effect clear @a[team=Spectator] glowing

# kills ground snowballs
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]

# glowberries
# credit to /u/PunchTunnel for helping me solve this!
execute if score $gameActive spleef matches 1 run item replace entity @a armor.head with glow_berries{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123} 

# anti tool drop thing
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Red,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run give @s minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away..."}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Blue,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run give @s minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away..."}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Green,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run give @s minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away..."}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Yellow,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run give @s minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away..."}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Red,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run give @s stick{display:{Name:'[{"text":"Bastard Blaster"}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Blue,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run give @s stick{display:{Name:'[{"text":"Bastard Blaster"}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Green,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run give @s stick{display:{Name:'[{"text":"Bastard Blaster"}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1
execute if score $toolsGiven spleef matches 1 run execute as @a[team=Yellow,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run give @s stick{display:{Name:'[{"text":"Bastard Blaster"}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1
execute if score $gameActive spleef matches 1 run kill @e[type=item]

# weakness when holding shovel
execute if score $gameActive spleef matches 1 run effect give @a[team=!Admin] weakness 1 255 true
execute if score $gameActive spleef matches 1 run execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect clear @s minecraft:weakness

execute if score $gameActive spleef matches 1 run execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s PickupDelay set value 0t
execute if score $gameActive spleef matches 1 run execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s Owner set from entity @s Thrower

# snowball get on block break
execute as @a[scores={spleefSnowBall=1..}] run give @s snowball 1
scoreboard players reset * spleefSnowBall

# snowball break blocks
execute if score $gameActive spleef matches 1 run function main:spleef/snowball

# yeets snow blocks made by players
execute if score $gameActive spleef matches 1 run clear @a minecraft:snow_block

# does team death messaage
execute if score $gameActive spleef matches 1 run function main:spleef/checkdead
# red win
execute if score $gameActive spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/red
# blue win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/blue
# green win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/green
# yellow win
execute if score $gameActive spleef matches 1 run execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run function main:spleef/wins/yellow

# border
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink1Timer spleefBorder 1900
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink2Timer spleefBorder 3400
execute if score $gameActive spleef matches 0 run scoreboard players set $shrink3Timer spleefBorder 5000
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink1Timer spleefBorder 1
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink2Timer spleefBorder 1
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrink3Timer spleefBorder 1

# shrink timer bossbars
execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 600 run bossbar set minecraft:spleefshrink1timer visible true
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 600 run bossbar set minecraft:spleefshrink2timer visible true
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 600 run bossbar set minecraft:spleefshrink3timer visible true
execute if score $gameActive spleef matches 1 run function main:spleef/border/shrinkcountdown

execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 0 run bossbar set minecraft:spleefshrink1timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 0 run bossbar set minecraft:spleefshrink2timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 0 run bossbar set minecraft:spleefshrink3timer visible false
execute if score $gameActive spleef matches 1 run execute if score $shrink1Timer spleefBorder matches 0 run function main:spleef/border/shrink1
execute if score $gameActive spleef matches 1 run execute if score $shrink2Timer spleefBorder matches 0 run function main:spleef/border/shrink2
execute if score $gameActive spleef matches 1 run execute if score $shrink3Timer spleefBorder matches 0 run function main:spleef/border/shrink3
# trigger shrinkActual
execute if score $gameActive spleef matches 1 run scoreboard players remove $shrinkActual spleefBorder 1
execute if score $gameActive spleef matches 0 run scoreboard players set $shrinkActual spleefBorder 400
execute if score $gameActive spleef matches 1 run execute if score $shrinkActual spleefBorder matches 0 run bossbar set minecraft:spleefshrinkactual visible false
#remove blocks
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink1conc
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink2conc
execute if score $gameActive spleef matches 1 run function main:spleef/border/conc/shrink3conc

# Making players leave their teams when they leave the game
execute if score $gameActive spleef matches 1 run execute as @a[scores={spleefQuit=1..},team=!Admin] run gamemode spectator @s
execute if score $gameActive spleef matches 1 run execute as @a[scores={spleefQuit=1..}] run tellraw @s {"text":"You were killed because of a disconnect","color":"dark_gray"}
execute if score $gameActive spleef matches 1 run execute as @a[scores={spleefQuit=1..}] run scoreboard players set @s spleefQuit 0
execute if score $gameActive spleef matches 1 run execute as @a[scores={spleefQuit=1..}] run clear @a
execute if score $gameActive spleef matches 0 run scoreboard players reset @a spleefQuit