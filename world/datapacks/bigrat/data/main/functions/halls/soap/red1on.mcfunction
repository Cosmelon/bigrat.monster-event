# this function turns on the shower head

advancement revoke @a only main:halls/soap/red1on
tag @e[tag=halls_redSoap1] remove redHead1off
tag @e[tag=halls_redSoap1] add redHead1on
scoreboard players set ~red1 halls_soapStat 1