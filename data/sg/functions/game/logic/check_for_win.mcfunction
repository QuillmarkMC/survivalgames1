#this function is called every time a player dies and everytime an alive player disconnects
#check win condition

#update player variables
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
