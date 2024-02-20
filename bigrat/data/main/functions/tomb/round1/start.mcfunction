# Description: Round 1 start for tomb
# Author: Cosmelon
# Type: single
# run from main:tomb/starttb

# disable armorstand names
execute as @e[tag=tombNPC] run data modify entity @s CustomNameVisible set value 0b

# round1 scoreboards
scoreboard objectives add tbR1 dummy
scoreboard players set +countDown tbR1 160
scoreboard players set +timeLeft tbR1 3000
scoreboard players set +active tbR1 0
scoreboard players set +r1Active tbCore 1
scoreboard players set +rKActive tbCore 0
scoreboard objectives remove tbR1_Timer
scoreboard objectives add tbR1_Timer dummy
scoreboard objectives add tbR1_Deaths deathCount

# kill boards
# tbR1_aKill tracks the actual kill event, tbR1_iKills & tbR1_tKills recieve the data
scoreboard objectives add tb_aKill killed:minecraft.zombie
scoreboard objectives add tb_iKills dummy
scoreboard objectives add tb_tKills dummy
scoreboard objectives add tb_tKillsM dummy
scoreboard players set +p1 tb_tKillsM -2147483648
scoreboard players set +p2 tb_tKillsM -2147483648
scoreboard players set +p3 tb_tKillsM -2147483648
scoreboard players set +p4 tb_tKillsM -2147483648
scoreboard objectives add tb_tiKillsM_Red dummy
scoreboard players set +p1 tb_tiKillsM_Red -2147483648
scoreboard players set +p2 tb_tiKillsM_Red -2147483648
scoreboard players set +p3 tb_tiKillsM_Red -2147483648
scoreboard players set +p4 tb_tiKillsM_Red -2147483648
scoreboard objectives add tb_tiKillsM_Blue dummy
scoreboard players set +p1 tb_tiKillsM_Blue -2147483648
scoreboard players set +p2 tb_tiKillsM_Blue -2147483648
scoreboard players set +p3 tb_tiKillsM_Blue -2147483648
scoreboard players set +p4 tb_tiKillsM_Blue -2147483648
scoreboard objectives add tb_tiKillsM_Green dummy
scoreboard players set +p1 tb_tiKillsM_Green -2147483648
scoreboard players set +p2 tb_tiKillsM_Green -2147483648
scoreboard players set +p3 tb_tiKillsM_Green -2147483648
scoreboard players set +p4 tb_tiKillsM_Green -2147483648
scoreboard objectives add tb_tiKillsM_Yellow dummy
scoreboard players set +p1 tb_tiKillsM_Yellow -2147483648
scoreboard players set +p2 tb_tiKillsM_Yellow -2147483648
scoreboard players set +p3 tb_tiKillsM_Yellow -2147483648
scoreboard players set +p4 tb_tiKillsM_Yellow -2147483648
scoreboard objectives add tb_tKillsPos dummy

# scoring boards
scoreboard objectives add tbR1_tPos dummy

# place armorstand kill keepers
forceload add 4987 -5 4987 -5
execute positioned 4983.5 4 -8 run kill @e[type=armor_stand,distance=..3]
summon armor_stand 4983.5 4 -6.5 {Invisible:1b,Invulnerable:1b,CustomName:'[{"text":"Red","color":"red"}]'}
summon armor_stand 4983.5 4 -7.5 {Invisible:1b,Invulnerable:1b,CustomName:'[{"text":"Blue","color":"blue"}]'}
summon armor_stand 4983.5 4 -8.5 {Invisible:1b,Invulnerable:1b,CustomName:'[{"text":"Green","color":"green"}]'}
summon armor_stand 4983.5 4 -9.5 {Invisible:1b,Invulnerable:1b,CustomName:'[{"text":"Yellow","color":"yellow"}]'}
execute positioned 4983.5 4 -8 run tag @e[type=armor_stand,distance=..3] add tb_kKeeper

# round1 bossbar
bossbar add tomb:r1timer ""

# spawnpoints
spawnpoint @a[team=Red] 5016 34 2
spawnpoint @a[team=Blue] 5016 34 55
spawnpoint @a[team=Green] 5016 34 109
spawnpoint @a[team=Yellow] 5016 34 161

# teleport players to arena
tp @a[tag=red-1] 5016.5 34 -0.5 0 10
tp @a[tag=red-2] 5016.5 34 5.5 -180 10
tp @a[tag=red-3] 5013.5 34 2.5 -90 10
tp @a[tag=red-4] 5019.5 34 2.5 90 10
tp @a[tag=blue-1] 5016.5 34 52.5 0 10
tp @a[tag=blue-2] 5016.5 34 58.5 -180 10
tp @a[tag=blue-3] 5013.5 34 55.5 -90 10
tp @a[tag=blue-4] 5019.5 34 55.5 90 10
tp @a[tag=green-1] 5016.5 34 106.5 0 10
tp @a[tag=green-2] 5016.5 34 112.5 0 10
tp @a[tag=green-3] 5013.5 34 109.5 -90 10
tp @a[tag=green-4] 5019.5 34 109.5 90 10
tp @a[tag=yellow-1] 5016.5 34 158.5 0 10
tp @a[tag=yellow-2] 5016.5 34 164.5 180 10
tp @a[tag=yellow-3] 5013.5 34 161.5 -90 10
tp @a[tag=yellow-4] 5019.5 34 161.5 90 10