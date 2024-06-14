execute as @e[type=armor_stand,tag=lobbyDoorArenaNearMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaNear.Move lobbyDoor 1
execute if score $ArenaNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/arena_near/repeat 1t
execute if score $ArenaNear.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaNear.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaNear.Move lobbyDoor matches ..0 run scoreboard players set $ArenaNear.Move lobbyDoor -1