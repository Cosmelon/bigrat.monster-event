# this function turns on the shower head

advancement revoke @a only main:halls/soap/red2on
tag @e[tag=halls_redSoap2] remove redHead2off
tag @e[tag=halls_redSoap2] add redHead2on
scoreboard players set ~red2 halls_soapStat 1