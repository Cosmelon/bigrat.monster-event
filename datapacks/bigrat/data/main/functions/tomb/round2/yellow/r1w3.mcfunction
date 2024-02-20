# Description: yellow team room1 wave3
# Author: Cosmelon
# Type: wave start
# run from main:tomb/round2/yellow/r1_t

# set variables
scoreboard players set +wave tbR2_YellowR1 0

# wave 3 start
title @a[team=Yellow] times 30 20 10
title @a[team=Yellow] title {"text":"Wave 3","color":"red","bold":true}
tellraw @a[tag=admin] {"text":"[Debug] Round2 Room1 Wave3 has started for YELLOW TEAM","color":"gray"}

# summon the zombies
summon zombie ~2 ~ ~ {CustomName:'{"text":"Edit: thanks for the silver kind stranger!"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-2 ~ ~ {CustomName:'{"text":"I am *insert small amount of time* sober!"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~2 {CustomName:'{"text":"Sorry english isnt my first language"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~-2 {CustomName:'{"text":"Nice."}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~2 ~ ~2 {CustomName:'{"text":"im probably gonna get downvoted for this but..."}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-2 ~ ~-2 {CustomName:'{"text":"EDIT: wow this blew up"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~2 ~ ~-2 {CustomName:'{"text":"World War II"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-2 ~ ~2 {CustomName:'{"text":"We did it Reddit"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~3 ~ ~ {CustomName:'{"text":"Broken arms"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~ {CustomName:'{"text":"I logged in to upvote this"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~3 {CustomName:'{"text":"this"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~-3 {CustomName:'{"text":"right in the feels"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~3 ~ ~3 {CustomName:'{"text":"happy cake day"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~3 ~ ~-3 {CustomName:'{"text":"doesnt matter, had sex"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~3 {CustomName:'{"text":"are you me?"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~-3 {CustomName:'{"text":"risky click"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~3 ~ ~ {CustomName:'{"text":"Broken arms"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~2 {CustomName:'{"text":"Sorry english isnt my first language"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~-3 {CustomName:'{"text":"risky click"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~2 ~ ~-2 {CustomName:'{"text":"World War II"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-2 ~ ~-2 {CustomName:'{"text":"EDIT: wow this blew up"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~2 ~ ~2 {CustomName:'{"text":"im probably gonna get downvoted for this but..."}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~ {CustomName:'{"text":"I logged in to upvote this"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~-3 ~ ~3 {CustomName:'{"text":"are you me?"}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
summon zombie ~ ~ ~-2 {CustomName:'{"text":"Nice."}',PersistenceRequired:1b,DeathLootTable:"main:entity_empty"}
tag @e[type=zombie,distance=..12] add tbR2_r1w3Yellow

# set variables
scoreboard players set +wave tbR2_YellowR1 3