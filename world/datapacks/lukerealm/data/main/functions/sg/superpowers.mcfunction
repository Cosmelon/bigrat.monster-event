# superpowers mode
#  This function is run eight times at the start of sg

# init
scoreboard players set ~countDown sg 10000 
scoreboard players add ~powerRun sg 1

# giving superpowers
execute if score out sgMath matches 1 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power1
execute if score out sgMath matches 2 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power2
execute if score out sgMath matches 3 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power3
execute if score out sgMath matches 4 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power4
execute if score out sgMath matches 5 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power5
execute if score out sgMath matches 6 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power6
execute if score out sgMath matches 7 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power7
execute if score out sgMath matches 8 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add power8
tag @a[tag=power1] remove noPowers
tag @a[tag=power2] remove noPowers
tag @a[tag=power3] remove noPowers
tag @a[tag=power4] remove noPowers
tag @a[tag=power5] remove noPowers
tag @a[tag=power6] remove noPowers
tag @a[tag=power7] remove noPowers
tag @a[tag=power8] remove noPowers