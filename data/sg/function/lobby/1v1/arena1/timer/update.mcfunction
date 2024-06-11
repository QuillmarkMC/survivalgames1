scoreboard players remove $Timer1 1v1Var 1
function sg:lobby/1v1/arena1/timer/display
execute if score $Timer1 1v1Var matches 1.. run schedule function sg:lobby/1v1/arena1/timer/update 1s
execute if score $Timer1 1v1Var matches ..0 run function sg:lobby/1v1/arena1/timer/time_expires