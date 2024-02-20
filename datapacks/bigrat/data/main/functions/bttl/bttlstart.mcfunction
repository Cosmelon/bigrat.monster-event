
# starts battleGame
scoreboard players set $gameActive battleGame 1

# teleporting
tp @a[team=Red] -675.0 18.00 683.0 90 0
tp @a[team=Blue] -708.0 18.00 650.0 0 0
tp @a[team=Green] -741.0 18.00 683. -90 0
tp @a[team=Yellow] -708.0 18 716.0 180 0

# iron helmet
item replace entity @a[team=Red] armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @a[team=Blue] armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @a[team=Green] armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @a[team=Yellow] armor.head with minecraft:iron_helmet{Unbreakable:1b}

# iron chestplate
item replace entity @a[team=Red] armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @a[team=Blue] armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @a[team=Green] armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @a[team=Yellow] armor.chest with minecraft:iron_chestplate{Unbreakable:1b}

# netherite pants
item replace entity @a[team=Red] armor.legs with minecraft:netherite_leggings{Unbreakable:1b}
item replace entity @a[team=Blue] armor.legs with minecraft:netherite_leggings{Unbreakable:1b}
item replace entity @a[team=Green] armor.legs with minecraft:netherite_leggings{Unbreakable:1b}
item replace entity @a[team=Yellow] armor.legs with minecraft:netherite_leggings{Unbreakable:1b}

# leather boots
item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:16066343}}
item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:2635263}}
item replace entity @a[team=Green] armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:120889}}
item replace entity @a[team=Yellow] armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:16777000}}

# axe
item replace entity @a[team=Red] container.0 with minecraft:wooden_axe{Unbreakable:1b}
item replace entity @a[team=Blue] container.0 with minecraft:wooden_axe{Unbreakable:1b}
item replace entity @a[team=Green] container.0 with minecraft:wooden_axe{Unbreakable:1b}
item replace entity @a[team=Yellow] container.0 with minecraft:wooden_axe{Unbreakable:1b}

# pickaxe
item replace entity @a[team=Red] container.1 with minecraft:diamond_pickaxe{Unbreakable:1b,CanDestroy:[crying_obsidian],Enchantments:[{id:"efficiency",lvl:2}]}
item replace entity @a[team=Blue] container.1 with minecraft:diamond_pickaxe{Unbreakable:1b,CanDestroy:[crying_obsidian],Enchantments:[{id:"efficiency",lvl:2}]}
item replace entity @a[team=Green] container.1 with minecraft:diamond_pickaxe{Unbreakable:1b,CanDestroy:[crying_obsidian],Enchantments:[{id:"efficiency",lvl:2}]}
item replace entity @a[team=Yellow] container.1 with minecraft:diamond_pickaxe{Unbreakable:1b,CanDestroy:[crying_obsidian],Enchantments:[{id:"efficiency",lvl:2}]}

# crossbow
item replace entity @a[team=Red] container.2 with minecraft:crossbow{Unbreakable:1b}
item replace entity @a[team=Blue] container.2 with minecraft:crossbow{Unbreakable:1b}
item replace entity @a[team=Green] container.2 with minecraft:crossbow{Unbreakable:1b}
item replace entity @a[team=Yellow] container.2 with minecraft:crossbow{Unbreakable:1b}

# arrows
item replace entity @a[team=Red] container.3 with minecraft:arrow 5
item replace entity @a[team=Blue] container.3 with minecraft:arrow 5
item replace entity @a[team=Green] container.3 with minecraft:arrow 5
item replace entity @a[team=Yellow] container.3 with minecraft:arrow 5

# pot 1
item replace entity @a[team=Red] container.4 with minecraft:splash_potion{CustomPotionEffects:[{Id:6,Amplifier:1}],display:{Name:'{"text":"Potion of Healing","italic":false,"color":"#4cdc41","bold":true}'}}
item replace entity @a[team=Blue] container.4 with minecraft:splash_potion{CustomPotionEffects:[{Id:6,Amplifier:1}],display:{Name:'{"text":"Potion of Healing","italic":false,"color":"#4cdc41","bold":true}'}}
item replace entity @a[team=Green] container.4 with minecraft:splash_potion{CustomPotionEffects:[{Id:6,Amplifier:1}],display:{Name:'{"text":"Potion of Healing","italic":false,"color":"#4cdc41","bold":true}'}}
item replace entity @a[team=Yellow] container.4 with minecraft:splash_potion{CustomPotionEffects:[{Id:6,Amplifier:1}],display:{Name:'{"text":"Potion of Healing","italic":false,"color":"#4cdc41","bold":true}'}}

# 8 steak
item replace entity @a[team=Red] container.8 with minecraft:cooked_beef 8
item replace entity @a[team=Blue] container.8 with minecraft:cooked_beef 8
item replace entity @a[team=Green] container.8 with minecraft:cooked_beef 8
item replace entity @a[team=Yellow] container.8 with minecraft:cooked_beef 8

# adventure mode
gamemode adventure @a[team=Red]
gamemode adventure @a[team=Blue]
gamemode adventure @a[team=Green]
gamemode adventure @a[team=Yellow]