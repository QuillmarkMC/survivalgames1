team join Cyan @s
execute store result score #CyanCount teams if entity @a[team=Cyan]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Cyan","color": "dark_aqua"},{"text": " team!"}]
