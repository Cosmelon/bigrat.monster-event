# this function turns off the shower head

advancement revoke @s only main:halls/redsoap/head1on
tag @e[tag=halls_redSoap1] remove redHead1on
tag @e[tag=halls_redSoap1] add redHead1off
scoreboard players set ~red1 halls_soapStat 0