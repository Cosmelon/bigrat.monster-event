# main tick file for block party, don't fuck up

# Floor randomizer function when floor switcher is active
execute if score $floorSwitch blockParty matches 1 run function bp:floorrng/floors

# main countdown system
scoreboard players remove $countDown blockParty 1
execute if score $countDown blockParty matches 60 run title @a title {"text":"3","color":"red"}
execute if score $countDown blockParty matches 60 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown blockParty matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score $countDown blockParty matches 40 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown blockParty matches 20 run title @a title {"text":"1","color":"green"}
execute if score $countDown blockParty matches 20 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.259921 1
execute if score $countDown blockParty matches 0 run title @a title {"text":"Start Schmoovin!","color":"red"}
execute if score $countDown blockParty matches 0 run playsound minecraft:block.note_block.chime master @a ^0 ^ ^ 1 1.414214 1
execute if score $countDown blockParty matches 0 run scoreboard players set $floorSwitch blockParty 1
execute if score $countDown blockParty matches 0 run scoreboard players set $stopSec blockPartyStop 30
execute if score $countDown blockParty matches -40 run title @a title ""
execute if score $countDown blockParty matches -40 run title @a subtitle ""

# color picker
#execute if score $floorSwitch blockParty matches 1 run scoreboard players add $tick blockPartyStop 1
execute if score $tick blockPartyStop matches 20.. run scoreboard players remove $stopSec blockPartyStop 1
execute if score $stopSec blockPartyStop matches 0 run function bp:colorrng/pickcolor
execute if score $tick blockPartyStop matches 20.. run scoreboard players set $tick blockPartyStop 0

# timer picker
# the idea is that a random amount of time is picked after each elimination before it stops again
execute if score $countDown blockParty matches ..0 run scoreboard players add $tick blockPartyStop 1
execute if score $stopSec blockPartyStop matches -15 run function bp:timerrng/range
#run scoreboard players operation $stopSec blockPartyStop = out blockPartyTimer
execute if score $stopSec blockPartyStop matches -15..0 run scoreboard players set $floorSwitch blockParty 0
execute if score $stopSec blockPartyStop matches 1.. run scoreboard players set $floorSwitch blockParty 1

# removes the blocks
execute if score $stopSec blockPartyStop matches -3 run function bp:floorrng/removefloor

# get rid of blocks in player inventory when inactive randomizer
execute if score $stopSec blockPartyStop matches 1.. run function bp:removeblockitems

execute if score $stopSec blockPartyStop matches -15 if score $tick blockPartyStop matches 0 run tellraw @a[tag=admin] [{"selector":"out","objective":"blockPartyTimer"},{"text":" seconds before next stop"}]


# player death method
kill @a[x=932.5,dx=20,y=-26,dy=2,z=863.5,dz=20]
# death messaage
function main:spleef/checkdead
# red win
execute if score $notifBlueDead blockPartyDead matches 1 run execute if score $notifGreenDead blockPartyDead matches 1 run execute if score $notifYellowDead blockPartyDead matches 1 run function main:spleef/wins/red
# blue win
execute if score $notifRedDead blockPartyDead matches 1 run execute if score $notifGreenDead blockPartyDead matches 1 run execute if score $notifYellowDead blockPartyDead matches 1 run function main:spleef/wins/blue
# green win
execute if score $notifRedDead blockPartyDead matches 1 run execute if score $notifBlueDead blockPartyDead matches 1 run execute if score $notifYellowDead blockPartyDead matches 1 run function main:spleef/wins/green
# yellow win
execute if score $notifRedDead blockPartyDead matches 1 run execute if score $notifBlueDead blockPartyDead matches 1 run execute if score $notifGreenDead blockPartyDead matches 1 run function main:spleef/wins/yellow
# count # of players on a team
execute store result score $red blockPartyDead if entity @a[team=Red]
execute store result score $blue blockPartyDead if entity @a[team=Blue]
execute store result score $green blockPartyDead if entity @a[team=Green]
execute store result score $yellow blockPartyDead if entity @a[team=Yellow]
