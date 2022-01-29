# tick for pk game

# /trigger commands for Admins
#  execute if score $gameActive parkour matches 0 run scoreboard players enable @a[tag=Admin] pkstart
#  execute as @a[tag=Admin,scores={pkstart=1..}] run function main:pk/startpk
#  scoreboard players set @a pkstart 0

#  execute if score $gameActive parkour matches 1 run scoreboard players enable @a[tag=Admin] pkend
#  execute as @a[tag=Admin,scores={pkend=1..}] run function main:pk/endpk
#  scoreboard players set @a pkend 0

# manages count down timer
execute if score $gameActive parkour matches 1 run scoreboard players remove $countDown parkour 1

# countdown
title @a times 0 25 0
execute if score $countDown parkour matches 60 run fill 10 6 92 10 4 98 red_stained_glass replace light_gray_stained_glass
execute if score $countDown parkour matches 60 run title @a title {"text":"3","color":"red"}
execute if score $countDown parkour matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score $countDown parkour matches 40 run fill 10 6 92 10 4 98 yellow_stained_glass replace red_stained_glass
execute if score $countDown parkour matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score $countDown parkour matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score $countDown parkour matches 20 run fill 10 6 92 10 4 98 lime_stained_glass replace yellow_stained_glass
execute if score $countDown parkour matches 20 run title @a title {"text":"1","color":"green"}
execute if score $countDown parkour matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 1
execute if score $countDown parkour matches 0 run fill 10 6 92 10 4 98 air replace lime_stained_glass
execute if score $countDown parkour matches 0 run title @a title {"text":"Go!","color":"green"}
execute if score $countDown parkour matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 10 2
execute if score $countDown parkour matches -20 run title @a title ""