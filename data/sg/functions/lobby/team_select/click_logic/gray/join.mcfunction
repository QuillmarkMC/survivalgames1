team join Gray @s
execute store result score #GrayCount teams if entity @a[team=Gray]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Gray","color": "gray"},{"text": " team!"}]
