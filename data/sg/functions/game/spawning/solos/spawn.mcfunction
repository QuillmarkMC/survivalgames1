#resummon spawn locations
function sg:game/spawning/summon/all

#reset scoreboard shit for knowing how many players are at each spot
scoreboard players set $NextSpawn spawning 0
scoreboard players set $TotalPlayers win 0

#randomize everyone spawning
execute as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/solos/find_me_a_spawn