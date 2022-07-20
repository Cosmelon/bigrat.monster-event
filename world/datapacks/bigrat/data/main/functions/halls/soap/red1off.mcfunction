# this function turns off the shower head

advancement revoke @a only main:halls/soap/red1off
tag @e[tag=halls_redSoap1] remove redHead1on
tag @e[tag=halls_redSoap1] add redHead1off
scoreboard players set ~red1 halls_soapStat 0