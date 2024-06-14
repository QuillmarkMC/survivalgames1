#called from click or map_size functions
execute if score $BorderDelay.State lobbySigns matches 0 run scoreboard players set $BorderDelay options 300
execute if score $BorderDelay.State lobbySigns matches 1 run scoreboard players set $BorderDelay options 120
execute if score $BorderDelay.State lobbySigns matches 2 run scoreboard players set $BorderDelay options 30
execute if score $BorderDelay.State lobbySigns matches 3 run scoreboard players set $BorderDelay options 3600
execute if score $BorderDelay.State lobbySigns matches 4 run scoreboard players set $BorderDelay options 2700
execute if score $BorderDelay.State lobbySigns matches 5 run scoreboard players set $BorderDelay options 1800
execute if score $BorderDelay.State lobbySigns matches 6 run scoreboard players set $BorderDelay options 900
execute if score $BorderDelay.State lobbySigns matches 7 run scoreboard players set $BorderDelay options 600