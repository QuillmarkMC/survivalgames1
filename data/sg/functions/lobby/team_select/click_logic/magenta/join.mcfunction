team join Magenta @s
execute store result score #MagentaCount teams if entity @a[team=Magenta]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Magenta","color": "light_purple"},{"text": " team!"}]
