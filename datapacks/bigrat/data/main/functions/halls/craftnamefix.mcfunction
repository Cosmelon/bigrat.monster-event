# Description: fix villager name after correct or incorrect answer
# Author: Cosmelon
# Type: single
# run from main:halls/craftkey main:halls/hallstick

data modify entity @e[type=villager,limit=1,sort=nearest] CustomName set value '[{"text":"Craft an activator rail!"}]'