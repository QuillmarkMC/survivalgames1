execute if score $countdown countdown matches 60 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The grace period has 1 minute remaining!"}]
execute if score $countdown countdown matches 60 as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
execute if score $countdown countdown matches 31 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The grace period has 30 seconds remaining!"}]
execute if score $countdown countdown matches 31 as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
execute if score $countdown countdown matches 15 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The grace period has 15 seconds remaining!"}]
execute if score $countdown countdown matches 15 as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

scoreboard players remove $countdown countdown 1
execute unless score $countdown countdown matches ..0 run schedule function sg:game/starting/grace/countdown 1s
execute if score $countdown countdown matches ..0 run function sg:game/starting/grace/countdown_end