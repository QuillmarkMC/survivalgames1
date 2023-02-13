#kill doors
#summon doors
#reset open/close variables
scoreboard players set #Closed lobbyDoor 0
scoreboard players set #Open lobbyDoor 1
scoreboard players set #Locked lobbyDoor 2
scoreboard players set $Train.Move lobbyDoor -1
scoreboard players operation $Train.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $Arena.Move lobbyDoor -1
scoreboard players operation $Arena.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $Settings.Move lobbyDoor -1
scoreboard players operation $Settings.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $Training.Move lobbyDoor -1
scoreboard players operation $Training.State lobbyDoor = #Closed lobbyDoor