# this function turns on the shower head

advancement revoke @a only main:halls/soap/red6on
tag @e[tag=halls_redSoap6] remove redHead6off
tag @e[tag=halls_redSoap6] add redHead6on
scoreboard players set ~red6 halls_soapStat 1