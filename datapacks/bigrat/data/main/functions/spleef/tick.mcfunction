# Description: spleef main tick file
# Author: Cosmelon
# Type: main tick
# run from main:tick when .gameActive sp_main matches 1

# prevents players from going out of the arena
execute positioned -496 45 -461 run tp @a[gamemode=spectator,team=!Admin,distance=40..70] -497 69 -461
effect give @a night_vision infinite 1 true
effect give @a saturation infinite 0 true

# roundCount bossbar sync
execute store result bossbar main:sp_round value run scoreboard players get .round sp_main
bossbar set main:sp_round name [{"text":"Round: ","bold":true},{"score":{"name":".round","objective":"sp_main"},"bold":true},{"text":"/3","bold":true}]

# does the countdown timer
scoreboard players remove .countDown sp_main 1
# startinfo
execute if score .countDown sp_main matches 800 run function main:spleef/startinfo/text1
execute if score .countDown sp_main matches 660 run function main:spleef/startinfo/text2
execute if score .countDown sp_main matches 480 run function main:spleef/startinfo/text3
execute if score .countDown sp_main matches 300 run function main:spleef/startinfo/text4
# countDown text
execute if score .countDown sp_main matches 60 run title @a times 0 25 10
execute if score .countDown sp_main matches 1..60 run title @a title {"text":"Starting in:","color":"gold"}
execute if score .countDown sp_main matches 60 run title @a subtitle {"text":">   3   <","color":"red"}
execute if score .countDown sp_main matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown sp_main matches 40 run title @a subtitle {"text":">  2  <","color":"yellow"}
execute if score .countDown sp_main matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown sp_main matches 20 run title @a subtitle {"text":"> 1 <","color":"green"}
execute if score .countDown sp_main matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score .countDown sp_main matches 0 run title @a title {"text":"Spread out!","color":"red"}
execute if score .countDown sp_main matches 0 run title @a subtitle ""
execute if score .countDown sp_main matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score .countDown sp_main matches 0 run fill -491 60 -467 -503 65 -455 minecraft:air
execute if score .countDown sp_main matches -40 run function main:cleartitle


# ensures all players on a team have glowing
effect give @a[tag=player] glowing infinite 0 true

# glowberries
# stupid fucking idea
#item replace entity @a[tag=player] armor.head with glow_berries{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:123} 
effect give @a night_vision infinite 1 true

# snowball get on block break
execute as @a[scores={sp_snowball=1..}] run give @s snowball 1
scoreboard players reset * sp_snowball

# snowball break blocks
function main:spleef/snowball

