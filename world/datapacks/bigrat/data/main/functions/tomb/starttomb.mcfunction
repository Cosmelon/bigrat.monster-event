# Description: Start function for tomb
# Author: Cosmelon
# Type: Start
# run from: <manual>

# make scoreboards for tomb
scoreboard objectives add tomb dummy
scoreboard objectives add tombKIlls minecraft.custom:minecraft.mob_kills

# establish scores
scoreboard players set +gameActive tomb 1
scoreboard players set +countDown tomb 160