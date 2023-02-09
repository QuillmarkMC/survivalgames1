team join Green @s
execute store result score #GreenCount teams if entity @a[team=Green]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Green","color": "green"},{"text": " team!"}]
