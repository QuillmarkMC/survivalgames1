execute at @s run playsound entity.enderman.teleport record @a ~ ~ ~
execute at @s run particle portal ~ ~1 ~ 0 0.5 0 2 100
tp @s @e[type=marker,tag=SGAdminTeleporterExit,sort=random,limit=1]
execute at @s run playsound entity.enderman.teleport record @a ~ ~ ~
execute at @s run particle reverse_portal ~ ~1 ~ 0 0.5 0 2 100

scoreboard players operation @s adminTeleportCooldown = $Cooldown adminTeleportCooldown
function sg:lobby/effects/give