gamemode spectator
execute if entity @s[team=] run team join Spectator
execute at @e[tag=SGSpectatorSpawnMarker,limit=1] run spawnpoint @s ~ ~ ~
execute unless entity @s[tag=SGPlaying] run tp @s @e[tag=SGSpectatorSpawnMarker,limit=1]
#execute unless entity @s[team=Spectator] run function sg:game/tp_to_death_location
