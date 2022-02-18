# scheduled from main:spleef/startspleef.mcfunction, comes in after a 4 second spread out period

# spleef shovels
give @a[team=Red] minecraft:diamond_shovel{display:{Name:"\"Mining Away...\"",Lore:["\"I don't know what to mine, I'll mine this anyway\""]},CanDestroy:[snow_block],Unbreakable:1b,Enchantments:[{id:"efficiency",lvl:255s}],HideFlags:1}
give @a[team=Blue] minecraft:diamond_shovel{display:{Name:"\"Mining Away...\"",Lore:["\"I don't know what to mine, I'll mine this anyway\""]},CanDestroy:[snow_block],Unbreakable:1b,Enchantments:[{id:"efficiency",lvl:255s}],HideFlags:1}
give @a[team=Green] minecraft:diamond_shovel{display:{Name:"\"Mining Away...\"",Lore:["\"I don't know what to mine, I'll mine this anyway\""]},CanDestroy:[snow_block],Unbreakable:1b,Enchantments:[{id:"efficiency",lvl:255s}],HideFlags:1}
give @a[team=Yellow] minecraft:diamond_shovel{display:{Name:"\"Mining Away...\"",Lore:["\"I don't know what to mine, I'll mine this anyway\""]},CanDestroy:[snow_block],Unbreakable:1b,Enchantments:[{id:"efficiency",lvl:255s}],HideFlags:1}


# give kb sticks
give @a[team=Red] stick{display:{Name:"\"Bastard Blaster\"",Lore:["\"We're no strangers to loveeeee, you know the rules and so do IIIIIIIIIIIIIIIIIIIIIIII\""]},Enchantments:[{id:knockback,lvl:2}],HideFlags:1} 1
give @a[team=Blue] stick{display:{Name:"\"Bastard Blaster\"",Lore:["\"We're no strangers to loveeeee, you know the rules and so do IIIIIIIIIIIIIIIIIIIIIIII\""]},Enchantments:[{id:knockback,lvl:2}],HideFlags:1} 1
give @a[team=Green] stick{display:{Name:"\"Bastard Blaster\"",Lore:["\"We're no strangers to loveeeee, you know the rules and so do IIIIIIIIIIIIIIIIIIIIIIII\""]},Enchantments:[{id:knockback,lvl:2}],HideFlags:1} 1
give @a[team=Yellow] stick{display:{Name:"\"Bastard Blaster\"",Lore:["\"We're no strangers to loveeeee, you know the rules and so do IIIIIIIIIIIIIIIIIIIIIIII\""]},Enchantments:[{id:knockback,lvl:2}],HideFlags:1} 1

# tellraw
tellraw @a[team=Red] {"text":"You got tools!","color":"gold"}
tellraw @a[team=Blue] {"text":"You got tools!","color":"gold"}
tellraw @a[team=Green] {"text":"You got tools!","color":"gold"}
tellraw @a[team=Yellow] {"text":"You got tools!","color":"gold"}

# tools given score
scoreboard players set $toolsGiven spleef 1