#called by a player when they are attacked by another player
#used to prevent combat logging
advancement revoke @s only sg:attacked
scoreboard players operation @s combatTimer = $CombatCooldown options