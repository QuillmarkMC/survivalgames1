scoreboard players set $open_spawns spawning 0
execute as @e[tag=SGSpawnMarker] if score @s spawning < $players_per_spawn spawning run scoreboard players add $open_spawns spawning 1
execute if score $open_spawn spawning matches 0 run scoreboard players add $players_per_spawn spawning 1