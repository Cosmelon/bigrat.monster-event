# Description: release the warden
# Author: Cosmelon
# Type: single
# run from main:halls/tick when .wRelease hallCore == 0

# summon warden
summon warden -976.001 22 1044.001 {Tags:["red_warden"],Brain:{"memories":{"minecraft:dig_cooldown":{value:{}, ttl:999999999L},"minecraft:is_emerging":{value:{}, ttl:85L}}}}
summon warden -1206.001 22 1044.001 {Tags:["blue_warden"],Brain:{"memories":{"minecraft:dig_cooldown":{value:{}, ttl:999999999L},"minecraft:is_emerging":{value:{}, ttl:85L}}}}
summon warden -1436.001 22 1044.001 {Tags:["green_warden"],Brain:{"memories":{"minecraft:dig_cooldown":{value:{}, ttl:999999999L},"minecraft:is_emerging":{value:{}, ttl:85L}}}}
summon warden -1666.001 22 1044.001 {Tags:["yellow_warden"], Brain:{"memories":{"minecraft:dig_cooldown":{value:{}, ttl:999999999L},"minecraft:is_emerging":{value:{}, ttl:85L}}}}

summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["red_warden_pos"]}
summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["blue_warden_pos"]}
summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["green_warden_pos"]}
summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["yellow_warden_pos"]}

# infostuff
tellraw @a {"text":"\nThe monster has been released!\n","bold":true}
bossbar remove halls:wrelease
execute as @a run playsound ambient.cave ambient @s ~ ~100 ~ 10000

# sneak setup
scoreboard objectives add halls_sneak dummy