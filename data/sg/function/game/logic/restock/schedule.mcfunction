#called from sg:game/starting/countdown_end
#check restock time from lobby
scoreboard players operation $Restock timers = $RestockTime options
execute unless score $RestockType options matches 2 run schedule function sg:game/logic/restock/timer 1s