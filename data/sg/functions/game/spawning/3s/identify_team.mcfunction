scoreboard players add $NextSpawn spawning 1

scoreboard players operation $MatchTeamID teamID = @s teamID
execute as @a[tag=SGNotSpawned,sort=random] if score @s teamID = $MatchTeamID teamID run function sg:game/spawning/3s/find_me_a_spawn

#recursive call until all teams have spawned
execute as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/3s/identify_team