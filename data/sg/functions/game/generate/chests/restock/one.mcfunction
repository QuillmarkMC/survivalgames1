data merge block ~ ~ ~ {Items:[],LootTable:""}
#setblock ~ ~ ~ air
#execute if entity @s[tag=SGNorthChest] run setblock ~ ~ ~ chest[facing=north]
#execute if entity @s[tag=SGSouthChest] run setblock ~ ~ ~ chest[facing=south]
#execute if entity @s[tag=SGEastChest] run setblock ~ ~ ~ chest[facing=east]
#execute if entity @s[tag=SGWestChest] run setblock ~ ~ ~ chest[facing=west]
execute if entity @s[tag=SGCommonChest] run data modify block ~ ~ ~ LootTable set value "sg:common_chest"
execute if entity @s[tag=SGCornucopiaChest] run data modify block ~ ~ ~ LootTable set value "sg:cornucopia_chest"
execute if entity @s[tag=SGRareChest] run data modify block ~ ~ ~ LootTable set value "sg:rare_chest"
execute if entity @s[tag=SGEpicChest] run data modify block ~ ~ ~ LootTable set value "sg:epic_chest"