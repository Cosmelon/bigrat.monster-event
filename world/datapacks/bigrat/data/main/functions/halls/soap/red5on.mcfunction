# this function turns on the shower head

advancement revoke @a only main:halls/soap/red5on
tag @e[tag=halls_redSoap5] remove redHead5off
tag @e[tag=halls_redSoap5] add redHead5on
scoreboard players set ~red5 halls_soapStat 1