scoreboard players add $LootMode.State lobbySigns 1
execute unless score $LootMode.State lobbySigns matches 0..2 run scoreboard players set $LootMode.State lobbySigns 0

execute if score $LootMode.State lobbySigns matches 0 run scoreboard players set $LootMode options 0
execute if score $LootMode.State lobbySigns matches 1 run scoreboard players set $LootMode options 1
execute if score $LootMode.State lobbySigns matches 2 run scoreboard players set $LootMode options 2