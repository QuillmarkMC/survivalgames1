execute store result bossbar archery value run scoreboard players get $Timer archeryVar
scoreboard players operation $Num1 math = $Timer archeryVar
scoreboard players operation $Num2 math = $Timer archeryVar
scoreboard players operation $Num1 math /= #60 math
scoreboard players operation $Num2 math %= #60 math
execute if score $Num2 math matches 10.. run bossbar set archery name [{"translate":"text.lobby.1v1.timer","color":"#999999"},{"score":{"name":"$Num1","objective":"math"},"color":"white"},{"text": ":","color": "white"},{"score":{"name":"$Num2","objective":"math"},"color":"white"}]
execute if score $Num2 math matches ..9 run bossbar set archery name [{"translate":"text.lobby.1v1.timer","color":"#999999"},{"score":{"name":"$Num1","objective":"math"},"color":"white"},{"text": ":0","color": "white"},{"score":{"name":"$Num2","objective":"math"},"color":"white"}]
