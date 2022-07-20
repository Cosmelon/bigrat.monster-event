# this function turns on the shower head

advancement revoke @a only main:halls/soap/red4on
tag @e[tag=halls_redSoap4] remove redHead4off
tag @e[tag=halls_redSoap4] add redHead4on
scoreboard players set ~red4 halls_soapStat 1