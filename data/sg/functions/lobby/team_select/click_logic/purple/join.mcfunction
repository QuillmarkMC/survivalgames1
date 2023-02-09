team join Purple @s
execute store result score #PurpleCount teams if entity @a[team=Purple]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Purple","color": "dark_purple"},{"text": " team!"}]
