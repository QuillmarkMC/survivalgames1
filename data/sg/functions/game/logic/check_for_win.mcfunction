#this function is called every time a player dies and everytime an alive player disconnects
#check win condition
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying]
#if 1 player left, win
execute if score $CurrentPlayers win matches 1
#if 0 players left, end game
execute if score $CurrentPlayers win matches ..0

#update player variables
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
