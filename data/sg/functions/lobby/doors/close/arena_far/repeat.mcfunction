execute as @e[type=armor_stand,tag=lobbyDoorArenaFarMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaFar.Move lobbyDoor 1
execute if score $ArenaFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/arena_far/repeat 1t
execute if score $ArenaFar.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaFar.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaFar.Move lobbyDoor matches ..0 run scoreboard players set $ArenaFar.Move lobbyDoor -1