# yeets snow blocks made by players
#clear @a[team=!Admin] minecraft:snow_block{}
# anti tool drop 
execute if score .tools sp_main matches 1 run execute as @a[tag=player,nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_shovel{Unbreakable:1,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122119,17804,171237,-35608]}],display:{Name:'[{"text":"Mining Away...","italic":false}]',Lore:['[{"text":"I don\'t know what to mine"}]','[{"text":"I\'ll mine this anyway","italic":true}]','[{"text":"In this Minecraft day","italic":true}]','[{"text":"So beautiful, mine further down","italic":true}]','[{"text":"What\'s that I found?","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"So easy to mine","italic":true}]','[{"text":"With my Minecraft pickaxe and shovels","italic":true}]','[{"text":"Hopefully, they stay","italic":true}]','[{"text":"In my Minecraft chests","italic":true}]','[{"text":"So I\'m gonna make","italic":true}]','[{"text":"A lock on it","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"I\'ll mine them","italic":true}]','[{"text":"So far I\'ve got two!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Ah! {cough, cough, cough, cough, sniff, cough}","italic":true}]','[{"text":"I\'m alright, I\'m ready\\"","italic":true}]','[{"text":"","italic":true}]','[{"text":"All these diamonds","italic":true}]','[{"text":"Sittin\' carefully lay","italic":true}]','[{"text":"I\'m getting worried (\\"Shut the door!\\")","italic":true}]','[{"text":"If they might get stolen","italic":true}]','[{"text":"From my ender chest","italic":true}]','[{"text":"Wait, who is that?","italic":true}]','[{"text":"Holy sheep, it\'s Notch!","italic":true}]','[{"text":"","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"Now they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Now...","italic":true}]','[{"text":"Now that they\'re safe","italic":true}]','[{"text":"Woahhhhhhhhhhhhhhhhh!","italic":true}]','[{"text":"Mine diamonds, {heavy breathing} (Take on me)","italic":true}]','[{"text":"Mine diamonds (Take on me)","italic":true}]','[{"text":"","italic":true}]','[{"text":"\\"Uh, Thanks, thanks for listening","italic":true}]','[{"text":"guys and thanks for recommending","italic":true}]','[{"text":"this song\\"","italic":true}]']},Enchantments:[{id:"efficiency",lvl:255}],HideFlags:63,CanDestroy:[snow_block]}
execute if score .tools sp_main matches 1 run execute as @a[tag=player,nbt=!{Inventory:[{id:"minecraft:stick"}]}] at @s run item replace entity @s hotbar.1 with stick{display:{Name:'[{"text":"Bastard Blaster","italic":false}]',Lore:['[{"text":"Never gonna give you up"}]','[{"text":"Never gonna let you down","italic":true}]','[{"text":"Never gonna run around and desert you","italic":true}]','[{"text":"Never gonna make you cry","italic":true}]','[{"text":"Never gonna say goodbye","italic":true}]','[{"text":"Never gonna tell a lie and hurt you","italic":true}]']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:27} 1
execute if score .tools sp_main matches 1 run item replace entity @a[tag=player] container.35 with snow_block

# weakness when holding shovel
effect give @a[tag=player] weakness 1 255 true
execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect clear @s minecraft:weakness
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s PickupDelay set value 0t
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run data modify entity @s Owner set from entity @s Thrower

# quick snowball swap
execute as @a store result score @s sp_numsb run clear @s snowball 0
execute as @a[nbt={SelectedItem:{id:"minecraft:snow_block"}}] if score @s sp_numsb matches 16.. run clear @s snowball 16
execute as @a[nbt={SelectedItem:{id:"minecraft:snow_block"}}] if score @s sp_numsb matches 16.. run item replace entity @s weapon.mainhand with snowball 16
execute as @a store result score @s sp_numblock run clear @s snow_block 0
clear @a[tag=player,scores={sp_numblock=2..}] snow_block
#execute as @a[nbt={SelectedItem:{id:"minecraft:snow_block"}}] if score @s sp_numsb matches 16.. run clear @s snow_block
# kills ground items
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block"}}]



# tracks # of alive players on a team (can't use tag here)
execute store result score .aliveRed sp_main if entity @a[team=Red,gamemode=!spectator]
execute store result score .aliveBlue sp_main if entity @a[team=Blue,gamemode=!spectator]
execute store result score .aliveGreen sp_main if entity @a[team=Green,gamemode=!spectator]
execute store result score .aliveYellow sp_main if entity @a[team=Yellow,gamemode=!spectator]

# kills people who fell off L
kill @a[gamemode=adventure,scores={br_yPos=27..30}]
tp @a[team=!Admin,gamemode=spectator,scores={br_yPos=20}] -496 66 -459 -180 5
# transfers dead players to spectator
gamemode spectator @a[scores={sp_deaths=1..}]
execute as @a if score @s sp_deaths matches 1 run scoreboard players add @a[gamemode=adventure,tag=player] indivScore 1
execute as @a if score @s sp_deaths matches 1 run tellraw @a[gamemode=adventure,tag=player] {"text":"+1 Invividual Point (survival)","color":"green"}
execute as @a if score @s sp_deaths matches 1 run scoreboard players add @s sp_deaths 1
#execute as @a[scores={spleefDeaths=1},tag=player] run function main:spleef/death

# does team death messaage
function main:spleef/checkdead
# red win
execute if score .notifBlue sp_main matches 1 run execute if score .notifGreen sp_main matches 1 run execute if score .notifYellow sp_main matches 1 run function main:spleef/wins/red
# blue win
execute if score .notifRed sp_main matches 1 run execute if score .notifGreen sp_main matches 1 run execute if score .notifYellow sp_main matches 1 run function main:spleef/wins/blue
# green win
execute if score .notifRed sp_main matches 1 run execute if score .notifBlue sp_main matches 1 run execute if score .notifYellow sp_main matches 1 run function main:spleef/wins/green
# yellow win
execute if score .notifRed sp_main matches 1 run execute if score .notifBlue sp_main matches 1 run execute if score .notifGreen sp_main matches 1 run function main:spleef/wins/yellow


# start shrink
execute if score .countDown sp_main matches 0 run schedule function main:spleef/border/s1warn 40s replace
execute if score .countDown sp_main matches 0 run schedule function main:spleef/border/s2warn 120s replace
execute if score .countDown sp_main matches 0 run schedule function main:spleef/border/s3warn 240s replace
# shrink timers
scoreboard players remove .shrinkActual sp_border 1
scoreboard players remove .shrinkTimer sp_border 1
# shrink bossbar timer reading
execute if score .shrinkTimer sp_border matches 0..600 run scoreboard players add .tick sp_border 1
execute if score .shrinkTimer sp_border matches 0..600 run bossbar set main:sp_shrinkwarn visible true
execute if score .shrinkTimer sp_border matches 0..600 run bossbar set main:sp_shrinkwarn max 400
execute if score .tick sp_border matches 20.. run scoreboard players remove .sec sp_border 1
execute if score .tick sp_border matches 20.. run scoreboard players set .tick sp_border 0
execute if score .sec sp_border matches 10.. if score .shrinkNum sp_border matches 1 run bossbar set main:sp_shrinkwarn name [{"text":"First Shrink: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches 0..9 if score .shrinkNum sp_border matches 1 run bossbar set main:sp_shrinkwarn name [{"text":"First Shrink: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches 10.. if score .shrinkNum sp_border matches 2 run bossbar set main:sp_shrinkwarn name [{"text":"Second Shrink: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches 0..9 if score .shrinkNum sp_border matches 2 run bossbar set main:sp_shrinkwarn name [{"text":"Second Shrink: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches 10.. if score .shrinkNum sp_border matches 3 run bossbar set main:sp_shrinkwarn name [{"text":"Deathmatch starts in: ","color":"red","bold":true},{"text":"0:","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches 0..9 if score .shrinkNum sp_border matches 3 run bossbar set main:sp_shrinkwarn name [{"text":"Deathmatch starts in: ","color":"red","bold":true},{"text":"0:0","color":"white","bold":true},{"score":{"name":".sec","objective":"sp_border"},"color":"white","bold":true}]
execute if score .sec sp_border matches ..-1 run scoreboard players set .sec sp_border 30
# shrink timer bossbars sync
execute store result bossbar main:sp_shrinkactual value run scoreboard players get .shrinkActual sp_border
execute store result bossbar main:sp_shrinkwarn value run scoreboard players get .shrinkTimer sp_border
# shrink bossbar visibility
execute if score .shrinkTimer sp_border matches -1 run bossbar set main:sp_shrinkwarn visible false
execute if score .shrinkTimer sp_border matches 0 run bossbar set main:sp_shrinkactual visible false
bossbar set main:sp_round players @a
bossbar set main:sp_shrinkwarn players @a
bossbar set main:sp_shrinkactual players @a
#remove blocks
function main:spleef/border/conc/shrink1
function main:spleef/border/conc/shrink2
function main:spleef/border/conc/shrink3

# sets time of day
time set midnight

# spawnpoint during game
spawnpoint @a -496 66 -459

# killing players when they disconnect mid-game
execute as @a[scores={br_online=1..}] run gamemode spectator @s
execute as @a[scores={br_online=1..},tag=player] run scoreboard players set @s sp_deaths 1
execute as @a[scores={br_online=1..},tag=player] run tellraw @s {"text":"You were killed because of a disconnect!","color":"dark_gray"}