# Description: Round 1 start for tomb
# Author: Cosmelon
# Type: single
# run from 

# turn the tick on
scoreboard players set +r2Active tbCore 1

# make scoreboards
scoreboard objectives add tbR2 dummy
scoreboard players set +countDown tbR2 300
scoreboard players set +wave tbR2 0
scoreboard objectives add tbR2_RedR1 dummy
scoreboard players set +wave tbR2_RedR1 0
scoreboard objectives add tbR2_RedR2 dummy
scoreboard objectives add tbR2_RedR3 dummy

# generate doors
place template main:tomb/tbdoor 5069 37 -1

# regenerate kits
execute as @a[tag=gladiatorKit] run function main:tomb/kits/gladiator
execute as @a[tag=hunterKit] run function main:tomb/kits/hunter
execute as @a[tag=medicKit] run function main:tomb/kits/medic
execute as @a[tag=tankKit] run function main:tomb/kits/tank

# teleport players to round2
tp @a[tag=red-1] 5059.5 36 -0.5 0 10
tp @a[tag=red-2] 5059.5 36 5.5 180 10
tp @a[tag=red-3] 5062.5 36 2.5 90 10
tp @a[tag=red-4] 5056.5 36 2.5 -90 10
tp @a[tag=blue-1] 5059.5 36 42.5 0 10
tp @a[tag=blue-2] 5059.5 36 48.5 180 10
tp @a[tag=blue-3] 5062.5 36 45.5 90 10
tp @a[tag=blue-4] 5056.5 36 45.5 -90 10
tp @a[tag=green-1] 5059.5 36 86.5 0 10
tp @a[tag=green-2] 5059.5 36 92.5 180 10
tp @a[tag=green-3] 5062.5 36 89.5 90 10
tp @a[tag=green-4] 5056.5 36 89.5 -90 10
tp @a[tag=yellow-1] 5059.5 36 128.5 0 10
tp @a[tag=yellow-2] 5059.5 36 134.5 10 10
tp @a[tag=yellow-3] 5062.5 36 131.5 90 10
tp @a[tag=yellow-4] 5056.5 36 131.5 -90 10