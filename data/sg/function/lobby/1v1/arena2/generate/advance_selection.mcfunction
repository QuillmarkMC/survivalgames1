#select an arena for 1v1s
scoreboard players add $NextMap 1v1Var 1
execute unless score $NextMap 1v1Var matches 0..9 run scoreboard players set $NextMap 1v1Var 0
execute if score $NextMap 1v1Var matches 0 run function sg:lobby/1v1/arena2/generate/animals/start
execute if score $NextMap 1v1Var matches 1 run function sg:lobby/1v1/arena2/generate/end/start
execute if score $NextMap 1v1Var matches 2 run function sg:lobby/1v1/arena2/generate/farmland/start
execute if score $NextMap 1v1Var matches 3 run function sg:lobby/1v1/arena2/generate/ice/start
execute if score $NextMap 1v1Var matches 4 run function sg:lobby/1v1/arena2/generate/moss/start
execute if score $NextMap 1v1Var matches 5 run function sg:lobby/1v1/arena2/generate/mushroom/start
execute if score $NextMap 1v1Var matches 6 run function sg:lobby/1v1/arena2/generate/nether/start
execute if score $NextMap 1v1Var matches 7 run function sg:lobby/1v1/arena2/generate/reddesert/start
execute if score $NextMap 1v1Var matches 8 run function sg:lobby/1v1/arena2/generate/sand/start
execute if score $NextMap 1v1Var matches 9 run function sg:lobby/1v1/arena2/generate/stone/start