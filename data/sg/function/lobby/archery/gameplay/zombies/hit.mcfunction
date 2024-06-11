execute at @s run playsound entity.experience_orb.pickup record @s ~ ~ ~ 1 2
scoreboard players add $CurrentScore archeryVar 1
advancement revoke @s only sg:lobby/archery_hit