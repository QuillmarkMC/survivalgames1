scoreboard players set $Locked lobbySigns 0
tellraw @a [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.auto_unlock"}]
function sg:lobby/settings/display/update
execute as @a at @s run playsound entity.iron_golem.death ambient @s ~ ~ ~ 1 1.5