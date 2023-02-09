team join Gold @s
execute store result score #GoldCount teams if entity @a[team=Gold]
tellraw @s [{"text": ""},{"text":"[!] ","color":"##ed771c","bold": true},{"text": "You joined the "},{"text": "Gold","color": "gold"},{"text": " team!"}]
