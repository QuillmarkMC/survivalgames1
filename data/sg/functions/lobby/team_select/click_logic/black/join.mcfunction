team join Black @s
execute store result score #BlackCount teams if entity @a[team=Black]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Black","color": "#000000"},{"text": " team!"}]
