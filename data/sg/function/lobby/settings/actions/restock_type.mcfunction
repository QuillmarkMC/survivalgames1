scoreboard players add $RestockType.State lobbySigns 1
execute unless score $RestockType.State lobbySigns matches 0..2 run scoreboard players set $RestockType.State lobbySigns 0

execute if score $RestockType.State lobbySigns matches 0 run scoreboard players set $RestockType options 0
execute if score $RestockType.State lobbySigns matches 1 run scoreboard players set $RestockType options 1
execute if score $RestockType.State lobbySigns matches 2 run scoreboard players set $RestockType options 2