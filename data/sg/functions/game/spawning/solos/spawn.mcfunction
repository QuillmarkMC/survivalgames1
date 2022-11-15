#resummon spawn locations
function sg:game/spawning/summon/all

#reset scoreboard shit for knowing how many players are at each spot
#scoreboard players set $players_per_spawn spawning 1
#execute as @e[tag=SGSpawnMarker] run scoreboard players set @s spawning 0
scoreboard players set $NextSpawn spawning 0 

#randomize everyone spawning
execute as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/solos/find_me_a_spawn