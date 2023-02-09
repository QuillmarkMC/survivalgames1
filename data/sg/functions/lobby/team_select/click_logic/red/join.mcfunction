team join Red @s
execute store result score #RedCount teams if entity @a[team=Red]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Red","color": "red"},{"text": " team!"}]
