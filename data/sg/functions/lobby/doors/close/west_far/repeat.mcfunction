execute as @e[type=armor_stand,tag=lobbyDoorWestFarMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaWestFar.Move lobbyDoor 1
execute if score $ArenaWestFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/west_far/repeat 1t
execute if score $ArenaWestFar.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaWestFar.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaWestFar.Move lobbyDoor matches ..0 run scoreboard players set $ArenaWestFar.Move lobbyDoor -1