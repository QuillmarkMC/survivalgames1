scoreboard players remove $Count lobbyCountdown 1
execute if score $Count lobbyCountdown matches 1..5 run tellraw @a [{"score":{"name":"$Count","objective":"lobbyCountdown"},"color": "white"},{"text": "...","color": "white"}]
scoreboard players operation $countdown_mod lobbyCountdown = $Count lobbyCountdown
scoreboard players operation $countdown_mod lobbyCountdown %= $2 countdown
execute if score $countdown_mod lobbyCountdown matches 1 unless score $Count lobbyCountdown matches 1 as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.6
execute if score $countdown_mod lobbyCountdown matches 0 unless score $Count lobbyCountdown matches 0 as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.5
execute if score $Count lobbyCountdown matches 1 as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.8

execute if score $Count lobbyCountdown matches 1.. run schedule function sg:lobby/countdown 1s replace
execute if score $Count lobbyCountdown matches 0 as @a at @s run playsound sg:games.begin record @s
execute if score $Count lobbyCountdown matches 0 run schedule function sg:lobby/countdown_end 70t