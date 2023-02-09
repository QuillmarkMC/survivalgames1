team join Dark_Green @s
execute store result score #Dark_GreenCount teams if entity @a[team=Dark_Green]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Green","color": "dark_green"},{"text": " team!"}]
