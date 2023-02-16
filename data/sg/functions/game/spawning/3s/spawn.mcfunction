#randomize first player spawning
execute as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/3s/identify_team