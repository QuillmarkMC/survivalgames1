team leave @s
tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"text":"You have been removed from your team because the maximum team size has changed."}]
execute at @s run playsound entity.warden.death ambient @s ~ ~ ~ 0.75 1.5