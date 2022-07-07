# Description: round1 ends
# Author: Cosmelon
# Type: end
# run from main:tomb/round1/main when +timeLeft tbR1 == -1

# calculate team leaderboard


# variables
scoreboard players set +r1Active tbCore 0
schedule function main:tomb/round2/start 20s
tellraw @a "next round starting in 20s"
scoreboard objectives remove tbR1_Deaths

# get rid of zombies
kill @e[type=zombie]
setblock 5016 34 2 air destroy
setblock 5016 34 45 air destroy
setblock 5016 34 89 air destroy
setblock 5016 34 131 air destroy

# leaderboard
tellraw @a "Top Scoring teams:"
#todo: do leaderboard
tellraw @a ""
tellraw @a [{"text":"1. "},{"selector":"@e[tag=tb_kp1]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp1,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"2. "},{"selector":"@e[tag=tb_kp2]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp2,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"3. "},{"selector":"@e[tag=tb_kp3]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp3,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"4. "},{"selector":"@e[tag=tb_kp4]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp4,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a ""

# leaderboard on your team
tellraw @a ""
tellraw @a {"text":"Top scoring players on your team:","bold":true}
tellraw @a[team=Red] [{"text":"1. "},{"selector":"@a[tag=tb_kREDp1]"}]
tellraw @a[team=Red] [{"text":"2. "},{"selector":"@a[tag=tb_kREDp2]"}]
tellraw @a[team=Red] [{"text":"3. "},{"selector":"@a[tag=tb_kREDp3]"}]
tellraw @a[team=Red] [{"text":"4. "},{"selector":"@a[tag=tb_kREDp4]"}]
tellraw @a[team=Blue] [{"text":"1. "},{"selector":"@a[tag=tb_kBLUEp1]"}]
tellraw @a[team=Blue] [{"text":"2. "},{"selector":"@a[tag=tb_kBLUEp2]"}]
tellraw @a[team=Blue] [{"text":"3. "},{"selector":"@a[tag=tb_kBLUEp3]"}]
tellraw @a[team=Blue] [{"text":"4. "},{"selector":"@a[tag=tb_kBLUEp4]"}]
tellraw @a[team=Green] [{"text":"1. "},{"selector":"@a[tag=tb_kGREENp1]"}]
tellraw @a[team=Green] [{"text":"2. "},{"selector":"@a[tag=tb_kGREENp2]"}]
tellraw @a[team=Green] [{"text":"3. "},{"selector":"@a[tag=tb_kGREENp3]"}]
tellraw @a[team=Green] [{"text":"4. "},{"selector":"@a[tag=tb_kGREENp4]"}]
tellraw @a[team=Yellow] [{"text":"1. "},{"selector":"@a[tag=tb_kYELLOWp1]"}]
tellraw @a[team=Yellow] [{"text":"2. "},{"selector":"@a[tag=tb_kYELLOWp2]"}]
tellraw @a[team=Yellow] [{"text":"3. "},{"selector":"@a[tag=tb_kYELLOWp3]"}]
tellraw @a[team=Yellow] [{"text":"4. "},{"selector":"@a[tag=tb_kYELLOWp4]"}]

# sound
function main:sfx/gameend

# title
title @a title "Finish!"

# clear placement tags
tag @a remove tb_kp1
tag @a remove tb_kp2
tag @a remove tb_kp3
tag @a remove tb_kp4
tag @a remove tb_kREDp1
tag @a remove tb_kREDp2
tag @a remove tb_kREDp3
tag @a remove tb_kREDp4
tag @a remove tb_kBLUEp1
tag @a remove tb_kBLUEp2
tag @a remove tb_kBLUEp3
tag @a remove tb_kBLUEp4
tag @a remove tb_kGREENp1
tag @a remove tb_kGREENp2
tag @a remove tb_kGREENp3
tag @a remove tb_kGREENp4
tag @a remove tb_kYELLOWp1
tag @a remove tb_kYELLOWp2
tag @a remove tb_kYELLOWp3
tag @a remove tb_kYELLOWp4