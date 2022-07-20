# this function turns on the shower head

advancement revoke @s only main:halls/redsoap/head1off
tag @e[tag=halls_redSoap1] remove redHead1off
tag @e[tag=halls_redSoap1] add redHead1on
scoreboard players set ~red1 halls_soapStat 1