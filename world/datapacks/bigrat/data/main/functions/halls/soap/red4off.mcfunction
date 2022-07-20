# this function turns off the shower head

advancement revoke @a only main:halls/soap/red4off
tag @e[tag=halls_redSoap4] remove redHead4on
tag @e[tag=halls_redSoap4] add redHead4off
scoreboard players set ~red4 halls_soapStat 0