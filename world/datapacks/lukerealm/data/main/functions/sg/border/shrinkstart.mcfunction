scoreboard players set ~shrink1Timer sgBorder 1200
scoreboard players set ~shrink2Timer sgBorder 2400
scoreboard players set ~shrink3Timer sgBorder 3600
scoreboard players set ~shrink4Timer sgBorder 4800
scoreboard players set ~shrink5Timer sgBorder 6000
schedule function main:sg/border/shrink1 30s replace
schedule function main:sg/border/shrink2 120s replace
schedule function main:sg/border/shrink3 180s replace
schedule function main:sg/border/shrink4 240s replace
schedule function main:sg/border/shrink5 300s replace