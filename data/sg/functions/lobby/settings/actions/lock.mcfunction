tag @s add Admin
scoreboard players set $Locked lobbySigns 1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Settings have been locked! Only you and/or admins can modify settings."}]

execute at @s run playsound entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.1