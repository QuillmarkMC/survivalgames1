##Lobby stuff
effect give @a minecraft:regeneration 999999 255 true
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a minecraft:weakness 999999 255 true

execute as @a if score @s click matches 1.. run function sg:lobby/inventory/click

kill @e[type=item]