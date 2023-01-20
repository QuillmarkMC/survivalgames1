#never called
#randomize first player spawning
execute as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/2s/identify_team