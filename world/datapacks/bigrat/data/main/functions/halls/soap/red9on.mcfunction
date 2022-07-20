# this function turns on shower head 9

advancement revoke @a only main:halls/soap/red9on
tag @e[tag=halls_redSoap9] remove redHead9off
tag @e[tag=halls_redSoap9] add redHead9on
scoreboard players set ~red9 halls_soapStat 1