# this function turns on the shower head

advancement revoke @a only main:halls/soap/red9off
tag @e[tag=halls_redSoap9] remove redHead9on
tag @e[tag=halls_redSoap9] add redHead9off
scoreboard players set ~red9 halls_soapStat 0