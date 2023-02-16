#this function is called every time a player dies and everytime an alive player disconnects
#check win condition
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=adventure]

#solos win detection
execute if score $MaxTeamSize teams matches 1 if score $CurrentPlayers win matches 1 run function sg:game/logic/end/winner
#teams win detection
execute if score $MaxTeamSize teams matches 2..3 if score $CurrentPlayers win matches 1..3 run function sg:game/logic/check_win/teams 

#if 0 players left, end game
execute if score $CurrentPlayers win matches ..0 run function sg:game/logic/end/no_winner

#update player variables
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
