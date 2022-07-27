# Description: Turns the tv on
# Author: Cosmelon
# Type: single
# run from main:halls/hallstick

#yeah this is basically a stupid little joke where I turn the tv on in the "find the remote room"
# and it basically just plays a stupid gif or something I think it would be a funny idea


# placeholder key item for now
clear @s lever{display:{Name:'[{"text":"Dad\'s remote","italic":false,"color":"red"}]'}}
summon item -928.5 24.00 1019.5 {Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"TV Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}

