# teleport menu for admins
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @s {"text":"Lobby","color":"red","clickEvent":{"action":"run_command","value":"/tp @s 1000.5 28 -6000.5"}}
tellraw @s {"text":"Spleef","color":"yellow","clickEvent":{"action":"run_command","value":"/tp @s -497 66 -461"}}
tellraw @s {"text":"Parkour/Race","color":"green","clickEvent":{"action":"run_command","value":"/tp @s 284 75 42 -90 10"}}
tellraw @s {"text":"Survival Games","color":"#9051DF","clickEvent":{"action":"run_command","value":"/tp @s -1984 133 -1984"}}
tellraw @s {"text":"Block Party","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/tp @s -2000.5 100 3000.5"}}
tellraw @s {"text":"Diggity","color":"#FFC0CB","hoverEvent":{"action":"show_text","contents":["Diggy doesn't exist yet"]}}
tellraw @s [{"text":"<","color":"gray","bold":true},{"text":"Prev","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s \"You're already on the first page!\""}},{"text":" | ","color":"gray","bold":true},{"text":"Next","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tools/telemenu2"}},{"text":">","color":"gray","bold":true}]
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
