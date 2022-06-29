# Description: main tick file for tomb
# Author: Cosmelon
# type: gameTick
# run from: main:tick

# kit detect & apply
execute if score +rKActive tombCore matches 1 at @e[tag=tankNPC] as @a[distance=..1,tag=!tank] run function main:tomb/kits/tank
execute if score +rKActive tombCore matches 1 at @e[tag=medicNPC] as @a[distance=..1,tag=!medic] run function main:tomb/kits/medic
execute if score +rKActive tombCore matches 1 at @e[tag=hunterNPC] as @a[distance=..1,tag=!hunter] run function main:tomb/kits/hunter
execute if score +rKActive tombCore matches 1 at @e[tag=warriorNPC] as @a[distance=..1,tag=!warrior] run function main:tomb/kits/warrior
