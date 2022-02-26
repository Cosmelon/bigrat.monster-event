# sg tick file
# everything in here is triggered if ~gameActive sg matches 1,
# so no need to worry about doing that all manually

title @a times 0 25 10

# countdown
scoreboard players remove ~countDown sg 1
execute if score ~countDown sg matches 200 run title @a title {"text":"10","color":"#40E0D0"}
execute if score ~countDown sg matches 180 run title @a title {"text":"9","color":"#40E0D0"}
execute if score ~countDown sg matches 160 run title @a title {"text":"8","color":"#40E0D0"}
execute if score ~countDown sg matches 140 run title @a title {"text":"7","color":"#40E0D0"}
execute if score ~countDown sg matches 120 run title @a title {"text":"6","color":"#40E0D0"}
execute if score ~countDown sg matches 100 run title @a title {"text":"5","color":"#40E0D0"}
execute if score ~countDown sg matches 80 run title @a title {"text":"4","color":"#40E0D0"}
execute if score ~countDown sg matches 60 run title @a title {"text":"3","color":"#6a0dad"}
execute if score ~countDown sg matches 40 run title @a title {"text":"2","color":"red"}
execute if score ~countDown sg matches 20 run title @a title {"text":"1","color":"gold"}
execute if score ~countDown sg matches 0 run title @a title {"text":"GO!","color":"green"}