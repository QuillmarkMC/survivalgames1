team join Aqua @s
execute store result score #AquaCount teams if entity @a[team=Aqua]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Aqua","color": "aqua"},{"text": " team!"}]
