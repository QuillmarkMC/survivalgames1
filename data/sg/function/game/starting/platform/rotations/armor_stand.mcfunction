data merge entity @s {NoGravity:true,Invulnerable:true,Invisible:true,Small:true}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=SGSpectatorSpawnMarker,limit=1]
tag @s add SGPlatform
tag @s add SGPlatformRide
ride @s mount @e[type=armor_stand,tag=SGNewPlatform,limit=1]