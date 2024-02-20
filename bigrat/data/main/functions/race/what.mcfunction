# Description: someone clipped out
# Author: Cosmelon
# Type: single
# @s = unfortunate soul to clip out
# run from main:race/racetick positioned 227.5 82 2.5

tag @a remove candidateAbstract
execute positioned 1000010.59 4.00 999968.48 run tag @p add clipperAbs

tellraw @a ""
tellraw @a {"selector":"@a[tag=clipperAbs]","text":"has been put to trial by \u00A7kmarkiplier","color":"gold"}
tellraw @a [{"text":"\u00A7kmarkiplier","color":"gold"},{"text":" has requested that contact with ","color":"gold"},{"selector":"@a[tag=clipperAbs]"},{"text":" be minimal or penalties may occur","color":"gold"}]
tellraw @a ""