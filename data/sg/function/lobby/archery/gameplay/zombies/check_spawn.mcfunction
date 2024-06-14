scoreboard players remove @e[type=marker,scores={archeryZombieSpawnDelay=1..}] archeryZombieSpawnDelay 1
scoreboard players operation $ZombieSpawn archeryVar = $Timer archeryVar
scoreboard players operation $ZombieSpawn archeryVar %= #2 math
execute if score $ZombieSpawn archeryVar matches 1 as @e[type=marker,scores={archeryZombieSpawnDelay=..0},sort=random,limit=1] at @s run function sg:lobby/archery/gameplay/zombies/summon