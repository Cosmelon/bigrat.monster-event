# this function turns off the shower head

advancement revoke @a only main:halls/soap/red6off
tag @e[tag=halls_redSoap6] remove redHead6on
tag @e[tag=halls_redSoap6] add redHead6off
scoreboard players set ~red6 halls_soapStat 0