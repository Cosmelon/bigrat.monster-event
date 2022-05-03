# takes care of the redstone block to activate the structure block
scoreboard players add ?microTick blockParty 1
execute if score ?microTick blockParty matches 0 run setblock -2018 26 2984 air destroy
execute if score ?microTick blockParty matches 1 run setblock -2018 26 2984 redstone_block destroy
execute if score ?microTick blockParty matches 1.. run scoreboard players set ?microTick blockParty 0