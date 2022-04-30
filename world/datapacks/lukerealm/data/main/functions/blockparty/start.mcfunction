# start blockparty

title @a times 0 50 80
scoreboard players set ?gameActive blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players set @a bpSound 0

scoreboard players set ?notifRedDead bpDead 0
scoreboard players set ?notifBlueDead bpDead 0
scoreboard players set ?notifGreenDead bpDead 0
scoreboard players set ?notifYellowDead bpDead 0

tag @a[tag=players] add bpAlive
tag @a[tag=players] remove bpDead