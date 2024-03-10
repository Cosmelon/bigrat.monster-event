# Description: stars music for blockparty
# Author: Cosmelon
# Type: single, scheduled
# run from main:startbp

# music stuff
playsound minecraft:custom.bpmusic voice @a -2000.5 130 3000.5 10000
schedule function main:blockparty/bpmusic 145s