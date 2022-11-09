##Lobby stuff
spawnpoint @s 21 -60 -5
effect give @a minecraft:regeneration 999999 255 true
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a minecraft:weakness 999999 255 true
execute as @a[tag=!SGInitSpawned] run function sg:lobby/join_lobby
execute as @a[tag=SGInGame] run function sg:lobby/join_lobby