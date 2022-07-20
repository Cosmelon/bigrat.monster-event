# this function turns off the shower head

advancement revoke @a only main:halls/soap/red5off
tag @e[tag=halls_redSoap5] remove redHead5on
tag @e[tag=halls_redSoap5] add redHead5off
scoreboard players set ~red5 halls_soapStat 0