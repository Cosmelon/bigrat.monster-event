# this function turns off the shower head

advancement revoke @a only main:halls/soap/red2off
tag @e[tag=halls_redSoap2] remove redHead2on
tag @e[tag=halls_redSoap2] add redHead2off
scoreboard players set ~red2 halls_soapStat 0