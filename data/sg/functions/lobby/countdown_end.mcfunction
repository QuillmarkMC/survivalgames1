title @a times 20 40 20
title @a title "\uE001"

execute as @a[team=Random] run function sg:lobby/team_select/random/check
team join Spectator @a[team=]
tag @a[team=!Spectator] add SGPlaying
team leave @a[team=Ready]
schedule function sg:game/load 50t