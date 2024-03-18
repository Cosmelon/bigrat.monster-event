# Description: Kills the event processes
# Author: Cosmelon
# type: kill
# run from : manual

function main:spleef/kill
function main:race/kill
function main:blockparty/kill
function main:halls/killhalls
function main:tomb/killtb
function main:brawl/killbrawl
function main:lobby
bossbar remove br:nextgame
scoreboard players set .halls br_cgame 0
scoreboard players set .race br_cgame 0
scoreboard players set .blockparty br_cgame 0
scoreboard players set .halls br_cgame 0
scoreboard players set .tomb br_cgame 0
scoreboard players set .brawl br_cgame 0
scoreboard players set .eventactive br_cgame 0
tellraw @a {"text":"Killed event processes!","color":"dark_red","bold":true}