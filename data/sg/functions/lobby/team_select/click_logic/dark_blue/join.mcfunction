team join Dark_Blue @s
execute store result score #Dark_BlueCount teams if entity @a[team=Dark_Blue]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Blue","color": "dark_blue"},{"text": " team!"}]
