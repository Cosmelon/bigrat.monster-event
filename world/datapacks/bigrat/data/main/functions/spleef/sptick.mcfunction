# Description: spleef main tick file
# Author: Cosmelon
# Type: main tick
# run from main:tick when $gameActive spleef matches 1

# scoreboards associated with spleef:
#  spleef - main scoreboard for spleef
#  spleefDeaths - tracks spleef deaths; note - dont have a use for it yet
#  spleefSnowBall - tracks spleef giving snowball stuff
#  spleef_sb - tracks snowballs
#  spleefBorder - worldborder stuff

# game repeat fix
execute if score .red teamCheck matches 0 if score .blue teamCheck matches 0 if score .green teamCheck matches 0 if score .yellow teamCheck matches 0 run function main:spleef/killspleef

# prevents players from going out of the arena
execute positioned -496 45 -461 run tp @a[gamemode=spectator,team=!Admin,distance=40..70] -497 69 -461
effect give @a[gamemode=spectator,tag=!noNV] night_vision 10000 1 true
effect clear @a[tag=!player,gamemode=!spectator] night_vision
effect clear @a[tag=noNV] night_vision
effect give @a saturation 10000 0 true

# roundCount bossbar sync
execute store result bossbar minecraft:spleefroundcount value run scoreboard players get $round spleef
bossbar set minecraft:spleefroundcount name [{"text":"Round: ","bold":true},{"score":{"name":"$round","objective":"spleef"},"bold":true},{"text":"/3","bold":true}]

# does the countdown timer
scoreboard players remove $countDown spleef 1
# startinfo
execute if score $countDown spleef matches 800 run function main:spleef/startinfo/text1
execute if score $countDown spleef matches 660 run function main:spleef/startinfo/text2
execute if score $countDown spleef matches 480 run function main:spleef/startinfo/text3
execute if score $countDown spleef matches 300 run function main:spleef/startinfo/text4
# countDown text
execute if score $countDown spleef matches 60 run title @a times 0 25 10
execute if score $countDown spleef matches 60 run title @a title {"text":">   3   <","color":"red"}
execute if score $countDown spleef matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 40 run title @a title {"text":">  2  <","color":"yellow"}
execute if score $countDown spleef matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 20 run title @a title {"text":"> 1 <","color":"green"}
execute if score $countDown spleef matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown spleef matches 0 run title @a title {"text":"Spread out!","color":"red"}
execute if score $countDown spleef matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score $countDown spleef matches 0 run fill -491 60 -467 -503 65 -455 minecraft:air
execute if score $countDown spleef matches -40 run function main:cleartitle


# ensures all players on a team have glowing
effect give @a[tag=player] glowing 100000 0 true

# glowberries
# credit to /u/PunchTunnel for helping me solve this!
item replace entity @a[tag=player] armor.head with glow_berries{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123} 

# snowball get on block break
execute as @a[scores={spleefSnowBall=1..}] run give @s snowball 1
scoreboard players reset * spleefSnowBall

# snowball break blocks
function main:spleef/snowball

# yeets snow blocks made by players
clear @a[team=!Admin] minecraft:snow_block

