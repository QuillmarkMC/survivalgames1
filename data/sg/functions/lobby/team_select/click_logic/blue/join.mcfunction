team join Blue @s
execute store result score #BlueCount teams if entity @a[team=Blue]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Blue","color": "blue"},{"text": " team!"}]
