#  This function is run nine times at the start of sg

# init
scoreboard players set ~countDown sg 600 
scoreboard players add ~powerRun sg 1

# giving superpowers
execute if score out sgMath matches 1 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgVampire
execute if score out sgMath matches 2 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgTrainer
execute if score out sgMath matches 3 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgRedditor
execute if score out sgMath matches 4 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgCreeper
execute if score out sgMath matches 5 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgWitch
execute if score out sgMath matches 6 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgLeprechaun
execute if score out sgMath matches 7 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgMedic
execute if score out sgMath matches 8 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgPyro
tag @a[tag=sgVampire] remove noPowers
tag @a[tag=sgTrainer] remove noPowers
tag @a[tag=sgRedditor] remove noPowers
tag @a[tag=sgCreeper] remove noPowers
tag @a[tag=sgWitch] remove noPowers
tag @a[tag=sgLeprechaun] remove noPowers
tag @a[tag=sgMedic] remove noPowers
tag @a[tag=sgPyro] remove noPowers

# zeroing the boards
scoreboard players set @a[tag=sgVampire] sgVampire 0
#scoreboard players set @a[tag=sgTrainer] sgTrainer 0  -- refrence
scoreboard players set @a[tag=sgRedditor] sgRedditor 0
scoreboard players set @a[tag=sgCreeper] sgCreeper 0
scoreboard players set @a[tag=sgWitch] sgWitch 0
scoreboard players set @a[tag=sgLeprechaun] sgLeprechaun 0
scoreboard players set @a[tag=sgMedic] sgMedic 0
scoreboard players set @a[tag=sgPyro] sgPyro 0

# explaining powers in chat
execute if score ~powerRun sg matches 9 run function main:sg/superpowers/infochat