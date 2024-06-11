#called from click or map_size functions
execute if score $RestockTime.State lobbySigns matches 0 run scoreboard players set $RestockTime options 600
execute if score $RestockTime.State lobbySigns matches 1 run scoreboard players set $RestockTime options 480
execute if score $RestockTime.State lobbySigns matches 2 run scoreboard players set $RestockTime options 300
execute if score $RestockTime.State lobbySigns matches 3 run scoreboard players set $RestockTime options 6000
execute if score $RestockTime.State lobbySigns matches 4 run scoreboard players set $RestockTime options 4500
execute if score $RestockTime.State lobbySigns matches 5 run scoreboard players set $RestockTime options 3000
execute if score $RestockTime.State lobbySigns matches 6 run scoreboard players set $RestockTime options 2400
execute if score $RestockTime.State lobbySigns matches 7 run scoreboard players set $RestockTime options 1200
execute if score $RestockTime.State lobbySigns matches 8 run scoreboard players set $RestockTime options 900