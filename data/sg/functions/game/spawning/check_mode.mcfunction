#summon spawn locations
function sg:game/spawning/summon/all

#reset scoreboards for knowing how many players are at each spot
scoreboard players set $NextSpawn spawning 0
scoreboard players set $TotalPlayers win 0

#check gamemode
execute if score $TeamSize options matches 1.. as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/solos/find_me_a_spawn
#execute if score $TeamSize options matches 2 as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/2s/identify_team
#execute if score $TeamSize options matches 3 as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/3s/identify_team