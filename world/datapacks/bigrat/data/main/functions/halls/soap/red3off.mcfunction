# this function turns off the shower head

advancement revoke @a only main:halls/soap/red3off
tag @e[tag=halls_redSoap3] remove redHead3on
tag @e[tag=halls_redSoap3] add redHead3off
scoreboard players set ~red3 halls_soapStat 0