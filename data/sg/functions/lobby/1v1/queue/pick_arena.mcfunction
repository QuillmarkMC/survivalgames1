scoreboard players operation #ArenaSelection 1v1Var = $ArenaAvailable 1v1Var
scoreboard players operation #ArenaSelection 1v1Var %= #2 math
execute if score #ArenaSelection 1v1Var matches 1 run function sg:lobby/1v1/arena1/start
execute if score #ArenaSelection 1v1Var matches 0 run function sg:lobby/1v1/arena2/start