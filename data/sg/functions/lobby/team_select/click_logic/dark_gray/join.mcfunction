team join Dark_Gray @s
execute store result score #Dark_GrayCount teams if entity @a[team=Dark_Gray]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Gray","color": "dark_gray"},{"text": " team!"}]
