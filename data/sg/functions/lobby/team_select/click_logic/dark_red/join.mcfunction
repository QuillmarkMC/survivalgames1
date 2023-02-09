team join Dark_Red @s
execute store result score #Dark_RedCount teams if entity @a[team=Dark_Red]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Red","color": "dark_red"},{"text": " team!"}]
