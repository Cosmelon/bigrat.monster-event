tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"1st - "},{"selector":"@a[tag=br_indiv1]"},{"text":" - ","color":"white"},{"score":{"name":"@a[tag=br_indiv1,limit=1]","objective":"indivScore"},"color":"green"}]
tellraw @a ""
tellraw @a [{"translate":"space.5"},{"text":"2nd - "},{"selector":"@a[tag=br_indiv2]"},{"text":" - ","color":"white"},{"score":{"name":"@a[tag=br_indiv2,limit=1]","objective":"indivScore"},"color":"green"}]
tellraw @a [{"translate":"space.5"},{"text":"3rd - "},{"selector":"@a[tag=br_indiv3]"},{"text":" - ","color":"white"},{"score":{"name":"@a[tag=br_indiv3,limit=1]","objective":"indivScore"},"color":"green"}]
tellraw @a [{"translate":"space.5"},{"text":"4th - "},{"selector":"@a[tag=br_indiv4]"},{"text":" - ","color":"white"},{"score":{"name":"@a[tag=br_indiv4,limit=1]","objective":"indivScore"},"color":"green"}]
tellraw @a ""
tellraw @a [{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"text":"\uE004"},{"translate":"space.-1"},{"translate":"space.-1"},{"text":"\uE004"}]
schedule function main:lobby/end/credits 5s