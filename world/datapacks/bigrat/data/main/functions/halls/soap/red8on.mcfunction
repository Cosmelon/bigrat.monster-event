# this function turns on the shower head

advancement revoke @a only main:halls/soap/red8on
tag @e[tag=halls_redSoap8] remove redHead8off
tag @e[tag=halls_redSoap8] add redHead8on
scoreboard players set ~red8 halls_soapStat 1