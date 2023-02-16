scoreboard players add $MapSize.State lobbySigns 1
execute unless score $MapSize.State lobbySigns matches 0..2 run scoreboard players set $MapSize.State lobbySigns 0

execute if score $MapSize.State lobbySigns matches 0 run scoreboard players set $MapSize options 0
execute if score $MapSize.State lobbySigns matches 1 run scoreboard players set $MapSize options 1
execute if score $MapSize.State lobbySigns matches 2 run scoreboard players set $MapSize options 2

#logic to adjust border grace
#logic to adjust border starting size
#logic to adjust border advance time
#logic to adjust restock time