tag @s remove Admin
scoreboard players set $Locked lobbySigns 0
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.unlock"}]

execute at @s run playsound entity.iron_golem.death ambient @s ~ ~ ~ 1 1.5