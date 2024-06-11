tag @s add Admin
scoreboard players set $Locked lobbySigns 1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.lock"}]

execute at @s run playsound entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.1