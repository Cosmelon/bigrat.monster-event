# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add #in1 bpFloor 1
scoreboard players operation ?range bpFloor = #in1 bpFloor
scoreboard players operation ?range bpFloor -= #in bpFloor

scoreboard players operation ?m1 bpFloor = ?range bpFloor
scoreboard players remove ?m1 bpFloor 1
function bp:floorrng/next_int
scoreboard players operation #out bpFloor += #in bpFloor

scoreboard players reset ?m1 bpFloor
scoreboard players remove #in1 bpFloor 1
