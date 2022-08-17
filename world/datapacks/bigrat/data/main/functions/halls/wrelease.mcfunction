# Description: release the warden
# Author: Cosmelon
# Type: single
# run from main:halls/hallstick when ~wRelease hallCore == 0

# summon warden
summon warden -976.001 22 1044.001
summon warden -1206.001 22 1044.001
summon warden -1436.001 22 1044.001
summon warden -1666.001 22 1044.001

# infostuff
tellraw @a {"text":"\nThe monster has been released!\n","bold":true}
bossbar remove halls:wrelease
execute as @a run playsound ambient.cave ambient @s ~ ~100 ~ 10000

# sneak setup
scoreboard objectives add halls_sneak dummy