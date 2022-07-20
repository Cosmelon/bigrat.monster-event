# this function turns on the shower head

advancement revoke @a only main:halls/soap/red7on
tag @e[tag=halls_redSoap7] remove redHead7off
tag @e[tag=halls_redSoap7] add redHead7on
scoreboard players set ~red7 halls_soapStat 1