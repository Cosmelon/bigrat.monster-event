# teleport menu for admins
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":"________________________________________","bold":true}
tellraw @s {"text":"Teleport Menu 2/2","bold":true,"color":"red"}
tellraw @s {"text":""}
tellraw @s {"text":"Battle","color":"blue","clickEvent":{"action":"run_command","value":"/tp @s -708 21 683 180 0"}}
tellraw @s {"text":"Legacy Builds","color":"gray","clickEvent":{"action":"run_command","value":"/tp @s 1984 133 1984"}}
tellraw @s {"text":"Water rising parkour","color":"brown","clickEvent":{"action":"run_command","value":"/tp @s -1000 50 1000"}}
tellraw @s {"text":"Luke Placeholder","color":"green","clickEvent":{"action":"run_command","value":"/tp @s -2000 50 2000"}}
tellraw @s {"text":"TF2 Arena","color":"#FFA500","clickEvent":{"action":"run_command","value":"/tp @s 4059 36 -3220"}}
tellraw @s {"text":""}
tellraw @s [{"text":"<","color":"gray","bold":true},{"text":"Prev","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:telemenu"}},{"text":" | ","color":"gray","bold":true},{"text":"Next","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s \"You're already on the last page!\""}},{"text":">","color":"gray","bold":true}]
tellraw @s {"text":"________________________________________","bold":true}