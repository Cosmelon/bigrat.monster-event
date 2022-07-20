# this function turns off the shower head

advancement revoke @a only main:halls/soap/red7off
tag @e[tag=halls_redSoap7] remove redHead7on
tag @e[tag=halls_redSoap7] add redHead7off
scoreboard players set ~red7 halls_soapStat 0