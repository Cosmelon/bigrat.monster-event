# Description: spawns craft key
# Author: Cosmelon
# Type: single
# run from main:halls/hallstick

# yeah this is an over-elaborate way to spawn the key and shit

# success text
data modify entity @e[type=villager,limit=1,sort=nearest] CustomName set value '[{"text":"\\uE007 Success! \\uE007","color":"green"}]'
execute positioned ~ ~ ~ run schedule function main:halls/craftnamefix 7s replace

# spawning the key
summon item ^ ^1 ^1.2 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Craft Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:tripwire_hook"}}] CustomName set value '[{"text":"Key","color":"red"}]'
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:tripwire_hook"}}] CustomNameVisible set value true

# spawning the fireworks
execute if entity @a[team=Red,tag=hallsAlive,distance=..10,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16471124],FadeColors:[I;13071990]},{Colors:[I;16777215]}]}}}}
execute if entity @a[team=Blue,tag=hallsAlive,distance=..10,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5526779],FadeColors:[I;8092615]},{Colors:[I;16777215]}]}}}}
execute if entity @a[team=Green,tag=hallsAlive,distance=..10,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;5569364],FadeColors:[I;7320687]},{Colors:[I;16777215]}]}}}}
execute if entity @a[team=Yellow,tag=hallsAlive,distance=..10,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;16513876],FadeColors:[I;13092723]},{Colors:[I;16777215]}]}}}}