# anti tool drop 
execute if score $toolsGiven spleef matches 1 run execute as @a[tag=player,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away...","italic":false}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score $toolsGiven spleef matches 1 run execute as @a[tag=player,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run item replace entity @s hotbar.1 with stick{display:{Name:'[{"text":"Bastard Blaster","italic":false}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1

# weakness when holding shovel
effect give @a[team=!Admin] weakness 1 255 true
execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect clear @s minecraft:weakness
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s PickupDelay set value 0t
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s Owner set from entity @s Thrower

# kills ground items
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick"}}]



# tracks # of players on a team (can't use tag here, it's score specific
# alive:
execute store result score $aliveRed spleef if entity @a[team=Red,gamemode=!spectator]
execute store result score $aliveBlue spleef if entity @a[team=Blue,gamemode=!spectator]
execute store result score $aliveGreen spleef if entity @a[team=Green,gamemode=!spectator]
execute store result score $aliveYellow spleef if entity @a[team=Yellow,gamemode=!spectator]

# kills people who fell off L
kill @a[gamemode=adventure,scores={yCos=27..30}]
tp @a[team=!Admin,gamemode=spectator,scores={yCos=20}] -496 66 -459 -180 5
# transfers dead players to spectator

gamemode spectator @a[scores={spleefDeaths=1..}]
execute as @a if score @s spleefDeaths matches 1 run scoreboard players add @a[gamemode=adventure,tag=player] indivScore 1
execute as @a if score @s spleefDeaths matches 1 run tellraw @a[gamemode=adventure,tag=player] {"text":"+1 Invividual point (Survival)","color":"green"}
execute as @a if score @s spleefDeaths matches 1 run scoreboard players add @s spleefDeaths 1
#execute as @a[scores={spleefDeaths=1},tag=player] run function main:spleef/death

# does team death messaage
function main:spleef/checkdead
# red win
execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/red
# blue win
execute if score $notifRedDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/blue
# green win
execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifYellowDead spleef matches 1 run function main:spleef/wins/green
# yellow win
execute if score $notifRedDead spleef matches 1 run execute if score $notifBlueDead spleef matches 1 run execute if score $notifGreenDead spleef matches 1 run function main:spleef/wins/yellow


# start shrink
execute if score $countDown spleef matches 0 run schedule function main:spleef/border/s1warn 40s replace
execute if score $countDown spleef matches 0 run schedule function main:spleef/border/s2warn 120s replace
execute if score $countDown spleef matches 0 run schedule function main:spleef/border/s3warn 240s replace
# shrink timers
scoreboard players remove $shrinkActual spleefBorder 1
scoreboard players remove $shrinkTimer spleefBorder 1
# shrink bossbar timer reading
execute if score $shrinkTimer spleefBorder matches 0..600 run scoreboard players add $tick spleefBorder 1
execute if score $shrinkTimer spleefBorder matches 0..600 run bossbar set minecraft:spleefshrinkwarn visible true
execute if score $shrinkTimer spleefBorder matches 0..600 run bossbar set minecraft:spleefshrinkwarn max 400
execute if score $tick spleefBorder matches 20.. run scoreboard players remove $sec spleefBorder 1
execute if score $tick spleefBorder matches 20.. run scoreboard players set $tick spleefBorder 0
execute if score $sec spleefBorder matches 10.. if score $shrinkNum spleefBorder matches 1 run bossbar set minecraft:spleefshrinkwarn name [{"text":"First Shrink: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches 0..9 if score $shrinkNum spleefBorder matches 1 run bossbar set minecraft:spleefshrinkwarn name [{"text":"First Shrink: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches 10.. if score $shrinkNum spleefBorder matches 2 run bossbar set minecraft:spleefshrinkwarn name [{"text":"Second Shrink: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches 0..9 if score $shrinkNum spleefBorder matches 2 run bossbar set minecraft:spleefshrinkwarn name [{"text":"Second Shrink: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches 10.. if score $shrinkNum spleefBorder matches 3 run bossbar set minecraft:spleefshrinkwarn name [{"text":"Deathmatch starts in: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches 0..9 if score $shrinkNum spleefBorder matches 3 run bossbar set minecraft:spleefshrinkwarn name [{"text":"Deathmatch starts in: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":"$sec","objective":"spleefBorder"},"color":"white","bold":true}]
execute if score $sec spleefBorder matches ..-1 run scoreboard players set $sec spleefBorder 30
# shrink timer bossbars sync
execute store result bossbar minecraft:spleefshrinkactual value run scoreboard players get $shrinkActual spleefBorder
execute store result bossbar minecraft:spleefshrinkwarn value run scoreboard players get $shrinkTimer spleefBorder
# shrink bossbar visibility
execute if score $shrinkTimer spleefBorder matches -1 run bossbar set minecraft:spleefshrinkwarn visible false
execute if score $shrinkActual spleefBorder matches 0 run bossbar set minecraft:spleefshrinkactual visible false
#remove blocks
function main:spleef/border/conc/shrink1conc
function main:spleef/border/conc/shrink2conc
function main:spleef/border/conc/shrink3conc

# sets time of day
time set midnight

# spawnpoint during game
spawnpoint @a -496 66 -459

# killing players when they disconnect mid-game
execute as @a[scores={playersOnline=1..},team=!Admin] run gamemode spectator @s
execute as @a[scores={playersOnline=1..},tag=player] run scoreboard players set @s spleefDeaths 1
execute as @a[scores={playersOnline=1..},tag=player] run tellraw @s {"text":"You were killed because of a disconnect!","color":"dark_gray"}