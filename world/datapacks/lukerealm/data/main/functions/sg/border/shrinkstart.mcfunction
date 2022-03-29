# commenting all this out for now, debugging and working on new features
#scoreboard players set ~shrink1Timer sgBorder 1200
#scoreboard players set ~shrink2Timer sgBorder 2400
#scoreboard players set ~shrink3Timer sgBorder 3600
#scoreboard players set ~shrink4Timer sgBorder 4800
#scoreboard players set ~shrink5Timer sgBorder 6000
schedule function main:sg/border/s1warn 1s replace
schedule function main:sg/border/s2warn 120s replace
schedule function main:sg/border/s3warn 180s replace
schedule function main:sg/border/s4warn 240s replace
schedule function main:sg/border/s5warn 300s replace