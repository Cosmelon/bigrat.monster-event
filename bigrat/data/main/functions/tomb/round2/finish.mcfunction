# Description: tomb finish
# Author: Cosmelon
# this function is automatically triggered when 3 out of the 4 teams have finished tomb round 2

# finish text
title @a times 0 100 5
title @a title {"text":"Finish!","color":"red","bold":true}

# leaderboard
tellraw @a {"text":"Top scoring teams:","bold":true}
#todo: do leaderboard
tellraw @a ""
tellraw @a [{"text":"1. "},{"selector":"@e[tag=tb_kp1]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp1,limit=1]","objective":"tb_tKills"}}]
tellraw @a [{"text":"2. "},{"selector":"@e[tag=tb_kp2]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp2,limit=1]","objective":"tb_tKills"}}]
tellraw @a [{"text":"3. "},{"selector":"@e[tag=tb_kp3]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp3,limit=1]","objective":"tb_tKills"}}]
tellraw @a [{"text":"4. "},{"selector":"@e[tag=tb_kp4]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp4,limit=1]","objective":"tb_tKills"}}]
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

# returnlobby
schedule function main:returnlobby 10s