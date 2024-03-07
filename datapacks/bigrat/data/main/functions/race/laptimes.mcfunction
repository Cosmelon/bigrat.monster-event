# Description: displays the individual user's lap times
# Author: Cosmelon
# Type: single, scheduled
# run from main:race/topfive

# your lap times
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a {"text":"Your lap times:","bold":true}
execute as @a[tag=player] if score @s rc_ms1 matches ..9 if score @s rc_s1 matches ..9 run tellraw @s [{"text":"1. "},{"score":{"name":"@s","objective":"rc_min1"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s1"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms1"}}] 
execute as @a[tag=player] if score @s rc_ms1 matches 10.. if score @s rc_s1 matches ..9 run tellraw @s [{"text":"1. "},{"score":{"name":"@s","objective":"rc_min1"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s1"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms1"}}] 
execute as @a[tag=player] if score @s rc_ms1 matches ..9 if score @s rc_s1 matches 10.. run tellraw @s [{"text":"1. "},{"score":{"name":"@s","objective":"rc_min1"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s1"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms1"}}] 
execute as @a[tag=player] if score @s rc_ms1 matches 10.. if score @s rc_s1 matches 10.. run tellraw @s [{"text":"1. "},{"score":{"name":"@s","objective":"rc_min1"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s1"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms1"}}] 

execute as @a[tag=player] if score @s rc_ms2 matches ..9 if score @s rc_s2 matches ..9 run tellraw @s [{"text":"2. "},{"score":{"name":"@s","objective":"rc_min2"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s2"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms2"}}] 
execute as @a[tag=player] if score @s rc_ms2 matches 10.. if score @s rc_s2 matches ..9 run tellraw @s [{"text":"2. "},{"score":{"name":"@s","objective":"rc_min2"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s2"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms2"}}] 
execute as @a[tag=player] if score @s rc_ms2 matches ..9 if score @s rc_s2 matches 10.. run tellraw @s [{"text":"2. "},{"score":{"name":"@s","objective":"rc_min2"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s2"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms2"}}] 
execute as @a[tag=player] if score @s rc_ms2 matches 10.. if score @s rc_s2 matches 10.. run tellraw @s [{"text":"2. "},{"score":{"name":"@s","objective":"rc_min2"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s2"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms2"}}] 

execute as @a[tag=player] if score @s rc_ms3 matches ..9 if score @s rc_s3 matches ..9 run tellraw @s [{"text":"3. "},{"score":{"name":"@s","objective":"rc_min3"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s3"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms3"}}] 
execute as @a[tag=player] if score @s rc_ms3 matches 10.. if score @s rc_s3 matches ..9 run tellraw @s [{"text":"3. "},{"score":{"name":"@s","objective":"rc_min3"}},{"text":":0"},{"score":{"name":"@s","objective":"rc_s3"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms3"}}] 
execute as @a[tag=player] if score @s rc_ms3 matches ..9 if score @s rc_s3 matches 10.. run tellraw @s [{"text":"3. "},{"score":{"name":"@s","objective":"rc_min3"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s3"}},{"text":".0"},{"score":{"name":"@s","objective":"rc_ms3"}}] 
execute as @a[tag=player] if score @s rc_ms3 matches 10.. if score @s rc_s3 matches 10.. run tellraw @s [{"text":"3. "},{"score":{"name":"@s","objective":"rc_min3"}},{"text":":"},{"score":{"name":"@s","objective":"rc_s3"}},{"text":"."},{"score":{"name":"@s","objective":"rc_ms3"}}] 

# your position
execute as @a[tag=player] if score @s rc_allms matches ..9 if score @s rc_alls matches ..9 run tellraw @s [{"text":"You placed "},{"score":{"name":"@s","objective":"rc_pos"},"color":"green"},{"text":"/","color":"gold"},{"score":{"name":".players","objective":"br_tcheck"}},{"text":", completing the course in "},{"score":{"name":"@s","objective":"rc_allmin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_alls"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_allms"},"color":"green"}]
execute as @a[tag=player] if score @s rc_allms matches 10.. if score @s rc_alls matches ..9 run tellraw @s [{"text":"You placed "},{"score":{"name":"@s","objective":"rc_pos"},"color":"green"},{"text":"/","color":"gold"},{"score":{"name":".players","objective":"br_tcheck"}},{"text":", completing the course in "},{"score":{"name":"@s","objective":"rc_allmin"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@s","objective":"rc_alls"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_allms"},"color":"green"}]
execute as @a[tag=player] if score @s rc_allms matches ..9 if score @s rc_alls matches 10.. run tellraw @s [{"text":"You placed "},{"score":{"name":"@s","objective":"rc_pos"},"color":"green"},{"text":"/","color":"gold"},{"score":{"name":".players","objective":"br_tcheck"}},{"text":", completing the course in "},{"score":{"name":"@s","objective":"rc_allmin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_alls"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"rc_allms"},"color":"green"}]
execute as @a[tag=player] if score @s rc_allms matches 10.. if score @s rc_alls matches 10.. run tellraw @s [{"text":"You placed "},{"score":{"name":"@s","objective":"rc_pos"},"color":"green"},{"text":"/","color":"gold"},{"score":{"name":".players","objective":"br_tcheck"}},{"text":", completing the course in "},{"score":{"name":"@s","objective":"rc_allmin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"rc_alls"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"rc_allms"},"color":"green"}]
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]

# turns off race
scoreboard players set .gameActive rc_main 0
scoreboard players set .countDown rc_main 1800
scoreboard players set .gateOpen rc_main 100
scoreboard players set .gateShut rc_main 0
scoreboard players set .milli rc_main 0
scoreboard players set .raceTime rc_milli 0
scoreboard players set .raceTime rc_sec 0
scoreboard players set .raceTime rc_min 0
scoreboard players set @a rc_milli 0
scoreboard players set @a rc_sec 0
scoreboard players set @a rc_min 0
scoreboard players set @a rc_checkpt 0
scoreboard players set @a rc_lap 0
scoreboard players reset * rc_pos
effect clear @a
clear @a
title @a actionbar ""
title @a title ""
bossbar remove main:rc_alltime
bossbar remove main:rc_gateopen
bossbar remove main:rc_gateshut
# get rid of the cinematic armor stand
kill @e[type=armor_stand,name=".raceCine"]

schedule function main:returnlobby 5s replace