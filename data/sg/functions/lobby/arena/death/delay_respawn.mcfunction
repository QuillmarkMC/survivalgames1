#this function is required because otherwise glitchy respawn behavior would sometimes trap people in an unintended location
scoreboard players remove @s lobbyArenaRespawn 1

execute if score @s lobbyArenaRespawn matches ..0 run tp @s @e[type=marker,tag=SGArenaRespawn,limit=1,sort=random]
execute if score @s lobbyArenaRespawn matches ..0 run scoreboard players reset @s lobbyArenaRespawn