# main tick file for block party, don't fuck up

# Floor randomizer function when floor switcher is active
execute if score #floorSwitch blockParty matches 1 run function bp:floorrng/floors

# main countdown system
scoreboard players remove #countDown blockParty 1
execute if score #countDown blockParty matches 60 run title @a title {"text":"3","color":"red"}
execute if score #countDown blockParty matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score #countDown blockParty matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score #countDown blockParty matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score #countDown blockParty matches 20 run title @a title {"text":"1","color":"green"}
execute if score #countDown blockParty matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score #countDown blockParty matches 0 run title @a title {"text":"Start Schmoovin!","color":"red"}
execute if score #countDown blockParty matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score #countDown blockParty matches 0 run scoreboard players set #floorSwitch blockParty 1
execute if score #countDown blockParty matches 0 run scoreboard players set #stopSec bpStop 30
execute if score #countDown blockParty matches -40 run title @a title ""
execute if score #countDown blockParty matches -40 run title @a subtitle ""

# color picker
#execute if score $floorSwitch blockParty matches 1 run scoreboard players add $tick blockPartyStop 1
execute if score #tick bpStop matches 20.. run scoreboard players remove #stopSec bpStop 1
execute if score #stopSec bpStop matches 0 run function main:blockparty/colorrng/pickcolor
execute if score #tick bpStop matches 20.. run scoreboard players set #tick bpStop 0

# timer picker
# the idea is that a random amount of time is picked after each elimination before it stops again
execute if score #countDown blockParty matches ..0 run scoreboard players add #tick bpStop 1
execute if score #stopSec bpStop matches -15 run function main:blockparty/timerrng/range
execute if score #stopSec bpStop matches -15..0 run scoreboard players set #floorSwitch blockParty 0
execute if score #stopSec bpStop matches 1.. run scoreboard players set #floorSwitch blockParty 1

# removes the blocks
execute if score #stopSec bpStop matches -3 run function main:blockparty/floorrng/removefloor

# get rid of blocks in player inventory when inactive randomizer
execute if score #stopSec bpStop matches 1.. run function main:blockparty/removeblockitems


# player death method
kill @a[x=932.5,dx=20,y=-26,dy=2,z=863.5,dz=20]
# death messaage
function main:blockparty/checkdead
# red win
execute if score #notifBlueDead bpDead matches 1 if score #notifGreenDead bpDead matches 1 if score #notifYellowDead bpDead matches 1 run function main:blockparty/wins/red
# blue win
execute if score #notifRedDead bpDead matches 1 if score #notifGreenDead bpDead matches 1 if score #notifYellowDead bpDead matches 1 run function main:blockparty/wins/blue
# green win
execute if score #notifRedDead bpDead matches 1 if score #notifBlueDead bpDead matches 1 if score $notifYellowDead bpDead matches 1 run function main:blockparty/wins/green
# yellow win
execute if score #notifRedDead bpDead matches 1 if score #notifBlueDead bpDead matches 1 if score $notifGreenDead bpDead matches 1 run function main:blockparty/wins/yellow
# count # of players on a team
execute store result score #red bpDead if entity @a[team=Red]
execute store result score #blue bpDead if entity @a[team=Blue]
execute store result score #green bpDead if entity @a[team=Green]
execute store result score #yellow bpDead if entity @a[team=Yellow]
