# this function turns off the shower head

advancement revoke @a only main:halls/soap/red8off
tag @e[tag=halls_redSoap8] remove redHead8on
tag @e[tag=halls_redSoap8] add redHead8off
scoreboard players set ~red8 halls_soapStat 0