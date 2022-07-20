# this function turns on the shower head

advancement revoke @a only main:halls/soap/red3on
tag @e[tag=halls_redSoap3] remove redHead3off
tag @e[tag=halls_redSoap3] add redHead3on
scoreboard players set ~red3 halls_soapStat 1