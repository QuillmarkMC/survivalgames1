data merge block ~ ~ ~ {Items:[],LootTable:""}

execute if score $LootMode options matches 0 if entity @s[tag=SGCommonChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/normal/common_chest"
execute if score $LootMode options matches 0 if entity @s[tag=SGCornucopiaChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/normal/cornucopia_chest"
execute if score $LootMode options matches 0 if entity @s[tag=SGRareChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/normal/rare_chest"
execute if score $LootMode options matches 0 if entity @s[tag=SGEpicChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/normal/epic_chest"

execute if score $LootMode options matches 1 if entity @s[tag=SGCommonChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/scarce/common_chest"
execute if score $LootMode options matches 1 if entity @s[tag=SGCornucopiaChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/scarce/cornucopia_chest"
execute if score $LootMode options matches 1 if entity @s[tag=SGRareChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/scarce/rare_chest"
execute if score $LootMode options matches 1 if entity @s[tag=SGEpicChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/scarce/epic_chest"

execute if score $LootMode options matches 2 if entity @s[tag=SGCommonChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/bountiful/common_chest"
execute if score $LootMode options matches 2 if entity @s[tag=SGCornucopiaChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/bountiful/cornucopia_chest"
execute if score $LootMode options matches 2 if entity @s[tag=SGRareChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/bountiful/rare_chest"
execute if score $LootMode options matches 2 if entity @s[tag=SGEpicChest] run data modify block ~ ~ ~ LootTable set value "sg:chests/bountiful/epic_chest"