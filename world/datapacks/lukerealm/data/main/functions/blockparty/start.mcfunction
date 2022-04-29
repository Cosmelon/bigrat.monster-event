# start blockparty

title @a times 0 50 80
scoreboard players set $gameActive blockParty 1
scoreboard players set $floorSwitch blockParty 0
scoreboard players set $microTick blockParty 0
scoreboard players set $countDown blockParty 400
scoreboard players set $stopSec blockPartyStop -100
scoreboard players set @a blockPartySound 0

scoreboard players set $notifRedDead blockPartyDead 0
scoreboard players set $notifBlueDead blockPartyDead 0
scoreboard players set $notifGreenDead blockPartyDead 0
scoreboard players set $notifYellowDead blockPartyDead 0

tag @a[tag=players] add bpAlive
tag @a[tag=players] remove bpDead