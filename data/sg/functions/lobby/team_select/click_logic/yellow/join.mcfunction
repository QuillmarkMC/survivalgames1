team join Yellow @s
execute store result score #YellowCount teams if entity @a[team=Yellow]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Yellow","color": "yellow"},{"text": " team!"}]
