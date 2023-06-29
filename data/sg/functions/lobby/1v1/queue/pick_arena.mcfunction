scoreboard players operation $Num1 math = $ArenaAvailable 1v1Var
scoreboard players operation $Num1 math %= #2 math
execute if score $Num1 math matches 1 run function sg:lobby/1v1/arena1/start
execute if score $Num1 math matches 0 run function sg:lobby/1v1/arena2/start