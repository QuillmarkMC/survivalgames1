team join White @s
execute store result score #WhiteCount teams if entity @a[team=White]
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "White","color": "white"},{"text": " team!"}]
