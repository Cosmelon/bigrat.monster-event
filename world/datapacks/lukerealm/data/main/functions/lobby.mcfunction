# returns players to lobby
scoreboard players set $fossilDig currentGame 0
scoreboard players set $kitPvp currentGame 0
scoreboard players set $race currentGame 0
scoreboard players set $spleef currentGame 0
# once a new lobby is built, these tp locations need to be adjusted
tp @a -190.5 12 132.5
gamemode adventure @a
clear @a
effect clear @a

bossbar set minecraft:spleefroundcount visible false

# reset stuff for spleef
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0
scoreboard players set $countDown spleef 160
scoreboard players set $round spleef 1
worldborder center 0 0
worldborder set 6000000 1