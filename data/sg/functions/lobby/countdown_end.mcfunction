title @a times 20 40 20
title @a title "\uE001"
scoreboard players set $Count lobbyCountdown -1
kill @e[type=armor_stand,tag=TeamSelectName]
execute as @a[team=Random] run function sg:lobby/team_select/random/check
team join Spectator @a[team=]
tag @a[team=!Spectator] add SGPlaying
#tag @a[team=Ready] add SGPlaying
#team leave @a[team=Ready]
schedule function sg:game/starting/countdown_start 50t