worldborder center -219.5 115.5
#set starting value based on lobby
execute unless score $MapSize options matches 1..2 run worldborder set 1000
execute if score $MapSize options matches 1 run worldborder set 750
execute if score $MapSize options matches 2 run worldborder set 500

worldborder damage amount 0.5
worldborder damage buffer 0
worldborder warning time 0
worldborder warning distance 10